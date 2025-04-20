<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

try {
    // Connect to MySQL
    $conn = new mysqli('localhost', 'root', '');
    
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }
    
    // Create database
    $conn->query("CREATE DATABASE IF NOT EXISTS udupi");
    $conn->select_db('udupi');
    
    // Create Taluk table
    $conn->query("DROP TABLE IF EXISTS Destinations");
    $conn->query("DROP TABLE IF EXISTS Taluk");
    
    $create_taluk = "CREATE TABLE Taluk (
        TalukID INT AUTO_INCREMENT PRIMARY KEY,
        TalukName VARCHAR(100) NOT NULL,
        Description TEXT,
        CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )";
    
    if (!$conn->query($create_taluk)) {
        throw new Exception("Error creating Taluk table: " . $conn->error);
    }
    
    // Create Destinations table
    $create_destinations = "CREATE TABLE Destinations (
        DestinationID INT AUTO_INCREMENT PRIMARY KEY,
        Name VARCHAR(100) NOT NULL,
        Location VARCHAR(100) NOT NULL,
        Category VARCHAR(50) NOT NULL,
        Description LONGTEXT,
        EntryFee DECIMAL(10,2),
        OpeningTime TIME,
        ClosingTime TIME,
        BestSeason VARCHAR(50),
        TalukID INT NOT NULL,
        Image VARCHAR(255),
        FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
    )";
    
    if (!$conn->query($create_destinations)) {
        throw new Exception("Error creating Destinations table: " . $conn->error);
    }
    
    echo json_encode([
        'success' => true,
        'message' => 'Database structure created successfully',
        'details' => [
            'database' => 'udupi',
            'tables' => ['Taluk', 'Destinations']
        ]
    ]);
    
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'success' => false,
        'message' => $e->getMessage()
    ]);
} 