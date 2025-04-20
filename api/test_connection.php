<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

function testConnection($method) {
    try {
        $mysqli = new mysqli('localhost', 'root', '');
        return [
            'success' => true,
            'method' => $method,
            'version' => $mysqli->server_info
        ];
    } catch (Exception $e) {
        return [
            'success' => false,
            'method' => $method,
            'error' => $e->getMessage()
        ];
    }
}

// Try different connection methods
$methods = [
    'default' => function() { return testConnection('default'); },
    'socket' => function() { 
        $mysqli = new mysqli('localhost', 'root', '', '', 3306, '/xampp/mysql/mysql.sock');
        return [
            'success' => true,
            'method' => 'socket',
            'version' => $mysqli->server_info
        ];
    },
    'tcp' => function() {
        $mysqli = new mysqli('127.0.0.1', 'root', '', '', 3306);
        return [
            'success' => true,
            'method' => 'tcp',
            'version' => $mysqli->server_info
        ];
    }
];

$results = [];
foreach ($methods as $name => $method) {
    try {
        $results[$name] = $method();
    } catch (Exception $e) {
        $results[$name] = [
            'success' => false,
            'method' => $name,
            'error' => $e->getMessage()
        ];
    }
}

echo json_encode([
    'php_version' => PHP_VERSION,
    'server_software' => $_SERVER['SERVER_SOFTWARE'],
    'mysql_test' => $results
]); 