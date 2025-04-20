<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

$response = [
    'php_version' => PHP_VERSION,
    'server_software' => $_SERVER['SERVER_SOFTWARE'],
    'mysql_test' => null,
    'error' => null
];

try {
    // Test MySQL connection
    $conn = new mysqli('127.0.0.1', 'root', '');
    
    if ($conn->connect_error) {
        throw new Exception("MySQL Connection failed: " . $conn->connect_error);
    }
    
    $response['mysql_test'] = [
        'connected' => true,
        'version' => $conn->server_info,
        'host_info' => $conn->host_info
    ];
    
    // Try to select/create the database
    if ($conn->query("CREATE DATABASE IF NOT EXISTS udupi")) {
        $response['database_created'] = true;
    }
    
    if ($conn->select_db('udupi')) {
        $response['database_selected'] = true;
    }
    
    // Check if tables exist
    $tables = $conn->query("SHOW TABLES");
    if ($tables) {
        $existing_tables = [];
        while ($row = $tables->fetch_array()) {
            $existing_tables[] = $row[0];
        }
        $response['existing_tables'] = $existing_tables;
    }
    
} catch (Exception $e) {
    $response['error'] = $e->getMessage();
}

echo json_encode($response, JSON_PRETTY_PRINT); 