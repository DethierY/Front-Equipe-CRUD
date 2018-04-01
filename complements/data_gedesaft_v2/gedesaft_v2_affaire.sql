-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gedesaft_v2
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Table structure for table `affaire`
--

DROP TABLE IF EXISTS `affaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affaire` (
  `id` bigint(20) NOT NULL,
  `date_cloture` date DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `lieu` varchar(40) DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `rapport` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affaire`
--

LOCK TABLES `affaire` WRITE;
/*!40000 ALTER TABLE `affaire` DISABLE KEYS */;
INSERT INTO `affaire` VALUES (1,NULL,NULL,NULL,'Jarvis',NULL),(2,NULL,NULL,NULL,'Gallois',NULL),(3,NULL,NULL,NULL,'meurtre à Pigalle',NULL),(4,NULL,NULL,NULL,'Jumelles',NULL),(5,NULL,NULL,NULL,'Autoroute',NULL),(6,NULL,NULL,NULL,'vol de Ferraris',NULL),(7,NULL,NULL,NULL,'Les Bijoux de l\'hôtel',NULL),(8,NULL,NULL,NULL,'Arthus',NULL),(9,NULL,NULL,NULL,'Livres et parchemins',NULL),(10,NULL,NULL,NULL,'Arcturus',NULL),(11,NULL,NULL,NULL,'Disparus de la Seine',NULL),(12,NULL,NULL,NULL,'Petite Emilie',NULL),(13,NULL,NULL,NULL,'Laquais pendu',NULL),(14,NULL,NULL,NULL,'Incendie du Macaroni',NULL),(15,NULL,NULL,NULL,'Sabotage nocturne',NULL),(16,NULL,NULL,NULL,'Militaires déserteurs',NULL),(17,NULL,NULL,NULL,'Lait empoisonné',NULL),(18,NULL,NULL,NULL,'Famille suicidée',NULL),(19,NULL,NULL,NULL,'Escroquerie du pont',NULL),(20,NULL,NULL,NULL,'Vol des bijoux de la reine',NULL);
/*!40000 ALTER TABLE `affaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 22:21:27
