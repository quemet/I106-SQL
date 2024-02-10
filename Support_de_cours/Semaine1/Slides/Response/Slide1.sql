USE db_voitures;
---     LES REQUÊTES SQL - LA SÉLECTION     ---
-- Sélectionner toutes les données !
SELECT * 
FROM voiture;
-- Sélectionnez uniquement les marques des voitures.
SELECT voiMarque 
FROM voiture;
-- Sélectionnez uniquement les marques et les modèles des voitures
SELECT voiMarque, voiModele 
FROM voiture;
-- Sélectionnez toutes les colonnes pour les voitures qui ont été produites en 1999
SELECT * 
FROM voiture 
WHERE voiAnneeProduction = 1999;
-- Sélectionnez toutes les colonnes pour toutes les voitures dont le prix est supérieur à 10 000 $
SELECT *
FROM voiture
WHERE voiPrix > 10000.00;
-- Sélectionnez toutes les colonnes pour les voitures qui n’ont pas été produites en 1999
SELECT *
FROM voiture
WHERE voiAnneeProduction != 1999
-- Sélectionnez la marque, le modèle et l’année de production de toutes les voitures dont le prix est inférieur ou égal à 11 300 $
SELECT voiMarque, voiModele, voiAnneeProduction
FROM voiture
WHERE voiPrix <= 11300;
-- Sélectionnez les identifiants de toutes les voitures qui ont été produites avant 2005 ou dont le prix est inférieur à 10 000 $
SELECT idVoiture
FROM voiture
WHERE voiAnneeProduction < 2005
OR voiPrix < 10000;
--Sélectionnez les identifiants de toutes les voitures qui ont été produites après 1999 et dont le prix est inférieur à 7 000 $
SELECT idVoiture
FROM voiture
WHERE voiAnneeProduction > 1999
AND voiPrix < 7000;
-- Sélectionnez les identifiants, marques, et modeles de toutes les voitures produites entre 1995 et 2005
SELECT idVoiture, voiMarque, voiModele
FROM voiture
WHERE voiAnneeProduction
BETWEEN 1995 AND 2005;
-- Sélectionnez les identifiants, marques, et modeles de toutes les voitures sauf celles produites entre 1995 et 2005
SELECT idVoiture, voiMarque, voiModele
FROM voiture
WHERE voiAnneeProduction
NOT BETWEEN 1995 AND 2005;
-- Sélectionnez les identifiants de toutes les voitures qui ont été produites avant 1999 ou après 2005 et dont le prix est inférieur à 4 000$ ou supérieur à 10 000$
SELECT idVoiture
FROM voiture
WHERE (voiAnneeProduction < 1999 OR voiAnneeProduction > 2005)
AND (voiPrix < 4000 OR voiPrix > 10000);
-- Sélectionnez toutes les colonnes de toutes les voitures Ford présentes dans la table
SELECT *
FROM voiture
WHERE voiMarque = 'Ford';
-- Sélectionnez les identifiants, marques, et modeles de toutes les voitures dont la marque commence par un F
SELECT idVoiture, voiMarque, voiModele
FROM voiture
WHERE voiMarque LIKE 'F%';
-- Sélectionnez l’identifiant de toutes les voitures dont le modèle se termine par un s
SELECT idVoiture
FROM voiture
WHERE voiModele LIKE '%s';
-- Sélectionnez toutes les colonnes pour les voitures dont la marque correspond à ‘Volk_wagen’
SELECT *
FROM voiture
WHERE voiMarque LIKE 'Volk_wagen';
-- Sélectionnez toutes les colonnes pour les voitures dont le modele contient un f minuscule
SELECT *
FROM voiture
WHERE voiModele COLLATE utf8mba_bin LIKE '%f%';
-- Sélectionnez toutes les colonnes pour chaque voiture dont la colonne prix n’a pas de valeur NULL
SELECT *
FROM voiture
WHERE voiPrix IS NOT NULL;
-- Sélectionnez toutes les colonnes pour chaque voiture dont le prix est inconnu (NULL)
SELECT *
FROM voiture
WHERE voiPrix IS NULL;
-- Sélectionnez toutes les colonnes des voitures dont la colonne prix est supérieure ou égale à zéro
SELECT *
FROM voiture
WHERE voiPrix >= 0;
-- Sélectionnez toutes les colonnes pour les voitures dont le montant de la taxe est supérieur à 2 000 $
SELECT *
FROM voiture
WHERE voiPrix * 0.2 >= 2000;
-- Sélectionnez toutes les colonnes des voitures qui ont été produites entre 1999 et 2005, ne sont pas des Volkswagen, ont un modèle qui commence par ‘P’ ou ‘F’, ont leur prix fixé
SELECT *
FROM voiture
WHERE voiAnneeProduction BETWEEN 1999 AND 2005
AND voiMarque != 'Volkswagen'
AND (voiModele LIKE 'P%' OR voiModele LIKE 'F%')
AND voiPrix IS NOT NULL; 
---     LES REQUÊTES SQL - AGRÉGATION ET REGROUPEMENT     ---
USE db_employes;
-- Sélectionnez toutes les colonnes de la table employe et triez-les en fonction du salaire
SELECT *
FROM employe
ORDER BY salaire;
-- Sélectionnez uniquement les lignes relatives à l’année 2011 dans la table employe. Triez-les par salaire
SELECT *
FROM employe
WHERE annee = 2011
ORDER BY salaire;
-- Sélectionnez toutes les lignes de la table employe. Triez-les dans l’ordre décroissant de la colonne nom
SELECT *
FROM employe
ORDER BY nom DESC;
--  Sélectionnez toutes les lignes de la table employe. Triez-les dans l’ordre croissant par le département. Puis dans l’ordre décroissant par le salaire
SELECT *
FROM employe
ORDER BY departement, salaire DESC;
-- Sélectionnez les employées qui sont dans le top 3 des meilleurs salaires. Et triez-les dans l’ordre décroissant par le salaire
SELECT *
FROM employe
ORDER BY salaire DESC;
LIMIT 3;
-- Sélectionnez la colonne annee pour toutes les lignes de la table employe Puis examinez attentivement le résultat
SELECT annee
FROM employe;
-- Sélectionnez la colonne annee dans la table employe de manière à ce que chaque année n’apparaisse qu’une seule fois
SELECT DISTINCT annee
FROM employe;
-- Compter toutes les lignes de la table employe
SELECT COUNT(*)
FROM employe;
-- Vérifiez le nombre de valeurs non NULL dans la colonne poste dans la table employe. Nommez la colonne nb_non_nulle
SELECT COUNT(poste) AS nb_non_nulle
FROM employe;
-- Comptez combien de positions différentes il y a dans la table employe. Nommez la colonne positions_distinctes
SELECT COUNT(DISTINCT poste) AS positions_distinctes
FROM employe;
-- Sélectionnez le salaire le plus élevé dans la table employe
SELECT MAX(salaire)
FROM employe;
-- Trouvez le salaire moyen dans la table employe pour l’année 2013
SELECT AVG(salaire)
FROM employe
WHERE annee = 2013;
-- Trouvez la somme de tous les salaires du département Marketing en 2014
SELECT SUM(salaire)
FROM employe
WHERE annee = 2014 AND departement = 'Marketing';
-- Trouvez le nombre d’employés dans chaque service au cours de l’année 2013. Indiquez le nom du service et le nombre d’employés. Nommez la deuxième colonne nb_employe
SELECT departement, COUNT(*) AS nb_employe
FROM employe
GROUP BY departement;
-- Affichez tous les départements ensemble avec leur salaire le plus bas et le plus élevé en 2014
SELECT departement, MAX(salaire), MIN(salaire)
FROM employe
WHERE annee = 2014
GROUP BY departement;
-- Pour chaque département, trouvez le salaire moyen en 2015
SELECT departement, AVG(salaire)
FROM employe
WHERE annee = 2015
GROUP BY departement;
-- Trouvez le salaire moyen de chaque employé. Affichez le nom de famille, le prénom et le salaire moyen. Regroupez les résultats par le nom de famille et le prénom 
SELECT nom, prenom, AVG(salaire)
FROM employe
GROUP BY nom, prenom;
-- Trouvez les employés ayant passé plus de deux ans dans l’entreprise. Sélectionnez leur nom et leur prénom ainsi que le nombre d’années travaillées (nommez cette colonne annees)
SELECT nom, prenom, COUNT(DISTINCT annee) AS annees;
FROM employe
GROUP BY nom, prenom
HAVING COUNT(DISTINCT annee) > 2;
-- Trouvez les départements où le salaire moyen en 2012 était supérieur à 3 000 $. Affichez le nom du département avec le salaire moyen
SELECT departement, AVG(salaire)
FROM employe
WHERE annee = 2012
GROUP BY departement
HAVING AVG(salaire) > 3000;
-- Triez les employés en fonction de leurs salaires totaux. Les valeurs les plus élevées doivent apparaître en premier. Affichez le nom de famille, le prénom et la somme
SELECT nom, prenom, SUM(salaire)
FROM employe
GROUP BY nom, prenom
ORDER BY SUM(salaire) DESC;
-- Affichez les colonnes nom et prenom de la table employe avec le salaire moyen de chaque personne et le nombre d’années pendant lesquelles elle a travaillé dans l’entreprise, salaire_moyen pour le salaire moyen de chaque personne, annees_travaillees pour le nombre d’années travaillées dans l’entreprise, Ne faites s’afficher que les employés qui ont travaillé plus de deux ans dans l’entreprise, Classez les résultats en fonction du salaire moyen dans l’ordre décroissant
SELECT nom, prenom, AVG(salaire) AS salaire_moyen, COUNT(DISTINCT annee) AS annees_travaillees
FROM employe
GROUP BY nom, prenom
HAVING COUNT(DISTINCT annee) > 2
ORDER BY AVG(salaire) DESC;