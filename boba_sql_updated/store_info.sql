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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:47:14
