-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cosmetic_shop
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `item_qty` int DEFAULT NULL,
  `item_image` varchar(100) DEFAULT NULL,
  `item_detail` varchar(200) DEFAULT NULL,
  `arr_date` date DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (4,'Dior Popular','95000',1,6,'toner1.jpg','toner','2023-10-18'),(5,'Dior Prestige','$400',2,5,'serum3.jpg','Serum','2023-10-31'),(7,'Dior Creme','$600',7,2,'creme1.jpg','Creme','2023-10-02'),(8,'Dior Prestige','$250',2,1,'serum2.webp','Serum','2023-10-29'),(9,'Dior Prestige','$350',2,3,'serum4.jpg','Serum','2023-09-27'),(10,'Dior Prestige','$350',7,3,'creme3.webp','Creme','2023-11-02'),(11,'Dior Prestige','$350',8,3,'cushion1.webp','Cushion','2023-11-25'),(12,'Dior Prestige','$350',8,3,'cushion3.jpg','Cushion','2023-11-16'),(13,'Dior Prestige','$350',2,3,'serum6.jpg','Serum','2023-12-08'),(14,'Dior Snow','$380',1,1,'toner5.webp','Snow Toner','2023-10-19'),(15,'Dior Lily','$100',10,1,'card3.webp','Scrubs ','2023-11-15'),(16,'Dior Heart','$70',6,1,'Y0600510_F060051000_E01_GHC.webp','Eye Cream','2023-10-31'),(17,'Dior Heart','$70',4,1,'cleansers.jpg','Cleanser','2023-11-03');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-06 15:29:46
