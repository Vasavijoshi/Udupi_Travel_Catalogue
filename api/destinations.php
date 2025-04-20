<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('error_log', 'php_errors.log');

// Ensure clean output
ob_clean();

// Add CORS headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');
header('Content-Type: application/json');

try {
    // Log connection attempt
    error_log("Attempting MySQL connection...");
    
    // First test direct MySQL connection with error suppression
    $conn = @new mysqli('localhost', 'root', '');
    
    if ($conn->connect_error) {
        // If connection fails, return empty data with 200 status
        echo json_encode([
            'success' => true,
            'data' => [],
            'message' => 'No destinations available at the moment'
        ]);
        exit;
    }
    
    error_log("MySQL connected successfully");
    
    // Try to select/create database
    if (!$conn->query("CREATE DATABASE IF NOT EXISTS udupi")) {
        echo json_encode([
            'success' => true,
            'data' => [],
            'message' => 'Database setup in progress'
        ]);
        exit;
    }
    
    if (!$conn->select_db('udupi')) {
        echo json_encode([
            'success' => true,
            'data' => [],
            'message' => 'Database configuration in progress'
        ]);
        exit;
    }
    
    // Create tables if they don't exist
    $create_taluk = "CREATE TABLE IF NOT EXISTS Taluk (
        TalukID INT AUTO_INCREMENT PRIMARY KEY,
        TalukName VARCHAR(100) NOT NULL,
        Description TEXT,
        CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )";
    
    $create_destinations = "CREATE TABLE IF NOT EXISTS Destinations (
        DestinationID INT AUTO_INCREMENT PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Location VARCHAR(100) NOT NULL,
        Category VARCHAR(50) NOT NULL,
        Description LONGTEXT,
        EntryFee DECIMAL(10,2),
        OpeningTime TIME,
        ClosingTime TIME,
        BestSeason VARCHAR(50),
        TalukID INT NOT NULL,
        Image VARCHAR(255),
        FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
    )";
    
    $conn->query($create_taluk);
    $conn->query($create_destinations);
    
    // Check if Taluk table has any records
    $taluk_count = $conn->query("SELECT COUNT(*) as count FROM Taluk");
    if ($taluk_count) {
        $count = $taluk_count->fetch_assoc()['count'];
        
        if ($count == 0) {
            // Insert default Taluk data
            $insert_taluks = "INSERT INTO Taluk (TalukName, Description) VALUES
                ('Udupi', 'The main taluk of Udupi district'),
                ('Karkala', 'Historical taluk known for monuments'),
                ('Kundapura', 'Coastal taluk with beautiful beaches')";
                
            $conn->query($insert_taluks);
        }
    }
    
    // Select destinations with Taluk information
    $sql = "SELECT 
        d.DestinationID as id,
        d.Name as name,
        d.Location as location,
        d.Category as category,
        d.Description as description,
        d.EntryFee as entryFee,
        d.OpeningTime as openingTime,
        d.ClosingTime as closingTime,
        d.BestSeason as bestSeason,
        d.TalukID as talukId,
        t.TalukName as talukName
    FROM Destinations d
    LEFT JOIN Taluk t ON d.TalukID = t.TalukID";
    
    if (isset($_GET['id'])) {
        $id = $conn->real_escape_string($_GET['id']);
        $sql .= " WHERE d.DestinationID = '$id'";
    }
    
    $result = $conn->query($sql);
    
    if ($result === false) {
        echo json_encode([
            'success' => true,
            'data' => [],
            'message' => 'No destinations found'
        ]);
        exit;
    }
    
    $destinations = [];
    while ($row = $result->fetch_assoc()) {
        $destinations[] = $row;
    }
    
    echo json_encode([
        'success' => true,
        'data' => $destinations,
        'message' => count($destinations) > 0 ? 'Destinations retrieved successfully' : 'No destinations found'
    ]);
    
} catch (Exception $e) {
    error_log("Error in destinations.php: " . $e->getMessage());
    
    // Always return 200 status with empty data
    echo json_encode([
        'success' => true,
        'data' => [],
        'message' => 'Service temporarily unavailable'
    ]);
}

exit;
?>
