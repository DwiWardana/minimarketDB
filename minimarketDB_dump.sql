-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: minimarketDB
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `idItems` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_qty` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Item_price` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idItems`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,'nastar','1000','7500'),(2,'biskuit roma','1000','12000'),(3,'oreo','1000','12000'),(4,'coca cola','1000','5000'),(5,'teh botol','1000','3000'),(6,'nescafe','1000','10000'),(7,'good day','1000','6500'),(8,'indomie goreng','1000','3500'),(9,'indomie kuah','1000','3500'),(10,'tango','1000','10000');
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `idTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `idItems` int(11) NOT NULL,
  `itemQty` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `idKaryawan` int(11) NOT NULL,
  PRIMARY KEY (`idTransaction`),
  KEY `fk_idItems_idx` (`idItems`),
  KEY `fk_idKaryawan_idx` (`idKaryawan`),
  CONSTRAINT `fk_idItems_idx` FOREIGN KEY (`idItems`) REFERENCES `Items` (`idItems`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idKaryawan_idx` FOREIGN KEY (`idKaryawan`) REFERENCES `Casier` (`idKaryawan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,4,3,'2020-05-26 21:13:17',1),(2,1,12,'2020-05-26 21:13:17',1),(3,4,3,'2020-05-26 21:13:17',1),(4,7,8,'2020-05-26 21:13:19',2),(5,6,12,'2020-05-26 21:13:19',2),(6,5,4,'2020-05-26 21:13:18',2),(7,3,5,'2020-05-26 21:13:17',2),(8,2,10,'2020-05-26 21:13:17',5),(9,8,12,'2020-05-26 21:13:17',5),(10,6,2,'2020-05-26 21:13:18',5);
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `minimarketDB`.`Transaction_BEFORE_UPDATE` BEFORE UPDATE ON `Transaction` FOR EACH ROW
BEGIN
	INSERT INTO `log_transaction`
    SET idItems = OLD.idItems,
    itemQty = OLD.itemQty,
    date = OLD.date,
    idKaryawan = OLD.idKaryawan,
    delete_date = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `karyawan_1`
--

DROP TABLE IF EXISTS `karyawan_1`;
/*!50001 DROP VIEW IF EXISTS `karyawan_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `karyawan_1` (
  `idItems` tinyint NOT NULL,
  `itemQty` tinyint NOT NULL,
  `date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `karyawan_2`
--

DROP TABLE IF EXISTS `karyawan_2`;
/*!50001 DROP VIEW IF EXISTS `karyawan_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `karyawan_2` (
  `idItems` tinyint NOT NULL,
  `itemQty` tinyint NOT NULL,
  `date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `karyawan_5`
--

DROP TABLE IF EXISTS `karyawan_5`;
/*!50001 DROP VIEW IF EXISTS `karyawan_5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `karyawan_5` (
  `idItems` tinyint NOT NULL,
  `itemQty` tinyint NOT NULL,
  `date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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

--
-- Final view structure for view `karyawan_1`
--

/*!50001 DROP TABLE IF EXISTS `karyawan_1`*/;
/*!50001 DROP VIEW IF EXISTS `karyawan_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `karyawan_1` AS select `i`.`idItems` AS `idItems`,`t`.`itemQty` AS `itemQty`,`t`.`date` AS `date` from (`Transaction` `t` join `Items` `i`) where `t`.`idKaryawan` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `karyawan_2`
--

/*!50001 DROP TABLE IF EXISTS `karyawan_2`*/;
/*!50001 DROP VIEW IF EXISTS `karyawan_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `karyawan_2` AS select `i`.`idItems` AS `idItems`,`t`.`itemQty` AS `itemQty`,`t`.`date` AS `date` from (`Transaction` `t` join `Items` `i`) where `t`.`idKaryawan` = 2 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `karyawan_5`
--

/*!50001 DROP TABLE IF EXISTS `karyawan_5`*/;
/*!50001 DROP VIEW IF EXISTS `karyawan_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `karyawan_5` AS select `i`.`idItems` AS `idItems`,`t`.`itemQty` AS `itemQty`,`t`.`date` AS `date` from (`Transaction` `t` join `Items` `i`) where `t`.`idKaryawan` = 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 18:22:22
