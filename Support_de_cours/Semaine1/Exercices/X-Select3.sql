-- 1) Où se sont déroulées toutes les compétitions ? Indiquez tous les lieux.
SELECT lieu
FROM competition;
-- 2) Affichez les dates finales de tous les événements et les points de vent.
SELECT date_finale, vent 
FROM evenement;
-- 3) Sélectionnez tous les noms et prénoms, ainsi que les dates de naissance de tous les athlètes.
SELECT nom_de_famille, prenom, date_de_naissance
FROM athlete;
-- 4) Sélectionnez tous les noms de compétitions ainsi que leurs dates de début et de fin.
SELECT nom, date_debut, date_fin
FROM competition;
-- 5) Sélectionnez toutes les colonnes pour les lignes dont le résultat est en première position.
SELECT *
FROM resultat_final
WHERE place = 1;
-- 6) Affichez toutes les données relatives aux compétitions qui se sont déroulés avant l'année 2018.
SELECT * 
FROM competition
WHERE annee < 2018;
-- 7) Affichez tous les résultats (temps) pour lesquels la place était égale ou supérieure à 100.
SELECT resultat 
FROM resultat_final
WHERE place >= 100;
-- 8) Affichez toutes les dates finales où le vent était supérieur à 0,5.
SELECT date_finale
FROM evenement
WHERE vent > 0.5;
-- 9) Affichez tous les noms de disciplines dont la distance est supérieure à 3000 mètres.
SELECT nom
FROM discipline
WHERE distance > 3000;
-- 10) Affichez les noms et prénoms des athlètes dont le prénom commence par K et se termine par a.
SELECT nom_de_famille, prenom	
FROM athlete
WHERE prenom LIKE 'K%a';
-- 11) Affichez tous les noms de pays commençant par 'U'.
SELECT nom_pays
FROM nationalite
WHERE nom_pays LIKE 'U%';
-- 12) Affichez tous les noms de pays composés d'au moins trois mots.
SELECT nom_pays
FROM nationalite
WHERE nom_pays LIKE '% % %';
-- 13) Quel est le pays dont l'abréviation est 'ART'? Affichez son nom.
SELECT nom_pays
FROM nationalite
WHERE code_pays = 'ART';
-- 14) Affichez toutes les lignes de la table discipline relatives aux marathons (contenant 'Marathon' dans le nom de la discipline).
SELECT *
FROM discipline
WHERE nom LIKE 'Marathon%'
-- 15) Affichez toutes les lignes de resultat_final où le coureur a terminé sans place.
SELECT *
FROM resultat_final
WHERE place IS NULL;
-- 16) Affichez toutes les lignes de la table resultat_final où une disqualification s'est produite.
SELECT *
FROM resultat_final
WHERE est_dsq IS TRUE;
-- 17) Affichez toutes les lignes de la table resultat_final où le coureur n'a pas pris le départ.
SELECT * 
FROM resultat_final
WHERE est_dns IS TRUE;
-- 18) Affichez tous les noms de disciplines féminines.
SELECT nom
FROM discipline
WHERE nom LIKE '%femmes%';
-- 19) Affichez toutes les lignes de la table resultat_final où un coureur a été disqualifié mais a commencé et terminé la course.
SELECT *
FROM resultat_final
WHERE est_dsq IS TRUE
AND est_dnf IS FALSE
AND est_dns IS FALSE; 
-- 20) Affichez toutes les lignes de resultat_final pour tous les médaillés d'or dont le temps est supérieur à une heure.
SELECT *
FROM resultat_final
WHERE place = 1
AND resultat > '01:00:00.00';
-- 21) Affichez tous les noms des disciplines masculines si la distance est inférieure à 500 mètres.
SELECT nom
FROM discipline
WHERE nom LIKE '%hommes' 
AND distance < 500; 
-- 22) Affichez tous les noms et prénoms des athlètes s'ils contiennent un 'z' (un ou plusieurs, en minuscules ou en majuscules) dans leur nom et leur prénom.
SELECT nom_de_famille, prenom
FROM athlete
WHERE nom_de_famille LIKE '%z%'
AND prenom LIKE '%z%';
-- 23) Indiquez le prénom et le nom de tous les athlètes s'ils contiennent un 'x' (un ou plusieurs, en minuscules ou en majuscules) dans l'un ou l'autre de leurs noms.
SELECT prenom, nom_de_famille
FROM athlete
WHERE prenom LIKE '%x%'
OR nom_de_famille LIKE '%x%'; 
-- 24) Affichez les noms et abréviations des pays. Trier les lignes par nom de pays, dans l'ordre croissant.
SELECT nom_pays, code_pays
FROM nationalite
ORDER BY nom_pays;
--25) Affichez tous les noms des disciplines féminines possibles, triés par la distance, dans l'ordre décroissant.
SELECT nom
FROM discipline
WHERE nom LIKE '%femmes%'
ORDER BY distance DESC; 
-- 26) Affichez tous les temps et places des résultats. Trier les temps par ordre croissant. Si plusieurs résultats sont identiques, affichez d'abord celui qui a la meilleure place.
SELECT resultat, place
FROM resultat_final
ORDER BY resultat ASC, place ASC;
-- 27) Pour tous les athlètes, indiquez leur nom et leur prénom. Triez par le nom de famille, et si quelques athlètes le partagent, triez par leur prénom (les deux dans l'ordre croissant).
SELECT nom_de_famille, prenom
FROM athlete
ORDER BY nom_de_famille, prenom;
-- 28) Affichez le nom et le prénom de tous les athlètes dont le nom de famille commence par 'X'. Triez le résultat par le prénom dans l'ordre décroissant.
SELECT nom_de_famille, prenom
FROM athlete
WHERE nom_de_famille LIKE 'X%'
ORDER BY prenom DESC;
-- 29) Pour tous les résultats finaux, affichez les résultats de temps qui sont d'au moins 3 heures. Triez les lignes par ordre décroissant des résultats.
SELECT resultat
FROM resultat_final
WHERE resultat > '03:00:00'
ORDER BY resultat DESC;
-- 30) Affichez tous les noms de pays commençant par 'T' ou 'Z' triés par ordre croissant..
SELECT nom_pays
FROM nationalite
WHERE nom_pays LIKE 'T%'
OR nom_pays LIKE 'Z%'
ORDER BY nom_pays;
-- 31) Affichez toutes les disciplines masculines triées par distance dans l'ordre décroissant. Affichez deux colonnes : nom et distance.
SELECT nom, distance
FROM discipline
WHERE est_homme IS TRUE
ORDER BY distance DESC;
-- 32) Sélectionnez toutes les lignes pour tous les événements où les points de vent étaient positifs. Trier par ordre décroissant des points de vent.
SELECT *
FROM evenement
WHERE vent > 0
ORDER BY vent DESC;
-- 33) Comptons le nombre de nationalités que nous avons dans notre base de données. Affichez une colonne : compte_nationalite.
SELECT COUNT(*) AS compte_nationalite
FROM nationalite;
-- 34) Afficher le nombre d’événements que nous stockons et renommer la colonne : compte_finales.
SELECT COUNT(*) AS compte_finales
FROM evenement;
-- 35) Voyons combien de courses se sont terminées avec et sans résultat. Affichez deux colonnes : courses_reussies et courses_non_reussies.
SELECT COUNT(resultat) AS courses_reussies, COUNT(*) - COUNT(resultat) AS courses_non_reussies
FROM resultat_final;
-- 36) Cherchons le prénom le plus populaire. Affichez deux colonnes : prenom et nombre_de_noms. Triez les résultats par ordre décroissant des prénoms..
SELECT prenom, COUNT(*) AS nombre_de_noms
FROM athlete
GROUP BY prenom
ORDER BY prenom DESC;
-- 37) Trouvons le prénom le plus populaire. Affichez deux colonnes : prenom et nombre_de_noms, mais uniquement si le nombre est au moins égal à 5. Triez le résultat par ordre décroissant.
SELECT prenom, COUNT(*) AS nombre_de_noms
FROM athlete
GROUP BY prenom
HAVING COUNT(*) >= 5
ORDER BY nombre_de_noms DESC;
-- 38) Comptons combien il y a de pays qui contient ‘Républiques’ dans leur nom. N'affichez qu'une seule colonne : compte_republiques.
SELECT COUNT(*) AS compte_republiques
FROM nationalite
WHERE nom_pays LIKE '%République%';