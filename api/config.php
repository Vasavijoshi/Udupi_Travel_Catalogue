<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database configuration
$db_config = [
    'host' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'udupi'
];

// Function to establish database connection
function connectDB() {
    global $db_config;
    
    try {
        // Create connection without database first
        $conn = new mysqli(
            $db_config['host'],
            $db_config['username'],
            $db_config['password']
        );
        
        // Check connection
        if ($conn->connect_error) {
            throw new Exception("Connection failed: " . $conn->connect_error . 
                              " (Error code: " . $conn->connect_errno . ")");
        }
        
        // Create database if it doesn't exist
        $conn->query("CREATE DATABASE IF NOT EXISTS " . $db_config['database']);
        
        // Select the database
        if (!$conn->select_db($db_config['database'])) {
            throw new Exception("Error selecting database: " . $conn->error);
        }
        
        // Set charset to utf8
        $conn->set_charset("utf8");
        
        return $conn;
        
    } catch (Exception $e) {
        // Log error details to PHP error log
        error_log("Database connection error: " . $e->getMessage());
        
        // Return error in JSON format
        header('Content-Type: application/json');
        header('HTTP/1.1 500 Internal Server Error');
        echo json_encode([
            'success' => false,
            'message' => "Database connection failed",
            'debug' => [
                'error' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]
        ]);
        exit;
    }
}