<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Ensure no output before headers
ob_start();

header('Content-Type: application/json');
require_once 'config.php';

$response = array();

try {
    $conn = connectDB();
    
    // Create table if it doesn't exist
    $create_table = "CREATE TABLE IF NOT EXISTS LocalExperience (
        ExperienceID INT AUTO_INCREMENT PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Description TEXT,
        Duration VARCHAR(50),
        Price DECIMAL(10,2),
        DestinationID INT NOT NULL,
        Image VARCHAR(255),
        FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
    )";
    
    if (!$conn->query($create_table)) {
        throw new Exception("Error creating table: " . $conn->error);
    }
    
    $sql = "SELECT 
        e.ExperienceID as id,
        e.Name as name,
        e.Description as description,
        e.Timings as duration,
        e.Rating as rating,
        e.Price as price,
        e.TalukID as destinationId
    FROM localexperiences e";
    
    // If specific destination ID is requested
    if (isset($_GET['destination'])) {
        $destinationId = $conn->real_escape_string($_GET['destination']);
        $sql .= " WHERE e.DestinationID = '$destinationId'";
    }
    
    $result = $conn->query($sql);
    
    if ($result) {
        $experiences = array();
        while ($row = $result->fetch_assoc()) {
            $experiences[] = $row;
        }
        $response['success'] = true;
        $response['data'] = $experiences;
    } else {
        throw new Exception("Error retrieving experience data: " . $conn->error);
    }
} catch (Exception $e) {
    $response['success'] = false;
    $response['message'] = $e->getMessage();
    $response['debug'] = [
        'error' => $e->getMessage(),
        'file' => $e->getFile(),
        'line' => $e->getLine()
    ];
}

// Clear any output buffer
ob_end_clean();

// Send JSON response
echo json_encode($response);
exit;
?>