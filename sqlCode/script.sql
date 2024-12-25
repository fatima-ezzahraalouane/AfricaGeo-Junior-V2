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
    population DECIMAL(10,2) NOT NULL,
    langues VARCHAR(255) NOT null,
    imageUrl VARCHAR(300) NOT null,
    description TEXT NOT null,
    id_continent INT NOT null,
    FOREIGN KEY (id_continent) REFERENCES continent(id_continent) ON DELETE CASCADE
);

CREATE TABLE ville (
    id_ville INT NOT null AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(250) NOT NULL UNIQUE,
    description TEXT NOT null,
    type ENUM('Capitale', 'Autre') NOT NULL,
    imageUrl VARCHAR(300) NOT null,
    id_pays INT NOT null,
    FOREIGN KEY (id_pays) REFERENCES pays(id_pays) ON DELETE CASCADE
);

-- Insertion du continent "Afrique"
INSERT INTO continent (nom, description, imageUrl, nombrepays)
VALUES (
    'Afrique',
    'L''Afrique est le deuxième plus grand continent du monde, couvrant environ 30 millions de km². 
    Il est composé de 54 pays, abritant une diversité culturelle, linguistique et ethnique unique. 
    Le continent est riche en ressources naturelles, notamment les minéraux, le pétrole et la biodiversité.',
    'https://cdn.worlddata.info/pics/og/africa.jpg',
    13
);

-- Insertion des pays africains avec leurs détails
INSERT INTO pays (nom, population, langues, imageURL, id_continent, description)
VALUES
('Maroc', 37, 'Arabe, Français, Amazigh', 'https://maroc-diplomatique.net/wp-content/uploads/2022/06/Maroc.jpg', 1, 'Royaume du Maroc situé en Afrique du Nord, connu pour sa riche culture berbère et son histoire millénaire.'),
('Algérie', 44.7, 'Arabe, Berbère, Français', 'https://al24news.com/wp-content/uploads/2024/01/Algerie-.jpg', 1, 'Plus grand pays d''Afrique, avec un patrimoine historique et culturel diversifié.'),
('Tunisie', 12, 'Arabe, Français', 'https://idwey.tn/uploads/0000/233/2024/06/11/ribat-sousse-ou-aller-en-tunisie-itineraire.jpg', 1, 'Petit pays méditerranéen avec une histoire riche depuis l''antiquité carthaginoise.'),
('Égypte', 109, 'Arabe', 'https://www.alibabuy.com/photos/library/1500/10240.jpg', 1, 'Berceau de l''une des plus anciennes civilisations mondiales, avec le Nil et les pyramides.'),  
('Côte d''Ivoire', 28, 'Français', 'https://www.infomediaire.net/wp-content/uploads/2018/01/tourisme-cote-divoire.jpg', 1, 'Pays d''Afrique de l''Ouest célèbre pour sa production de cacao et sa diversité culturelle.'),  
('Ghana', 34, 'Anglais', 'https://c0.wallpaperflare.com/preview/78/1005/207/ghana-accra-independence-square.jpg', 1, 'Première nation d''Afrique subsaharienne à obtenir son indépendance, reconnue pour sa stabilité politique.'),
('Angola', 36, 'Portugais', 'https://mediaim.expedia.com/destination/1/2db59a13b9eb3221ddca9ba25732df68.jpg', 1, 'Pays d''Afrique australe riche en ressources pétrolières et diamantaires.'),  
('Cameroun', 29, 'Français, Anglais', 'https://forbesafrique.com/wp-content/uploads/2024/02/Yaounde-capitale-politique-du-Cameroun-%C2%A9Pexels-kelly.jpg', 1, 'Pays à la biodiversité exceptionnelle, surnommé l''Afrique en miniature.'),
('Tanzanie', 64, 'Swahili, Anglais', 'https://res.cloudinary.com/lastminute-contenthub/image/upload/c_limit,h_999999,w_1920/f_auto/q_auto:eco/v1/DAM/Photos/Destinations/Africa/Tanzania/Zanzibar/shutterstock_2089241428.jpg', 1, 'Connu pour le Kilimandjaro, le parc national du Serengeti et l''île de Zanzibar.'),  
('Mozambique', 33, 'Portugais', 'https://cdn.britannica.com/07/93107-050-A0D6E501/Maputo-Mozambique.jpg', 1, 'Pays côtier d''Afrique australe avec une longue histoire de lutte pour l''indépendance.'), 
('Sénégal', 18, 'Français, Wolof', 'https://c0.wallpaperflare.com/preview/332/1018/505/senegal-dakar-goree-beach.jpg', 1, 'Pays de l''Afrique de l''Ouest, connu pour sa démocratie et sa culture téranga.'),  
('Kenya', 56, 'Anglais, Swahili', 'https://i.natgeofe.com/n/3bca6b48-bb33-418a-a8c3-3e46a6c3ff3c/nairobi-kenya.jpg', 1, 'Destination safari mondialement réputée, avec une faune et des paysages extraordinaires.'),
('Rwanda', 14, 'Kinyarwanda, Français, Anglais', 'https://www.explorerwandatours.com/wp-content/uploads/2023/11/How-to-register-a-foreign-business-in-Rwanda.jpg', 1, 'Pays d''Afrique de l''Est, surnommé le "Pays des Mille Collines", connu pour ses gorilles des montagnes et sa capitale Kigali.')