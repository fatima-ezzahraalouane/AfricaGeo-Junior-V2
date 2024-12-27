<?php
session_start();
if (!isset($_SESSION['user_id']) || $_SESSION['role'] != 2) {
    header('Location: signup.php');
    exit();
}
echo "Bienvenue, {$_SESSION['username']} !";
?>
