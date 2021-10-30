
-- create db and import data

create database if not exists gifshow;

SET GLOBAL sql_mode = '';

--



/*!40000 DROP DATABASE IF EXISTS `gifshow`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gifshow` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `gifshow`;


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `genre` enum('fantasy','mystery','nonfiction') NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `title`, `genre`, `description`) VALUES (1,'The Lord of the Rings','fantasy','The Lord of the Rings is an epic fantasy novel written by philologist and University of Oxford professor J. R. R. Tolkien (from Wikipedia).'),(2,'The Maltese Falcon','mystery','The Maltese Falcon is a 1930 detective novel by Dashiell Hammett, originally serialized in the magazine Black Mask (from Wikipedia).'),(3,'Economics in One Lesson','nonfiction','dg2. Economics in One Lesson is an introduction to free market economics written by Henry Hazlitt and published in 1946, based on FrÃ©dÃ©ric Bastiat\\\'s essay Ce qu\\\'on voit et ce qu\\\'on ne voit pas (English: \\\"What is Seen and What is Not Seen\\\") (from Wikipedia).'),(4,'dg2','mystery','a book for dg.'),(5,'a','fantasy','2015-10-05_Mon_12.25-PM');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--
SET GLOBAL sql_mode = '';

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` int(11) DEFAULT NULL,
  `staten` int(11) DEFAULT NULL,
  `cityn` int(11) DEFAULT NULL,
  `updatedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdtime` datetime  ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

SET GLOBAL sql_mode = '';

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` (`id`, `country`, `staten`, `cityn`, `updatedtime`, `createdtime`) VALUES (1,1,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,3,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,1,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,2,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,3,NULL,NULL,'2016-04-11 12:14:20','2016-04-11 12:14:20'),(10,1,NULL,NULL,'2016-04-11 12:18:10','2016-04-11 12:18:10'),(11,1,NULL,NULL,'2016-04-11 12:41:44','2016-04-11 12:41:44'),(12,2,NULL,NULL,'2016-04-11 12:43:46','2016-04-11 12:43:46'),(13,3,6,12,'2016-04-12 12:20:09','2016-04-12 12:20:09'),(14,2,4,8,'2016-04-12 12:21:28','2016-04-12 12:21:28'),(15,2,4,8,'2016-04-12 12:21:57','2016-04-12 12:21:57'),(16,2,3,6,'2016-04-12 12:22:36','2016-04-12 12:22:36'),(17,2,4,7,'2016-04-12 12:26:00','2016-04-12 12:26:00'),(18,2,4,7,'2016-04-12 12:26:10','2016-04-12 12:26:10'),(19,2,4,8,'2016-04-12 13:38:43','2016-04-12 13:38:43'),(20,3,5,10,'2016-04-12 13:39:20','2016-04-12 13:39:20'),(21,3,6,12,'2016-04-12 13:44:32','2016-04-12 13:44:32'),(22,1,2,3,'2016-04-12 13:47:50','2016-04-12 13:47:50'),(23,1,1,1,'2016-04-12 13:52:12','2016-04-12 13:52:12'),(24,3,6,12,'2016-04-12 14:54:00','2016-04-12 14:54:00'),(25,2,4,7,'2016-04-12 20:09:40','2016-04-12 20:09:40'),(26,2,3,5,'2016-04-12 20:12:23','2016-04-12 20:12:23'),(27,3,6,11,'2016-04-12 20:13:44','2016-04-12 20:13:44'),(28,3,6,11,'2016-04-12 20:19:45','2016-04-12 20:19:45'),(29,2,3,5,'2016-04-12 20:20:20','2016-04-12 20:20:20'),(30,1,2,4,'2016-04-12 20:26:01','2016-04-12 20:26:01'),(31,3,5,10,'2016-04-12 20:27:13','2016-04-12 20:27:13'),(32,3,5,10,'2016-04-12 20:28:49','2016-04-12 20:28:49'),(33,2,3,6,'2016-04-12 20:31:59','2016-04-12 20:31:59'),(34,2,3,5,'2016-04-12 20:36:37','2016-04-12 20:36:37'),(35,2,3,5,'2016-04-12 20:37:44','2016-04-12 20:37:44'),(36,1,2,4,'2016-04-12 20:40:48','2016-04-12 20:40:48'),(37,2,3,5,'2016-04-12 20:41:14','2016-04-12 20:41:14'),(38,3,5,10,'2016-04-12 20:42:43','2016-04-12 20:42:43'),(39,1,1,2,'2016-04-12 20:43:22','2016-04-12 20:43:22'),(40,2,3,5,'2016-04-12 20:44:41','2016-04-12 20:44:41'),(41,1,1,2,'2016-04-12 20:45:27','2016-04-12 20:45:27'),(42,3,5,10,'2016-04-12 20:45:57','2016-04-12 20:45:57'),(43,3,6,11,'2016-04-12 20:46:19','2016-04-12 20:46:19'),(44,2,4,8,'2016-04-12 20:57:29','2016-04-12 20:57:29');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dg417`@`localhost`*/ /*!50003 TRIGGER notes_trigger_created BEFORE INSERT ON 
notes
FOR EACH ROW BEGIN
SET new.createdtime := now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;


--
-- Table structure for table `nte_note`
--

DROP TABLE IF EXISTS `nte_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `note2` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

