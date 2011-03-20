CREATE DATABASE  IF NOT EXISTS `matundb` /*!40100 DEFAULT CHARACTER SET cp1251 COLLATE cp1251_general_cs */;
USE `matundb`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: matundb
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `valuti`
--

DROP TABLE IF EXISTS `valuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valuti` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `cod` char(3) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `dsc` varchar(50) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `drz` char(2) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `cod_UNIQUE` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='валути';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valuti`
--

LOCK TABLES `valuti` WRITE;
/*!40000 ALTER TABLE `valuti` DISABLE KEYS */;
/*!40000 ALTER TABLE `valuti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `art`
--

DROP TABLE IF EXISTS `art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='default карактеристики на материјали - шифрарник';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art`
--

LOCK TABLES `art` WRITE;
/*!40000 ALTER TABLE `art` DISABLE KEYS */;
/*!40000 ALTER TABLE `art` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arhdoks`
--

DROP TABLE IF EXISTS `arhdoks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arhdoks` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='архива на промени во документи - ставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arhdoks`
--

LOCK TABLES `arhdoks` WRITE;
/*!40000 ALTER TABLE `arhdoks` DISABLE KEYS */;
/*!40000 ALTER TABLE `arhdoks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cen`
--

DROP TABLE IF EXISTS `cen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cen` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='ценовник';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cen`
--

LOCK TABLES `cen` WRITE;
/*!40000 ALTER TABLE `cen` DISABLE KEYS */;
/*!40000 ALTER TABLE `cen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doks`
--

DROP TABLE IF EXISTS `doks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doks` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='документи ставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doks`
--

LOCK TABLES `doks` WRITE;
/*!40000 ALTER TABLE `doks` DISABLE KEYS */;
/*!40000 ALTER TABLE `doks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klg`
--

DROP TABLE IF EXISTS `klg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klg` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='генералии на курсни листи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klg`
--

LOCK TABLES `klg` WRITE;
/*!40000 ALTER TABLE `klg` DISABLE KEYS */;
/*!40000 ALTER TABLE `klg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dblog`
--

DROP TABLE IF EXISTS `dblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblog` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `iddbusr` varchar(6) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `terminal` varchar(60) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='лог на пристапи во апликацијата';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dblog`
--

LOCK TABLES `dblog` WRITE;
/*!40000 ALTER TABLE `dblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pflica`
--

DROP TABLE IF EXISTS `pflica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pflica` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `cod` char(6) NOT NULL DEFAULT '',
  `dsc1` varchar(100) NOT NULL DEFAULT '',
  `dsc2` varchar(100) NOT NULL DEFAULT '',
  `embg` char(13) NOT NULL DEFAULT '',
  `edb` char(13) NOT NULL DEFAULT '',
  `pasos` varchar(30) NOT NULL DEFAULT '',
  `eori` varchar(20) NOT NULL DEFAULT '',
  `tip` char(2) NOT NULL DEFAULT '',
  `adr` varchar(70) NOT NULL DEFAULT '',
  `grad` varchar(35) NOT NULL DEFAULT '',
  `post` char(6) NOT NULL DEFAULT '',
  `drzava` varchar(50) NOT NULL DEFAULT '',
  `konlic` varchar(100) NOT NULL DEFAULT '',
  `tel1` char(20) NOT NULL DEFAULT '',
  `tel2` char(20) NOT NULL DEFAULT '',
  `faks` char(20) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `banka` varchar(50) NOT NULL DEFAULT '',
  `smetka` char(15) NOT NULL DEFAULT '',
  `regs` varchar(50) NOT NULL DEFAULT '' COMMENT 'registracija',
  `isbank` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `cod_UNIQUE` (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='физички и правни лица';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pflica`
--

LOCK TABLES `pflica` WRITE;
/*!40000 ALTER TABLE `pflica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pflica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprm`
--

DROP TABLE IF EXISTS `dbprm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbprm` (
  `iddbprm` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(20) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `dsc` varchar(100) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `usr` char(17) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `hdn` bit(1) NOT NULL DEFAULT b'0',
  `autold` bit(1) NOT NULL DEFAULT b'0',
  `valc` varchar(255) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `vali` int(11) NOT NULL DEFAULT '0',
  `valn` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `valf` float NOT NULL DEFAULT '0',
  `vall` bit(1) NOT NULL DEFAULT b'0',
  `vald` date NOT NULL DEFAULT '0000-00-00',
  `valt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `changed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`iddbprm`),
  UNIQUE KEY `sid` (`cod`,`usr`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='параметри за апликација';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprm`
--

LOCK TABLES `dbprm` WRITE;
/*!40000 ALTER TABLE `dbprm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hrono`
--

DROP TABLE IF EXISTS `hrono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hrono` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='хронологија на настани во магацините';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrono`
--

LOCK TABLES `hrono` WRITE;
/*!40000 ALTER TABLE `hrono` DISABLE KEYS */;
/*!40000 ALTER TABLE `hrono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokg`
--

DROP TABLE IF EXISTS `dokg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokg` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='документи генералии';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokg`
--

LOCK TABLES `dokg` WRITE;
/*!40000 ALTER TABLE `dokg` DISABLE KEYS */;
/*!40000 ALTER TABLE `dokg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orged`
--

DROP TABLE IF EXISTS `orged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orged` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='организациски единици';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orged`
--

LOCK TABLES `orged` WRITE;
/*!40000 ALTER TABLE `orged` DISABLE KEYS */;
/*!40000 ALTER TABLE `orged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artsos`
--

DROP TABLE IF EXISTS `artsos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artsos` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='моментална состојба на магацини';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artsos`
--

LOCK TABLES `artsos` WRITE;
/*!40000 ALTER TABLE `artsos` DISABLE KEYS */;
/*!40000 ALTER TABLE `artsos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artkat`
--

DROP TABLE IF EXISTS `artkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artkat` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='каталошки броеви на ниво на материјал+производител';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artkat`
--

LOCK TABLES `artkat` WRITE;
/*!40000 ALTER TABLE `artkat` DISABLE KEYS */;
/*!40000 ALTER TABLE `artkat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arhdokg`
--

DROP TABLE IF EXISTS `arhdokg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arhdokg` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='архива на промени во документи - генералии';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arhdokg`
--

LOCK TABLES `arhdokg` WRITE;
/*!40000 ALTER TABLE `arhdokg` DISABLE KEYS */;
/*!40000 ALTER TABLE `arhdokg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipcen`
--

DROP TABLE IF EXISTS `tipcen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipcen` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='типови на цени';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipcen`
--

LOCK TABLES `tipcen` WRITE;
/*!40000 ALTER TABLE `tipcen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipcen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipdok`
--

DROP TABLE IF EXISTS `tipdok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipdok` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='типови документи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipdok`
--

LOCK TABLES `tipdok` WRITE;
/*!40000 ALTER TABLE `tipdok` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipdok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kls`
--

DROP TABLE IF EXISTS `kls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kls` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='ставки на курсни листи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kls`
--

LOCK TABLES `kls` WRITE;
/*!40000 ALTER TABLE `kls` DISABLE KEYS */;
/*!40000 ALTER TABLE `kls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magaci`
--

DROP TABLE IF EXISTS `magaci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magaci` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='магацини';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magaci`
--

LOCK TABLES `magaci` WRITE;
/*!40000 ALTER TABLE `magaci` DISABLE KEYS */;
/*!40000 ALTER TABLE `magaci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbusr`
--

DROP TABLE IF EXISTS `dbusr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbusr` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `iddbuser` varchar(6) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `ime` varchar(60) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `prezime` varchar(70) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `profil` varchar(20) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `pass` varchar(45) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  `lastin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `terminal` varchar(60) COLLATE cp1251_general_cs NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `iddbuser_UNIQUE` (`iddbuser`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs COMMENT='Корисници на апликација';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbusr`
--

LOCK TABLES `dbusr` WRITE;
/*!40000 ALTER TABLE `dbusr` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbusr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'matundb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-20 21:50:06
