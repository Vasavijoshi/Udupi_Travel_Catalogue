<?php
header('Content-Type: application/json');
require_once 'config/database.php';

$response = array();

try {
    $sql = "SELECT * FROM local_experiences";
    
    // If specific destination is requested
    if (isset($_GET['destination'])) {
        $destination = $conn->real_escape_string($_GET['destination']);
        $sql .= " WHERE destination_id = '$destination'";
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
        throw new Exception("Error retrieving local experience data");
    }
} catch (Exception $e) {
    $response['success'] = false;
    $response['message'] = $e->getMessage();
}

echo json_encode($response);
$conn->close();
?> 