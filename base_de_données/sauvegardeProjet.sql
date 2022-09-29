-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: musquash
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achat`
--

DROP TABLE IF EXISTS `achat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achat` (
  `IdAchat` int(11) NOT NULL AUTO_INCREMENT,
  `IdProduit` int(11) DEFAULT NULL,
  `NumClient` int(11) DEFAULT NULL,
  `DateAchat` date DEFAULT NULL,
  `Unite` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAchat`),
  UNIQUE KEY `IdProduit` (`IdProduit`,`NumClient`,`DateAchat`),
  KEY `NumClient` (`NumClient`),
  CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`),
  CONSTRAINT `achat_ibfk_2` FOREIGN KEY (`IdProduit`) REFERENCES `produit` (`IdProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achat`
--

LOCK TABLES `achat` WRITE;
/*!40000 ALTER TABLE `achat` DISABLE KEYS */;
/*!40000 ALTER TABLE `achat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adhesion`
--

DROP TABLE IF EXISTS `adhesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adhesion` (
  `NumAdhes` int(11) NOT NULL AUTO_INCREMENT,
  `IdFormule` int(11) NOT NULL,
  `DureeAdhesion` int(11) NOT NULL,
  `DateAdhes` date DEFAULT NULL,
  `TarifAdhes` decimal(12,6) DEFAULT NULL,
  `NumClient` int(11) DEFAULT NULL,
  `IdCasier` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumAdhes`),
  KEY `NumClient` (`NumClient`),
  KEY `IdCasier` (`IdCasier`),
  KEY `adhesion_ibfk_1` (`IdFormule`),
  CONSTRAINT `adhesion_ibfk_1` FOREIGN KEY (`IdFormule`) REFERENCES `formule` (`IdFormule`),
  CONSTRAINT `adhesion_ibfk_2` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`),
  CONSTRAINT `adhesion_ibfk_3` FOREIGN KEY (`IdCasier`) REFERENCES `casier` (`IdCasier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adhesion`
--

LOCK TABLES `adhesion` WRITE;
/*!40000 ALTER TABLE `adhesion` DISABLE KEYS */;
INSERT INTO `adhesion` VALUES (1,2,12,'2021-04-27',90.000000,6,1),(2,4,1,'2021-04-27',35.000000,7,2);
/*!40000 ALTER TABLE `adhesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casier`
--

DROP TABLE IF EXISTS `casier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casier` (
  `IdCasier` int(11) NOT NULL AUTO_INCREMENT,
  `DureeResaCasiers` int(11) DEFAULT NULL,
  `TarifCasiers` decimal(12,6) DEFAULT NULL,
  PRIMARY KEY (`IdCasier`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casier`
--

LOCK TABLES `casier` WRITE;
/*!40000 ALTER TABLE `casier` DISABLE KEYS */;
INSERT INTO `casier` VALUES (1,12,70.000000),(2,12,70.000000),(3,12,70.000000),(4,12,70.000000),(5,12,70.000000),(6,12,70.000000),(7,12,70.000000),(8,12,70.000000),(9,12,70.000000),(10,12,70.000000),(11,12,70.000000),(12,12,70.000000),(13,12,70.000000),(14,12,70.000000),(15,12,70.000000),(16,12,70.000000),(17,12,70.000000),(18,12,70.000000),(19,12,70.000000),(20,12,70.000000),(21,12,70.000000),(22,12,70.000000),(23,12,70.000000),(24,12,70.000000),(25,12,70.000000),(26,12,70.000000),(27,12,70.000000),(28,12,70.000000),(29,12,70.000000),(30,12,70.000000),(31,12,70.000000),(32,12,70.000000),(33,12,70.000000),(34,12,70.000000),(35,12,70.000000),(36,12,70.000000),(37,12,70.000000),(38,12,70.000000),(39,12,70.000000),(40,12,70.000000),(41,12,70.000000),(42,12,70.000000),(43,12,70.000000),(44,12,70.000000),(45,12,70.000000),(46,12,70.000000),(47,12,70.000000),(48,12,70.000000),(49,12,70.000000),(50,12,70.000000),(51,12,70.000000),(52,12,70.000000),(53,12,70.000000),(54,12,70.000000),(55,12,70.000000),(56,12,70.000000),(57,12,70.000000),(58,12,70.000000),(59,12,70.000000),(60,12,70.000000),(61,12,70.000000),(62,12,70.000000),(63,12,70.000000),(64,12,70.000000),(65,12,70.000000),(66,12,70.000000),(67,12,70.000000),(68,12,70.000000),(69,12,70.000000),(70,12,70.000000),(80,1,7.000000),(81,1,7.000000),(82,1,7.000000),(83,1,7.000000),(84,1,7.000000),(85,1,7.000000),(86,1,7.000000),(87,1,7.000000),(88,1,7.000000),(89,1,7.000000),(90,1,7.000000),(91,1,7.000000),(92,1,7.000000),(93,1,7.000000),(94,1,7.000000),(95,1,7.000000),(96,1,7.000000),(97,1,7.000000),(98,1,7.000000),(99,1,7.000000),(100,1,7.000000),(101,1,7.000000),(102,1,7.000000),(103,1,7.000000),(104,1,7.000000),(105,1,7.000000),(106,1,7.000000),(107,1,7.000000),(108,1,7.000000),(109,1,7.000000),(110,NULL,7.000000);
/*!40000 ALTER TABLE `casier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `NumClient` int(11) NOT NULL AUTO_INCREMENT,
  `NomClient` varchar(30) DEFAULT NULL,
  `PrenomClient` varchar(30) DEFAULT NULL,
  `AdresseClient` varchar(250) DEFAULT NULL,
  `TelClient` varchar(10) DEFAULT NULL,
  `MailClient` varchar(60) DEFAULT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`NumClient`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Bezon','Jérémy','896 rue François Dezeuze34070 Montpellier','0651631667','ageha30@gmail.com','ageha30','123456','2021-04-07 15:28:45'),(2,'Huguet','Eric','245 rue gambetta 30000 Nimes','0651631665','eric.huguet@gmail.com','eric34','123456','2021-04-07 15:28:45'),(3,'Nignan','Yvette','865 rue gambetta 34070 Montpellier','0651631670','yvette.nignan@gmail.com','yvette34','123456','2021-04-07 15:28:45'),(4,'Valadier','Mickael','245 rue des attoles 34400 Lattes','0651631690','mickael.valadier@gmail.com','mickael34','123456','2021-04-07 15:28:45'),(5,'Martin','Olivier','255 chemin de la garde','0789562347','martin.olivier@gmail.com','olivier30','123456','2021-04-09 15:56:00'),(6,'valadier','Karine','25 chemin des platanes','0601020304','karine.valadier@hotmail.com','karine30','123456','2021-04-09 16:06:20'),(7,'dupont','loic','10 route perdu','0605040708','dupont.loic@wahoo.fr','loic30','123456','2021-04-09 16:08:19');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fonction` (
  `IdFonction` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleFonction` varchar(80) DEFAULT NULL,
  `isProf` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`IdFonction`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonction`
--

LOCK TABLES `fonction` WRITE;
/*!40000 ALTER TABLE `fonction` DISABLE KEYS */;
INSERT INTO `fonction` VALUES (1,'Administrateur',0),(2,'Employé',0),(3,'Profgym',1),(4,'ProfSquach',1);
/*!40000 ALTER TABLE `fonction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formule`
--

DROP TABLE IF EXISTS `formule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formule` (
  `IdFormule` int(11) NOT NULL AUTO_INCREMENT,
  `NomFormule` varchar(255) NOT NULL,
  `TarifFormule` float DEFAULT NULL,
  PRIMARY KEY (`IdFormule`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formule`
--

LOCK TABLES `formule` WRITE;
/*!40000 ALTER TABLE `formule` DISABLE KEYS */;
INSERT INTO `formule` VALUES (1,'Formule Salle de Musculation',0),(2,'Formule Cours de Gymnastique',0),(3,'Formule Terrain de Squash',0),(4,'Formule Cours Particulier Squash',0),(5,'Formule Cours Groupe Squash',0);
/*!40000 ALTER TABLE `formule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formuletypecours`
--

DROP TABLE IF EXISTS `formuletypecours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formuletypecours` (
  `IdFormule` int(11) NOT NULL,
  `IdTypeCours` int(11) NOT NULL,
  UNIQUE KEY `IdFormule` (`IdFormule`,`IdTypeCours`),
  KEY `FkTypeCours` (`IdTypeCours`),
  CONSTRAINT `FkFormule` FOREIGN KEY (`IdFormule`) REFERENCES `formule` (`IdFormule`),
  CONSTRAINT `FkTypeCours` FOREIGN KEY (`IdTypeCours`) REFERENCES `typecours` (`NumTypeCours`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formuletypecours`
--

LOCK TABLES `formuletypecours` WRITE;
/*!40000 ALTER TABLE `formuletypecours` DISABLE KEYS */;
INSERT INTO `formuletypecours` VALUES (2,3),(3,4),(4,1),(4,4),(5,2),(5,4);
/*!40000 ALTER TABLE `formuletypecours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel` (
  `NumPerso` int(11) NOT NULL AUTO_INCREMENT,
  `NomPerso` varchar(30) DEFAULT NULL,
  `PrenomPerso` varchar(30) DEFAULT NULL,
  `AdressePerso` varchar(250) DEFAULT NULL,
  `TelPerso` varchar(15) DEFAULT NULL,
  `MailPerso` varchar(60) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `IdFonction` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumPerso`),
  UNIQUE KEY `MailPerso` (`MailPerso`),
  KEY `IdFonction` (`IdFonction`),
  CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`IdFonction`) REFERENCES `fonction` (`IdFonction`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'Bezon','Jérémy','896 rue François Dezeuze34070 Montpellier','0651631667','ageha30@gmail.com','123456','2021-04-07 15:28:45',1),(2,'Huguet','Eric','245 rue gambetta 30000 Nimes','0651631665','eric.huguet@gmail.com','123456','2021-04-07 15:28:45',1),(3,'Nignan','Yvette','865 rue gambetta 34070 Montpellier','0651631670','yvette.nignan@gmail.com','123456','2021-04-07 15:28:45',1),(4,'Valadier','Mickael','245 rue des attoles 34400 Lattes','0651631690','mickael.valadier@gmail.com','123456','2021-04-07 15:28:45',1),(5,'Germain','Patrick','29 ave de Latour','0605040302','patrick.germain@gmail.com','123456','2021-04-08 17:57:18',3),(6,'Blondel','marc','85 route du canal','0706080908','blondel.marc@hotmail.com','123456','2021-04-09 11:04:15',4),(9,'copain','marc','49 ave de Latour','06010203204','copain.marc@gmail.com','123456','2021-04-20 15:19:57',3);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planification`
--

DROP TABLE IF EXISTS `planification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planification` (
  `IdPlanification` int(11) NOT NULL AUTO_INCREMENT,
  `DatePlanification` datetime NOT NULL,
  `NumSalle` int(11) NOT NULL,
  `NumTypeCours` int(11) NOT NULL,
  `NumPerso` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPlanification`),
  UNIQUE KEY `DatePlanification` (`DatePlanification`,`NumSalle`,`NumTypeCours`) USING BTREE,
  KEY `NumSalle` (`NumSalle`),
  KEY `NumTypeCours` (`NumTypeCours`),
  KEY `NumPerso` (`NumPerso`),
  CONSTRAINT `planification_ibfk_1` FOREIGN KEY (`NumSalle`) REFERENCES `salle` (`NumSalle`),
  CONSTRAINT `planification_ibfk_2` FOREIGN KEY (`NumTypeCours`) REFERENCES `typecours` (`NumTypeCours`),
  CONSTRAINT `planification_ibfk_3` FOREIGN KEY (`NumPerso`) REFERENCES `personnel` (`NumPerso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planification`
--

LOCK TABLES `planification` WRITE;
/*!40000 ALTER TABLE `planification` DISABLE KEYS */;
INSERT INTO `planification` VALUES (1,'2021-04-21 03:04:00',1,3,5),(2,'2021-04-22 00:00:00',2,3,5),(3,'2021-04-14 00:00:00',11,1,6),(4,'2021-04-23 10:21:50',4,1,5),(5,'2021-04-23 10:19:39',10,3,9),(8,'2021-04-29 13:40:00',8,3,6);
/*!40000 ALTER TABLE `planification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit` (
  `IdProduit` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduit` varchar(100) DEFAULT NULL,
  `PrixProduit` decimal(12,6) DEFAULT NULL,
  `IdTypeProduit` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProduit`),
  KEY `IdTypeProduit` (`IdTypeProduit`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`IdTypeProduit`) REFERENCES `typeproduit` (`IdTypeProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `IdReservation` int(11) NOT NULL AUTO_INCREMENT,
  `IdPlanification` int(11) NOT NULL,
  `NumClient` int(11) NOT NULL,
  PRIMARY KEY (`IdReservation`),
  UNIQUE KEY `IdPlanification` (`IdPlanification`,`NumClient`),
  KEY `NumClient` (`NumClient`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`IdPlanification`) REFERENCES `planification` (`IdPlanification`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`NumClient`) REFERENCES `client` (`NumClient`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,2,6),(2,3,7);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle` (
  `NumSalle` int(11) NOT NULL AUTO_INCREMENT,
  `NomSalle` varchar(80) DEFAULT NULL,
  `NumTypeSalle` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumSalle`),
  KEY `NumTypeSalle` (`NumTypeSalle`),
  CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`NumTypeSalle`) REFERENCES `typesalle` (`NumTypeSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,'Salle de Gym n°1',1),(2,'Salle de Gym n°2',1),(3,'Salle de Gym n°3',1),(4,'Salle de Gym n°4',1),(5,'Salle de Gym n°5',1),(6,'Salle de Gym n°6',1),(7,'Salle de Gym n°7',1),(8,'Salle de Gym n°8',1),(9,'Salle de Gym n°9',1),(10,'Salle de Gym n°10',1),(11,'Terrain Squash n°1',2),(12,'Terrain Squash n°2',2),(13,'Terrain Squash n°3',2),(14,'Terrain Squash n°4',2),(15,'Terrain Squash n°5',2),(16,'Terrain Squash n°6',2),(27,'Salle de Musculation',3);
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typecours`
--

DROP TABLE IF EXISTS `typecours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typecours` (
  `NumTypeCours` int(11) NOT NULL AUTO_INCREMENT,
  `NomTypeCours` varchar(80) DEFAULT NULL,
  `DureeCours` time DEFAULT NULL,
  `NbMaxDisponibilite` int(10) NOT NULL,
  PRIMARY KEY (`NumTypeCours`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typecours`
--

LOCK TABLES `typecours` WRITE;
/*!40000 ALTER TABLE `typecours` DISABLE KEYS */;
INSERT INTO `typecours` VALUES (1,'Cours de Squash particulier','01:00:00',1),(2,'Cours de Squash groupé','02:00:00',6),(3,'Cours de Gymnastique','01:00:00',10),(4,'Terrain Squash','01:00:00',2);
/*!40000 ALTER TABLE `typecours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeproduit`
--

DROP TABLE IF EXISTS `typeproduit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeproduit` (
  `IdTypeProduit` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleTypeProduit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdTypeProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeproduit`
--

LOCK TABLES `typeproduit` WRITE;
/*!40000 ALTER TABLE `typeproduit` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeproduit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesalle`
--

DROP TABLE IF EXISTS `typesalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesalle` (
  `NumTypeSalle` int(11) NOT NULL AUTO_INCREMENT,
  `NomTypesalle` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`NumTypeSalle`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesalle`
--

LOCK TABLES `typesalle` WRITE;
/*!40000 ALTER TABLE `typesalle` DISABLE KEYS */;
INSERT INTO `typesalle` VALUES (1,'Gym'),(2,'Squash'),(3,'muscu');
/*!40000 ALTER TABLE `typesalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesalletypecours`
--

DROP TABLE IF EXISTS `typesalletypecours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typesalletypecours` (
  `NumTypeCours` int(11) NOT NULL,
  `NumTypeSalle` int(11) NOT NULL,
  PRIMARY KEY (`NumTypeSalle`,`NumTypeCours`),
  KEY `NumTypeCours` (`NumTypeCours`),
  CONSTRAINT `typesalletypecours_ibfk_1` FOREIGN KEY (`NumTypeSalle`) REFERENCES `typesalle` (`NumTypeSalle`),
  CONSTRAINT `typesalletypecours_ibfk_2` FOREIGN KEY (`NumTypeCours`) REFERENCES `typecours` (`NumTypeCours`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesalletypecours`
--

LOCK TABLES `typesalletypecours` WRITE;
/*!40000 ALTER TABLE `typesalletypecours` DISABLE KEYS */;
INSERT INTO `typesalletypecours` VALUES (3,1),(1,2),(2,2),(4,2);
/*!40000 ALTER TABLE `typesalletypecours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 16:47:53
