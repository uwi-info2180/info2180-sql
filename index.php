<?php
// Simple PHP page that connects to a database
// does some queries and then prints out the data
// to an HTML page.

// Connection
$host = 'localhost';
$dbname = 'simpsons';
$username = 'root';
$password = '';

//echo $host . ' ' . $username;

try {
    $conn = new PDO(
        'mysql:host=' . $host . ';dbname=' . $dbname,
        $username,
        $password
    );
} catch (Exception $e) {
    die($e->getMessage());
}

// $statement = $conn->query("SELECT * FROM students WHERE name='Bart'");
// $student = $statement->fetch(PDO::FETCH_ASSOC);
// var_dump($student);

$statement = $conn->query("SELECT * FROM students");
$students = $statement->fetchAll(PDO::FETCH_ASSOC);
//var_dump($students);

$statement = $conn->query("SELECT * FROM courses");
$courses = $statement->fetchAll(PDO::FETCH_ASSOC);
//var_dump($courses);

$statement = $conn->query("SELECT * FROM teachers");
$teachers = $statement->fetchAll(PDO::FETCH_ASSOC);
//var_dump($teachers);

$statement = $conn->query("SELECT * FROM grades");
$grades = $statement->fetchAll(PDO::FETCH_ASSOC);
//var_dump($grades);

// Example of a prepared statement.
$stmt = $conn->prepare('SELECT name FROM students');
// $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT); // <-- filter your data first, especially important for INSERT, UPDATE, etc.
// $stmt->bindParam(':id', $id, PDO::PARAM_INT); // <-- Automatically sanitized for SQL by PDO
$stmt->execute();
$student = $stmt->fetchAll();


require 'index.view.php';
