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
    $create_table = "CREATE TABLE IF NOT EXISTS Accommodation (
        AccommodationID INT AUTO_INCREMENT PRIMARY KEY,
        AccommodationName VARCHAR(100) NOT NULL,
        AccommodationDescription TEXT,
        PriceRange VARCHAR(50),
        Rating DECIMAL(2,1),
        DestinationID INT NOT NULL,
        Image VARCHAR(255),
        FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
    )";
    
    if (!$conn->query($create_table)) {
        throw new Exception("Error creating table: " . $conn->error);
    }
    
    $sql = "SELECT 
        AccommodationID as id,
        Name as name,
        Location as description,
        PriceRange as priceRange,
        Rating as rating,
        TalukID as destinationId
    FROM Accommodation";
    
    // If specific destination ID is requested
    if (isset($_GET['destination'])) {
        $destinationId = $conn->real_escape_string($_GET['destination']);
        $sql .= " WHERE TalukID = '$destinationId'";
    }
    
    $result = $conn->query($sql);
    
    if ($result) {
        $accommodation = array();
        while ($row = $result->fetch_assoc()) {
            $accommodation[] = $row;
        }
        $response['success'] = true;
        $response['data'] = $accommodation;
    } else {
        throw new Exception("Error retrieving accommodation data: " . $conn->error);
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