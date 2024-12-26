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
    population float NOT NULL,
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
('Rwanda', 14, 'Kinyarwanda, Français, Anglais', 'https://www.explorerwandatours.com/wp-content/uploads/2023/11/How-to-register-a-foreign-business-in-Rwanda.jpg', 1, 'Pays d''Afrique de l''Est, surnommé le "Pays des Mille Collines", connu pour ses gorilles des montagnes et sa capitale Kigali.');

-- Insertion des villes associées aux pays
INSERT INTO ville (nom, description, type, id_pays, imageURL)  
VALUES  
('Rabat', 'Capitale politique et administrative du Maroc', 'Capitale', 1, 'https://strongcitiesnetwork.org/wp-content/uploads/2023/05/R-3.jpg'),  
('Casablanca', 'Ville économique du Maroc', 'Autre', 1, 'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/469000/469964-Hassan-Ii-Mosque.jpg'),  
('Safi', 'Ville portuaire connue pour la pêche et la poterie', 'Autre', 1, 'https://www.rivagesdumonde.fr/media/contentmanager/content/repeater_block_media_layout/images/550x400_Maroc-Safi%C2%A9Poszt%C3%B3s-J%C3%A1nos-AdobeStock_360773507_Editorial_Use_Only-1.jpg'),
('Marrakech', 'Ville touristique célèbre pour sa médina et ses souks', 'Autre', 1, 'https://www.belivehotels.com/imagenes/landings-tematicas/vacaciones_marrakech_jardines_menara_1_1600x1090.jpg'), 
('Fès', 'Ville historique connue pour sa médina et ses universités', 'Autre', 1, 'https://riad-layalina-fes.com/wp-content/uploads/vue-mosquee-quaraouiyine-650x500.jpg'),
('Tanger', 'Ville portuaire stratégique reliant l''Europe et l''Afrique', 'Autre', 1, 'https://www.barcelo.com/guia-turismo/wp-content/uploads/2022/01/tanger-chefchaouen-888.jpg');

INSERT INTO ville (nom, description, type, id_pays, imageURL)  
VALUES  
('Le Caire', 'Capitale de l''Égypte', 'Capitale', 4, 'https://media.routard.com/image/69/5/le-caire.1595695.w430.jpg'),  
('Alexandrie', 'Ville portuaire', 'Autre', 4, 'https://www.egiptoexclusivo.com/wp-content/uploads/2023/06/corniche-alejandria.jpg'),  
('Louxor', 'Ville historique', 'Autre', 4, 'https://www.voyageway.com/wp-content/uploads/2018/02/entree-temple-louxor.jpg'),  
('Assouan', 'Ville touristique', 'Autre', 4, 'https://www.ahstatic.com/photos/1666_sw_00_p_1024x768.jpg'),  
('Gizeh', 'Ville des pyramides', 'Autre', 4, 'https://www.voyageegypte.fr/cdn/eg-public/pyramides_de_gizeh_titre.jpg'),  
('Charm el-Cheikh', 'Station balnéaire', 'Autre', 4, 'https://mediaim.expedia.com/destination/1/944d610146b9f28ad3ed349ad09f2fd1.jpg'),

('Yamoussoukro', 'Capitale politique', 'Capitale', 5, 'https://www.blackpast.org/wp-content/uploads/Basilica_of_Our_Lady_of_Peace_Yamoussoukro_2013.jpg'),  
('Abidjan', 'Ville économique', 'Autre', 5, 'https://media.digitalnomads.world/wp-content/uploads/2021/08/20115530/abidjan-ivory-coast-digital-nomads.jpg'),  
('Bouaké', 'Ville industrielle', 'Autre', 5, 'https://afrique.le360.ma/resizer/I7B8RxVdv2qZ-y0-fKH08MLggOw=/arc-photo-le360/eu-central-1-prod/public/5YL77O7DQNALDPFRQL4X2FXLTM.JPG'),  
('Daloa', 'Ville agricole', 'Autre', 5, 'https://dev.rezoivoire.net/wp-content/uploads/2016/06/daloa.jpg'),  
('San Pedro', 'Ville portuaire', 'Autre', 5, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/San-Pedro-Balmer.jpg'),  
('Korhogo', 'Ville culturelle', 'Autre', 5, 'https://media-files.abidjan.net/photo/korhogo-une-destination-touristique-prometteuse_pbdvkz1u1dp.jpg'),

('Accra', 'Capitale du Ghana', 'Capitale', 6, 'https://cdn.britannica.com/21/128421-050-BD03AB22/Accra-Ghana.jpg'),  
('Kumasi', 'Ville historique', 'Autre', 6, 'https://travelghanawithbwo.com/wp-content/uploads/2024/07/view-from-kejetia-market-kumasi-1.jpg'),  
('Tamale', 'Ville du nord', 'Autre', 6, 'https://grassroottours.com/wp-content/uploads/2016/11/IMG_5727.jpg'),  
('Cape Coast', 'Ville côtière', 'Autre', 6, 'https://cdn.britannica.com/29/252629-050-F001C0EA/Cape-Coast-Castle-Ghana-West-Africa.jpg'),  
('Takoradi', 'Ville portuaire', 'Autre', 6, 'https://www.davidgrant.org/holidays/2018-s-cloud/2-ship/01-takoradi/cape-coast-2.jpg'),  
('Tema', 'Ville industrielle', 'Autre', 6, 'https://cdn.ghanaweb.com/imagelib/pics/605/60560313.jpg'),
 
('Luanda', 'Capitale de l''Angola', 'Capitale', 7, 'https://welcometoangola.co.ao/wp-content/uploads/2022/02/11-1-1200x912.jpg'),  
('Benguela', 'Ville portuaire', 'Autre', 7, 'https://welcometoangola.co.ao/wp-content/uploads/2021/01/benguelapraia.jpg'),  
('Lobito', 'Ville industrielle', 'Autre', 7, 'https://www.journeygourmet.com/continentes/Africa/Angola/Lobito/Lobito/imagenBig.jpg'),  
('Huambo', 'Ville agricole', 'Autre', 7, 'https://www.arquiscopio.com/pensamiento/wp-content/uploads/2012/11/121108_WayoMan_Huambo.jpg'),  
('Malanje', 'Ville culturelle', 'Autre', 7, 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Malanje_Angoala%2C_Rua_poinero_Zeca.JPG'),  
('Lubango', 'Ville montagneuse', 'Autre', 7, 'https://www.got2globe.com/wp-content/uploads/2023/07/lubango-angola-huila-pululukwa-lodge.jpg'),


('Yaoundé', 'Capitale du Cameroun', 'Capitale', 8, 'https://www.abidjan-aeroport.com/wp-content/uploads/2017/01/Yaounde_1-iStock_16224081_SMALL-1.jpg'),  
('Douala', 'Ville portuaire', 'Autre', 8, 'https://voyage.maresaonline.com/wp-content/uploads/2015/02/Douala-r%C3%A9gion-du-Littoral-Cameroun-Maresa-voyage.jpg'),  
('Garoua', 'Ville commerciale', 'Autre', 8, 'https://www.journeygourmet.com/continentes/Africa/Camer%C3%BAn/Garoua/Garoua/imagenBig.jpg'),  
('Maroua', 'Ville saharienne', 'Autre', 8, 'https://www.tripscour.com/en/site/images/illustration/maroua.jpg'),  
('Bamenda', 'Ville culturelle', 'Autre', 8, 'https://www.bareta.news/wp-content/uploads/2016/08/13872700_10157313329985327_6751053316552729232_n.jpg'),  
('Bafoussam', 'Ville agricole', 'Autre', 8, 'https://www.journeygourmet.com/continentes/Africa/Camer%C3%BAn/Bafoussam/Bafoussam/imagenBig.jpg'),

('Dodoma', 'Capitale de la Tanzanie', 'Capitale', 9, 'https://cdn.britannica.com/33/101733-050-49135573/Parliament-Building-Dodoma-Tanz.jpg'),  
('Dar es Salam', 'Ville portuaire', 'Autre', 9, 'https://gogiraffesafaris.com/wp-content/uploads/2023/06/dar-es-salaam_tanzania-scaled.jpg'),  
('Arusha', 'Ville touristique', 'Autre', 9, 'https://www.achieveglobalsafaris.com/wp-content/uploads/2019/10/Arusha-city-1024x708.jpg'),  
('Mwanza', 'Ville industrielle', 'Autre', 9, 'https://www.easytravel.co.tz/wp-content/uploads/2023/07/Bismarck-Rock-Lake-Victoria-Mwanza-Tanzania.jpg'),  
('Mbeya', 'Ville agricole', 'Autre', 9, 'https://upload.wikimedia.org/wikipedia/commons/8/84/Mbeya_Tanzania.jpg'),  
('Zanzibar', 'Île touristique', 'Autre', 9, 'https://cdn.prod.website-files.com/63a2007768b43db9e1be0382/645e6cd443bc2ec944a71bee_Zanzibar%20banner.jpg'),  
  
('Maputo', 'Capitale du Mozambique', 'Capitale', 10, 'https://www.bradtguides.com/wp-content/uploads/2022/10/Maputo_harbour_Mozambique_shutterstock_Simon_g.jpg'),  
('Beira', 'Ville portuaire', 'Autre', 10, 'https://www.journeygourmet.com/continentes/Africa/Mozambique/Beira/Beira/imagenBig.jpg'),  
('Nampula', 'Ville commerciale', 'Autre', 10, 'https://www.journeygourmet.com/continentes/Africa/Mozambique/Nampula/Nampula/imagenBig.jpg'),  
('Quelimane', 'Ville côtière', 'Autre', 10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Quelimane_Airport%2C_Mozambique_01.jpg/1200px-Quelimane_Airport%2C_Mozambique_01.jpg'),  
('Tete', 'Ville minière', 'Autre', 10, 'https://cdn.britannica.com/07/93107-004-450C9C70/Maputo-Mozambique.jpg'),  
('Pemba', 'Station balnéaire', 'Autre', 10, 'https://www.got2globe.com/wp-content/uploads/2021/04/pemba-mocambique-porto-amelia-porto-abrigo-paquitequete.jpg'),

('Dakar', 'Capitale du Sénégal', 'Capitale', 11, 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/11/13/16/dakar.jpg'),  
('Saint-Louis', 'Ville historique', 'Autre', 11, 'https://www.saintlouisdusenegal.com/wp-content/uploads/Saint-Louis3-1.jpg'),  
('Thiès', 'Ville industrielle', 'Autre', 11, 'https://upload.wikimedia.org/wikipedia/commons/9/99/Thies.jpg'),  
('Ziguinchor', 'Ville portuaire', 'Autre', 11, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Ziguinchor6.JPG/1200px-Ziguinchor6.JPG'),  
('Kaolack', 'Ville agricole', 'Autre', 11, 'https://cdn.britannica.com/68/146668-050-D3F351B0/Market-Kaolack-Senegal.jpg'),  
('Touba', 'Ville religieuse', 'Autre', 11, 'https://upload.wikimedia.org/wikivoyage/en/2/26/Touba.jpg'),

('Nairobi', 'Capitale du Kenya', 'Capitale', 12, 'https://cdn.audleytravel.com/4082/2913/79/8003731-nairobi.jpg'),  
('Mombasa', 'Ville portuaire', 'Autre', 12, 'https://cdn.getyourguide.com/img/tour/5d7184d66a58a629ccdda9e8f65d9e0e6fda59d9b3ea68542416d7dfa3218203.jpg/146.jpg'),  
('Kisumu', 'Ville lacustre', 'Autre', 12, 'https://www.journeygourmet.com/continentes/Africa/Kenia/Kisumu/Kisumu/imagenBig.jpg'),  
('Nakuru', 'Ville touristique', 'Autre', 12, 'https://nakuru.go.ke/wp-content/uploads/2022/03/ca3-scaled.jpg'),  
('Eldoret', 'Ville industrielle', 'Autre', 12, 'https://eldoret.city/wp-content/uploads/2023/06/Skyline_of_Eldoret_city.jpg'),  
('Malindi', 'Ville côtière', 'Autre', 12, 'https://www.kenyasafari.com/images/hemingways-watamu-aerial-786x500.jpg');

INSERT INTO ville (nom, description, type, id_pays, imageURL)  
VALUES  
('Kigali', 'Capitale du Rwanda', 'Capitale', 13, 'https://www.kcc.rw/uploads/9/8/2/4/98249186/illume_orig.jpg'),
('Cyangugu', 'Ville frontalière', 'Autre', 13, 'https://visitrwandatour.com/wp-content/uploads/2022/02/Visit-Cyangugu-Town.jpg'),
('Butare', 'Ville universitaire', 'Autre', 13, 'https://www.shutterstock.com/image-photo/huye-rwanda-may-2014-statue-600nw-2263129983.jpg'),
('Gisenyi', 'Ville touristique', 'Autre', 13, 'https://www.le-voyage-autrement.com/img/upload/gallery/unavoidable/2247/img-2020-08-16-04-16-08-thumb+1--gisenyi-%C2%A9sarah---as_330167114-showfront-487-366.jpg'),
('Ruhengeri', 'Ville montagneuse', 'Autre', 13, 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Musanze%27s_Volcano_%2846355800961%29.jpg'),
('Kibuye', 'Ville paisible au bord du lac Kivu', 'Autre', 13, 'https://wideangledreams.com/wp-content/uploads/2022/01/1636133416903.jpg');