CREATE DATABASE  IF NOT EXISTS `sql_optics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_optics`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_optics
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `glasses`
--

DROP TABLE IF EXISTS `glasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glasses` (
  `id_glasses` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `lens_graduation_left` float DEFAULT NULL,
  `lens_graduation_right` float DEFAULT NULL,
  `glasses_frame` enum('Floating','Paste','Metal') NOT NULL,
  `frame_color` varchar(40) NOT NULL,
  `lens_color_left` varchar(40) NOT NULL,
  `lens_color_right` varchar(40) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `id_provider` int NOT NULL,
  PRIMARY KEY (`id_glasses`),
  KEY `id_provider` (`id_provider`),
  CONSTRAINT `glasses_ibfk_1` FOREIGN KEY (`id_provider`) REFERENCES `providers` (`id_provider`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glasses`
--

LOCK TABLES `glasses` WRITE;
/*!40000 ALTER TABLE `glasses` DISABLE KEYS */;
INSERT INTO `glasses` VALUES (1,'Ray-Ban',-1.25,-1.5,'Metal','Negro','Transparente','Transparente',129.99,1),(2,'Oakley',0,0,'Paste','Rojo','Azul','Verde',159.99,2),(3,'Gucci',2,2.5,'Floating','Dorado','Marrón','Marrón',199.99,3),(4,'Prada',-1.25,-1.5,'Metal','rOJO','Transparente','Transparente',209.99,1);
/*!40000 ALTER TABLE `glasses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21  9:34:52
