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
-- Table structure for table `order_record`
--

DROP TABLE IF EXISTS `order_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_record` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `menu_number` int DEFAULT NULL,
  `temperature` enum('Hot','No Ice','100% Ice','50% Ice','150% Ice') DEFAULT NULL,
  `sweetness` enum('0%','10%','20%','30%','40%','50%','60%','70%','80%','90%','100%','110%') DEFAULT NULL,
  `topping` enum('Ai-Yu','Coconut Jelly','Milk Foam','Pearls','Pudding','Boba','Crystal Boba') DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `menu_number` (`menu_number`),
  CONSTRAINT `order_record_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_summary` (`transaction_id`),
  CONSTRAINT `order_record_ibfk_2` FOREIGN KEY (`menu_number`) REFERENCES `menu_info` (`menu_number`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (15,13,3,'No Ice','50%','Coconut Jelly'),(16,13,15,'No Ice','50%','Milk Foam'),(17,13,29,'50% Ice','50%','Boba'),(18,14,18,'100% Ice','20%','Boba'),(19,14,7,'Hot','70%','Ai-Yu'),(20,15,18,'No Ice','70%',NULL),(21,16,7,'No Ice','70%',NULL),(22,16,7,'No Ice','70%',NULL),(23,17,7,'No Ice','70%',NULL),(24,17,7,'No Ice','70%',NULL),(25,18,27,'No Ice','20%','Boba'),(26,18,27,'No Ice','70%',NULL),(29,20,12,'No Ice','70%',NULL),(30,20,12,'No Ice','70%',NULL),(31,21,3,'No Ice','70%',NULL),(32,21,3,'No Ice','70%','Boba'),(33,22,30,'No Ice','70%',NULL),(34,22,9,'No Ice','0%','Boba'),(35,23,21,'No Ice','70%','Boba'),(36,23,15,'No Ice','70%','Coconut Jelly'),(37,24,18,'No Ice','70%','Crystal Boba'),(38,24,27,'No Ice','70%','Pudding'),(41,26,6,'No Ice','70%',NULL),(42,26,6,'No Ice','70%',NULL),(49,29,21,'No Ice','70%','Boba'),(50,29,9,'No Ice','70%','Coconut Jelly');
/*!40000 ALTER TABLE `order_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:47:13
