CREATE DATABASE  IF NOT EXISTS `minimarketDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `minimarketDB`;
-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: minimarketDB
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

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
-- Table structure for table `log_transaction`
--

DROP TABLE IF EXISTS `log_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_transaction` (
  `id_logTrans` int(11) NOT NULL AUTO_INCREMENT,
  `idItems` int(11) NOT NULL,
  `itemQty` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `idKaryawan` int(11) NOT NULL,
  `delete_date` datetime NOT NULL,
  PRIMARY KEY (`id_logTrans`),
  KEY `fk_idItems_idx` (`idItems`),
  KEY `fk_idKaryawan_idx` (`idKaryawan`),
  CONSTRAINT `fk_idItems_idx0` FOREIGN KEY (`idItems`) REFERENCES `Items` (`idItems`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idKaryawan_idx0` FOREIGN KEY (`idKaryawan`) REFERENCES `Casier` (`idKaryawan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_transaction`
--

LOCK TABLES `log_transaction` WRITE;
/*!40000 ALTER TABLE `log_transaction` DISABLE KEYS */;
INSERT INTO `log_transaction` VALUES (11,2,15,'2020-05-26 21:13:17',5,'2020-06-16 17:31:24');
/*!40000 ALTER TABLE `log_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 17:37:11
