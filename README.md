# 🎯 Online Quiz Platform

A web-based Quiz Management System developed using PHP and MySQL. This application allows users to register, log in, participate in quizzes, and view available quiz categories. Administrators can manage quiz questions and categories through a dedicated admin panel.

---

## 📖 Overview

The Online Quiz Platform is designed to provide an interactive environment for conducting quizzes. Users can create accounts, access quizzes, and submit answers online. The system also includes an administration module for managing quiz content efficiently.

---

## ✨ Features

### User Module
- User Registration
- Secure Login & Logout
- User Dashboard
- View Available Quiz Categories
- Attempt Quizzes Online
- Automatic Quiz Submission

### Admin Module
- Admin Authentication
- Add New Questions
- Manage Quiz Categories
- View and Manage Questions
- Admin Dashboard
- Session-Based Access Control

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|----------|
| HTML5 | Structure |
| CSS3 | Styling |
| PHP | Backend Development |
| MySQL | Database Management |
| Apache | Local Server (XAMPP/WAMP) |

---

## 📂 Project Structure

```text
Online-Quiz-Platform/
│
├── Quiz/
│   ├── index.php
│   ├── register.php
│   ├── login.php
│   ├── logout.php
│   ├── dashboard.php
│   ├── quiz_list.php
│   ├── take_quiz.php
│   ├── admin.php
│   ├── admin_login.php
│   ├── admin_dashboard.php
│   ├── admin_logout.php
│   ├── config.php
│   └── assets/
│
└── DataBase/
    ├── quiz_platform.sql
    └── quiz_platform (1).sql
```

---

## ⚙️ Installation Guide

### Step 1: Clone Repository

```bash
git clone https://github.com/yourusername/online-quiz-platform.git
```

### Step 2: Move Project Folder

For XAMPP:

```text
C:\xampp\htdocs\
```

For WAMP:

```text
C:\wamp64\www\
```

### Step 3: Create Database

Open phpMyAdmin and create a database:

```sql
CREATE DATABASE quiz_platform;
```

### Step 4: Import Database

Import the file:

```text
quiz_platform.sql
```

### Step 5: Configure Database Connection

Edit `config.php`

```php
<?php

$host = "localhost";
$username = "root";
$password = "";
$database = "quiz_platform";

$conn = mysqli_connect($host, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
```

### Step 6: Run Application

Open browser and visit:

```text
http://localhost/Quiz/
```

---

## 🔑 System Modules

### User Authentication
- Registration
- Login
- Logout
- Session Management

### Quiz Management
- Quiz Categories
- Questions and Answers
- Quiz Attempt System

### Administration
- Admin Login
- Add Questions
- Manage Quizzes
- Dashboard Access

---

## 💾 Database

Database Name:

```text
quiz_platform
```

Main Tables:

```sql
users
questions
categories
admins
results
```

---

## 🚀 Future Improvements

- Quiz Timer
- Leaderboard System
- User Score History
- Question Randomization
- Responsive Mobile Design
- Performance Analytics
- Certificate Generation

---

## 🎓 Learning Outcomes

This project demonstrates:

- PHP Programming Fundamentals
- MySQL Database Operations
- User Authentication
- Session Handling
- CRUD Operations
- Web Application Development

---

## 👨‍💻 Developer

### Aswin Sreenivas

Diploma in Computer Engineering

#### Connect

GitHub:
https://github.com/aswin-sreenivas



---

## 📜 License

This project is developed for educational and learning purposes.

---

⭐ Star this repository if you found it helpful.
