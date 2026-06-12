<?php
include 'config.php';

$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";

    if ($conn->query($sql) === TRUE) {
        $message = "Registration successful!";
    } else {
        $message = "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        /* Red and Green Theme */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }

        h2 {
            color: #d32f2f;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .message {
            color: #388e3c;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .error {
            color: #d32f2f;
            font-size: 14px;
            margin-bottom: 10px;
        }

        button {
            width: 100%;
            background-color: #388e3c;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        button:hover {
            background-color: #2e7d32;
        }

        .login-link {
            margin-top: 15px;
            display: block;
            color: #d32f2f;
            text-decoration: none;
        }

        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>Register</h2>

    <?php if (!empty($message)): ?>
        <p class="<?php echo (strpos($message, 'successful') !== false) ? 'message' : 'error'; ?>">
            <?php echo $message; ?>
        </p>
    <?php endif; ?>

    <form method="POST">
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="email" name="email" placeholder="Email" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <button type="submit">Register</button>
    </form>

    <a href="login.php" class="login-link">Already have an account? Login</a>
</div>

</body>
</html>
