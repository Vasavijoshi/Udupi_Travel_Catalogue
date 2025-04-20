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
    $create_table = "CREATE TABLE IF NOT EXISTS Transport (
        TransportID INT AUTO_INCREMENT PRIMARY KEY,
        Type VARCHAR(50) NOT NULL,
        Description TEXT,
        Cost DECIMAL(10,2),
        Schedule VARCHAR(100),
        DestinationID INT NOT NULL,
        FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
    )";
    
    if (!$conn->query($create_table)) {
        throw new Exception("Error creating table: " . $conn->error);
    }
    
    $sql = "SELECT 
        t.TransportID as id,
        t.Type as type,
        t.Description as description,
        t.Cost as cost,
        t.Schedule as schedule,
        t.DestinationID as destinationId
    FROM Transport t";
    
    // If specific destination ID is requested
    if (isset($_GET['destination'])) {
        $destinationId = $conn->real_escape_string($_GET['destination']);
        $sql .= " WHERE t.DestinationID = '$destinationId'";
    }
    
    $result = $conn->query($sql);
    
    if ($result) {
        $transport = array();
        while ($row = $result->fetch_assoc()) {
            $transport[] = $row;
        }
        $response['success'] = true;
        $response['data'] = $transport;
    } else {
        throw new Exception("Error retrieving transport data: " . $conn->error);
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