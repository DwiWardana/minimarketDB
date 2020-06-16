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
-- Table structure for table `Casier`
--

DROP TABLE IF EXISTS `Casier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Casier` (
  `idKaryawan` int(11) NOT NULL AUTO_INCREMENT,
  `namaKaryawan` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoTlp` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alamat` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idKaryawan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Casier`
--

LOCK TABLES `Casier` WRITE;
/*!40000 ALTER TABLE `Casier` DISABLE KEYS */;
INSERT INTO `Casier` VALUES (1,'Udin','08979660126','JL.Sudirman'),(2,'kamir','981281287','JL.Iseng bersama'),(3,'nera','0897126127','JL.Sulawesi'),(4,'kusri','089762162','JL.Kaki bersama'),(5,'amir','087267128','JL.Keselek'),(6,'tejo','076237671','JL.Bersama mantan'),(7,'umar','0817671267','JL.Baru kemarin'),(8,'ucup','089276321','JL.Pacar'),(9,'made','0851827182','JL.Perdombaan'),(10,'nyoman','076878238','JL.Hayam Wuruk');
/*!40000 ALTER TABLE `Casier` ENABLE KEYS */;
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
