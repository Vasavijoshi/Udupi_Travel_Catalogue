<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'pacific_travel';

// Create connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set charset to utf8
$conn->set_charset("utf8");
?> 