-- Ecrivez une requête SQL permettant de sélectionner toutes les données (lignes et colonnes) de la table.
SELECT *
FROM employees;
-- Ecrivez une requête SQL permettant de sélectionner toutes les données des colonnes prénom – nom – job.
SELECT firstName, lastName, jobTitle
FROM employees;
-- Même chose que la question (2), mais en renommant les en-têtes de colonne en français.
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees;
-- Même chose que la question (3), mais triez la réponse en fonction du nom de famille (alphabétique).
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom;
-- Même chose que la question (3), mais triez la réponse en fonction du nom de famille (inverse alphabétique).
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom DESC;
-- Même chose que le (5) et ne prendre que les 10 premiers
SELECT firstName AS prénom, lastName AS nom, jobTitle AS emploi
FROM employees
ORDER BY nom DESC
LIMIT 10;
-- )Listez tous les jobs différents présent dans la base. Il ne doit pas y avoir de doublon. Pour cette question, vous n’avez pas le droit d’utiliser le mot clé WHERE
SELECT DISTINCT (jobTitle)
FROM employees;