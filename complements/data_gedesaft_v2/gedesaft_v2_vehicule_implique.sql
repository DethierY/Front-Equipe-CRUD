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
-- Table structure for table `vehicule_implique`
--

DROP TABLE IF EXISTS `vehicule_implique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicule_implique` (
  `id_vehicule_implique` bigint(20) NOT NULL,
  `date_implication` date DEFAULT NULL,
  `id_affaire` bigint(20) NOT NULL,
  `id_vehicule` bigint(20) NOT NULL,
  PRIMARY KEY (`id_vehicule_implique`),
  KEY `FK7gxq6mw18b1ofxb3rb9y8xjlo` (`id_affaire`),
  KEY `FK83qh2c8rxwb8x2iomd1o0x8df` (`id_vehicule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicule_implique`
--

LOCK TABLES `vehicule_implique` WRITE;
/*!40000 ALTER TABLE `vehicule_implique` DISABLE KEYS */;
INSERT INTO `vehicule_implique` VALUES (1,NULL,4,7),(2,NULL,5,1),(3,NULL,6,9),(4,NULL,3,9),(5,NULL,4,9),(6,NULL,4,7),(7,NULL,7,7),(9,NULL,16,1),(10,NULL,10,6),(11,NULL,20,17),(12,NULL,6,16),(13,NULL,17,20),(14,NULL,14,3),(15,NULL,18,6),(16,NULL,3,8),(17,NULL,6,18),(18,NULL,4,20),(19,NULL,9,10),(20,NULL,16,11);
/*!40000 ALTER TABLE `vehicule_implique` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 22:21:25
