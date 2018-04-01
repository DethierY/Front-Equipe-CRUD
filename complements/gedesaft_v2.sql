-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gedesaft_v2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gedesaft_v2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gedesaft_v2` DEFAULT CHARACTER SET utf8 ;
USE `gedesaft_v2` ;

-- -----------------------------------------------------
-- Table `gedesaft_v2`.`affaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`affaire` (
  `id` BIGINT(20) NOT NULL,
  `date_cloture` DATE NULL DEFAULT NULL,
  `date_creation` DATE NULL DEFAULT NULL,
  `lieu` VARCHAR(40) NULL DEFAULT NULL,
  `nom` VARCHAR(40) NULL DEFAULT NULL,
  `rapport` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`agent_affecte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`agent_affecte` (
  `id` BIGINT(20) NOT NULL,
  `droit_acces` INT(11) NULL DEFAULT NULL,
  `grade` VARCHAR(40) NULL DEFAULT NULL,
  `identifiant` VARCHAR(7) NULL DEFAULT NULL,
  `password` VARCHAR(10) NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_personne` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKjt47nkb4ghk9n44usy40a7t54` (`id_affaire` ASC),
  INDEX `FKbi8ry0wip32dq221y37mb5s4w` (`id_personne` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`arme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`arme` (
  `id` BIGINT(20) NOT NULL,
  `modele` VARCHAR(40) NULL DEFAULT NULL,
  `type` VARCHAR(40) NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKtc1kvco05b8glhla4j8njsojc` (`id_affaire` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`arme_impliquee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`arme_impliquee` (
  `id_arme_implique` BIGINT(20) NOT NULL,
  `date_implication` DATE NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_arme` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_arme_implique`),
  INDEX `FKmabrbgocastcx1egcg8s30fyr` (`id_affaire` ASC),
  INDEX `FKgk4wk6j933q7yimdxljj7uu0v` (`id_arme` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`hibernate_sequence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`hibernate_sequence` (
  `next_val` BIGINT(20) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`personne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`personne` (
  `id` BIGINT(20) NOT NULL,
  `nom` VARCHAR(40) NULL DEFAULT NULL,
  `prenom` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`suspect`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`suspect` (
  `id` BIGINT(20) NOT NULL,
  `couleur_cheveux` VARCHAR(15) NULL DEFAULT NULL,
  `couleur_peau` VARCHAR(15) NULL DEFAULT NULL,
  `photo` VARCHAR(255) NULL DEFAULT NULL,
  `pseudo` VARCHAR(40) NULL DEFAULT NULL,
  `signe_particulier` VARCHAR(255) NULL DEFAULT NULL,
  `taille` VARCHAR(10) NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_personne` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKhn4rst6j0j8uoblyc5ffu0q63` (`id_affaire` ASC),
  INDEX `FK1ojq78dv3ig8koh41nrmcas3p` (`id_personne` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`temoin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`temoin` (
  `id` BIGINT(20) NOT NULL,
  `temoignage` VARCHAR(255) NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_personne` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKg5cjhl5llhk376sq9oyanro65` (`id_affaire` ASC),
  INDEX `FK1xe3lxl96q0wyoo9r1ytt35hl` (`id_personne` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`vehicule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`vehicule` (
  `id_vehicule` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `couleur` VARCHAR(50) NULL DEFAULT NULL,
  `immatriculation` VARCHAR(255) NOT NULL,
  `marque` VARCHAR(50) NULL DEFAULT NULL,
  `modele` VARCHAR(50) NULL DEFAULT NULL,
  `type` VARCHAR(50) NOT NULL,
  `id_personne` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id_vehicule`),
  UNIQUE INDEX `immatriculation_UNIQUE` (`immatriculation` ASC),
  UNIQUE INDEX `id_vehicule_UNIQUE` (`id_vehicule` ASC),
  INDEX `FK4a4yj36tqgwok4tembv40rkvx` (`id_personne` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 23
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`vehicule_implique`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`vehicule_implique` (
  `id_vehicule_implique` BIGINT(20) NOT NULL,
  `date_implication` DATE NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_vehicule` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id_vehicule_implique`),
  INDEX `FK7gxq6mw18b1ofxb3rb9y8xjlo` (`id_affaire` ASC),
  INDEX `FK83qh2c8rxwb8x2iomd1o0x8df` (`id_vehicule` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gedesaft_v2`.`victime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gedesaft_v2`.`victime` (
  `id` INT(11) NOT NULL,
  `type_agression` VARCHAR(40) NULL DEFAULT NULL,
  `id_affaire` BIGINT(20) NOT NULL,
  `id_personne` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK3p7p0uojo1ho4qbg8cj434j80` (`id_affaire` ASC),
  INDEX `FKql5m223oo6ieo2lv5w0lrhkt5` (`id_personne` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
