<?php
session_start();
if (!isset($_SESSION['user_id']) || $_SESSION['role'] != 1) {
    header('Location: signup.php');
    exit();
}
echo "Bienvenue, Admin {$_SESSION['username']} !";
?>