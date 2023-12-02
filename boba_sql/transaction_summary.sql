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
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES (1,'3002090506','Saad','Rana','2004-05-16','saad@fti.co'),(2,'3002090486','Ahmed','Ali','1986-02-14','Ahmed@gmailc.com'),(3,'3002090487','Sara','Ahmed','2000-02-23','Sara@gmail.com'),(4,'3002090488','Janifer','Aslam','2008-06-15','Janifer@gmi.com'),(5,'3002090489','Aslam','Jatin','2004-04-17','Aslam@gma.com'),(6,'3002090490','Jatin','Arham','2002-03-18','Jatin@gma.com'),(7,'3002090491','Arham','David','2000-01-19','Arham@gm.com'),(8,'3002090492','David','Somro','1995-01-21','David@gmai.com'),(9,'3002090494','Somro','Khan','1993-11-22','Somro@hotr.com'),(10,'3002090495','Khan','Bilal','1991-03-29','Khan@hotm.com'),(11,'3002090496','Bilal','Basit','1989-08-24','Bilal@hotm.com'),(12,'3002090497','Basit','Karim','1987-06-26','Basit@hotma.com'),(13,'3002090498','Karim','Kaleem','1985-06-26','Karim@hotmail.com'),(14,'3002090499','Kaleem','Karim','1985-06-26','Karim@hotmail.com'),(15,'3002090501','Krits','Chotechuangchaikul','2000-01-01','kc98629n@pace.edu'),(16,'3002090502','Jingsi','Hu','2000-01-01','jh42221n@pace.edu'),(17,'3002090503','Linlan','Cai','2000-01-01','lc03159p@pace.edu');
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_info`
--

LOCK TABLES `menu_info` WRITE;
/*!40000 ALTER TABLE `menu_info` DISABLE KEYS */;
INSERT INTO `menu_info` VALUES (1,'Milk Tea','Brown Sugar Milk Tea','S',5.00,'Tapioca'),(2,'Milk Tea','Brown Sugar Milk Tea','M',6.75,'Tapioca'),(3,'Milk Tea','Brown Sugar Milk Tea','L',7.00,'Tapioca'),(4,'Milk Tea','Wintermelon Milk Latte','S',5.00,'Milk'),(5,'Milk Tea','Wintermelon Milk Latte','M',6.75,'Milk'),(6,'Milk Tea','Wintermelon Milk Latte','L',7.00,'Milk'),(7,'Coffee','Milk Foam Black Coffee','S',7.50,'Milk'),(8,'Coffee','Milk Foam Black Coffee','M',8.50,'Milk'),(9,'Coffee','Milk Foam Black Coffee','L',9.50,'Milk'),(10,'Brewed Tea','Wintermelon','S',4.50,NULL),(11,'Brewed Tea','Wintermelon','M',5.75,NULL),(12,'Brewed Tea','Wintermelon','L',6.00,NULL),(13,'Brewed Tea','Black Tea','S',4.50,NULL),(14,'Brewed Tea','Black Tea','M',5.75,NULL),(15,'Brewed Tea','Black Tea','L',6.00,NULL),(16,'Coffee','Milk Coffee','S',7.00,'Milk'),(17,'Coffee','Milk Coffee','M',8.00,'Milk'),(18,'Coffee','Milk Coffee','L',9.00,'Milk'),(19,'Brewed Tea','Green Tea','S',4.50,NULL),(20,'Brewed Tea','Green Tea','M',5.75,NULL),(21,'Brewed Tea','Green Tea','L',6.00,NULL),(22,'Brewed Tea','Oolong Tea','S',4.50,NULL),(23,'Brewed Tea','Oolong Tea','M',5.75,NULL),(24,'Brewed Tea','Oolong Tea','L',6.00,NULL),(25,'Creative Mix','Grapefruit Yogurt Drink','S',7.50,'Milk'),(26,'Creative Mix','Grapefruit Yogurt Drink','M',8.75,'Milk'),(27,'Creative Mix','Grapefruit Yogurt Drink','L',9.50,'Milk'),(28,'Creative Mix','Caramel Chocolate','S',7.50,NULL),(29,'Creative Mix','Caramel Chocolate','M',8.75,NULL),(30,'Creative Mix','Caramel Chocolate','L',9.50,NULL);
/*!40000 ALTER TABLE `menu_info` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `order_record` VALUES (15,13,3,'No Ice','50%','Coconut Jelly'),(16,13,15,'No Ice','50%','Milk Foam'),(17,13,29,'50% Ice','50%','Boba'),(18,14,18,'100% Ice','20%','Boba'),(19,14,7,'Hot','70%','Ai-Yu'),(20,15,18,'No Ice','70%',NULL),(21,16,7,'No Ice','70%',NULL),(22,16,7,'No Ice','70%',NULL),(23,17,7,'No Ice','70%',NULL),(24,17,7,'No Ice','70%',NULL),(25,18,27,'No Ice','20%','Boba'),(26,18,27,'No Ice','70%',NULL),(27,19,24,'No Ice','70%','Boba'),(28,19,24,'No Ice','70%','Boba'),(29,20,12,'No Ice','70%',NULL),(30,20,12,'No Ice','70%',NULL),(31,21,3,'No Ice','70%',NULL),(32,21,3,'No Ice','70%','Boba'),(33,22,30,'No Ice','70%',NULL),(34,22,9,'No Ice','0%','Boba'),(35,23,21,'No Ice','70%','Boba'),(36,23,15,'No Ice','70%','Coconut Jelly'),(37,24,18,'No Ice','70%','Crystal Boba'),(38,24,27,'No Ice','70%','Pudding'),(39,25,22,'No Ice','70%','Ai-Yu'),(40,25,15,'No Ice','70%','Crystal Boba'),(41,26,6,'No Ice','70%',NULL),(42,26,6,'No Ice','70%',NULL),(49,29,21,'No Ice','70%','Boba'),(50,29,9,'No Ice','70%','Coconut Jelly');
/*!40000 ALTER TABLE `order_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_info`
--

DROP TABLE IF EXISTS `store_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_info` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL,
  `hours` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_info`
--

LOCK TABLES `store_info` WRITE;
/*!40000 ALTER TABLE `store_info` DISABLE KEYS */;
INSERT INTO `store_info` VALUES (1,'New Jersey - Jersey City','Mon - Sat 11:30 AM - 7:30 PM, Sun 11:30 AM - 6:00 PM','30-121 Mall Dr W, Jersey City, NJ 07310','551-260-2448'),(2,'New Jersey - Hoboken','Mon - Thurs 11 AM - 9:30 PM, Fri - Sun 11 AM - 10:00 PM','527 Washington Street, Hoboken, NJ 07030','201-710-5757'),(3,'New York - Manhattan','','Fulton Center, 200 Broadway, New York, NY 10038','212-227-1024'),(4,'New York - Chinatown','Mon - Thurs 11:00 AM - 8:00 PM, Fri - Sun 11:00 AM - 9:00 PM','42A Mott St New York, NY 10013','646-726-4940'),(5,'New York - Manhattan','','27 St. Marks Place, New York, New York','917-262-0158'),(6,'New York - Koreatown','','12 W 32nd Street, New York, NY 10001','646-998-4362'),(7,'New York - Midtown','Mon - Thurs 11:00 AM - 9:00 PM, Fri - Sat 11:00 AM - 10:00 PM, Sun 11:00 AM - 9:00 PM','75 West 38th Street New York, NY 10018','212-398-2716'),(8,'New York - Manhattan','','1600 Broadway, New York, NY 10019','212-659-2513'),(9,'New York - Brooklyn','Mon - Sun 11:00 AM - 9:00 PM','136 Willoughby St, Brooklyn, NY 11201','917-909-1207'),(10,'New York - Greenpoint','Mon - Sun 11:30 AM - 8:30 PM','108 Meserole Ave, Brooklyn, NY 11222','347-529-5088'),(11,'New York - Long Island City','','25-08 Queens Plaza South, Long Island City, NY 11101','718-433-9868'),(12,'New York - Bay Ridge','Mon - Sun 10:00 AM - 8:00 PM','7408 3rd Ave Brooklyn, NY 11209','718-833-1500'),(13,'New Jersey - Ridgefield','','321 Broad Avenue, Suite 108, Ridgefield, NJ 07657','551-253-3541'),(14,'New York - Brooklyn','Mon - Thurs 10:00 AM - 11:00 PM, Fri - Sat 10:00 AM - 12:00 AM, Sun 10:00 AM - 11:00 PM','1015 Foster Ave Brooklyn, NY 11214','917-974-7247'),(15,'New York - Brooklyn','','1570 Flatbush Avenue, Brooklyn, NY 11210','347-240-3134'),(16,'New Jersey - Union','Mon - Thurs 11:00 AM – 9:00 PM, Fri - Sat 11:00 AM – 10:00 PM, Sun 11:00 AM – 9:00 PM','1178 Morris Ave, Suite B, Union, NJ 07083','908-989-3465');
/*!40000 ALTER TABLE `store_info` ENABLE KEYS */;
UNLOCK TABLES;

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
  `order_sum` varchar(255) DEFAULT NULL,
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
INSERT INTO `transaction_summary` VALUES (13,'2023-11-30',1,21.75,7,'Brown Sugar Milk Tea (No Ice, 50% Sweetness, L, 7.00), \n   Black Tea (No Ice, 50% Sweetness, L, 6.00), \n   Caramel Chocolate (50% Ice, 50% Sweetness, M, 8.75)'),(14,'2023-09-15',2,16.50,4,'Milk Coffee (100% Ice, 20% Sweetness, L, 9.00), \nMilk Foam Black Coffee (Hot, 70% Sweetness, S, 7.50)'),(15,'2023-07-14',3,9.00,4,'Milk Coffee (No Ice, 70% Sweetness, L, 9.00)'),(16,'2023-08-23',4,15.00,11,'Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50), Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50)'),(17,'2023-09-12',5,15.00,3,'Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50), Milk Foam Black Coffee (No Ice, 70% Sweetness, S, 7.50)'),(18,'2023-08-24',9,19.00,11,'Grapefruit Yogurt Drink (No Ice, 20% Sweetness, L, 9.50), Grapefruit Yogurt Drink (No Ice, 70% Sweetness, L, 9.50)'),(19,'2023-03-22',7,12.00,9,'Oolong Tea (No Ice, 70% Sweetness, L, 6.00), Oolong Tea (No Ice, 70% Sweetness, L, 6.00)'),(20,'2023-04-03',8,12.00,11,'Wintermelon (No Ice, 70% Sweetness, L, 6.00), Wintermelon (No Ice, 70% Sweetness, L, 6.00)'),(21,'2023-09-09',9,14.00,15,'Brown Sugar Milk Tea (No Ice, 70% Sweetness, L, 7.00), Brown Sugar Milk Tea (No Ice, 70% Sweetness, L, 7.00)'),(22,'2023-10-08',10,19.00,8,'Caramel Chocolate (No Ice, 70% Sweetness, L, 9.50), Milk Foam Black Coffee (No Ice, 0% Sweetness, L, 9.50)'),(23,'2023-11-09',11,12.00,7,'Green Tea (No Ice, 70% Sweetness, L, 6.00), Black Tea (No Ice, 70% Sweetness, L, 6.00)'),(24,'2023-01-23',12,18.50,6,'Coffee (No Ice, 70% Sweetness, L, 9.00), Grapefruit Yogurt Drink (No Ice, 70% Sweetness, L, 9.50)'),(25,'2023-10-28',13,10.50,16,'Oolong Tea (No Ice, 70% Sweetness, S, 4.50), Black Tea (No Ice, 70% Sweetness, L, 6.00)'),(26,'2023-01-06',14,14.00,15,'Wintermelon Milk Latte (No Ice, 70% Sweetness, L, 7.00), Wintermelon Milk Latte (No Ice, 70% Sweetness, L, 7.00)'),(29,'2023-06-11',15,15.50,14,'Green Tea (No Ice, 70% Sweetness, L, 6.00), Milk Foam Black Coffee (No Ice, 70% Sweetness, L, 9.50)');
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

-- Dump completed on 2023-11-30  3:28:44
