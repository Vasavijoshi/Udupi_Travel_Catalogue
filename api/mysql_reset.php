<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

try {
    // Connect without password
    $conn = new mysqli('localhost', 'root', '');
    
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }
    
    // Try to update the root user password
    $result = $conn->query("
        UPDATE mysql.user SET 
            plugin = 'mysql_native_password',
            authentication_string = ''
        WHERE User = 'root' AND Host = 'localhost'
    ");
    
    if ($result === false) {
        throw new Exception("Failed to update user: " . $conn->error);
    }
    
    $conn->query("FLUSH PRIVILEGES");
    
    echo json_encode([
        'success' => true,
        'message' => 'Root password has been reset successfully'
    ]);
    
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
} 