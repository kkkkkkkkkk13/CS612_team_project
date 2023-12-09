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
-- Table structure for table `transaction_summary`
--

DROP TABLE IF EXISTS `transaction_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_summary` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_price` decimal(7,2) DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `order_sum` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `transaction_summary_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`),
  CONSTRAINT `transaction_summary_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store_info` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_summary`
--

LOCK TABLES `transaction_summary` WRITE;
/*!40000 ALTER TABLE `transaction_summary` DISABLE KEYS */;
INSERT INTO `transaction_summary` VALUES (13,'2023-11-30',1,21.75,7,'Brown Sugar Milk Tea (No Ice, 50% Sweetness, L, 7.00), \n   Black Tea (No Ice, 50% Sweetness, L, 6.00), \n   Caramel Chocolate (50% Ice, 50% Sweetness, M, 8.75)'),(14,'2023-09-15',2,16.50,4,'Milk Coffee (100% Ice, 20% Sweetness, L, 9.00), \nMilk Foam Black Coffee (Hot, 70% Sweetness, S, 7.50)'),(15,'2023-07-14',3,9.00,4,'Milk Coffee (No Ice, 70% Sweetness, L, 9.00)'),(16,'2023-08-23',4,15.00,11,'Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50), Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50)'),(17,'2023-09-12',5,15.00,3,'Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50), Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50)'),(18,'2023-08-24',9,19.00,11,'Grapefruit Yogurt Drink (No Ice, 20% Sweetness, L, 9.50), Grapefruit Yogurt Drink (No Ice, 70% Sweetness, L, 9.50)'),(20,'2023-04-03',8,12.00,11,'Wintermelon (No Ice, 70% Sweetness, L, 6.00), Wintermelon (No Ice, 70% Sweetness, L, 6.00)'),(21,'2023-09-09',9,14.00,15,'Brown Sugar Milk Tea (No Ice, 70% Sweetness, L, 7.00), Brown Sugar Milk Tea (No Ice, 70% Sweetness, L, 7.00)'),(22,'2023-10-08',10,19.00,8,'Caramel Chocolate (No Ice, 70% Sweetness, L, 9.50), Milk Foam Black Coffee (No Ice, 0% Sweetness, L, 9.50)'),(23,'2023-11-09',11,12.00,7,'Green Tea (No Ice, 70% Sweetness, L, 6.00), Black Tea (No Ice, 70% Sweetness, L, 6.00)'),(24,'2023-01-23',12,18.50,6,'Coffee (No Ice, 70% Sweetness, L, 9.00), Grapefruit Yogurt Drink (No Ice, 70% Sweetness, L, 9.50)'),(26,'2023-01-06',14,14.00,15,'Wintermelon Milk Latte (No Ice, 70% Sweetness, L, 7.00), Wintermelon Milk Latte (No Ice, 70% Sweetness, L, 7.00)'),(29,'2023-06-11',15,15.50,14,'Green Tea (No Ice, 70% Sweetness, L, 6.00), Milk Foam Black Coffee (No Ice, 70% Sweetness, L, 9.50)');
/*!40000 ALTER TABLE `transaction_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-09  9:52:53
