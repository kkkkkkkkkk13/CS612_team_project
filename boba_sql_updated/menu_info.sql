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
-- Table structure for table `menu_info`
--

DROP TABLE IF EXISTS `menu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_info` (
  `menu_number` int NOT NULL AUTO_INCREMENT,
  `series` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Size_menu` enum('S','M','L') DEFAULT NULL,
  `Price_menu` decimal(5,2) DEFAULT NULL,
  `allergy_information` enum('Milk','Soy','Nuts','Eggs','Gluten','Tapioca') DEFAULT NULL,
  PRIMARY KEY (`menu_number`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_info`
--

LOCK TABLES `menu_info` WRITE;
/*!40000 ALTER TABLE `menu_info` DISABLE KEYS */;
INSERT INTO `menu_info` VALUES (1,'Milk Tea','Brown Sugar Milk Tea','S',5.00,'Tapioca'),(2,'Milk Tea','Brown Sugar Milk Tea','M',6.75,'Tapioca'),(3,'Milk Tea','Brown Sugar Milk Tea','L',7.00,'Tapioca'),(4,'Milk Tea','Wintermelon Milk Latte','S',5.00,'Milk'),(5,'Milk Tea','Wintermelon Milk Latte','M',6.75,'Milk'),(6,'Milk Tea','Wintermelon Milk Latte','L',7.00,'Milk'),(7,'Coffee','Milk Foam Black Coffee','S',7.50,'Milk'),(8,'Coffee','Milk Foam Black Coffee','M',8.50,'Milk'),(9,'Coffee','Milk Foam Black Coffee','L',9.50,'Milk'),(10,'Brewed Tea','Wintermelon','S',4.50,NULL),(11,'Brewed Tea','Wintermelon','M',5.75,NULL),(12,'Brewed Tea','Wintermelon','L',6.00,NULL),(13,'Brewed Tea','Black Tea','S',4.50,NULL),(14,'Brewed Tea','Black Tea','M',5.75,NULL),(15,'Brewed Tea','Black Tea','L',6.00,NULL),(16,'Coffee','Milk Coffee','S',7.00,'Milk'),(17,'Coffee','Milk Coffee','M',8.00,'Milk'),(18,'Coffee','Milk Coffee','L',9.00,'Milk'),(19,'Brewed Tea','Green Tea','S',4.50,NULL),(20,'Brewed Tea','Green Tea','M',5.75,NULL),(21,'Brewed Tea','Green Tea','L',6.00,NULL),(25,'Creative Mix','Grapefruit Yogurt Drink','S',7.50,'Milk'),(26,'Creative Mix','Grapefruit Yogurt Drink','M',8.75,'Milk'),(27,'Creative Mix','Grapefruit Yogurt Drink','L',9.50,'Milk'),(28,'Creative Mix','Caramel Chocolate','S',7.50,NULL),(29,'Creative Mix','Caramel Chocolate','M',8.75,NULL),(30,'Creative Mix','Caramel Chocolate','L',9.50,NULL),(31,'Milk Tea','Classic Milk Tea','S',5.00,'Milk'),(32,'Milk Tea','Classic Milk Tea','M',6.75,'Milk'),(33,'Milk Tea','Classic Milk Tea','L',7.00,'Milk'),(34,'Milk Tea','Taro Milk Tea','S',6.00,'Milk'),(35,'Milk Tea','Taro Milk Tea','M',6.75,'Milk'),(36,'Milk Tea','Taro Milk Tea','L',8.00,'Milk'),(37,'Milk Tea','Matcha Milk Tea','S',6.00,'Milk'),(38,'Milk Tea','Matcha Milk Tea','M',6.75,'Milk'),(39,'Milk Tea','Matcha Milk Tea','L',8.00,'Milk'),(40,'Milk Tea','Thai Milk Tea','S',6.00,'Milk'),(41,'Milk Tea','Thai Milk Tea','M',6.75,'Milk'),(42,'Milk Tea','Thai Milk Tea','L',7.00,'Milk');
/*!40000 ALTER TABLE `menu_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:47:12
