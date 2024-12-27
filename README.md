# 📚 **AfricaGeo-Junior-V2 : Gestion de Continent, Pays et Villes en PHP (POO)**

## 📝 **Contexte du Projet**
Suite à la réalisation de la version 1 du projet, cette version 2 propose une approche plus avancée avec l'adoption de la **Programmation Orientée Objet (POO) en PHP**.

### **Objectifs :**
- Intégrer une gestion optimisée des entités.
- Ajouter de nouvelles fonctionnalités.
- Améliorer l'interface utilisateur (UI/UX) pour une expérience moderne et ergonomique.
- Assurer la sécurité et la centralisation de la connexion à la base de données avec **PDO**.

---

## 📊 **USERS STORIES**

1. **En tant que concepteur :**
   - Corriger le diagramme de cas d’utilisation de la version 1 en ajoutant les fonctionnalités manquantes.
   - Réaliser un **diagramme de classes UML** pour structurer l'application.

2. **En tant que développeur Back-End :**
   - Implémenter une **architecture orientée objet** pour gérer les entités suivantes :
     - **Continent :** ID, Nom, Nombre de pays.
     - **Pays :** ID_Pays, Nom_Pays, Population_Pays, Langue_Pays, Continent associé.
     - **Ville :** IDVille, Nom_Ville, Description_Ville, Type_Ville (capitale ou autre), Pays associé.
   
   - Écrire des **classes PHP** avec les fonctionnalités :
     - S'authentifier (**User/Admin**).
     - Ajouter, modifier ou supprimer un **continent, pays ou ville**.
     - Afficher les détails des **continents, pays et villes**.
     - Centraliser la connexion à la base de données avec **PDO** et utiliser des **requêtes préparées sécurisées**.

---

## 🛠️ **Fonctionnalités Principales**

- 🔒 **Authentification sécurisée :** User/Admin.
- 🌍 **Gestion des entités :** Ajouter, modifier, supprimer et afficher les continents, pays et villes.
- 📊 **Diagrammes UML :** Diagramme de cas d'utilisation et de classes.
- 🛡️ **Sécurité :** Utilisation de PDO pour une gestion sécurisée des requêtes SQL.
- 💻 **Architecture Orientée Objet (POO) :** Organisation claire des classes et méthodes.

---

## 📚 **Documentation**

### **Document PDF V1 :**
1. **Introduction à la Programmation Orientée Objet en PHP :**
   - Fondements de la création de classes et objets.
2. **Encapsulation et Modificateurs d'Accès :**
   - Explication des modificateurs : **public, private, protected**.
3. **Héritage et Polymorphisme :**
   - Mise en œuvre pratique des concepts d'héritage et de polymorphisme.

### **Document PDF V4 (Bonus) :**
1. **Principes SOLID :**
   - Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, Dependency Inversion.
   - Application pratique des principes SOLID en PHP.

---

## 💾 **Technologies Utilisées**
- **PHP** (POO)
- **MySQL** (Base de données)
- **PDO** (Gestion sécurisée des requêtes SQL)
- **HTML5 / CSS3** (UI/UX amélioré)

---