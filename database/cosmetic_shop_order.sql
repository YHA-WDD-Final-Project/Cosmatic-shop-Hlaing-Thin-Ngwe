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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `it_id` varchar(45) DEFAULT NULL,
  `it_name` varchar(45) DEFAULT NULL,
  `totalprice` varchar(45) DEFAULT NULL,
  `cus_name` varchar(45) DEFAULT NULL,
  `cus_phone` varchar(45) DEFAULT NULL,
  `cus_email` varchar(45) DEFAULT NULL,
  `cus_address` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (4,'5','Dior Prestige','$400','Miss Hlaing Thin Nwe','+959784105506','hlaingthinnwe129@gmail.com','2023-10-29',NULL),(5,'5','Dior Prestige','$400','Tay Zar Aung','+959262678557','hlaingthinnwe129@gmail.com','2023-11-21',NULL),(9,'9','Dior Prestige','$350','Alex','245637','henry@gmail.com','Yangon','2023-10-09'),(10,'5','Dior Prestige','$400','Henry','09234578889','alex@gmaill.com','New York','2023-09-20'),(11,'13','Dior Prestige','$350','Oliva','0912345678','oliva@email.com','Landon','2023-11-02'),(12,'13','Dior Prestige','$350','Oliva','0912345678','oliva@email.com','Landon','2023-11-02'),(13,'13','Dior Prestige','$350','Oliva','0912345678','oliva@email.com','Landon','2023-10-30'),(14,'13','Dior Prestige','$350','Oliva','0912345678','oliva@email.com','Landon','2023-10-30'),(15,'9','Dior Prestige','$350','Tae','9872425','jeon@gmail.com','Seoul','2023-11-01'),(16,'8','Dior Prestige','$250','Tae','9872425','jeon@gmail.com','Seoul','2023-10-31'),(17,'4','Smart Watch','95000','Tae','9872425','jeon@gmail.com','Seoul','2023-11-02'),(18,'4','Dior Popular','95000','Tae','9872425','jeon@gmail.com','Seoul','2023-11-03');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
