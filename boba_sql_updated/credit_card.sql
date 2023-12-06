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
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `cardholder_name` varchar(100) NOT NULL,
  `card_number` char(16) DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `security_code` char(3) DEFAULT NULL,
  `issuing_bank` varchar(100) DEFAULT NULL,
  `card_type` enum('Visa','MasterCard','American Express','Discover','Other') DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`card_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (1,1,'Saad Rana','1234567812345678','2024-12-31','123','Bank A','Visa','123 Main St','City1','CA','12345','USA','2023-12-06 00:13:16','2023-12-06 00:13:16'),(2,2,'Ahmed Ali','8765432187654321','2025-06-30','456','Bank B','MasterCard','456 Elm St','City2','NY','54321','USA','2023-12-06 00:13:16','2023-12-06 00:13:16'),(3,3,'Sara Ahmed','9876123498761234','2024-11-30','789','Bank C','American Express','789 Oak St','City3','TX','67890','USA','2023-12-06 00:13:16','2023-12-06 00:13:16'),(4,4,'Janifer Aslam','2345678923456789','2023-09-30','234','Bank D','Discover','234 Pine St','City4','IL','98765','USA','2023-12-06 00:13:20','2023-12-06 00:13:20'),(5,5,'Aslam Jatin','3456789034567890','2023-12-31','345','Bank E','Visa','345 Cedar St','City5','WA','43210','USA','2023-12-06 00:13:20','2023-12-06 00:13:20'),(6,6,'Jatin Arham','4567890145678901','2025-08-31','456','Bank F','MasterCard','456 Maple St','City6','CA','56789','USA','2023-12-06 00:13:57','2023-12-06 00:13:57'),(7,7,'Arham David','5678901256789012','2024-10-31','567','Bank G','American Express','567 Birch St','City7','NY','12345','USA','2023-12-06 00:13:57','2023-12-06 00:13:57'),(8,8,'David Somro','6789013678901367','2025-05-31','678','Bank H','Visa','678 Cedar St','City8','TX','98765','USA','2023-12-06 00:13:57','2023-12-06 00:13:57'),(9,9,'Somro Khan','7890124789012478','2023-12-31','789','Bank I','Discover','789 Oak St','City9','IL','54321','USA','2023-12-06 00:14:04','2023-12-06 00:14:04'),(10,10,'Khan Bilal','8901235890123589','2024-06-30','890','Bank J','MasterCard','890 Elm St','City10','WA','43210','USA','2023-12-06 00:14:04','2023-12-06 00:14:04'),(11,11,'Bilal Basit','9012346090123460','2025-10-31','901','Bank K','Visa','901 Maple St','City11','CA','12345','USA','2023-12-06 00:14:45','2023-12-06 00:14:45'),(12,12,'Basit Karim','0123457012345701','2024-09-30','012','Bank L','MasterCard','012 Pine St','City12','NY','56789','USA','2023-12-06 00:14:46','2023-12-06 00:14:46'),(13,13,'Karim Kaleem','1234568012345680','2023-11-30','123','Bank M','American Express','123 Elm St','City13','TX','98765','USA','2023-12-06 00:14:46','2023-12-06 00:14:46'),(14,14,'Kaleem Karim','2345679012345790','2024-12-31','234','Bank N','Discover','234 Cedar St','City14','IL','54321','USA','2023-12-06 00:14:46','2023-12-06 00:14:46'),(15,15,'Krits Chotechuangchaikul','3456789012345801','2025-06-30','345','Bank O','Visa','345 Oak St','City15','WA','43210','USA','2023-12-06 00:14:46','2023-12-06 00:14:46'),(16,16,'Jingsi Hu','4567890123457912','2024-10-31','456','Bank P','MasterCard','456 Pine St','City16','NY','12345','USA','2023-12-06 00:14:46','2023-12-06 00:14:46'),(17,17,'Linlan Cai','5678901234567023','2023-09-30','567','Bank Q','American Express','567 Elm St','City17','CA','56789','USA','2023-12-06 00:14:46','2023-12-06 00:14:46');
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:47:01
