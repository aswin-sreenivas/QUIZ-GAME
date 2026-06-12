<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>

<h2>Welcome to the Quiz Dashboard</h2>
<a href="logout.php">Logout</a>
<a href="quiz_list.php">Take a Quiz</a>
