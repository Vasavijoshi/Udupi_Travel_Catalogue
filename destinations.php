<?php
header('Content-Type: application/json');
require_once 'config/database.php';

$response = array();

try {
    $sql = "SELECT * FROM destinations";
    
    // If specific destination ID is requested
    if (isset($_GET['id'])) {
        $id = $conn->real_escape_string($_GET['id']);
        $sql .= " WHERE id = '$id'";
    }
    
    $result = $conn->query($sql);
    
    if ($result) {
        $destinations = array();
        while ($row = $result->fetch_assoc()) {
            $destinations[] = $row;
        }
        $response['success'] = true;
        $response['data'] = $destinations;
    } else {
        throw new Exception("Error retrieving destinations");
    }
} catch (Exception $e) {
    $response['success'] = false;
    $response['message'] = $e->getMessage();
}

echo json_encode($response);
$conn->close();
?> 