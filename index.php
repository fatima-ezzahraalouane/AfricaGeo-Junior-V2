<?php
require_once './config/Database.php';

$database = new Database();
$conn = $database->getConnection();

if ($conn) {
    echo "Connexion réussie à la base de données !";
}

// Fermer la connexion
$database->closeConnection();
echo "Connexion fermée proprement.";

// Bien
?>
