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
-- Dumping data for table `affaire`
--

LOCK TABLES `affaire` WRITE;
/*!40000 ALTER TABLE `affaire` DISABLE KEYS */;
INSERT INTO `affaire` VALUES (1,NULL,NULL,NULL,'Jarvis',NULL),(2,NULL,NULL,NULL,'Gallois',NULL),(3,NULL,NULL,NULL,'meurtre à Pigalle',NULL),(4,NULL,NULL,NULL,'Jumelles',NULL),(5,NULL,NULL,NULL,'Autoroute',NULL),(6,NULL,NULL,NULL,'vol de Ferraris',NULL),(7,NULL,NULL,NULL,'Les Bijoux de l\'hôtel',NULL),(8,NULL,NULL,NULL,'Arthus',NULL),(9,NULL,NULL,NULL,'Livres et parchemins',NULL),(10,NULL,NULL,NULL,'Arcturus',NULL),(11,NULL,NULL,NULL,'Disparus de la Seine',NULL),(12,NULL,NULL,NULL,'Petite Emilie',NULL),(13,NULL,NULL,NULL,'Laquais pendu',NULL),(14,NULL,NULL,NULL,'Incendie du Macaroni',NULL),(15,NULL,NULL,NULL,'Sabotage nocturne',NULL),(16,NULL,NULL,NULL,'Militaires déserteurs',NULL),(17,NULL,NULL,NULL,'Lait empoisonné',NULL),(18,NULL,NULL,NULL,'Famille suicidée',NULL),(19,NULL,NULL,NULL,'Escroquerie du pont',NULL),(20,NULL,NULL,NULL,'Vol des bijoux de la reine',NULL);
/*!40000 ALTER TABLE `affaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `agent_affecte`
--

LOCK TABLES `agent_affecte` WRITE;
/*!40000 ALTER TABLE `agent_affecte` DISABLE KEYS */;
INSERT INTO `agent_affecte` VALUES (1,NULL,NULL,NULL,NULL,3,8),(20,NULL,NULL,NULL,NULL,6,18),(2,NULL,NULL,NULL,NULL,5,16),(3,NULL,NULL,NULL,NULL,3,17),(4,NULL,NULL,NULL,NULL,4,19),(5,NULL,NULL,NULL,NULL,20,19),(6,NULL,NULL,NULL,NULL,2,20),(7,NULL,NULL,NULL,NULL,6,2),(8,NULL,NULL,NULL,NULL,2,15),(9,NULL,NULL,NULL,NULL,1,15),(10,NULL,NULL,NULL,NULL,6,3),(11,NULL,NULL,NULL,NULL,2,3),(12,NULL,NULL,NULL,NULL,1,8),(13,NULL,NULL,NULL,NULL,20,9),(14,NULL,NULL,NULL,NULL,4,9),(15,NULL,NULL,NULL,NULL,3,19),(16,NULL,NULL,NULL,NULL,3,5),(17,NULL,NULL,NULL,NULL,4,4),(18,NULL,NULL,NULL,NULL,4,6),(19,NULL,NULL,NULL,NULL,20,13);
/*!40000 ALTER TABLE `agent_affecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `arme`
--

LOCK TABLES `arme` WRITE;
/*!40000 ALTER TABLE `arme` DISABLE KEYS */;
/*!40000 ALTER TABLE `arme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `arme_impliquee`
--

LOCK TABLES `arme_impliquee` WRITE;
/*!40000 ALTER TABLE `arme_impliquee` DISABLE KEYS */;
/*!40000 ALTER TABLE `arme_impliquee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (20),(20),(20),(20),(20),(20),(20),(20),(20),(20);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personne`
--

LOCK TABLES `personne` WRITE;
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
INSERT INTO `personne` VALUES (1,'Delle','Cita'),(2,'Garou','Harmony'),(3,'Del','Morta'),(4,'Dule','Arnaud'),(5,'Vache','Holla'),(6,'Maupassant','Victor'),(7,'Hugo','Guy'),(8,'Donna','Bella'),(9,'Bonaparte','Napoléon'),(10,'Bourbon','Henri'),(11,'Gauthier','Théophile'),(12,'Attaque','Luis'),(13,'Nulle','Xavier'),(14,'Rostand','Edmond'),(15,'LeGoff','Jacques'),(16,'Favier','Jean'),(17,'Dartois','Robert'),(18,'Raymond','Raoul'),(19,'Pélican','Dominique'),(20,'Dickinson','Emily');
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suspect`
--

LOCK TABLES `suspect` WRITE;
/*!40000 ALTER TABLE `suspect` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `temoin`
--

LOCK TABLES `temoin` WRITE;
/*!40000 ALTER TABLE `temoin` DISABLE KEYS */;
/*!40000 ALTER TABLE `temoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehicule`
--

LOCK TABLES `vehicule` WRITE;
/*!40000 ALTER TABLE `vehicule` DISABLE KEYS */;
INSERT INTO `vehicule` VALUES (1,'noir','TH-786-TH','Honda','Shadow','moto',5),(2,'rouge','RT-676-HIJ','Porsche','911','voiture',7),(4,'blanc','THF-45-RFX','Volvo','38t','camion',10),(6,'bleu','GHT-46-JKJ','Kawazaki','500cc','moto',20),(7,'jaune','TH-786-THI','Motobécane','50cc','scooter',5),(9,'bleu','GHT-65-JHG','Honda','125cc','moto',10),(10,'jaune','GHT-67-AZS','Citroën','moyenne','camionnette',11),(11,'blanc','BNH-12-CVZ','Citroën','C3','voiture',10),(12,'bleu','TGY-456-DF','Ligier','125cc','scooter',19),(13,'noir','GHT-45-GH','Volvo','28t','camion',3),(14,'rose','FGT-78-GH','Simplon','titi','autocar',5),(15,'gris','THG-787-HSQ','Citroën','2CV','voiture',18),(16,'rouge','TH-786-ZZZ','Tesla','spatiale','voiture',14),(18,'blanc','TQC-12-LM','Lada',NULL,'voiture',7),(3,'rose','EFD-65-REF','Volvo','gros','camion',1),(5,'rouge','ED-34-LMK','Mercedes','38t','camion',19),(8,'jaune','SDF-666-FGH','Fiat','28t','camion',9),(17,'vert','AZE-67-KLM','Harley Davidson','Roadster','camion',13),(19,'violet','OLK-56-OPM','Renault','R5','camion',11),(20,'orange','ZED-123-TG','Ford','Capri','voiture',16),(21,'rouge','HJR-543-THG','Ford','Mustang','voiture',NULL),(22,'noir','HJR-657-XXX','Ford','Mustang','voiture',NULL);
/*!40000 ALTER TABLE `vehicule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vehicule_implique`
--

LOCK TABLES `vehicule_implique` WRITE;
/*!40000 ALTER TABLE `vehicule_implique` DISABLE KEYS */;
INSERT INTO `vehicule_implique` VALUES (1,NULL,4,7),(2,NULL,5,1),(3,NULL,6,9),(4,NULL,3,9),(5,NULL,4,9),(6,NULL,4,7),(7,NULL,7,7),(9,NULL,16,1),(10,NULL,10,6),(11,NULL,20,17),(12,NULL,6,16),(13,NULL,17,20),(14,NULL,14,3),(15,NULL,18,6),(16,NULL,3,8),(17,NULL,6,18),(18,NULL,4,20),(19,NULL,9,10),(20,NULL,16,11);
/*!40000 ALTER TABLE `vehicule_implique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `victime`
--

LOCK TABLES `victime` WRITE;
/*!40000 ALTER TABLE `victime` DISABLE KEYS */;
/*!40000 ALTER TABLE `victime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01 23:47:24
