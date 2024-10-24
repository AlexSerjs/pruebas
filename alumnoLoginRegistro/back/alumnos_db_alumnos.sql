-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: alumnos_db
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumno` bigint NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `grado` varchar(255) DEFAULT NULL,
  `es_delegado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Ana García','ana.garcia@example.com','password123','Desarrollo de Aplicaciones Multiplataforma',1),(2,'Carlos Hernández','carlos.hernandez@example.com','password456','Administración de Sistemas Informáticos',0),(3,'María López','maria.lopez@example.com','password789','Desarrollo de Aplicaciones Web',0),(4,'Luis Martínez','luis.martinez@example.com','miClave321','Marketing y Publicidad',0),(5,'Elena Pérez','elena.perez@example.com','claveSegura998','Educación Infantil',0),(6,'Javier Sánchez','javier.sanchez@example.com','claveSuper123','Gestión de Ventas y Espacios Comerciales',0),(7,'Laura Fernández','laura.fernandez@example.com','superClave454','Administración y Finanzas',0),(8,'Daniel Gómez','daniel.gomez@example.com','claveFuerte768','Desarrollo de Aplicaciones Multiplataforma',0),(9,'Paula Ortiz','paula.ortiz@example.com','miClave987','Desarrollo de Aplicaciones Web',1),(10,'Raúl Torres','raul.torres@example.com','superPass123','Gestión de Ventas y Espacios Comerciales',0),(14,'Ana García','ana.garciAAAAa@example.com','password123','Desarrollo de Aplicaciones Web',0),(15,'Lorenzo Perez','lorentperez@gmail.com','123456789','DM1E',1);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-24 20:27:58
