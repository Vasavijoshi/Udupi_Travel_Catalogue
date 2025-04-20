<?php
header('Content-Type: application/json');
require_once 'config/database.php';

$response = array();

try {
    $sql = "SELECT * FROM transport";
    
    // If specific destination is requested
    if (isset($_GET['destination'])) {
        $destination = $conn->real_escape_string($_GET['destination']);
        $sql .= " WHERE destination_id = '$destination'";
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
        throw new Exception("Error retrieving transport data");
    }
} catch (Exception $e) {
    $response['success'] = false;
    $response['message'] = $e->getMessage();
}

echo json_encode($response);
$conn->close();
?> 