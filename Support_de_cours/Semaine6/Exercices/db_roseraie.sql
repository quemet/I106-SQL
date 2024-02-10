DROP DATABASE IF EXISTS db_roseraie;
CREATE DATABASE db_roseraie CHARACTER SET 'utf8mb4';
USE db_roseraie;

-- ---------------------------
-- CREATION DE  LA TABLE genre
-- ---------------------------
CREATE TABLE genre (
  id smallint unsigned NOT NULL AUTO_INCREMENT,
  nom varchar(10) NOT NULL,
  prix decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;
-- -----------------------
-- REMPLISSAGE DE LA TABLE
-- -----------------------
LOCK TABLES genre WRITE;
INSERT INTO genre VALUES (1,'anciens',15.00),(2,'grimpants',25.00),(3,'tiges',52.00),(4,'pleureurs',57.00);
UNLOCK TABLES;

-- ----------------------------
-- CREATION DE  LA TABLE rosier
-- ----------------------------
CREATE TABLE rosier (
  id smallint unsigned NOT NULL AUTO_INCREMENT,
  nom varchar(40) NOT NULL,
  commentaires text,
  genre_id smallint unsigned NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;
-- -----------------------
-- REMPLISSAGE DE LA TABLE
-- -----------------------
LOCK TABLES rosier WRITE;
INSERT INTO rosier (nom,commentaires,genre_id) VALUES 
('Betty Prior','(Polyantha 1935) Petite fleur simple rose, légerement parfumée. Variété très florifère.',1),
('Little White Pet','(Polyantha 1879) Petite fleur, double, blanc laiteux. Variété florifère .',1),
('Marie Pavié','(Polyantha 1888) Fleur moyenne, mi-double, blanc rosé. Agréablement parfumé. Variété tres florifère.', 1),
('Pâquerette', '(Polyantha 1875) Petite fleur, double, blanc, parfumée. Variété tres florifère.',1),
('Britannia','(Polyantha 1929) Petite fleur, simple, rouge cyclamen a coeur blanc. Variété florifère.',1),
('Jeanne D''Arc (poly)','(Polyantha 1909) Petite fleur, mi-double, blanc pur, en grappe, parfumée. Variété tres florifère.',1),
('Nathalie Nypels','(Polyantha 1919) Fleur moyenne, mi-double, rose tendre, parfumé. Variété florifère.',1),
('Orléans Rose','(Polyantha 1909) Petite fleur, double, rose indien a coeur blanc. Variété très florifère.',1),
('The Fairy','(Polyantha 1932) Petite fleur, mi-double, rose clair. Variété pratiquement continuellement en fleurs. Résistant aux maladies et aux froids.',1),
('Yvonne Rabier','(Polyantha 1910) Petite fleur, mi-double, blanc pur, parfumée. Variété très florifère et très résistante aux maladies.',1),
('Perle d''Or','(Polyantha 1884) Petite fleur, double, rose chamois, parfumée. Variété florifère.',1),
('Crépuscule','(Grimpant 1904) Fleur moyenne, double, jaune saumoné, parfumée. Variété florifère et résistante aux maladies.',2),
('Légère Surprise','Petite fleur, simple, rose clair à rose saumoné, parfumé, fructification.',2),
('Sourire d''Orchidée','(Grimpant 1985) Fleur moyenne, mi-double, blanc nacré a reflets roses, parfumée. Variété florifère et résistante aux maladies.',2),
('Bouquet d''Or','(Grimpant 1872) Grande fleur,double, jaune foncé, parfumée. Variété florifère.',2),
('Guirlande d''Amour','(Grimpant 1953) Grappes de petites fleurs blanches en pompons, florifère et parfumé. Souple il convient pour garnir une clôture ou un arche.',2),
('Plaisanterie','(grimpant 1996) Petite fleur, simple, jaune chamois puis rose cuivré. Variété très florifère. Résistant aux maladies',2),
('Rêve d''Or','(Grimpant 1869) Grande fleur, double, jaune ambré, parfumée. Variété florifère.',2),
('Fraîcheur','(Grimpant 1921) Petite fleur, double, rose frais. Superbe floraison printanière suivi d''une fructification. Résistant aux maladies et au froid.',2),
('Albertine','(Grimpant 1921) Fleur moyenne, mi-double, saumonée, très parfumée. Superbe floraison printanière. Résistant aux maladies et au froid.',2),
('Dentelle de Bruxelles','(grimpant 1988) Petite fleur double en grappe, mauve foncé lumineux. Spectaculaire floraison printanière suivie d''une belle fructification. Résistant à tout.',2),
('Excelsa','(Grimpant 1909) Petite fleur, double, rouge cramoisi. Superbe floraison printaniere. Résistant au froid.',2),
('Mermaid','(Liane 1918) Grande fleur simple jaune, parfumée. Variété florifere, résistante aux maladies, mais sensible au gel.',2),
('Bobbie James','(Liane 1961) Petite fleur simple, blanche, très parfumée. Variété très résistante aux maladies. Somptueuse floraison printanière suivie d''une superbe fructification automnale.',2),
('Ballerina - tige de 120 cm.','(Moschata 1937) Petite fleur simple rose à coeur blanc, en grappe. Variété très florifère suivie d''une très belle fructification automnale.Résistant aux maladies.',3),
('Rouge de Plaisir - Tige de 100 cm.','Rugosa. Fleur simple, rouge pourpre, joli parfum, florifère. Belle fructification très décorative et persistante. Résistant à tout. Plante buissonnante et couvrante. Après plusieurs années d''hybridation et de sélection, quel bonheur de vous proposer cette nouveauté. En exclusivité chez nous, enfin une variété qui allie résistance et élégance.',3);
UNLOCK TABLES;

ALTER TABLE rosier ADD CONSTRAINT fk_genre_id FOREIGN KEY (genre_id) REFERENCES genre (id) ON DELETE CASCADE;