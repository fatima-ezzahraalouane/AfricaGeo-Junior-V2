-- Création de la base de données
CREATE DATABASE v2_africageo_junior;

-- Sélection de la base de données à utiliser
USE v2_africageo_junior;

CREATE TABLE role (
    id_role int NOT null AUTO_INCREMENT PRIMARY KEY,
    name_user ENUM('Admin', 'Utilisateur') NOT NULL
);

CREATE TABLE usersite (
    id_user int NOT null AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    id_role int NOT null,
    FOREIGN KEY (id_role) REFERENCES role(id_role)
);

CREATE TABLE continent (
    id_continent int not null AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(250) NOT NULL UNIQUE,
    description TEXT not null,
    imageUrl VARCHAR(300) NOT null,
    nombrepays int DEFAULT 0
);

CREATE TABLE pays (
    id_pays int NOT null AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(250) NOT NULL UNIQUE,
    population INT NOT null,
    langues VARCHAR(255) NOT null,
    imageUrl VARCHAR(300) NOT null,
    description TEXT NOT null,
    id_continent INT NOT null,
    FOREIGN KEY (id_continent) REFERENCES continent(id_continent) ON DELETE CASCADE
);