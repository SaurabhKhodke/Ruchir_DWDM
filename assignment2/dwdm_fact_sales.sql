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
-- Table structure for table `fact_sales`
--

DROP TABLE IF EXISTS `fact_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_sales` (
  `Sales_Rep_id` int NOT NULL,
  `Time_id` int NOT NULL,
  `Order_id` int NOT NULL,
  `Customer_id` int NOT NULL,
  `Product_id` int NOT NULL,
  `Net_amount_per_customer` int NOT NULL,
  `Net_amount_per_product` int NOT NULL,
  `Net_amount_per_promotion` int NOT NULL,
  KEY `FK_Sales_Rep_ID` (`Sales_Rep_id`),
  KEY `FK_Time_ID` (`Time_id`),
  KEY `FK_Order_ID` (`Order_id`),
  KEY `FK_Customer_ID` (`Customer_id`),
  KEY `FK_Product_ID` (`Product_id`),
  CONSTRAINT `FK_Customer_ID` FOREIGN KEY (`Customer_id`) REFERENCES `dim_customer` (`Customer_id`),
  CONSTRAINT `FK_Order_ID` FOREIGN KEY (`Order_id`) REFERENCES `dim_order` (`Order_id`),
  CONSTRAINT `FK_Product_ID` FOREIGN KEY (`Product_id`) REFERENCES `dim_product` (`Product_id`),
  CONSTRAINT `FK_Sales_Rep_ID` FOREIGN KEY (`Sales_Rep_id`) REFERENCES `dim_sales_rep` (`Sales_Rep_id`),
  CONSTRAINT `FK_Time_ID` FOREIGN KEY (`Time_id`) REFERENCES `dim_time` (`Time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_sales`
--

LOCK TABLES `fact_sales` WRITE;
/*!40000 ALTER TABLE `fact_sales` DISABLE KEYS */;
INSERT INTO `fact_sales` VALUES (1,7,2,3,6,1500,2500,1250),(2,9,10,5,8,1800,3500,1750),(3,6,5,7,1,2200,800,1000),(4,1,8,9,3,1300,6000,3650),(5,10,7,1,9,800,1800,950),(6,4,1,10,7,2200,2200,2100),(7,8,3,8,10,3500,1300,2400),(8,2,4,6,2,2500,12000,7250),(9,5,6,4,5,2500,1500,1700),(10,3,9,2,4,1200,700,950);
/*!40000 ALTER TABLE `fact_sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 16:43:43
