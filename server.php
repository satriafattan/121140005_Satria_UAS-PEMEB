<?php
session_start();
header('Content-Type: application/json');

// Database configuration
$host = 'localhost';
$db = 'uas_web';
$user = 'root';
$pass = '';
$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $gender = $_POST['gender'];
    $browser = $_SERVER['HTTP_USER_AGENT'];
    $ip_address = $_SERVER['REMOTE_ADDR'];

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode(["error" => "Invalid email address."]);
        exit;
    }

    $stmt = $conn->prepare("INSERT INTO submissions (name, email, gender, browser, ip_address) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $name, $email, $gender, $browser, $ip_address);
    $stmt->execute();
    $stmt->close();

    echo json_encode(["success" => "Data submitted successfully."]);
} elseif (isset($_GET['action']) && $_GET['action'] === 'fetch') {
    $result = $conn->query("SELECT name, email, gender, date_submitted as date FROM submissions");
    $data = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($data);
}

$conn->close();
?>
