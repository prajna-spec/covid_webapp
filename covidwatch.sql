-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: covidwatch
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `covidwatch`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `covidwatch` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `covidwatch`;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `a_id` int NOT NULL,
  `given_name` varchar(50) DEFAULT NULL,
  `family_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email_address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_ins`
--

DROP TABLE IF EXISTS `check_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_ins` (
  `check_in_code` varchar(6) NOT NULL,
  `date_` date DEFAULT NULL,
  `time_` time DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `c_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_ins`
--

LOCK TABLES `check_ins` WRITE;
/*!40000 ALTER TABLE `check_ins` DISABLE KEYS */;
INSERT INTO `check_ins` VALUES ('0Hjk98','2021-06-14','19:18:01',NULL,1),('8H8lRa','2020-05-28','13:24:31','bobrice_',2),('OA87oK','2021-06-14','19:12:58',NULL,3),('P8h73i','2021-06-14','19:03:51','bobrice_',4),('P8h73i','2021-06-14','19:28:08','bobrice_',5);
/*!40000 ALTER TABLE `check_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `m_id` int NOT NULL,
  `given_name` varchar(50) DEFAULT NULL,
  `family_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email_address` varchar(128) DEFAULT NULL,
  `venue` int DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `given_name` varchar(50) DEFAULT NULL,
  `family_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email_address` varchar(128) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Bob','Brice','bobrice_','94f05f964b165b44b797df209b16e3406b01a1d83fec58949d7fcdc23565f9cb','bobrice@example.email','user'),(2,'Jenny','Elliot','jen_e11','6449d989ac8ceab604773a0a3b128fed0f8046e090d9851f454f3191af4f8e57','jennyelliot11@example.email','manager'),(3,'George','Snow','snowy123098','9ffc7b2d0405e80f9348348f61c828d7b00ba343a897c83962aecb328b6b767d','georges@example.email','admin'),(5,'Sam','Samuel','sammy0','ab4fcf61dce123efddafa2f32f94d94fade596014a1ac5a959515b58c6fbf127','example@email.email',NULL),(6,'test','test','test','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','test','manager'),(7,'user','user','user','04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb','user','user'),(8,'manager','manager','manager','6ee4a469cd4e91053847f5d3fcb61dbcc91e8f0ef10be7748da4c4a1ba382d17','manager','manager'),(9,'test2','test2','test2','60303ae22b998861bce3b28f33eec1be758a213c86c93c076dbe9f558c11c752','test2','manager'),(10,'lee','lee','lee','1508b697895abf03d55c3841f59236ab92c9ba6ba89795c8337fcf392fdee8b4','lee','manager');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `v_id` int NOT NULL,
  `street_number` int DEFAULT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `suburb_town` varchar(128) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postcode` int DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `check_in_code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,11,'Baking Street','Glenelg','SA',5045,'Australia','8H8lRa');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 13:58:43
