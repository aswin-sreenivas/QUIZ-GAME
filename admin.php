<?php
session_start();
include 'config.php'; // Database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    // Query admin user
    $query = "SELECT * FROM admin_users WHERE username = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $admin = $result->fetch_assoc();

    // Verify password
    if ($admin && md5($password) === $admin['password']) {
        $_SESSION['admin_logged_in'] = true;
        $_SESSION['admin_username'] = $admin['username'];
        header("Location: admin_dashboard.php");
        exit();
    } else {
        $error = "Invalid username or password!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .login-container {
            width: 30%;
            margin: auto;
            margin-top: 100px;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px gray;
            border-radius: 10px;
        }
        .login-container h2 {
            color: #d32f2f;
        }
        input {
            width: 90%;
            padding: 10px;
            margin: 10px;
            border: 1px solid gray;
            border-radius: 5px;
        }
        button {
            background-color: #388e3c;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #2e7d32;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Admin Login</h2>
    <?php if (isset($error)) echo "<p class='error'>$error</p>"; ?>
    <form action="admin_login.php" method="POST">
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <button type="submit">Login</button>
    </form>
</div>

</body>
</html>
