---     LES JOINTURES     ---
-- Comment afficher le contenu des 2 tables ?
SELECT *
FROM film, realisateur;
-- Exemple jointure
SELECT *
FROM film, realisateur
WHERE realisateur.idRealisateur = film.fkRealisateur;
-- Relier des tables à l’aide de join
SELECT *
FROM table1
JOIN table2
ON condition;
-- Relier des tables à l’aide de join V2
SELECT *
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur;
-- Sélectionnez le nom du réalisateur et le titre du film dans les tables film et realisateur de manière à ce qu’un film soit affiché avec son réalisateur
SELECT realisateur.reaNomComplet, film.filTitre
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur;
-- Sélectionnez le nom du réalisateur et le titre du film dans les tables film et realisateur de manière à ce qu’un film soit affiché avec son réalisateur
SELECT reaNomComplet, filTitre
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur;
-- Sélectionnez le nom du réalisateur et le titre du film dans les tables film et realisateur de manière à ce qu’un film soit affiché avec son réalisateur. Renommez la colonne filTitre en titre_du_film
SELECT filTitre AS titre_du_film, reaNomComplet
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur;
-- Sélectionnez toutes les colonnes des tables film et realisateur de manière à ce qu’un film soit affiché avec son réalisateur. Sélectionnez uniquement les films réalisés après 2000. Dans la condition de jointure, la première table est film et la seconde est realisateur
SELECT *
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur
WHERE filAnneeProduction > 2000;
-- Sélectionnez toutes les colonnes des tables film et realisateur de manière à ce qu’un film soit affiché avec son réalisateur. Sélectionnez uniquement les films qui ont été réalisés par Steven Spielberg
SELECT *
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur
WHERE reaNomComplet = 'Steven Spielberg';
-- Sélectionnez les colonnes titre et annee_production de la table film, et les colonnes nom et annee_naissance de la table realisateur de manière à afficher un film et son réalisateur. Renommez la colonne annee_naissance en né_en. Sélectionnez uniquement les films qui ont été tournés lorsque leur réalisateur avait moins de 40 ans (la différence entre annee_production et annee_naissance doit être inférieure à 40)
SELECT filTitre, filAnneeProduction, reaNomComplet, reaAnneeNaissance AS né_en
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur
WHERE filAnneeProduction - reaAnneeNaissance < 40;
-- Sélectionnez les colonnes id, titre et annee_production de la table film et les colonnes nom et annee_naissance de la table realisateur de manière à afficher un film et son réalisateur. Renommez la colonne annee_naissance en né_en et la colonne annee_production en produit_en. Sélectionnez uniquement les films dont le titre contient la lettre ‘a’ et qui ont été tournés après 2000, ou dont le réalisateur est né entre 1945 et 1995
SELECT film.idFilm, filTitre, filAnneeProduction AS produit_en, reaNomComplet, reaAnneeNaissance AS né_en
FROM film
JOIN realisateur
ON film.fkRealisateur = realisateur.idRealisateur
WHERE (filTitre LIKE '%a%' AND filAnneeProduction > 2000)
OR reaAnneeNaissance BETWEEN 1945 AND 1995;
---    GESTION DES UTILISATEURS    ---
-- VOIR LA LISTE DES UTILISATEURS
mysql -u root -p --ssl-mode=DISABLED
-- Afficher la liste des bases de données
SHOW DATABASES;
-- Pour la base de données mysql, afficher les différentes tables.
USE mysql;
SHOW TABLES;
-- Pour la table user, afficher les différents champs.
DESC user;
-- VOIR LA LISTE DES UTILISATEURS
SELECT user 
FROM mysql.user;
-- CRÉER UN UTILISATEUR
CREATE USER 'greg'@'localhost' IDENTIFIED BY 'greg';
-- SUPPRIMER UN UTILISATEUR
DROP USER 'greg'@'localhost';
-- VOIR LES PRIVILÈGES
SHOW GRANTS FOR 'greg'@'localhost';
-- LA COMMANDE GRANT
GRANT [privilèges]
ON [base de donnée].[table]
TO [utilisateur];
-- Nous souhaitons donner le droit de créer des tables, des bases de données à l’utilisateur greg
GRANT CREATE 
ON *.* 
TO 'greg'@'localhost';
-- Cette commande donne tous les privilèges à l’utilisateur “greg” à l’exception de GRANT OPTION. Cela signifie que l’utilisateur “greg” ne pourra pas donner des privilèges à d’autres utilisateurs
GRANT ALL PRIVILEGES 
ON *.* 
TO 'greg'@'localhost';
-- Cette commande donne tous les privilèges à l’utilisateur “greg” y compris le privilège GRANT
GRANT ALL PRIVILEGES
ON *.* 
TO 'greg'@'localhost'
WITH GRANT OPTION;
-- Cette commande demande au serveur MySQL de recharger l’ensemble des privilèges
FLUSH PRIVILEGES;
-- RETIRER DES PRIVILÈGES
REVOKE ALL PRIVILEGES 
ON *.* 
FROM 'greg'@'localhost';
-- CRÉER UN RÔLE
CREATE ROLE 'consultant';
-- DÉFINIR LES PRIVILÈGES DE CE RÔLE
GRANT SHOW DATABASES, SELECT 
ON *.* 
TO 'consultant';
-- DONNER LE RÔLE CONSULTANT À DES UTILISATEURS
GRANT 'consultant'
TO 'consultant-pierre'@'localhost', 'consultant-marc'@'localhost';
-- SUPPRIMER UN RÔLE
DROP ROLE 'consultant';