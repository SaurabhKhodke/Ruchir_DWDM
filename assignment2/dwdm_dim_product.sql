CREATE DATABASE  IF NOT EXISTS `dwdm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dwdm`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dwdm
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `dim_product`
--

DROP TABLE IF EXISTS `dim_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_product` (
  `Product_id` int NOT NULL,
  `product_number` int NOT NULL,
  `type` varchar(30) NOT NULL,
  `quality` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `requested_ship_date` date NOT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_product`
--

LOCK TABLES `dim_product` WRITE;
/*!40000 ALTER TABLE `dim_product` DISABLE KEYS */;
INSERT INTO `dim_product` VALUES (1,101,'Headphones','B2',800,'2023-01-15'),(2,102,'Monitor','B2',12000,'2023-02-20'),(3,103,'SSD','B2',6000,'2023-03-05'),(4,104,'HDMI Cable','B2',700,'2023-04-12'),(5,105,'Webcam','B2',1500,'2023-05-25'),(6,106,'Power Bank','B2',2500,'2023-06-18'),(7,107,'Speakers','B2',2200,'2023-07-21'),(8,108,'Router','B2',3500,'2023-08-14'),(9,109,'Microphone','B2',1800,'2023-09-07'),(10,110,'Laptop Stand','B2',1300,'2023-10-02');
/*!40000 ALTER TABLE `dim_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 16:43:42
