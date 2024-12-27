<?php
class Continent {
    private $conn; // Connexion à la base de données
    private $table = 'continent';

    public $id_continent;
    public $nom;
    public $description;
    public $imageUrl;
    public $nombrepays;

    // Constructeur avec la connexion à la base de données
    public function __construct($db) {
        $this->conn = $db;
    }

    // Créer un nouveau continent
    public function createContinent() {
        $query = "INSERT INTO continent (nom, description, imageUrl, nombrepays) 
                  VALUES (:nom, :description, :imageUrl, :nombrepays)";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':nom', $this->nom);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':imageUrl', $this->imageUrl);
        $stmt->bindParam(':nombrepays', $this->nombrepays);
        return $stmt->execute();
    }

    // Récupérer tous les continents
    public function getAllContinents() {
        $query = "SELECT * FROM continent";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Récupérer un continent par son ID
    public function getContinentById($id) {
        $query = "SELECT * FROM continent WHERE id_continent = :id_continent";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id_continent', $id);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Mettre à jour un continent
    public function updateContinent() {
        $query = "UPDATE continent 
                  SET nom = :nom, description = :description, imageUrl = :imageUrl, nombrepays = :nombrepays 
                  WHERE id_continent = :id_continent";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id_continent', $this->id_continent);
        $stmt->bindParam(':nom', $this->nom);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':imageUrl', $this->imageUrl);
        $stmt->bindParam(':nombrepays', $this->nombrepays);
        return $stmt->execute();
    }

    // Supprimer un continent
    public function deleteContinent($id) {
        $query = "DELETE FROM continent WHERE id_continent = :id_continent";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':id_continent', $id);
        return $stmt->execute();
    }
}
?>
