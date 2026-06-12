<?php
session_start();
include 'config.php';

// Define quiz categories
$categories = [
    "general_knowledge" => "General Knowledge Quiz",
    "science_technology" => "Science & Technology Quiz",
    "history" => "History Quiz",
    "mathematics" => "Mathematics Quiz"
];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Platform</title>
    <style>
        /* Red and Green Theme */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            color: #333;
        }

        header {
            background-color: #d32f2f;
            color: white;
            padding: 15px 20px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            background-color: #388e3c;
            padding: 10px 15px;
            border-radius: 5px;
            margin: 0 5px;
        }

        .nav-links a:hover {
            background-color: #2e7d32;
        }

        .container {
            text-align: center;
            margin: 50px auto;
            width: 80%;
        }

        h1 {
            color: #d32f2f;
        }

        .category-form select {
            padding: 10px;
            font-size: 16px;
            margin: 10px;
        }

        .category-form button {
            background-color: #388e3c;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .category-form button:hover {
            background-color: #2e7d32;
        }

        footer {
            background-color: #d32f2f;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <div class="logo">Quiz Platform</div>
    <div class="nav-links">
        <?php if (isset($_SESSION['user_id'])): ?>
            <a href="dashboard.php">Dashboard</a>
            <a href="logout.php">Logout</a>
        <?php else: ?>
            <a href="login.php">Login</a>
            <a href="register.php">Register</a>
        <?php endif; ?>
        <a href="admin.php" style="background-color: #ffcc00; color: black;">Admin Login</a>
    </div>
</header>

<div class="container">
    <h1>Welcome to the Quiz Platform</h1>
    <p>Select a category and start the quiz!</p>

    <form class="category-form" action="take_quiz.php" method="GET">
        <select name="category">
            <?php foreach ($categories as $key => $value): ?>
                <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
            <?php endforeach; ?>
        </select>
        <button type="submit">Start Quiz</button>
    </form>
</div>

<footer>
    &copy; 2025 Quiz Platform. All rights reserved.
</footer>

</body>
</html>
