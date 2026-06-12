<?php
$host = "localhost";
$user = "root"; // Change if using a different MySQL user
$password = ""; // Change if your MySQL has a password
$database = "quiz_platform"; // Replace with your database name

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
