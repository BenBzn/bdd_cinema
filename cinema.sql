-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `is_admin` int NOT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `is_admin` (`is_admin`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`is_admin`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `id_cinema` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `id_admin` int DEFAULT NULL,
  PRIMARY KEY (`id_cinema`),
  KEY `id_admin` (`id_admin`),
  CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'Spectakl','8, impasse Bruneau','Martineau-sur-Techer',2),(2,'Projector','966 boulevard Hebert','GilbertVille',1),(3,'CTC','25 avenue Diallo','Robert-sur-Bouchet',3);
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerstype`
--

DROP TABLE IF EXISTS `customerstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerstype` (
  `id_customer_type` int NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(30) NOT NULL,
  `ticket_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_customer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerstype`
--

LOCK TABLES `customerstype` WRITE;
/*!40000 ALTER TABLE `customerstype` DISABLE KEYS */;
INSERT INTO `customerstype` VALUES (1,'full_price',9.20),(2,'Student',7.60),(3,'Child',5.90);
/*!40000 ALTER TABLE `customerstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id_movie` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `producer` varchar(100) NOT NULL,
  `id_projection` int DEFAULT NULL,
  PRIMARY KEY (`id_movie`),
  KEY `id_projection` (`id_projection`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_projection`) REFERENCES `projections` (`id_projection`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Date with Judy, A','Comedy|Musical|Romance','Alister Bangham',16),(2,'Fall of the House of Usher, The (Zánik domu Usheru)','Animation','Karissa Slinger',15),(3,'Thief','Crime|Drama|Thriller','Ambur MacCallester',14),(4,'A Girl Walks Home Alone at Night','Horror|Romance|Thriller','Colver McCole',13),(5,'Paul','Adventure|Comedy|Sci-Fi','Stacie O\'Hearn',12),(6,'T-Men','Film-Noir','Ermina Drewry',11),(7,'Generale Della Rovere, Il','Drama','Tomi de Leon',10),(8,'Longest Day, The','Action|Drama|War','Sharla Beckson',9),(9,'Born to Kill','Crime|Drama|Film-Noir','Julian Skehens',8),(10,'Date with Judy, A','Comedy|Musical|Romance','Alister Bangham',16),(11,'Fall of the House of Usher, The (Zánik domu Usheru)','Animation','Karissa Slinger',15),(12,'Thief','Crime|Drama|Thriller','Ambur MacCallester',14),(13,'A Girl Walks Home Alone at Night','Horror|Romance|Thriller','Colver McCole',13),(14,'Paul','Adventure|Comedy|Sci-Fi','Stacie O\'Hearn',12),(15,'T-Men','Film-Noir','Ermina Drewry',11),(16,'Generale Della Rovere, Il','Drama','Tomi de Leon',10),(17,'Longest Day, The','Action|Drama|War','Sharla Beckson',9),(18,'Born to Kill','Crime|Drama|Film-Noir','Julian Skehens',8),(19,'Tarzan','Adventure|Animation|Children|Drama','Nathanial Botwood',7),(20,'Ten Shrews, The (Kymmenen riivinrautaa)','Comedy','Mozelle Jeremaes',6),(21,'Who Am I? (Wo shi shei)','Action|Adventure|Comedy|Sci-Fi|Thriller','Orly Brodway',5),(22,'Noriko\'s Dinner Table (Noriko no shokutaku)','Drama|Horror','Meagan Lindhe',4),(23,'Amityville: A New Generation','Horror','Gill Gibbin',3),(24,'Time for Killing, A','Western','Gwyneth Wraith',2);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projections`
--

DROP TABLE IF EXISTS `projections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projections` (
  `id_projection` int NOT NULL AUTO_INCREMENT,
  `projection_date` datetime NOT NULL,
  `id_rooms` int DEFAULT NULL,
  PRIMARY KEY (`id_projection`),
  KEY `id_rooms` (`id_rooms`),
  CONSTRAINT `projections_ibfk_1` FOREIGN KEY (`id_rooms`) REFERENCES `rooms` (`id_rooms`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projections`
--

LOCK TABLES `projections` WRITE;
/*!40000 ALTER TABLE `projections` DISABLE KEYS */;
INSERT INTO `projections` VALUES (2,'2023-02-27 09:15:00',1),(3,'2023-02-22 13:45:00',2),(4,'2023-02-11 16:10:00',3),(5,'2023-02-27 22:00:00',3),(6,'2023-02-23 11:30:00',3),(7,'2023-02-18 11:30:00',2),(8,'2023-02-25 10:45:00',1),(9,'2023-02-27 12:00:00',1),(10,'2023-02-06 13:20:00',1),(11,'2023-02-23 14:30:00',1),(12,'2023-02-10 15:00:00',3),(13,'2023-02-04 09:45:00',3),(14,'2023-02-17 09:45:00',2),(15,'2023-02-08 20:20:00',2),(16,'2023-02-16 18:50:00',1);
/*!40000 ALTER TABLE `projections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id_reservations` int NOT NULL AUTO_INCREMENT,
  `date_reservation` datetime NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_projection` int DEFAULT NULL,
  PRIMARY KEY (`id_reservations`),
  KEY `id_user` (`id_user`),
  KEY `id_projection` (`id_projection`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`id_projection`) REFERENCES `projections` (`id_projection`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (7,'2023-02-07 14:37:52',6,15),(8,'2023-02-25 09:22:14',18,2),(9,'2023-02-24 22:12:44',9,8),(10,'2023-02-10 10:32:41',25,12),(11,'2023-02-09 16:10:13',34,12),(12,'2023-02-11 14:01:58',31,4);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id_rooms` int NOT NULL AUTO_INCREMENT,
  `nb_place` int NOT NULL,
  `id_cinema` int DEFAULT NULL,
  PRIMARY KEY (`id_rooms`),
  KEY `id_cinema` (`id_cinema`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`id_cinema`) REFERENCES `cinema` (`id_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,210,1),(2,200,2),(3,250,3);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customertype` int DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `customertype` (`customertype`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`customertype`) REFERENCES `customerstype` (`id_customer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Petronilla','Caplin','pcaplin0','fWUufvLU',NULL),(2,'Paten','Gianinotti','pgianinotti1','zRAPpg2',NULL),(3,'Amii','Hansemann','ahansemann2','NTLkGRP',NULL),(4,'Fletch','Chazelas','fchazelas3','Bpk6lJL',1),(5,'Auguste','Howcroft','ahowcroft4','AQoduu384',1),(6,'Ashien','Snoden','asnoden5','nRk4cE',1),(7,'Burt','Wilmot','bwilmot6','DuyAWfs9gDhN',3),(8,'Ginnifer','Holdworth','gholdworth7','tst9zQ',3),(9,'Barry','Sacco','bsacco8','nzfOaecJq',2),(10,'Allayne','Adlington','aadlington9','CyJDxt',1),(11,'Antoinette','Ryles','arylesa','kadZeUZRvZ',2),(16,'Fletch','Chazelas','fchazelas3','Bpk6lJL',1),(17,'Auguste','Howcroft','ahowcroft4','AQoduu384',1),(18,'Ashien','Snoden','asnoden5','nRk4cE',1),(19,'Burt','Wilmot','bwilmot6','DuyAWfs9gDhN',3),(20,'Ginnifer','Holdworth','gholdworth7','tst9zQ',3),(21,'Barry','Sacco','bsacco8','nzfOaecJq',2),(22,'Allayne','Adlington','aadlington9','CyJDxt',1),(23,'Antoinette','Ryles','arylesa','kadZeUZRvZ',2),(24,'Fletch','Chazelas','fchazelas3','Bpk6lJL',1),(25,'Auguste','Howcroft','ahowcroft4','AQoduu384',1),(26,'Ashien','Snoden','asnoden5','nRk4cE',1),(27,'Burt','Wilmot','bwilmot6','DuyAWfs9gDhN',3),(28,'Ginnifer','Holdworth','gholdworth7','tst9zQ',3),(29,'Barry','Sacco','bsacco8','nzfOaecJq',2),(30,'Allayne','Adlington','aadlington9','CyJDxt',1),(31,'Antoinette','Ryles','arylesa','kadZeUZRvZ',2),(32,'Fletch','Chazelas','fchazelas3','Bpk6lJL',1),(33,'Auguste','Howcroft','ahowcroft4','AQoduu384',1),(34,'Ashien','Snoden','asnoden5','nRk4cE',1),(35,'Burt','Wilmot','bwilmot6','DuyAWfs9gDhN',3),(36,'Ginnifer','Holdworth','gholdworth7','tst9zQ',3),(37,'Barry','Sacco','bsacco8','nzfOaecJq',2),(38,'Allayne','Adlington','aadlington9','CyJDxt',1),(39,'Antoinette','Ryles','arylesa','kadZeUZRvZ',2),(40,'Agustin','MacColgan','amaccolganc','VOEaJFd6u',1),(41,'Aline','Timbs','atimbsb','HoHWbHiv',2),(42,'Agustin','MacColgan','amaccolganc','VOEaJFd6u',1),(43,'Greg','Fendley','gfendleyd','U4J5Nh',1),(44,'Agustin','MacColgan','amaccolganc','VOEaJFd6u',1),(45,'Greg','Fendley','gfendleyd','U4J5Nh',1),(46,'Bridie','Swatheridge','bswatheridgee','2FvLF5XU',1),(47,'Faustina','Speddin','fspeddinf','EOFF9Fw8a8',1),(48,'Nancy','Craker','ncrakerg','eXsv95O9HN8',1),(49,'Ilaire','Tees','iteesh','nOdx30Ol',3),(50,'Corbie','Wartnaby','cwartnabyi','rT5SsOEncN',3),(51,'Mary','Derkes','mderkesj','8zeB7peuLnF',1),(52,'Zerk','Conn','zconnk','YIsYAujxo',1),(53,'Stesha','Lanfranconi','slanfranconil','vPQ3iC',2),(54,'Marven','Jennaway','mjennawaym','PmT9RxH',3),(55,'Rosabella','Karet','rkaretn','gIE9oMKQ',3),(56,'Matty','Lear','mlearo','AQXVIik',1),(57,'Odo','Dunican','odunicanq','jMPhIo',2),(58,'Sammy','Connichie','sconnichier','dOnk52jOqrh',1),(59,'Ryley','Djurisic','rdjurisics','QpHJqFgJPawc',1),(60,'Keary','Lambal','klambalt','B7DjMwEb3A',3),(61,'Jarrod','Westraw','jwestrawu','so3RupQUSf',1),(62,'Darya','Chasmor','dchasmorv','hBDNmh0',2),(63,'Marcie','Bascombe','mbascombew','fE5POJi4',1),(64,'Albina','Chawkley','achawkleyx','gC1PVTkKs',3),(65,'Ginevra','Bolderstone','gbolderstoney','FAFIwf7U',1),(66,'Darwin','Wackley','dwackleyz','QgUWeLq',2),(67,'Ruby','Milesap','rmilesap10','y8JDe4SL',2),(68,'Mahmud','Ive','mive11','E7iblJq',1),(69,'Byram','Maffioni','bmaffioni12','N07YB32VkAt4',1),(70,'Inness','Espinazo','iespinazo13','0l8riMf',1),(71,'Alyss','Kibbey','akibbey0','MEMVl2FH',NULL),(72,'Alix','Moodycliffe','amoodycliffe1','1W25xxGV9Gh',NULL),(73,'Dorolisa','Stanes','dstanes2','LRA2g76',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-06 18:13:46
