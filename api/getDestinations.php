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
    
    // Get taluk parameter
    if (!isset($_GET['taluk'])) {
        throw new Exception("Taluk parameter is required");
    }
    
    $talukName = $conn->real_escape_string($_GET['taluk']);
    
    // Get TalukID from taluk name
    $talukQuery = "SELECT TalukID FROM Taluk WHERE TalukName = '$talukName'";
    $talukResult = $conn->query($talukQuery);
    
    if (!$talukResult || $talukResult->num_rows === 0) {
        throw new Exception("Taluk not found: $talukName");
    }
    
    $talukRow = $talukResult->fetch_assoc();
    $talukId = $talukRow['TalukID'];
    
    // Get destinations for this taluk (limit to 5 rows)
    $sql = "SELECT 
        d.DestinationID,
        d.Name,
        d.Location,
        d.Category,
        d.Description,
        d.EntryFee,
        d.OpeningTime,
        d.ClosingTime,
        d.BestSeason
    FROM Destinations d
    WHERE d.TalukID = '$talukId'
    LIMIT 5";
    
    $result = $conn->query($sql);
    
    if ($result) {
        $destinations = array();
        while ($row = $result->fetch_assoc()) {
            $destinations[] = $row;
        }
        $response['success'] = true;
        $response['data'] = $destinations;
    } else {
        throw new Exception("Error retrieving destinations: " . $conn->error);
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