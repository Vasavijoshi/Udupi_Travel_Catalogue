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
    
    // Get accommodation for this taluk (limit to 5 rows)
    $sql = "SELECT 
        a.AccommodationID as id,
        a.AccommodationName as name,
        a.AccommodationDescription as description,
        a.PriceRange as priceRange,
        a.Rating as rating,
        a.Image as image
    FROM Accommodation a
    WHERE a.TalukID = '$talukId'
    LIMIT 5";
    
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