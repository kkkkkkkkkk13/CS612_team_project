-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (x86_64)
--
-- Host: localhost    Database: boba_tea_ordering
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) DEFAULT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES (1,'3002090506','Saad','Rana','2004-05-16','saad@fti.co','boba00001'),(2,'3002090486','Ahmed','Ali','1986-02-14','Ahmed@gmailc.com','boba00002'),(3,'3002090487','Sara','Ahmed','2000-02-23','Sara@gmail.com','boba00003'),(4,'3002090488','Janifer','Aslam','2008-06-15','Janifer@gmi.com','boba00004'),(5,'3002090489','Aslam','Jatin','2004-04-17','Aslam@gma.com','boba00005'),(6,'3002090490','Jatin','Arham','2002-03-18','Jatin@gma.com','boba00006'),(7,'3002090491','Arham','David','2000-01-19','Arham@gm.com','boba00007'),(8,'3002090492','David','Somro','1995-01-21','David@gmai.com','boba00008'),(9,'3002090494','Somro','Khan','1993-11-22','Somro@hotr.com','boba00009'),(10,'3002090495','Khan','Bilal','1991-03-29','Khan@hotm.com','boba00010'),(11,'3002090496','Bilal','Basit','1989-08-24','Bilal@hotm.com','boba00011'),(12,'3002090497','Basit','Karim','1987-06-26','Basit@hotma.com','boba00012'),(13,'3002090498','Karim','Kaleem','1985-06-26','Karim@hotmail.com','boba00013'),(14,'3002090499','Kaleem','Karim','1985-06-26','Karim@hotmail.com','boba00014'),(15,'3002090501','Krits','Chotechuangchaikul','2000-01-01','kc98629n@pace.edu','boba00015'),(16,'3002090502','Jingsi','Hu','2000-01-01','jh42221n@pace.edu','boba00016'),(17,'3002090503','Linlan','Cai','2000-01-01','lc03159p@pace.edu','boba00017');
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:47:07
