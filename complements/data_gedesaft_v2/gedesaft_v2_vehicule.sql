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
-- Table structure for table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicule` (
  `id_vehicule` bigint(20) NOT NULL AUTO_INCREMENT,
  `couleur` varchar(50) DEFAULT NULL,
  `immatriculation` varchar(255) NOT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `modele` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `id_personne` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_vehicule`),
  UNIQUE KEY `immatriculation_UNIQUE` (`immatriculation`),
  UNIQUE KEY `id_vehicule_UNIQUE` (`id_vehicule`),
  KEY `FK4a4yj36tqgwok4tembv40rkvx` (`id_personne`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicule`
--

LOCK TABLES `vehicule` WRITE;
/*!40000 ALTER TABLE `vehicule` DISABLE KEYS */;
INSERT INTO `vehicule` VALUES (1,'noir','TH-786-TH','Honda','Shadow','moto',5),(2,'rouge','RT-676-HIJ','Porsche','911','voiture',7),(4,'blanc','THF-45-RFX','Volvo','38t','camion',10),(6,'bleu','GHT-46-JKJ','Kawazaki','500cc','moto',20),(7,'jaune','TH-786-THI','Motobécane','50cc','scooter',5),(9,'bleu','GHT-65-JHG','Honda','125cc','moto',10),(10,'jaune','GHT-67-AZS','Citroën','moyenne','camionnette',11),(11,'blanc','BNH-12-CVZ','Citroën','C3','voiture',10),(12,'bleu','TGY-456-DF','Ligier','125cc','scooter',19),(13,'noir','GHT-45-GH','Volvo','28t','camion',3),(14,'rose','FGT-78-GH','Simplon','titi','autocar',5),(15,'gris','THG-787-HSQ','Citroën','2CV','voiture',18),(16,'rouge','TH-786-ZZZ','Tesla','spatiale','voiture',14),(18,'blanc','TQC-12-LM','Lada',NULL,'voiture',7),(3,'rose','EFD-65-REF','Volvo','gros','camion',1),(5,'rouge','ED-34-LMK','Mercedes','38t','camion',19),(8,'jaune','SDF-666-FGH','Fiat','28t','camion',9),(17,'vert','AZE-67-KLM','Harley Davidson','Roadster','camion',13),(19,'violet','OLK-56-OPM','Renault','R5','camion',11),(20,'orange','ZED-123-TG','Ford','Capri','voiture',16),(21,'rouge','HJR-543-THG','Ford','Mustang','voiture',NULL),(22,'noir','HJR-657-XXX','Ford','Mustang','voiture',NULL);
/*!40000 ALTER TABLE `vehicule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 22:21:26
