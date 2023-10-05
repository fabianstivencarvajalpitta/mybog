CREATE DATABASE  IF NOT EXISTS `mybog` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mybog`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mybog
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `arrendamientos`
--

DROP TABLE IF EXISTS `arrendamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arrendamientos` (
  `Id_de_arrendamientos` int NOT NULL AUTO_INCREMENT,
  `Nombre_de_arrendamientos` varchar(30) NOT NULL,
  `Ubicacion_de_arrendamientos` varchar(50) NOT NULL,
  `Tipos_de_arrendamientos` varchar(30) NOT NULL,
  `Informacion_de_arrendamientos` text NOT NULL,
  `Id_servicio` int NOT NULL,
  PRIMARY KEY (`Id_de_arrendamientos`),
  KEY `Id_servicio` (`Id_servicio`) USING BTREE,
  CONSTRAINT `arrendamientos_ibfk_1` FOREIGN KEY (`Id_servicio`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrendamientos`
--

LOCK TABLES `arrendamientos` WRITE;
/*!40000 ALTER TABLE `arrendamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrendamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centros_comerciales`
--

DROP TABLE IF EXISTS `centros_comerciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centros_comerciales` (
  `Id_de_centros_comerciales` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_centros_comerciales` varchar(30) NOT NULL,
  `Ubicacion_de_centros_comerciales` varchar(50) NOT NULL,
  `Informacion_de_centros_comerciales` text NOT NULL,
  `Id_entretenimiento` int NOT NULL,
  PRIMARY KEY (`Id_de_centros_comerciales`),
  KEY `Id_entretenimiento` (`Id_entretenimiento`),
  CONSTRAINT `centros_comerciales_ibfk_1` FOREIGN KEY (`Id_entretenimiento`) REFERENCES `entretenimiento` (`Id_entretenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centros_comerciales`
--

LOCK TABLES `centros_comerciales` WRITE;
/*!40000 ALTER TABLE `centros_comerciales` DISABLE KEYS */;
/*!40000 ALTER TABLE `centros_comerciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `Id_Usuario` int NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Id_servicios` int NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  KEY `Id_servicios` (`Id_servicios`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`Id_servicios`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,'','','','',1),(11,'Jose Antonio','Montealegre','santi01031@outlook.com','$2y$10$U38myVk905pPM82E5FjttePPLFV45KMHY9V62qctkfF7DW2j1ya3.',1),(12,'Jose Antonio','Montealegre','santi01032@outlook.com','$2y$10$9LNqlmWGc3IY4k0ALbFST.NtvsDHbN0lY7jaZ5cLSf9QWdPoNaFgm',1),(13,'Jose Antonio','Montealegre','sa@outlook.com','$2y$10$BixBpA9e14TMR/2.pTvGyud0MvzYTcyzLZ1bS7ytr0hdOQDjun6I.',1),(14,'Jose Antonio','Montealegre','sarm@outlook.com','$2y$10$80MQS09Vs8JUykXGvgO4OeDa1NJW6M8p9cBrw/aHzmAee8d8pytzC',1),(15,'Jose Antonio','Montealegre','j.polanco1975@hotmail.com','$2y$10$yUkAet1JKI52zvX45BybueX89j2G9EXhb1hU8DVUWM4MF9cMMKip.',1);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discotecas`
--

DROP TABLE IF EXISTS `discotecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discotecas` (
  `Id_de_discotecas` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_discotecas` varchar(30) NOT NULL,
  `Ubicacion_de_discotecas` varchar(50) NOT NULL,
  `Informacion_de_discotecas` text NOT NULL,
  `Id_entretenimiento` int NOT NULL,
  PRIMARY KEY (`Id_de_discotecas`),
  KEY `Id_de_entretenimiento` (`Id_entretenimiento`),
  KEY `Id_entretenimiento` (`Id_entretenimiento`),
  CONSTRAINT `discotecas_ibfk_1` FOREIGN KEY (`Id_entretenimiento`) REFERENCES `entretenimiento` (`Id_entretenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discotecas`
--

LOCK TABLES `discotecas` WRITE;
/*!40000 ALTER TABLE `discotecas` DISABLE KEYS */;
/*!40000 ALTER TABLE `discotecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entretenimiento`
--

DROP TABLE IF EXISTS `entretenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entretenimiento` (
  `Id_entretenimiento` int NOT NULL AUTO_INCREMENT,
  `Nombre_del_entretenimiento` varchar(30) NOT NULL,
  `Id_Categorias` int NOT NULL,
  PRIMARY KEY (`Id_entretenimiento`),
  KEY `Id_Categorias` (`Id_Categorias`),
  CONSTRAINT `entretenimiento_ibfk_1` FOREIGN KEY (`Id_Categorias`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entretenimiento`
--

LOCK TABLES `entretenimiento` WRITE;
/*!40000 ALTER TABLE `entretenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `entretenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadios`
--

DROP TABLE IF EXISTS `estadios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadios` (
  `Id_estadios` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_estadios` varchar(30) NOT NULL,
  `Ubicacion_de_estadios` varchar(50) NOT NULL,
  `Tipos_de_estadios` varchar(30) NOT NULL,
  `Informacion_de_estadios` text NOT NULL,
  `Id_entreteniemiento` int NOT NULL,
  PRIMARY KEY (`Id_estadios`),
  KEY `Id_entreteniemiento` (`Id_entreteniemiento`),
  CONSTRAINT `estadios_ibfk_1` FOREIGN KEY (`Id_entreteniemiento`) REFERENCES `entretenimiento` (`Id_entretenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadios`
--

LOCK TABLES `estadios` WRITE;
/*!40000 ALTER TABLE `estadios` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedaje`
--

DROP TABLE IF EXISTS `hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedaje` (
  `Id_de_hospedaje` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_hospedajes` varchar(30) NOT NULL,
  `Ubicacion_de_hospedajes` varchar(50) NOT NULL,
  `Tipos_de_hospedaje` varchar(30) NOT NULL,
  `Informacion_de_hospedajes` text NOT NULL,
  `Id_Categorias` int NOT NULL,
  PRIMARY KEY (`Id_de_hospedaje`),
  KEY `Id_Categorias` (`Id_Categorias`),
  CONSTRAINT `hospedaje_ibfk_1` FOREIGN KEY (`Id_Categorias`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedaje`
--

LOCK TABLES `hospedaje` WRITE;
/*!40000 ALTER TABLE `hospedaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugares_historicos`
--

DROP TABLE IF EXISTS `lugares_historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lugares_historicos` (
  `Id_lugares_historicos` int NOT NULL AUTO_INCREMENT,
  `Nombre_de_lugares_historicos` varchar(30) NOT NULL,
  `Ubicacion_de_lugares_historicos` varchar(50) NOT NULL,
  `Tipos_de_lugares_historicos` varchar(30) NOT NULL,
  `Informacion_de_lugares_historicos` text NOT NULL,
  `Id_entreteniemiento` int NOT NULL,
  PRIMARY KEY (`Id_lugares_historicos`),
  KEY `Id_entreteniemiento` (`Id_entreteniemiento`),
  CONSTRAINT `lugares_historicos_ibfk_1` FOREIGN KEY (`Id_entreteniemiento`) REFERENCES `entretenimiento` (`Id_entretenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugares_historicos`
--

LOCK TABLES `lugares_historicos` WRITE;
/*!40000 ALTER TABLE `lugares_historicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `lugares_historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parques`
--

DROP TABLE IF EXISTS `parques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parques` (
  `Id_de_parques` int NOT NULL AUTO_INCREMENT,
  `Nombre_de_parques` varchar(30) NOT NULL,
  `Ubicacion_de_parques` varchar(50) NOT NULL,
  `Tipos_de_parques` varchar(30) NOT NULL,
  `Informacion_de_parques` text NOT NULL,
  `Id_entreteniemiento` int NOT NULL,
  PRIMARY KEY (`Id_de_parques`),
  KEY `Id_entreteniemiento` (`Id_entreteniemiento`),
  CONSTRAINT `parques_ibfk_1` FOREIGN KEY (`Id_entreteniemiento`) REFERENCES `entretenimiento` (`Id_entretenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parques`
--

LOCK TABLES `parques` WRITE;
/*!40000 ALTER TABLE `parques` DISABLE KEYS */;
/*!40000 ALTER TABLE `parques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos_de_alimentos`
--

DROP TABLE IF EXISTS `puestos_de_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos_de_alimentos` (
  `Id_Puestos_de_alimentos` int NOT NULL AUTO_INCREMENT,
  `Tipos_de_puestos_de_alimentos` varchar(30) NOT NULL,
  `Nombres_de_puestos_de_alimentos` varchar(30) NOT NULL,
  `Ubicacion_de_puestos_de_alimentos` varchar(30) NOT NULL,
  `Informacion_de_puestos_de_alimentos` text NOT NULL,
  `Id_Categorias` int NOT NULL,
  PRIMARY KEY (`Id_Puestos_de_alimentos`),
  KEY `Id_Categorias` (`Id_Categorias`),
  CONSTRAINT `puestos_de_alimentos_ibfk_1` FOREIGN KEY (`Id_Categorias`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos_de_alimentos`
--

LOCK TABLES `puestos_de_alimentos` WRITE;
/*!40000 ALTER TABLE `puestos_de_alimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `puestos_de_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_de_establecimiento`
--

DROP TABLE IF EXISTS `registro_de_establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_de_establecimiento` (
  `Id_registro` int NOT NULL AUTO_INCREMENT,
  `Fecha_de_registro` datetime NOT NULL,
  `Nombres_de_categorias` varchar(20) NOT NULL,
  `Horarios_de_atencion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Precios_de_consumo_en_el_establecimiento` int NOT NULL,
  `Nombre_del_establecimiento` varchar(50) NOT NULL,
  `Direccion_de;_establecimiento` varchar(50) NOT NULL,
  `Id_Usuario` int NOT NULL,
  PRIMARY KEY (`Id_registro`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `registro_de_establecimiento_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `cuentas` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_de_establecimiento`
--

LOCK TABLES `registro_de_establecimiento` WRITE;
/*!40000 ALTER TABLE `registro_de_establecimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_de_establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salud`
--

DROP TABLE IF EXISTS `salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salud` (
  `Id_Centros_de_salud` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_centros_de_salud` varchar(30) NOT NULL,
  `Ubicacion_de_centros_de_salud` varchar(50) NOT NULL,
  `Informacion_de_centros_de_salud` text NOT NULL,
  `Id_Categorias` int NOT NULL,
  PRIMARY KEY (`Id_Centros_de_salud`),
  KEY `Id_Categorias` (`Id_Categorias`),
  CONSTRAINT `salud_ibfk_1` FOREIGN KEY (`Id_Categorias`) REFERENCES `servicios` (`Id_Servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salud`
--

LOCK TABLES `salud` WRITE;
/*!40000 ALTER TABLE `salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `Id_Servicios` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_servicios` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Servicios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Creaccion_de_cuentas');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_arrendamientos`
--

DROP TABLE IF EXISTS `tipos_de_arrendamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_arrendamientos` (
  `Id_de_tipos_de_arrendamientos` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipo_de_arrendamientos` varchar(30) NOT NULL,
  `Id_de_arrendamientos` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_de_arrendamientos`),
  KEY `Id_de_arrendamientos` (`Id_de_arrendamientos`),
  CONSTRAINT `tipos_de_arrendamientos_ibfk_1` FOREIGN KEY (`Id_de_arrendamientos`) REFERENCES `arrendamientos` (`Id_de_arrendamientos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_arrendamientos`
--

LOCK TABLES `tipos_de_arrendamientos` WRITE;
/*!40000 ALTER TABLE `tipos_de_arrendamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_arrendamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_establecimientos`
--

DROP TABLE IF EXISTS `tipos_de_establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_establecimientos` (
  `Id_de_tipos_de_establecimientos` int NOT NULL AUTO_INCREMENT,
  `Nombre_de_tipos_de_establecimientos` varchar(30) NOT NULL,
  `Id_Registro` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_de_establecimientos`),
  KEY `Id_Registro` (`Id_Registro`),
  CONSTRAINT `tipos_de_establecimientos_ibfk_1` FOREIGN KEY (`Id_Registro`) REFERENCES `registro_de_establecimiento` (`Id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_establecimientos`
--

LOCK TABLES `tipos_de_establecimientos` WRITE;
/*!40000 ALTER TABLE `tipos_de_establecimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_estadios`
--

DROP TABLE IF EXISTS `tipos_de_estadios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_estadios` (
  `Id_de_tipos_de_estadios` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipos_de_estadios` varchar(30) NOT NULL,
  `Id_de_estadios` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_de_estadios`),
  KEY `Id_de_estadios` (`Id_de_estadios`),
  CONSTRAINT `tipos_de_estadios_ibfk_1` FOREIGN KEY (`Id_de_estadios`) REFERENCES `estadios` (`Id_estadios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_estadios`
--

LOCK TABLES `tipos_de_estadios` WRITE;
/*!40000 ALTER TABLE `tipos_de_estadios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_estadios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_hospedajes`
--

DROP TABLE IF EXISTS `tipos_de_hospedajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_hospedajes` (
  `Id_de_tipos_de_hospedajes` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipos_de_hospedajes` varchar(30) NOT NULL,
  `Id_de_hospedajes` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_de_hospedajes`),
  KEY `Id_de_hospedajes` (`Id_de_hospedajes`),
  CONSTRAINT `tipos_de_hospedajes_ibfk_1` FOREIGN KEY (`Id_de_hospedajes`) REFERENCES `hospedaje` (`Id_de_hospedaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_hospedajes`
--

LOCK TABLES `tipos_de_hospedajes` WRITE;
/*!40000 ALTER TABLE `tipos_de_hospedajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_hospedajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_lugares_historicos`
--

DROP TABLE IF EXISTS `tipos_de_lugares_historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_lugares_historicos` (
  `Id_de_tipos_lugares_historicos` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipos_de_lugares_historicos` varchar(30) NOT NULL,
  `Id_lugares_historicos` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_lugares_historicos`),
  KEY `Id_lugares_historicos` (`Id_lugares_historicos`),
  CONSTRAINT `tipos_de_lugares_historicos_ibfk_1` FOREIGN KEY (`Id_lugares_historicos`) REFERENCES `lugares_historicos` (`Id_lugares_historicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_lugares_historicos`
--

LOCK TABLES `tipos_de_lugares_historicos` WRITE;
/*!40000 ALTER TABLE `tipos_de_lugares_historicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_lugares_historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_parques`
--

DROP TABLE IF EXISTS `tipos_de_parques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_parques` (
  `Id_de_tipos_de_parques` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipos_de_parques` varchar(30) NOT NULL,
  `Id_de_parques` int NOT NULL,
  PRIMARY KEY (`Id_de_tipos_de_parques`),
  KEY `Id_de_parques` (`Id_de_parques`),
  CONSTRAINT `tipos_de_parques_ibfk_1` FOREIGN KEY (`Id_de_parques`) REFERENCES `parques` (`Id_de_parques`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_parques`
--

LOCK TABLES `tipos_de_parques` WRITE;
/*!40000 ALTER TABLE `tipos_de_parques` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_parques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_puestos_de_alimentos`
--

DROP TABLE IF EXISTS `tipos_de_puestos_de_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_puestos_de_alimentos` (
  `Id_tipos_de_puestos_de_alimentos` int NOT NULL AUTO_INCREMENT,
  `Nombres_de_tipos_de_puestos_de_alimentos` varchar(30) NOT NULL,
  `Id_puestos_de_alimentos` int NOT NULL,
  PRIMARY KEY (`Id_tipos_de_puestos_de_alimentos`),
  KEY `Id_puestos_de_alimentos` (`Id_puestos_de_alimentos`),
  CONSTRAINT `tipos_de_puestos_de_alimentos_ibfk_1` FOREIGN KEY (`Id_puestos_de_alimentos`) REFERENCES `puestos_de_alimentos` (`Id_Puestos_de_alimentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_puestos_de_alimentos`
--

LOCK TABLES `tipos_de_puestos_de_alimentos` WRITE;
/*!40000 ALTER TABLE `tipos_de_puestos_de_alimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_puestos_de_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_codes`
--

DROP TABLE IF EXISTS `verification_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `cuentas` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_codes`
--

LOCK TABLES `verification_codes` WRITE;
/*!40000 ALTER TABLE `verification_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_codes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05  5:36:36
