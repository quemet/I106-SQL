---     Comment savoir si on a trouvé l’assassin ?    ---
-- 1) Insertion d'un nouvel enregistrement dans la table solution, dans lequel vous remplacer la chaîne 'le nom du suspect' par le nom de votre suspect écrit entre apostrophes :
INSERT INTO solution
VALUES (1, 'le nom du suspect');
-- 2) Vérification de cette proposition à l'aide d'un déclencheur (hors programme) :
SELECT value
FROM solution;
---     Solution     ---
-- 1) A l’aide des informations du départ, on sélectionne « Rapport sur les lieux du crime »
SELECT * 
FROM crime_scene_report 
WHERE date = '20180115' 
AND lower(city) = 'sql city';
-- 2) Le 1er témoin :
SELECT * 
FROM person  
WHERE address_street_name LIKE '%Northwestern Dr%' 
ORDER BY address_number DESC 
LIMIT 1;
-- 3) Le 2ème témoin :
SELECT * 
FROM person 
WHERE  address_street_name LIKE '%Franklin%' 
AND name LIKE 'Annabel%';
-- 4) Maintenant que l’on connaît les 2 témoins, on peut trouver leur déposition :
SELECT name, transcript 
FROM person 
JOIN interview ON interview.person_id = person.id 
WHERE person_id IN ( 14887, 16371);
-- 5) 
SELECT * 
FROM person 
JOIN drivers_license 
ON person.license_id = drivers_license.id 
JOIN get_fit_now_member
ON get_fit_now_member.person_id = person.id
JOIN get_fit_now_check_in
ON get_fit_now_check_in.membership_id = get_fit_now_member.id
WHERE plate_number LIKE '%H42W%'
AND get_fit_now_member.id LIKE '48Z%' AND membership_status = 'gold'
AND check_in_date LIKE '20180109%' 
AND membership_id IN ('48Z7A', '48Z55');
-- 6) Maintenant que notre suspect est Jeremy Bowers, il ne nous reste plus qu’à vérifier cette solution :
INSERT INTO solution
VALUES (1, 'Jeremy Bowers');
-- 7) Check si c'est valide
SELECT value
FROM solution;
-- 8) Donc on fait une requête avec l’id de Jeremy Bowers
SELECT transcript FROM interview where person_id = 67318;
-- 9) Have the criminal
SELECT *
FROM drivers_license
JOIN person ON person.license_id = drivers_license.id
JOIN facebook_event_checkin ON facebook_event_checkin.person_id = person.id
WHERE facebook_event_checkin.date like "201712%" ;
AND facebook_event_checkin.event_name LIKE "%symphony%" 
AND drivers_license.car_model = "Model S";