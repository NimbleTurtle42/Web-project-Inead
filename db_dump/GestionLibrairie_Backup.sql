-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionlibrairie
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commander`
--

DROP TABLE IF EXISTS `commander`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commander` (
  `N°_Commande` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` bigint(20) DEFAULT NULL,
  `Code_fournisseur` int(11) DEFAULT NULL,
  `Date_achat` date DEFAULT NULL,
  `prix_achat` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`N°_Commande`),
  KEY `ISBN_idx` (`ISBN`),
  KEY `FK_Codef_idx` (`Code_fournisseur`),
  CONSTRAINT `FK_Codef` FOREIGN KEY (`Code_fournisseur`) REFERENCES `fournisseur` (`Code_fournisseur`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN` FOREIGN KEY (`ISBN`) REFERENCES `livre` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=14521217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commander`
--

LOCK TABLES `commander` WRITE;
/*!40000 ALTER TABLE `commander` DISABLE KEYS */;
INSERT INTO `commander` VALUES 
(546,2765410074,3,'2015-05-01',36.00),
(5694,2897632104,4,'2152-05-31',6.00),
(16521,2897635164,4,'2018-05-16',0.00),
(21564,2071900054,1,'2000-02-16',21.00),
(45651,20710054,2,'2005-05-19',15.00),
(65215,2072044,1,'2014-05-16',3.00),
(98656,289763144,4,'2017-12-16',13.00),
(895654,207104,2,'2006-05-16',4.00),
(1546221,2765410064,3,'2012-05-24',5.00),
(14521216,2765410054,3,'2012-10-16',38.00);
/*!40000 ALTER TABLE `commander` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `Code_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `Raison_social` varchar(100) DEFAULT NULL,
  `Rue_fournisseur` varchar(100) DEFAULT NULL,
  `Code_postal` varchar(45) DEFAULT NULL,
  `Localite` varchar(100) DEFAULT NULL,
  `Pays` varchar(100) DEFAULT NULL,
  `Tel_fournisseur` bigint(20) DEFAULT NULL,
  `Url_fournisseur` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Code_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES 
(1,'Fournico','5 Rue d\'une rue','38400','Grenoble','France',693548954,'http://fournico.fr'),
(2,'LesFourni','4 allée des allées','75121','Paris','France',623658954,'https://lesFourni.fr'),
(3,'Nice','69 chemin des nice','69000','Lyon','France',423565954,'http://badjokesnice.com'),
(4,'RandomFourni','7 noms de rue aléatoires','H2Y 1C6','Montréal ','Canada',323548954,'https://randomfourni.ca');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livre` (
  `ISBN` bigint(20) NOT NULL,
  `Titre_livre` varchar(100) DEFAULT NULL,
  `Theme_livre` varchar(100) DEFAULT NULL,
  `Nbr_page_livre` int(11) NOT NULL,
  `Format_livre` varchar(45) DEFAULT NULL,
  `Nom_auteur` varchar(45) NOT NULL,
  `Prenom_auteur` varchar(45) NOT NULL,
  `Editeur` varchar(45) DEFAULT NULL,
  `Anne_edition` year(4) NOT NULL,
  `Prix_vente` decimal(7,2) DEFAULT NULL,
  `Langue_livre` varchar(45) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES (207104,'Franklin','Enfant',120,'poche','Roussvelt','Frank','Gallimard',2006,8.00,'Français'),
(2072044,'Ender','Science-Fiction',360,'broché','Card','Orson Scott ','Gallimard',2014,14.00,'Anglais'),
(20710054,'Martine','Enfant',20,'digest','Patrick-Bru','Elle','Gallimard',1998,4.00,'Français'),
(289763144,'Carl','Jeux',210,'A4','Brun','Bruno','Les Editeurs réunis',2016,6.99,'Anglais'),
(2071900054,'Poucet','Fantaisie',60,'poche','Claude','François','Gallimard',1980,5.00,'Français'),
(2765410054,'Jackson','Aventure',510,'poche','Percy','Jack','Miramax',2005,12.00,'Anglais'),
(2765410064,'Jackson 2','Aventure',430,'poche','Percy','Jack','Miramax',2012,12.00,'Anglais'),
(2765410074,'Jackson 3','Aventure',540,'broché','Percy','Jack','Miramax',2015,13.00,'Anglais'),
(2897632104,'Carl jr','Jeux',245,'A4','Brun','Bruno','Les Editeurs réunis',2150,6.99,'Français'),
(2897635164,'Ubi','Entreprise',1506,'royal','Mount','Soty','Les Editeurs réunis',2010,150.00,'Espagnol');
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gestionlibrairie'
--

--
-- Dumping routines for database 'gestionlibrairie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24 18:08:06
