<?php
class Continent {
    private $conn; // Connexion à la base de données
    private $table = 'continent';

    protected $id_continent;
    private $nom;
    private $description;
    private $imageUrl;
    private $nombrepays;

    // Constructeur avec la connexion à la base de données
    public function __construct($db) {
        $this->conn = $db;
    }

    // ✅ 1. Créer un nouveau continent
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

    
}
?>
