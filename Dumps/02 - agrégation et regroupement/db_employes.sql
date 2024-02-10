-- MySQL dump 10.13  Distrib 5.7.11, for Win32 (AMD64)
--
-- Host: localhost    Database: db_employes
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_employes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_employes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_employes`;

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employe` (
  `departement` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `salaire` int DEFAULT NULL,
  `poste` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
INSERT INTO `employe` VALUES ('Informatique','Olivia','Pearson',2011,3000,'Stagiaire\r'),('Informatique','Olivia','Pearson',2012,3000,'Stagiaire\r'),('Informatique','Olivia','Pearson',2012,4200,'Développeur junior\r'),('Informatique','Olivia','Pearson',2013,4900,'Développeur junior\r'),('Informatique','Olivia','Pearson',2014,8100,'Développeur senior\r'),('Gestion','Jack','Johnson',2011,4300,'Chef de projet junior\r'),('Gestion','Jack','Johnson',2012,5100,'Chef de projet\r'),('Gestion','Jack','Johnson',2013,7200,'Chef de projet senior\r'),('Gestion','Jack','Johnson',2014,7600,'Chef de projet senior\r'),('Gestion','Jack','Johnson',2015,9500,'Chef de département\r'),('Informatique','Harry','Taylor',2015,2700,'Stagiaire\r'),('Ressources humaines','Lily','Bennett',2013,1900,'Spécialiste RH junior\r'),('Ressources humaines','Lily','Bennett',2014,2300,'Spécialiste RH\r'),('Ressources humaines','Lily','Bennett',2015,3650,'Spécialiste RH senior\r'),('Comptabilité','Charlie','Johnson',2010,2000,'Comptable junior\r'),('Comptabilité','Charlie','Johnson',2011,2000,'Comptable junior\r'),('Comptabilité','Charlie','Johnson',2012,2500,'Comptable\r'),('Comptabilité','Charlie','Johnson',2013,3200,'Comptable\r'),('Comptabilité','Charlie','Johnson',2014,3700,'Comptable senior\r'),('Comptabilité','Charlie','Johnson',2015,4200,'Comptable senior\r'),('Informatique','Jacob','King',2013,3400,'Stagiaire\r'),('Informatique','Jacob','King',2014,4100,'Développeur junior\r'),('Informatique','Jacob','King',2015,5900,'Développeur\r'),('Comptabilité','Jessica','Poole',2014,3800,'Comptable senior\r'),('Comptabilité','Jessica','Poole',2015,4300,'Comptable senior\r'),('Gestion','Ethan','Black',2013,5100,'Chef de projet\r'),('Gestion','Ethan','Black',2014,5900,'Chef de projet\r'),('Gestion','Ethan','Black',2015,6300,'Chef de projet senior\r'),('Service d\'assistance','Ella','Watson',2013,1400,'Stagiaire\r'),('Service d\'assistance','Ella','Watson',2014,1900,'Assistante du service clientèle\r'),('Service d\'assistance','Ella','Watson',2015,2300,'Assistante du service clientèle\r'),('Ressources humaines','Sophia','Hunt',2011,2100,'Spécialiste RH junior\r'),('Marketing','Amelia','Wright',2014,2100,'Stagiaire\r'),('Marketing','Amelia','Wright',2015,2300,'CEO spécialiste junior\r'),('Marketing','Lucy','Green',2013,2000,'Stagiaire\r'),('Marketing','Ruby','Chapman',2012,2500,'Stagiaire\r'),('Marketing','Ruby','Chapman',2013,3400,'CEO spécialiste junior\r'),('Marketing','Ruby','Chapman',2014,3900,'CEO spécialiste\r'),('Marketing','Ruby','Chapman',2015,5400,'CEO spécialiste senior\r'),(NULL,'Amie','Walker',NULL,NULL,'NULL\r'),('Service d\'assistance','Brian','Murphy',2012,1500,'Stagiaire\r'),('Service d\'assistance','Brian','Murphy',2013,2000,'Assistant du service clientèle\r'),('Service d\'assistance','Brian','Murphy',2014,2500,'Assistant du service clientèle\r'),('Service d\'assistance','Brian','Murphy',2015,3700,'Spécialiste du service client\r'),('Gestion','Eva','Saunders',2011,2100,'Stagiaire\r'),('Gestion','Eva','Saunders',2012,4100,'Chef de projet junior\r'),('Gestion','Eva','Saunders',2013,4600,'Chef de projet junior\r'),('Gestion','Eva','Saunders',2014,5300,'Chef de projet\r'),('Gestion','Eva','Saunders',2015,6100,'Chef de projet senior');
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 15:47:16
