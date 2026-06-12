<?php
session_start();
include 'config.php';

if (!isset($_GET['category'])) {
    die("Quiz category not specified.");
}

$category = trim($_GET['category']); // Get category from URL

// Mapping categories to database tables
$table_mapping = [
    "general_knowledge" => "general_knowledge_quiz",
    "science_technology" => "science_technology_quiz",
    "history" => "history_quiz",
    "mathematics" => "mathematics_quiz"
];

// Category display names
$category_display_names = [
    "general_knowledge" => "General Knowledge Quiz",
    "science_technology" => "Science & Technology Quiz",
    "history" => "History Quiz",
    "mathematics" => "Mathematics Quiz"
];

if (array_key_exists($category, $table_mapping)) {
    $table_name = $table_mapping[$category];
    $category_name = $category_display_names[$category];
} else {
    die("Invalid quiz category.");
}

// Select 10 random questions from the table
$query = "SELECT * FROM `$table_name` ORDER BY RAND() LIMIT 10";
$questions = $conn->query($query);

if (!$questions) {
    die("Query Failed: " . $conn->error);
}

// Store questions in session
$_SESSION['quiz_questions'] = [];
while ($row = $questions->fetch_assoc()) {
    $_SESSION['quiz_questions'][] = $row;
}

$_SESSION['quiz_index'] = 0; // Start quiz at question 0
$_SESSION['score'] = 0; // Reset score
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $category_name; ?></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px gray;
            border-radius: 10px;
        }
        .question {
            font-size: 20px;
            margin-bottom: 15px;
        }
        .option {
            display: block;
            padding: 10px;
            margin: 5px;
            background: #ff6666; /* Red theme */
            color: white;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 5px;
        }
        .option:hover {
            background: #ff4d4d;
        }
        .timer {
            font-size: 18px;
            font-weight: bold;
            color: green;
        }
        .result {
            font-size: 22px;
            font-weight: bold;
            color: blue;
        }
        #home-button {
            display: none;
            padding: 10px;
            margin-top: 10px;
            background: green;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #home-button:hover {
            background: darkgreen;
        }
    </style>
</head>
<body>

<div class="container">
    <h2><?php echo $category_name; ?></h2>
    <p class="timer">Time Left: <span id="timer">15</span> sec</p>

    <div id="quiz-container">
        <p class="question" id="question-text"></p>
        <button class="option" onclick="selectAnswer('A')" id="option_a"></button>
        <button class="option" onclick="selectAnswer('B')" id="option_b"></button>
        <button class="option" onclick="selectAnswer('C')" id="option_c"></button>
        <button class="option" onclick="selectAnswer('D')" id="option_d"></button>
    </div>

    <p class="result" id="result" style="display:none;"></p>
    
    <!-- Back to Home Button -->
    <button id="home-button" onclick="goHome()">Back to Home</button>
</div>

<script>
    let questions = <?php echo json_encode($_SESSION['quiz_questions']); ?>;
    let index = 0;
    let score = 0;
    let timeLeft = 15;
    let timer;

    function startQuiz() {
        if (index >= questions.length) {
            document.getElementById("quiz-container").style.display = "none";
            document.getElementById("result").style.display = "block";
            document.getElementById("result").innerHTML = "Quiz Completed! Your Score: " + score + " / " + questions.length;
            
            // Show the back to home button
            document.getElementById("home-button").style.display = "block";
            return;
        }

        let questionData = questions[index];
        document.getElementById("question-text").innerText = questionData.question;
        document.getElementById("option_a").innerText = "A: " + questionData.option_a;
        document.getElementById("option_b").innerText = "B: " + questionData.option_b;
        document.getElementById("option_c").innerText = "C: " + questionData.option_c;
        document.getElementById("option_d").innerText = "D: " + questionData.option_d;
        
        timeLeft = 15;
        document.getElementById("timer").innerText = timeLeft;
        timer = setInterval(updateTimer, 1000);
    }

    function updateTimer() {
        timeLeft--;
        document.getElementById("timer").innerText = timeLeft;
        if (timeLeft === 0) {
            clearInterval(timer);
            nextQuestion();
        }
    }

    function selectAnswer(choice) {
        clearInterval(timer);
        let correctAnswer = questions[index].correct_answer.trim().toUpperCase();

        if (choice.trim().toUpperCase() === correctAnswer) {
            score++;
        }

        nextQuestion();
    }

    function nextQuestion() {
        index++;
        startQuiz();
    }

    function goHome() {
        window.location.href = "index.php"; // Redirect to the home page
    }

    startQuiz();
</script>

</body>
</html>
