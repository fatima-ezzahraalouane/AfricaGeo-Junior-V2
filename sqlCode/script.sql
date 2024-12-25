-- Création de la base de données
CREATE DATABASE v2_africageo_junior;

-- Sélection de la base de données à utiliser
USE v2_africageo_junior;

CREATE TABLE role (
    id_role int NOT null AUTO_INCREMENT PRIMARY KEY,
    name_user ENUM('Admin', 'Utilisateur') NOT NULL
);

