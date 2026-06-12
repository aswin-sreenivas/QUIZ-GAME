<?php
include 'config.php';
$quizzes = $conn->query("SELECT * FROM quizzes");
?>

<h2>Select a Quiz</h2>
<ul>
    <?php while ($quiz = $quizzes->fetch_assoc()): ?>
        <li>
            <a href="take_quiz.php?quiz_id=<?php echo $quiz['id']; ?>">
                <?php echo $quiz['title']; ?>
            </a>
        </li>
    <?php endwhile; ?>
</ul>
