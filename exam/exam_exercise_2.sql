-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: photodb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `KeywordID` int NOT NULL AUTO_INCREMENT,
  `Keyword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`KeywordID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (1,'sun'),(2,'bi'),(3,'new');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photographers`
--

DROP TABLE IF EXISTS `photographers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photographers` (
  `PhotographerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PhotographerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photographers`
--

LOCK TABLES `photographers` WRITE;
/*!40000 ALTER TABLE `photographers` DISABLE KEYS */;
INSERT INTO `photographers` VALUES (1,'obi','john'),(2,'mary','smith'),(3,'william','james');
/*!40000 ALTER TABLE `photographers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photographs`
--

DROP TABLE IF EXISTS `photographs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photographs` (
  `PhotoID` int NOT NULL AUTO_INCREMENT,
  `PhotographerID` int NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PhotoID`),
  KEY `fk_photographerd_idx` (`PhotographerID`),
  CONSTRAINT `fk_photographerd` FOREIGN KEY (`PhotographerID`) REFERENCES `photographers` (`PhotographerID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photographs`
--

LOCK TABLES `photographs` WRITE;
/*!40000 ALTER TABLE `photographs` DISABLE KEYS */;
INSERT INTO `photographs` VALUES (1,2,'sunshine'),(2,2,'bird'),(3,1,'new world');
/*!40000 ALTER TABLE `photographs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photokeywords`
--

DROP TABLE IF EXISTS `photokeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photokeywords` (
  `PhotoKeywordID` int NOT NULL AUTO_INCREMENT,
  `PhotoID` int NOT NULL,
  `KeywordID` int NOT NULL,
  PRIMARY KEY (`PhotoKeywordID`),
  KEY `fk_photoid_idx` (`PhotoID`),
  KEY `fk_keywordid_idx` (`KeywordID`),
  CONSTRAINT `fk_keywordid` FOREIGN KEY (`KeywordID`) REFERENCES `keywords` (`KeywordID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_photoid` FOREIGN KEY (`PhotoID`) REFERENCES `photographs` (`PhotoID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photokeywords`
--

LOCK TABLES `photokeywords` WRITE;
/*!40000 ALTER TABLE `photokeywords` DISABLE KEYS */;
INSERT INTO `photokeywords` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `photokeywords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 11:00:13
