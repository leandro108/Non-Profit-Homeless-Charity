CREATE DATABASE  IF NOT EXISTS `helping_the_homeless_nonprofit` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `helping_the_homeless_nonprofit`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: helping_the_homeless_nonprofit
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donation_id` int NOT NULL,
  `recurring_donor_id` int DEFAULT NULL,
  `location_id` int NOT NULL,
  `billing_zipcode` varchar(10) NOT NULL,
  `creditcard_token` varchar(255) NOT NULL,
  `donation_amount` int NOT NULL,
  `donation_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `fk_donations_locations1_idx` (`location_id`),
  KEY `fk_donations_recurring_donors1_idx` (`recurring_donor_id`),
  CONSTRAINT `fk_donations_locations1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`),
  CONSTRAINT `fk_donations_recurring_donors1` FOREIGN KEY (`recurring_donor_id`) REFERENCES `recurring_donors` (`recurring_donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,NULL,1,'58828-5190','4ebaa2ecb95b2c5c2b76a9ae',125,'2022-04-22','Bella.Olson@yahoo.com'),(2,NULL,4,'57755','ca57c6b9fd1a6abd7af2ed1a',305,'2021-10-07','Misty_Kreiger@yahoo.com'),(3,NULL,5,'51042','93e455dcd4bf0e2f2bab32bc',193,'2021-05-25','Brennon_Krajcik@yahoo.com'),(4,NULL,1,'23249','2d498d8ca2cf2b0798397841',133,'2021-11-14','Ludwig28@gmail.com'),(5,NULL,2,'16746-0655','6a9c9bc53a083b7fe2af64bf',144,'2021-09-16','Malachi.Nitzsche@hotmail.com'),(6,NULL,3,'75156-6958','af3f6593dcf301e7cf49dc6b',940,'2022-02-25','Johann.Ledner91@hotmail.com'),(7,NULL,4,'63919','dea340f5baaf24dbd8f5a359',584,'2021-07-16','Sofia_Murray19@hotmail.com'),(8,NULL,5,'86482-1697','a0d5adf2fbdcbe2bbec258a2',591,'2021-10-12','Terrence17@yahoo.com'),(9,NULL,1,'34516','ef615be34e4d518bcc1fd4ea',652,'2022-01-18','Maddison52@yahoo.com'),(10,NULL,2,'54861-0338','c58098c14bdd1eda98b9af0e',666,'2022-04-06','Ronny.Smith@yahoo.com'),(11,NULL,3,'78369-3377','f5c35a50c725d0bb96fd3dff',973,'2021-12-25','Laura36@hotmail.com'),(12,NULL,4,'05956-1894','e1509e8af42bec9ebc5b6eaa',206,'2021-12-31','Kristin_Mills68@hotmail.com'),(13,NULL,5,'85825-5683','3ebe2bcf1d2b0df6f8cebe0f',283,'2021-12-16','Burnice_Feest@yahoo.com'),(14,NULL,1,'97084','20a6bc4ade54ab6c471f0fe5',141,'2021-09-13','Adrienne.Kiehn@yahoo.com'),(15,NULL,2,'26381','daa5a741118460ce70b9a8ba',370,'2021-07-17','Mariana42@hotmail.com'),(16,NULL,3,'99947-4661','8c8ddfe2af35dfdbcbb7e5be',89,'2021-10-28','Gussie_Heller0@hotmail.com'),(17,NULL,4,'02553-2471','efbfbcef1cbba62aaedf4c7c',177,'2021-06-14','Norwood.Walker@hotmail.com'),(18,NULL,5,'54658','f7b75ade1f1a7ebf9d18a9bc',552,'2022-04-02','Eleanore_Larson@yahoo.com'),(19,NULL,1,'552','8afed9cad9cb59f122850e2c',770,'2021-08-24','Joseph.Schulist@hotmail.com'),(20,NULL,2,'62554-1085','09a0d2ad9b9d51c1ca65adff',51,'2021-11-08','Tito_Connelly@hotmail.com'),(21,NULL,3,'53944-3437','6fcab5da83728cefca2bc88f',830,'2021-06-15','Lue_Herzog@hotmail.com'),(22,NULL,4,'46675','0f48ecdf78ced4874cde9bf7',176,'2021-11-24','Camden_Swaniawski59@hotmail.com'),(23,NULL,5,'42501','ccc82ead084aec3b1cadcae8',567,'2021-08-23','Ken.Cronin@gmail.com'),(24,NULL,1,'26155','970abc02a6603a2ecc31e92a',819,'2021-06-07','Cortez_Kub49@yahoo.com'),(25,NULL,2,'68077','eaf7ed6f4bed3fdfcada7cdd',939,'2021-09-02','Marshall_Legros@yahoo.com'),(26,NULL,3,'38877','266504abca0fc657f3fcd2cd',740,'2021-11-11','Monty_Cassin@gmail.com'),(27,NULL,4,'73252-6580','3daddabaaa67904d527caf6b',929,'2021-10-11','Eldred.McKenzie@hotmail.com'),(28,NULL,5,'92828','dcc8cd340bdcdcbdeb52e4f0',671,'2021-12-27','Reba.Jacobi@yahoo.com'),(29,NULL,1,'99676','6da2001f94bcfea9d74fad51',81,'2021-11-26','Kieran27@gmail.com'),(30,NULL,2,'57259','f5fee8a2dbff4aa7bda6d6af',899,'2021-09-02','Kathlyn_Luettgen@hotmail.com'),(31,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-04-24','delia.stracke@gmail.com'),(32,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-05-24','delia.stracke@gmail.com'),(33,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-06-24','delia.stracke@gmail.com'),(34,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-07-24','delia.stracke@gmail.com'),(35,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-08-24','delia.stracke@gmail.com'),(36,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-09-24','delia.stracke@gmail.com'),(37,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-10-24','delia.stracke@gmail.com'),(38,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-11-24','delia.stracke@gmail.com'),(39,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2021-12-24','delia.stracke@gmail.com'),(40,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2022-01-24','delia.stracke@gmail.com'),(41,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2022-02-24','delia.stracke@gmail.com'),(42,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2022-03-24','delia.stracke@gmail.com'),(43,1,1,'48594','j48tjf7dud74k302kfje48dh',100,'2022-04-24','delia.stracke@gmail.com'),(44,2,1,'30947','f95jyut8r7ejfnvkd93hdjt7',15,'2021-05-01','watermills80@hotmail.com'),(45,2,1,'30947','f95jyut8r7ejfnvkd93hdjt7',15,'2021-06-01','watermills80@hotmail.com'),(46,2,1,'30947','f95jyut8r7ejfnvkd93hdjt7',15,'2021-07-01','watermills80@hotmail.com'),(47,2,1,'30947','f95jyut8r7ejfnvkd93hdjt7',15,'2021-08-01','watermills80@hotmail.com'),(48,2,1,'30947','f95jyut8r7ejfnvkd93hdjt7',15,'2021-09-01','watermills80@hotmail.com'),(49,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-07-03','stracke.clark@outlook.com'),(50,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-08-03','stracke.clark@outlook.com'),(51,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-09-03','stracke.clark@outlook.com'),(52,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-10-03','stracke.clark@outlook.com'),(53,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-11-03','stracke.clark@outlook.com'),(54,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2021-12-03','stracke.clark@outlook.com'),(55,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2022-01-03','stracke.clark@outlook.com'),(56,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2022-02-03','stracke.clark@outlook.com'),(57,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2022-03-03','stracke.clark@outlook.com'),(58,3,3,'10472','4hg8yjt7tuy8fjdn4jgjh9ui',37,'2022-04-03','stracke.clark@outlook.com'),(59,4,5,'68504','2jwufid9rigkhut7y86utor6',50,'2021-12-24','leroy@apple.com'),(60,5,2,'79604','4jt86uy9u9i0ofkdyeur65yt',19,'2022-01-15','salvador.heid@gmail.com'),(61,5,2,'79604','4jt86uy9u9i0ofkdyeur65yt',19,'2022-02-15','salvador.heid@gmail.com'),(62,5,2,'79604','4jt86uy9u9i0ofkdyeur65yt',19,'2022-03-15','salvador.heid@gmail.com'),(63,5,2,'79604','4jt86uy9u9i0ofkdyeur65yt',19,'2022-04-15','salvador.heid@gmail.com'),(64,6,4,'87967','6uy8tit96iuojlhkgi78yu6i',30,'2022-02-22','vernaschiller100@hotmail.com'),(65,6,4,'87967','6uy8tit96iuojlhkgi78yu6i',30,'2022-03-22','vernaschiller100@hotmail.com'),(66,6,4,'87967','6uy8tit96iuojlhkgi78yu6i',30,'2022-04-22','vernaschiller100@hotmail.com'),(67,7,3,'40392','4jtug8yuyi7oulkdts62hfn5',100,'2021-09-13','marion.stolt@gmail.com'),(68,7,3,'40392','4jtug8yuyi7oulkdts62hfn5',100,'2021-10-13','marion.stolt@gmail.com'),(69,7,3,'40392','4jtug8yuyi7oulkdts62hfn5',100,'2021-11-13','marion.stolt@gmail.com'),(70,7,3,'40392','4jtug8yuyi7oulkdts62hfn5',100,'2021-12-13','marion.stolt@gmail.com'),(71,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-06-08','loribraun@icloud.com'),(72,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-07-08','loribraun@icloud.com'),(73,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-08-08','loribraun@icloud.com'),(74,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-09-08','loribraun@icloud.com'),(75,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-10-08','loribraun@icloud.com'),(76,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-11-08','loribraun@icloud.com'),(77,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2021-12-08','loribraun@icloud.com'),(78,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2022-01-08','loribraun@icloud.com'),(79,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2022-02-08','loribraun@icloud.com'),(80,8,1,'59050','9xjdk3utiy9u080olkxbsgdt',5,'2022-03-08','loribraun@icloud.com'),(81,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2021-10-11','greg.lowe@hotmail.com'),(82,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2021-11-11','greg.lowe@hotmail.com'),(83,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2021-12-11','greg.lowe@hotmail.com'),(84,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2022-01-11','greg.lowe@hotmail.com'),(85,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2022-02-11','greg.lowe@hotmail.com'),(86,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2022-03-11','greg.lowe@hotmail.com'),(87,9,5,'40192','6iyku8j8hkfj2k1p9uokahs6',12,'2022-04-11','greg.lowe@hotmail.com'),(88,10,2,'95032','2jfit76uyj5k4ldhciu83j21',250,'2022-01-11','nick.macgyver@hotmail.com'),(89,10,2,'95032','2jfit76uyj5k4ldhciu83j21',250,'2022-02-11','nick.macgyver@hotmail.com'),(90,10,2,'95032','2jfit76uyj5k4ldhciu83j21',250,'2022-03-11','nick.macgyver@hotmail.com'),(91,10,2,'95032','2jfit76uyj5k4ldhciu83j21',250,'2022-04-11','nick.macgyver@hotmail.com');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(2) NOT NULL,
  `open_date` date NOT NULL,
  `manager_id` int NOT NULL,
  `close_date` date DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'874 Bergnaum Lakes','68823','Boyerburgh','NC','2021-04-24',1,NULL),(2,'526 Halvorson Bridge','86466','Gradyfield','AL','2021-05-24',4,NULL),(3,'112 Luis Drive','97295','Port Heather','OR','2021-06-24',7,NULL),(4,'5208 Sipes Tunnel','18150','Lake Easter','MO','2021-07-24',10,NULL),(5,'09047 Virgil Pass','35888','New Roderickland','VT','2021-08-24',13,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_donors`
--

DROP TABLE IF EXISTS `recurring_donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_donors` (
  `recurring_donor_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `active` tinyint NOT NULL,
  `next_charge_date` date DEFAULT NULL,
  `creditcard_token` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_donors`
--

LOCK TABLES `recurring_donors` WRITE;
/*!40000 ALTER TABLE `recurring_donors` DISABLE KEYS */;
INSERT INTO `recurring_donors` VALUES (1,'Delia','Stracke',1,'2022-05-24','j48tjf7dud74k302kfje48dh'),(2,'Walter','Mills',0,NULL,'f95jyut8r7ejfnvkd93hdjt7'),(3,'Clark','Stracke',1,'2022-05-03','4hg8yjt7tuy8fjdn4jgjh9ui'),(4,'Leroy','Wisozk',0,NULL,'2jwufid9rigkhut7y86utor6'),(5,'Salvador','Heidenreich',1,'2022-05-15','4jt86uy9u9i0ofkdyeur65yt'),(6,'Verna','Schiller',1,'2022-05-22','6uy8tit96iuojlhkgi78yu6i'),(7,'Marion','Stoltenberg',0,NULL,'4jtug8yuyi7oulkdts62hfn5'),(8,'Lori','Braun',1,'2022-05-08','9xjdk3utiy9u080olkxbsgdt'),(9,'Gregory','Lowe',1,'2022-05-11','6iyku8j8hkfj2k1p9uokahs6'),(10,'Nicolas','Macgyver',1,'2022-05-11','2jfit76uyj5k4ldhciu83j21');
/*!40000 ALTER TABLE `recurring_donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteers`
--

DROP TABLE IF EXISTS `volunteers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteers` (
  `volunteer_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `location_id` int NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `terminal_date` date DEFAULT NULL,
  PRIMARY KEY (`volunteer_id`),
  KEY `location_id_idx` (`location_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteers`
--

LOCK TABLES `volunteers` WRITE;
/*!40000 ALTER TABLE `volunteers` DISABLE KEYS */;
INSERT INTO `volunteers` VALUES (1,'Sofia','Kris','6923 Schimmel Throughway','68823',1,'Boyerburgh','NC','Krystina90@hotmail.com','2021-04-24',NULL),(2,'Eryn','Mueller','888 Nathanael Groves','68822',1,'Boyerburgh','NC','Eula.Crooks90@hotmail.com','2021-04-24',NULL),(3,'Hoyt','Willms','50543 Grady Villages','68818',1,'Boyerburgh','NC','Fannie.Wehner44@gmail.com','2021-04-24',NULL),(4,'Astrid','Cronin','59716 Juwan Hill','86467',2,'Gradyfield','AL','Donald66@hotmail.com','2021-05-24',NULL),(5,'Napoleon','Olson','23085 Jovany Lock','86462',2,'Gradyfield','AL','Hayley_Wisozk30@hotmail.com','2021-05-24',NULL),(6,'Rylan','Nienow','5106 Sally Shores','86441',2,'Gradyfield','AL','Hulda19@hotmail.com','2021-05-24',NULL),(7,'Ciara','Mraz','928 Jerod Stravenue','97290',3,'Port Heather','OR','Adam.Fisher66@yahoo.com','2021-06-24',NULL),(8,'Elliott','Schinner','183 Lowe Burg','97310',3,'Port Heather','OR','Ralph.Yundt16@hotmail.com','2021-06-24',NULL),(9,'Katrina','Boehm','56411 McDermott Points','97306',3,'Port Heather','OR','April_Ernser@yahoo.com','2021-06-24',NULL),(10,'Gregg','Cummerata','653 Alexandrea Parks','18150',4,'Lake Easter','MO','Hollie.Herzog@hotmail.com','2021-07-24',NULL),(11,'Brice','McLaughlin','4185 Berge Fort','18145',4,'Lake Easter','MO','Dario.Schmeler76@hotmail.com','2021-07-24',NULL),(12,'Danial','Dibbert','16143 Dasia Meadow','18148',4,'Lake Easter','MO','Jared_Johnston57@yahoo.com','2021-07-24',NULL),(13,'Icie','MacGyver','76200 Eliza Vista','35890',5,'New Roderickland','VT','Esmeralda.Oberbrunner@yahoo.com','2021-08-24',NULL),(14,'Kendall','Cremin','8698 Schmeler Prairie','35880',5,'New Roderickland','VT','shannon82@gmail.com','2021-08-24',NULL),(15,'Lacy','Corkery','65496 Haleigh Estate','35892',5,'New Roderickland','VT','Isabel66@hotmail.com','2021-08-24',NULL);
/*!40000 ALTER TABLE `volunteers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 22:32:10
