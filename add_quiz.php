<?php
session_start();
include 'config.php'; // Include database connection

if (!isset($_SESSION['admin_logged_in'])) {
    header("Location: admin_login.php");
    exit();
}

// Define quiz categories
$categories = [
    "general_knowledge" => "General Knowledge Quiz",
    "science_technology" => "Science & Technology Quiz",
    "history" => "History Quiz",
    "mathematics" => "Mathematics Quiz"
];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $category = $_POST['category'];
    $question = $_POST['question'];
    $option1 = $_POST['option1'];
    $option2 = $_POST['option2'];
    $option3 = $_POST['option3'];
    $option4 = $_POST['option4'];
    $correct_answer = $_POST['correct_answer'];

    // Ensure the table exists
    $table_name = $category;
    $create_table_query = "CREATE TABLE IF NOT EXISTS $table_name (
        id INT AUTO_INCREMENT PRIMARY KEY,
        question TEXT NOT NULL,
        option1 VARCHAR(255) NOT NULL,
        option2 VARCHAR(255) NOT NULL,
        option3 VARCHAR(255) NOT NULL,
        option4 VARCHAR(255) NOT NULL,
        correct_answer VARCHAR(255) NOT NULL
    )";
    $conn->query($create_table_query); // Create table if it does not exist

    // Insert the quiz question
    $query = "INSERT INTO $table_name (question, option1, option2, option3, option4, correct_answer) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ssssss", $question, $option1, $option2, $option3, $option4, $correct_answer);

    if ($stmt->execute()) {
        $success = "Quiz question added successfully!";
    } else {
        $error = "Failed to add quiz question!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            width: 40%;
            margin: auto;
            margin-top: 50px;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px gray;
            border-radius: 10px;
        }
        input, select, button {
            width: 90%;
            padding: 10px;
            margin: 10px;
            border: 1px solid gray;
            border-radius: 5px;
        }
        button {
            background-color: #388e3c;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #2e7d32;
        }
        .success {
            color: green;
        }
        .error {
            color: red;
        }
        .home-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #1976D2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .home-btn:hover {
            background-color: #1565C0;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add Quiz Question</h2>
    <?php if (isset($success)) echo "<p class='success'>$success</p>"; ?>
    <?php if (isset($error)) echo "<p class='error'>$error</p>"; ?>
    
    <form action="add_quiz.php" method="POST">
        <label>Select Category:</label>
        <select name="category" required>
            <?php foreach ($categories as $key => $value): ?>
                <option value="<?php echo $key; ?>"><?php echo $value; ?></option>
            <?php endforeach; ?>
        </select>

        <input type="text" name="question" placeholder="Enter Question" required>
        <input type="text" name="option1" placeholder="Option 1" required>
        <input type="text" name="option2" placeholder="Option 2" required>
        <input type="text" name="option3" placeholder="Option 3" required>
        <input type="text" name="option4" placeholder="Option 4" required>
        <input type="text" name="correct_answer" placeholder="Correct Answer" required>

        <button type="submit">Add Question</button>
    </form>

    <!-- Back to Home Button -->
    <a href="index.php" class="home-btn">Back to Home</a>
</div>

</body>
</html>

