 -- 1) Ecrivez une requête SQL permettant de sélectionner toutes les données (lignes et colonnes) de la table
SELECT *
FROM products;
-- 2) Ecrivez une requête SQL permettant de sélectionner tous les produits qui sont des avions
SELECT *
FROM products
WHERE productLine = ‘Planes’;
-- 3) Ecrivez une requête SQL permettant de sélectionner tous les produits qui sont fabriqués par Motor City Art Classics
SELECT *
FROM products
WHERE productVendor = ‘Motor City Art Classics’;
-- 4) Ecrivez une requête SQL permettant de sélectionner tous les produits qui sont des avions ET qui sont fabriqués par Motor City Art Classics
SELECT *
FROM products
WHERE productLine = ‘Planes’
AND productVendor = ‘Motor City Art Classics’;
-- 5) Ecrivez une requête SQL permettant de sélectionner tous les produits qui ne sont PAS des avions
SELECT *
FROM products
WHERE productLine != ‘Planes’;
-- 6) Ecrivez une requête SQL permettant de sélectionner tous les produits qui sont de couleur rouge.
SELECT * 
FROM products 
WHERE productDescription LIKE '%Red%';
-- 7) Ecrivez une requête SQL permettant de sélectionner tous les produits qui sont fabriqués par Motor City Art Classics ou Autoart Studio Design
SELECT * 
FROM products 
WHERE productVendor = 'Motor City Art Classics' 
OR productVendor = 'Autoart Studio Design';
-- 8) Ecrivez une requête SQL permettant de sélectionner tous les produits qui ont plus de 5000 pièces en stock, ordré par stock le plus grand
SELECT *
FROM products
WHERE quantityInStock > 5000
ORDER BY quantityInStock DESC;
-- 9) Ecrivez une requête SQL permettant de sélectionner les produits qui ont un prix de vente (MSRP) compris entre 80$ et 100$
SELECT *
FROM products
WHERE MSRP BETWEEN 80 AND 100;
-- 10) Ecrivez une requête SQL permettant de sélectionner les produits qui n’ont PAS un prix de vente (MSRP) compris entre 80$ et 100$
SELECT *
FROM products
WHERE MSRP NOT BETWEEN 80 AND 100;
-- 11) Ecrivez une requête SQL permettant de sélectionner les 3 produits les plus chers (MSRP = prix de vente)
SELECT *
FROM products
ORDER BY MSRP ASC
LIMIT 3;