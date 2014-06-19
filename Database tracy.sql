CREATE DATABASE  IF NOT EXISTS `tracy` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `tracy`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: tracy
-- ------------------------------------------------------
-- Server version	5.6.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `numero_cuenta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'1293391239','BANCO DE BOGOTA','CARRERA 9 SUR Nº 15-13 C.C OVIEDO','3241245','128338192929',''),(2,'9876521122','BANCO DE OCCIDENTE','CALLE 40 # 45 NORTE BELLO ANTIOQUIA','2938481','92929384828','');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buckup`
--

DROP TABLE IF EXISTS `buckup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buckup` (
  `id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `ruta` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buckup`
--

LOCK TABLES `buckup` WRITE;
/*!40000 ALTER TABLE `buckup` DISABLE KEYS */;
/*!40000 ALTER TABLE `buckup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'5 ESTRELLAS',''),(2,'4 ESTRELLAS',''),(3,'3 ESTRELLAS',''),(4,'2 ESTRELLAS',''),(5,'1 ESTRELLAS','');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citytour`
--

DROP TABLE IF EXISTS `citytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citytour` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cupos` smallint(5) unsigned NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float unsigned NOT NULL DEFAULT '0',
  `direccion_salida` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citytour`
--

LOCK TABLES `citytour` WRITE;
/*!40000 ALTER TABLE `citytour` DISABLE KEYS */;
INSERT INTO `citytour` VALUES (1,40,'VUELTA ORIENTE OTRA',100000,'CALLE 45 # 48AA - 45','','2014-06-16','04:00:00','10:00:00'),(2,52,'RUTA EL NARCO',50000,'CALLE 34 # 34-56','','2014-06-16','10:00:00','13:00:00'),(3,19,'PRUEBA CITY',100000,'CALLE 50 A LOMA LOS BALSOS UNE','','2014-06-16','10:00:00','15:00:00'),(4,23,'LO MEJOR DEL MUNDO',200000,'LA CASA DE CAMILO','','2014-06-16','07:59:00','18:00:00');
/*!40000 ALTER TABLE `citytour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_externo`
--

DROP TABLE IF EXISTS `cliente_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_externo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `edad` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_externo`
--

LOCK TABLES `cliente_externo` WRITE;
/*!40000 ALTER TABLE `cliente_externo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_externo_reserva`
--

DROP TABLE IF EXISTS `cliente_externo_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_externo_reserva` (
  `id_reserva` int(10) unsigned NOT NULL,
  `id_cliente_externo` int(10) unsigned NOT NULL,
  KEY `cliente_externo_reserva_id_reserva_idx` (`id_reserva`),
  KEY `cliente_externo_reserva_id_cliente_externo_idx` (`id_cliente_externo`),
  CONSTRAINT `cliente_externo_reserva_id_cliente_externo` FOREIGN KEY (`id_cliente_externo`) REFERENCES `cliente_externo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cliente_externo_reserva_id_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_externo_reserva`
--

LOCK TABLES `cliente_externo_reserva` WRITE;
/*!40000 ALTER TABLE `cliente_externo_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_externo_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `id_hospedaje` int(10) unsigned DEFAULT NULL,
  `id_transporte` int(10) unsigned DEFAULT NULL,
  `id_evento` int(10) unsigned DEFAULT NULL,
  `sitio_turistico` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `contacto_id_hospedaje` (`id_hospedaje`),
  KEY `contacto_id_transporte_idx` (`id_transporte`),
  KEY `contacto_id_evento_idx` (`id_evento`),
  KEY `fk_contacto_sitio_turistico1_idx` (`sitio_turistico`),
  CONSTRAINT `contacto_id_evento` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contacto_id_hospedaje` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contacto_id_transporte` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_contacto_sitio_turistico1` FOREIGN KEY (`sitio_turistico`) REFERENCES `sitio_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convenio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero_convenio` int(10) unsigned DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_hospedaje` int(10) unsigned DEFAULT NULL,
  `tipo_convenio` int(10) unsigned DEFAULT NULL,
  `id_transporte` int(10) unsigned DEFAULT NULL,
  `id_sitio_turistico` int(10) unsigned DEFAULT NULL,
  `costo` float unsigned DEFAULT NULL,
  `venta` float unsigned DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `id_banco` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel_idx` (`id_hospedaje`),
  KEY `Nit_empresa_idx` (`id_transporte`),
  KEY `id_sitio_turistico_idx` (`id_sitio_turistico`),
  KEY `convenio_banco_id_idx` (`id_banco`),
  CONSTRAINT `convenio_banco_id` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_hospedaje` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_sitio_turistico` FOREIGN KEY (`id_sitio_turistico`) REFERENCES `sitio_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Nit_empresa` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,15145454,'2014-06-10',1,1,NULL,NULL,5000000,300000,'2014-06-16','2014-06-30','',NULL),(2,22222222,'2014-06-12',2,1,NULL,NULL,5000000,300000,'2014-06-16','2014-06-21','',NULL);
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` bit(1) NOT NULL DEFAULT b'0',
  `usuario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(10) unsigned NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_id_rol_idx` (`id_rol`),
  KEY `fk_cuenta_usuario1_idx` (`id_usuario`),
  CONSTRAINT `cuenta_id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (4,'','enomao','QTTUf5nWNbLb1gMxoup8YqeKei/wD51YDcgaSNPPvdhoiSVBecgz9sU6CP48ZOKwDfTjZFRCVJrUPxivRWM6zg==','enomao@gmail.com',1,5),(5,'','admin','011c945f30ce2cbafc452f39840f025693339c42','hola',1,1),(6,'','rolando','yOYZOocEdWF9vBJ21H323p5lMJ5prg2n2eRhbxfV1sdS+S/z0kF9yt7Dk1KrRmVqrZlllwVIeU9ObO6jkCvDqw==','rolando@hotmail.com',1,6),(15,'\0','jotsui','axA1ZI4+R+B3lj+V/wyhJiJchMImHMZj2d3guFL329okwa8464PyIEoA+0khc+mPmN3fAmycNHPKFHQwJUs+hw==','jotsuar@gmail.com',1,15),(16,'\0','2222','DdT8JY1NCg0QMUBvdnQd67XOvLMV3PrAYydRwbgOx89awnwDxCkRdRgr2uZrrtA8LWROeFFvlNZqKvGi4OxsRw==','and@gmail.co',1,16),(17,'\0','3333','PV/T+MsocrFfXDfh1e6kLiOa0saU96Kj8pOHdFfJjlJwGR4t8QfcVnjdhsXzkUhmunXwM3H0zpoMD87OQCG1rw==','sdadsa@dsadsadsa.com',1,17),(18,'\0','5555','PO/OALWfCgdUIUFg2M3RDxa8tKQ456p46zoImCVyu4GNxwb7sPg6bfoNgcgBITRMa+mED96AHhZg+DNpVXicMw==','saasas@asassa.es',1,18),(19,'\0','9999','fjJWugmtwZmUNT5CWZ2tO7OAh49HVwsbRI8QbSBkAH5o8TVNFOdm5HF5DZzMaiFeWj/uxVf+M3HNpimmsJcC9Q==','alentado@gmail.com',1,19),(20,'\0','4444','SNKE9YXV5C+pbf99cOwz4LNveuiZ7ZTwz1TWBU5hLKJqdqQyCvOgeIAYjk2XATq5Lsr/V4mssE1tHUsLFp2MKQ==','aasas@jajas.com',1,20),(21,'\0','dani','4KlnHMpgCjtV2cO3gqYx1WQhj2Vnhtv/dv6r9MiIK/vI0ND7R6ahSxuwtIc2wT87G/9fGU21K+S1wQpBssazgQ==','jotsi@misena.com',1,21),(23,'\0','tupapito','nK0Vk7irfZHLjS5xkaiKOOIViHPoz+h9TcECZQqov6U49Bv8ikJKkiJhE+6174ELjtUUjX+wbnE9vpSc9mUHdQ==','tupapito@gmail.com',1,23);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_city_tour`
--

DROP TABLE IF EXISTS `detalle_city_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_city_tour` (
  `id_city_tour` int(10) unsigned NOT NULL,
  `id_sitio_turistico` int(10) unsigned NOT NULL,
  KEY `id_citytour_idx` (`id_city_tour`),
  KEY `id_sitio_turistico_idx` (`id_sitio_turistico`),
  CONSTRAINT `detalle_city_tour_id_citytour` FOREIGN KEY (`id_city_tour`) REFERENCES `citytour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detalle_city_tour_id_sitio_turistico` FOREIGN KEY (`id_sitio_turistico`) REFERENCES `sitio_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_city_tour`
--

LOCK TABLES `detalle_city_tour` WRITE;
/*!40000 ALTER TABLE `detalle_city_tour` DISABLE KEYS */;
INSERT INTO `detalle_city_tour` VALUES (2,3),(2,2),(2,1),(1,3),(1,2),(1,1),(4,3),(4,2),(3,3),(3,2),(3,1);
/*!40000 ALTER TABLE `detalle_city_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_city_tour_guia`
--

DROP TABLE IF EXISTS `detalle_city_tour_guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_city_tour_guia` (
  `id_guia` int(10) unsigned NOT NULL,
  `id_city_tour` int(10) unsigned NOT NULL,
  KEY `detalle_city_tour_guia_id_guia_idx` (`id_guia`),
  KEY `detalle_city_tour_guia_id_city_tour_idx` (`id_city_tour`),
  CONSTRAINT `detalle_city_tour_guia_id_city_tour` FOREIGN KEY (`id_city_tour`) REFERENCES `citytour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detalle_city_tour_guia_id_guia` FOREIGN KEY (`id_guia`) REFERENCES `guia_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_city_tour_guia`
--

LOCK TABLES `detalle_city_tour_guia` WRITE;
/*!40000 ALTER TABLE `detalle_city_tour_guia` DISABLE KEYS */;
INSERT INTO `detalle_city_tour_guia` VALUES (2,1),(3,1),(2,4);
/*!40000 ALTER TABLE `detalle_city_tour_guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_habitacion_reserva`
--

DROP TABLE IF EXISTS `detalle_habitacion_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_habitacion_reserva` (
  `id_reserva` int(10) unsigned NOT NULL,
  `id_habitacion` int(10) unsigned NOT NULL,
  `cupos` int(11) NOT NULL,
  KEY `habitacion_fk_idx` (`id_habitacion`),
  KEY `reserva_fk_idx` (`id_reserva`),
  CONSTRAINT `habitacion_fk` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reserva_fk` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_habitacion_reserva`
--

LOCK TABLES `detalle_habitacion_reserva` WRITE;
/*!40000 ALTER TABLE `detalle_habitacion_reserva` DISABLE KEYS */;
INSERT INTO `detalle_habitacion_reserva` VALUES (36,1,2),(36,5,2);
/*!40000 ALTER TABLE `detalle_habitacion_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_hospedaje`
--

DROP TABLE IF EXISTS `detalle_hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_hospedaje` (
  `id_convenio` int(10) unsigned DEFAULT NULL,
  `id_hospedaje` int(10) unsigned DEFAULT NULL,
  `costo` float unsigned DEFAULT NULL,
  `venta` float unsigned DEFAULT NULL,
  KEY `hospedaje_convenio_idx` (`id_hospedaje`),
  KEY `convenio_idx` (`id_convenio`),
  CONSTRAINT `convenio` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hospedaje_convenio` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_hospedaje`
--

LOCK TABLES `detalle_hospedaje` WRITE;
/*!40000 ALTER TABLE `detalle_hospedaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_idioma`
--

DROP TABLE IF EXISTS `detalle_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_idioma` (
  `id_idioma` int(10) unsigned NOT NULL,
  `id_guia_turistico` int(10) unsigned NOT NULL,
  KEY `detalle_idioma_id_idioma_idx` (`id_idioma`),
  KEY `detalle_idioma_id_guia_idx` (`id_guia_turistico`),
  CONSTRAINT `detalle_idioma_id_guia` FOREIGN KEY (`id_guia_turistico`) REFERENCES `guia_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detalle_idioma_id_idioma` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_idioma`
--

LOCK TABLES `detalle_idioma` WRITE;
/*!40000 ALTER TABLE `detalle_idioma` DISABLE KEYS */;
INSERT INTO `detalle_idioma` VALUES (1,2),(2,2),(3,2),(1,3),(2,3);
/*!40000 ALTER TABLE `detalle_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_paquete_hospedaje`
--

DROP TABLE IF EXISTS `detalle_paquete_hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_paquete_hospedaje` (
  `Id_paquete` int(10) unsigned NOT NULL,
  `id_habitacion_hotel` int(10) unsigned NOT NULL,
  KEY `for_dtlle_paquete_hospedaje_id_paquete` (`Id_paquete`),
  KEY `id_habitacion_hotel_idx` (`id_habitacion_hotel`),
  CONSTRAINT `dtlle_paquete_hospedaje_id_habitacion` FOREIGN KEY (`id_habitacion_hotel`) REFERENCES `habitacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `for_dtlle_paquete_hospedaje_id_paquete` FOREIGN KEY (`Id_paquete`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_paquete_hospedaje`
--

LOCK TABLES `detalle_paquete_hospedaje` WRITE;
/*!40000 ALTER TABLE `detalle_paquete_hospedaje` DISABLE KEYS */;
INSERT INTO `detalle_paquete_hospedaje` VALUES (1,1);
/*!40000 ALTER TABLE `detalle_paquete_hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_servicio_adicional`
--

DROP TABLE IF EXISTS `detalle_servicio_adicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_servicio_adicional` (
  `id_hospedaje` int(10) unsigned DEFAULT NULL,
  `id_servicio_adicional` int(10) unsigned DEFAULT NULL,
  `id_sitio_turistico` int(10) unsigned DEFAULT NULL,
  KEY `hospedaje_servicio_adicional_id_hospedaje_idx` (`id_hospedaje`),
  KEY `sitio_turistico_servicio_adicional_id_sitio_idx` (`id_sitio_turistico`),
  KEY `id_servicio_adicional_idx` (`id_servicio_adicional`),
  CONSTRAINT `hospedaje_servicio_adicional_id_hospedaje` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE CASCADE,
  CONSTRAINT `id_servicio_adicional` FOREIGN KEY (`id_servicio_adicional`) REFERENCES `servicio_adicional` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sitio_turistico_servicio_adicional_id_sitio` FOREIGN KEY (`id_sitio_turistico`) REFERENCES `sitio_turistico` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_servicio_adicional`
--

LOCK TABLES `detalle_servicio_adicional` WRITE;
/*!40000 ALTER TABLE `detalle_servicio_adicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_servicio_adicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `valor_compra` float unsigned NOT NULL,
  `valor_venta` float unsigned NOT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cupos` smallint(5) unsigned NOT NULL,
  `lugar` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_salida` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Concierto Chaquira','Concierto de la cantante colombiana mas cotizada',20000,30000,'calle 1000 a',39,'plaza de toros la macarena','2014-06-16','2014-07-03','11:24:16','11:24:16'),(2,'CONCIERTO CORFERIAS','Presentacion de moda en medellin',10000,17000,'Calle 50 # 23-45B sur',29,'PLAZA MAYOR','2014-06-16','2014-07-03','01:02:00','05:02:00');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_turistico`
--

DROP TABLE IF EXISTS `guia_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_turistico` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_turistico`
--

LOCK TABLES `guia_turistico` WRITE;
/*!40000 ALTER TABLE `guia_turistico` DISABLE KEYS */;
INSERT INTO `guia_turistico` VALUES (2,'388393993','Pedro','Fernandez','8883773','7738838','ped@gmail.com',''),(3,'77474748','Felipe','Acevedo','883776','88388376','aced@yahoo.com','');
/*!40000 ALTER TABLE `guia_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_hospedaje` int(10) unsigned NOT NULL,
  `id_tipohabitacion` int(10) unsigned NOT NULL,
  `comodidades` text COLLATE utf8_spanish_ci,
  `cantidad` tinyint(3) unsigned NOT NULL,
  `valor` float unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_hotel_idx` (`id_hospedaje`),
  KEY `id_tipo_habitacion_idx` (`id_tipohabitacion`),
  CONSTRAINT `id_hotel1` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_tipo_habitacion1` FOREIGN KEY (`id_tipohabitacion`) REFERENCES `tipo_habitacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,1,1,'sillas de agua',4,50000),(4,1,2,'',3,49599),(5,1,7,'',5,23999),(6,1,5,'',10,24799),(7,2,2,'silla del amor',4,60000),(8,2,8,'',11,200000),(9,2,5,'',12,40000000),(10,2,7,'',8,544444);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedaje`
--

DROP TABLE IF EXISTS `hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospedaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `id_categoria` int(10) unsigned NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `id_categrio_idx` (`id_categoria`),
  CONSTRAINT `hospedaje_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedaje`
--

LOCK TABLES `hospedaje` WRITE;
/*!40000 ALTER TABLE `hospedaje` DISABLE KEYS */;
INSERT INTO `hospedaje` VALUES (1,'453213','HOTEL DAN CARLTON','Calle 34 # 34-56','345 45 67',' ',1,''),(2,'2873847832','Hotel Plaza','la calle','29083983','',1,''),(3,'7687686','Hotel Plaza san C','calle la 80','198928938','',1,'');
/*!40000 ALTER TABLE `hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (1,'Inglés'),(2,'Francés'),(3,'Italiano'),(4,'Mandarín');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ruta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_hospedaje` int(10) unsigned NOT NULL,
  `id_habitacion` int(10) unsigned DEFAULT NULL,
  `id_sitio_turistico` int(10) unsigned DEFAULT NULL,
  `id_pago` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foto_hopedaje_id_hospedaje_idx` (`id_hospedaje`),
  KEY `foto_habitacion_id_habitacion_idx` (`id_habitacion`),
  KEY `foto_sitio_turistico_idx` (`id_sitio_turistico`),
  KEY `imagen_pago_idx` (`id_pago`),
  CONSTRAINT `imagen_habitacion_id_habitacion` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `imagen_hopedaje_id_hospedaje` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `imagen_pago` FOREIGN KEY (`id_pago`) REFERENCES `pago` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `image_sitio_turistico` FOREIGN KEY (`id_sitio_turistico`) REFERENCES `sitio_turistico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novedad`
--

DROP TABLE IF EXISTS `novedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `novedad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reserva` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reserva_idx` (`id_reserva`),
  CONSTRAINT `reserva` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedad`
--

LOCK TABLES `novedad` WRITE;
/*!40000 ALTER TABLE `novedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `novedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_banco` int(10) unsigned NOT NULL,
  `reserva_id` int(10) unsigned NOT NULL,
  `forma_pago` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `valor` float unsigned DEFAULT NULL COMMENT 'Es el valor que paga el cliente por la reserva o sel servicio',
  `valor_restante` float unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_banco_idx` (`id_banco`),
  KEY `fk_pago_reserva1_idx` (`reserva_id`),
  CONSTRAINT `fk_pago_reserva1` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_banco3` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2014-06-18','14:45:20',1,32,'Cuotas',50000,100000);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paquete` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo` int(10) unsigned NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_usuario` int(10) unsigned DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `transporte` bit(1) NOT NULL,
  `id_city_tour` int(10) unsigned DEFAULT NULL,
  `id_evento` int(11) NOT NULL,
  `cupos` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_idx` (`id_tipo`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_city_tour_idx` (`id_city_tour`),
  CONSTRAINT `paquete_id_city_tour` FOREIGN KEY (`id_city_tour`) REFERENCES `citytour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paquete_id_tipo_paquete` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `paquete_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
INSERT INTO `paquete` VALUES (1,2,'2014-03-02','2014-02-03',3,'','',1,0,10);
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_reserva` date NOT NULL,
  `cod_usuario` int(10) unsigned NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `modo_de_pago` bit(1) NOT NULL,
  `cantidad_adultos` smallint(5) unsigned NOT NULL,
  `cantidad_ninios` smallint(5) unsigned NOT NULL,
  `id_paquete` int(10) unsigned DEFAULT NULL,
  `estado` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'La reserva debe estar inicialmente desactivada, ya que es el administrador el que la activa una vez compruebe la valides de la misma',
  `forma_de_pago` bit(1) NOT NULL,
  `id_evento` int(10) unsigned DEFAULT NULL,
  `id_city_tour` int(10) unsigned DEFAULT NULL,
  `valor_total` float unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_paquete_UNIQUE` (`id_paquete`),
  KEY `cliente_idx` (`cod_usuario`),
  KEY `id_paquete_idx` (`id_paquete`),
  KEY `id_evento_idx` (`id_evento`),
  KEY `id_city_tour_idx` (`id_city_tour`),
  CONSTRAINT `reserva_cliente` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reserva_id_city_tour` FOREIGN KEY (`id_city_tour`) REFERENCES `citytour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reserva_id_evento` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `reserva_id_paquete` FOREIGN KEY (`id_paquete`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (32,'2014-05-20',5,'2014-06-19','2014-06-19','\0',1,0,NULL,0,'',NULL,1,100000),(33,'2014-05-23',7,'2014-06-19','2014-06-19','\0',4,0,NULL,0,'\0',1,2,400000),(34,'2014-05-27',5,'2014-06-19','2014-06-19','\0',2,3,NULL,0,'',NULL,1,500000),(35,'2014-05-28',5,'2014-06-19','2014-06-19','\0',3,0,NULL,0,'\0',NULL,1,300000),(36,'2014-06-18',7,'2014-06-19','2014-06-20','\0',2,0,NULL,0,'\0',NULL,NULL,50000);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` tinyint(3) unsigned NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador',5,NULL),(2,'Empleado',3,NULL),(3,'Cliente',1,NULL);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_adicional`
--

DROP TABLE IF EXISTS `servicio_adicional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_adicional` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `id_tipo_servicio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_tipo_servicio_idx` (`id_tipo_servicio`),
  CONSTRAINT `fk_id_tipo_servicio` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tipo_servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_adicional`
--

LOCK TABLES `servicio_adicional` WRITE;
/*!40000 ALTER TABLE `servicio_adicional` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio_adicional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitio_turistico`
--

DROP TABLE IF EXISTS `sitio_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitio_turistico` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `id_tipo_turismo` int(10) unsigned NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `convenio` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_turismo_idx` (`id_tipo_turismo`),
  CONSTRAINT `sitio_turistico_id_tipo_turismo` FOREIGN KEY (`id_tipo_turismo`) REFERENCES `tipo_turismo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitio_turistico`
--

LOCK TABLES `sitio_turistico` WRITE;
/*!40000 ALTER TABLE `sitio_turistico` DISABLE KEYS */;
INSERT INTO `sitio_turistico` VALUES (1,'PUEBLITO PAISA','CALLE 34 #45-54','Sitio arquitectonico de la ciudad de Medellin',1,'',''),(2,'PARQUE EXPLORA','CALLE 43 # 45-34','',1,'','\0'),(3,'PARQUE DE LOS DESEOS','CALLE 55 43 A 28','',1,'','\0');
/*!40000 ALTER TABLE `sitio_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_habitacion`
--

DROP TABLE IF EXISTS `tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_habitacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `cupo_maximo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tipo_habitacion` VALUES (1,'Individual','',2),(2,'Doble','Este tipo de habitaciones suelen ofrecerse cuando el hotel, a falta de poder ofertar una habitación con una cama pequeña, dispone al huésped una habitación diseñada para dos personas; obviamente, al ser de mayor tamaño, su precio se eleva.',4),(3,'Habitación doble','Como su nombre lo indica, esta clase de habitaciones son para dos personas. Las camas varían, pueden ser matrimoniales o dos camas individuales independientes.',4),(4,'Con cama supletoria','Estas habitaciones son ideales para quienes viajan con algún menor de edad. Si bien existe un costo por la cama adicional, usualmente suele ser más barato que contratar una habitación triple. Dependiendo de la edad del niño se coloca la cama que mejor le acomode. Algunos hoteles incluso cuentan con cunas para bebés.',2),(5,'Habitación triple','Simple: estas habitaciones cuentan con 3 camas, o 2 más una supletoria. Es perfecta para los viajes con tus amigos.',8),(6,'Junior Suites','cuentan con habitación doble, baño y salón.',5),(7,'Suites','Conocidas por ser las mejores y más lujosas habitaciones en cualquier hotel, cuentan con dos habitaciones dobles, 2 baños, salón y estancia. Por supuesto, su precio es el más elevado. Las suitse más completas y lujosas suelen recibir el nombre de Suite presidencial, y generalmente son reservadas para personajes distinguidos.',10),(8,'Suite nupcial','Pensada para aquellas parejas recién casadas y que quieren disfrutar de una luna de miel con privacidad e intimidad, estas habitaciones en los lugares más exclusivos de los hoteles (generalmente acompañadas sólo por las suite presidencial). Además de una cama matrimonial amplia, generalmente cuentan con jacuzzi y una vista única.',2),(9,'EL NUEVO TIPO','wiiiiiii',5);
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_paquete`
--

DROP TABLE IF EXISTS `tipo_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_paquete` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_paquete`
--

LOCK TABLES `tipo_paquete` WRITE;
/*!40000 ALTER TABLE `tipo_paquete` DISABLE KEYS */;
INSERT INTO `tipo_paquete` VALUES (1,'Religioso'),(2,'Cultural'),(3,'Deportivo'),(4,'Histórico'),(5,'Rural');
/*!40000 ALTER TABLE `tipo_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servicio`
--

DROP TABLE IF EXISTS `tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_servicio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servicio`
--

LOCK TABLES `tipo_servicio` WRITE;
/*!40000 ALTER TABLE `tipo_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_turismo`
--

DROP TABLE IF EXISTS `tipo_turismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_turismo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_turismo`
--

LOCK TABLES `tipo_turismo` WRITE;
/*!40000 ALTER TABLE `tipo_turismo` DISABLE KEYS */;
INSERT INTO `tipo_turismo` VALUES (1,'TURISMO RECREATIVO','TURISMO DE DIVERSIóN O EXPARCIMIENTO'),(2,'TURISMO RELIGIOSO',NULL),(3,'TURISMO CULTURAL',NULL),(4,'TURISMO DEPORTIVO',NULL),(5,'TURISMO DE NATURALEZA',NULL),(6,'TURISMO DE DIVERSIÓN',NULL);
/*!40000 ALTER TABLE `tipo_turismo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vehiculo`
--

DROP TABLE IF EXISTS `tipo_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_vehiculo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vehiculo`
--

LOCK TABLES `tipo_vehiculo` WRITE;
/*!40000 ALTER TABLE `tipo_vehiculo` DISABLE KEYS */;
INSERT INTO `tipo_vehiculo` VALUES (1,'BUS',NULL),(2,'CHIVA',NULL);
/*!40000 ALTER TABLE `tipo_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transporte` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `seguro_transporte` bit(1) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'453213','BELLANITA','CALLE 34 # 34-56','345 45 60','bellanita@gmail.com','','\0'),(2,'49948338','COONATRA','CARRERA 12 #90-00','9874538','coonatra@yahoo.com','',''),(3,'0987352','COOPETRANSA','CALLE 23 # 45-54','5870092','copetransa@gmial.com','','');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Se refiere a si es una persona juridica(empresa) o una persona natural',
  `identificacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_documento` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Natural','10876514','Cédula','Juan Sebastian','Villeros','4563214','32010658976','1991-03-05',NULL),(2,'Natural','87654800','Cédula','Felipe','Lopez','8908765','765432100','1989-03-15',NULL),(3,'Natural','773883672','Cédula','Carlos','Andrade','7658945','3216789900','1990-12-23',NULL),(4,'empleado','1098765','CEDULA','BATIATO','ZATA','234567','34567','1976-02-11',NULL),(5,'Natural','3993888888','CEDULA','EMILIO','MENDEZ','48859959','4455656756','1982-02-25','enomao@gmail.com'),(6,'empleado','564564564564','CEDULA','ROLANDO','MESA','5678909','2345679743','1990-03-09',NULL),(7,'0','1020462279','CEDULA','JHONATAN','SUAREZ','3723838','3132828282','1993-05-05',NULL),(15,'Natural','3444334','CEDULA','JHONATAN STIVEN SUAREZ VANEGAS','ASSASA','3443443',NULL,'1992-06-04','jotsuar@gmail.com'),(16,'Natural','545454','CEDULA','ANDRES VELEZ','SDDS','5454422',NULL,'1993-06-03','and@gmail.co'),(17,'Natural','22333333','CEDULA','ASADDASDSADAS','DSASAASASDDSA','33322222',NULL,'1993-06-04','sdadsa@dsadsadsa.com'),(18,'Natural','222222222','CEDULA','ASDASDASADSDSD','ADSSSSZXXZXZXZ','11111111',NULL,'1993-06-10','saasas@asassa.es'),(19,'Natural','545454777','CEDULA','ALENTADOS ALENT','SDDS','7777777',NULL,'1992-06-11','alentado@gmail.com'),(20,'Natural','23434','CEDULA','SADASD','DSSSSSS','3443',NULL,'1990-06-07','aasas@jajas.com'),(21,'Natural','45369789','CEDULA','DANIEL ANDRES','VELEZ MUñOZ','4015489','545445454','1994-06-09','jotsi@misena.com'),(23,'Natural','71057422','CEDULA DE EXTRANJERA','TU PAPITO','ES EL MEJOR','9645632',NULL,'1983-06-04','tupapito@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `placa` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_tipo_vehiculo` int(10) unsigned NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `cupo_maximo` smallint(5) unsigned NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `id_transporte` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `matricula_UNIQUE` (`placa`),
  KEY `id_tipo_vehiculo_idx` (`id_tipo_vehiculo`),
  KEY `vehiculo_id_transporte_idx` (`id_transporte`),
  CONSTRAINT `id_tipo_vehiculo` FOREIGN KEY (`id_tipo_vehiculo`) REFERENCES `tipo_vehiculo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vehiculo_id_transporte` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,'AB7654',2,NULL,7,'',2),(2,'8765GA',2,NULL,33,'',3),(3,'98766Z',2,'Es una chiva Navideña',10,'',3);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo_citytour`
--

DROP TABLE IF EXISTS `vehiculo_citytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculo_citytour` (
  `vehiculo_id` int(10) unsigned NOT NULL,
  `citytour_id` int(10) unsigned NOT NULL,
  KEY `fk_vehiculo_citytour_vehiculo1_idx` (`vehiculo_id`),
  KEY `fk_vehiculo_citytour_citytour1_idx` (`citytour_id`),
  CONSTRAINT `fk_vehiculo_citytour_citytour1` FOREIGN KEY (`citytour_id`) REFERENCES `citytour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_citytour_vehiculo1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo_citytour`
--

LOCK TABLES `vehiculo_citytour` WRITE;
/*!40000 ALTER TABLE `vehiculo_citytour` DISABLE KEYS */;
INSERT INTO `vehiculo_citytour` VALUES (3,1),(2,1),(2,3),(2,4);
/*!40000 ALTER TABLE `vehiculo_citytour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tracy'
--

--
-- Dumping routines for database 'tracy'
--
/*!50003 DROP FUNCTION IF EXISTS `fc_validar_servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fc_validar_servicio`(p_nombre varchar(45), p_tipo int) RETURNS int(11)
begin 
	declare res int;
	if (exists (select * from servicio_adicional 
		where upper(nombre) like concat('%',p_nombre,'%') or
	    lower(nombre) like concat('%',p_nombre,'%'))) then
		set res = 1;
	else 
		 set res = 0;
	end if;
return res;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cliente_reserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_reserva`()
begin
select usuario.identificacion,
			usuario.nombres,
			usuario.tipo_documento,
			usuario.apellidos,
			usuario.tipo,
			reserva.id,
			reserva.id_paquete,
			reserva.id_hospedaje,
			reserva.id_evento,
			reserva.id_city_tour,
			hospedaje.nombre as hospedaje,
			evento.nombre as evento,
			citytour.nombre as city
from usuario
inner join reserva on reserva.cod_usuario= usuario.id
cross join hospedaje 
cross join evento 
cross join citytour 
group by usuario.id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_categoria`(in categoria varchar(45))
begin
	select * from categoria where upper(categoria) 
	like concat( '%',categoria,'%') or lower(categoria)
	like concat('%',categoria,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_vehiculo`(in p_placa varchar(45), p_id_transporte INT)
begin

	IF p_id_transporte != 0 THEN
		select vehiculo.id, transporte.nombre as empresa, vehiculo.placa, tipo_vehiculo.nombre as tipo, vehiculo.descripcion,
		vehiculo.cupo_maximo, vehiculo.estado
		from vehiculo 
		inner join transporte on vehiculo.id_transporte = transporte.id
		inner join tipo_vehiculo on  vehiculo.id_tipo_vehiculo = tipo_vehiculo.id
		where transporte.id = p_id_transporte;
	ELSE
		select vehiculo.id, transporte.nombre as empresa, vehiculo.placa, tipo_vehiculo.nombre as tipo, vehiculo.descripcion,
		vehiculo.cupo_maximo, vehiculo.estado
		from vehiculo 
		inner join transporte on vehiculo.id_transporte = transporte.id
		inner join tipo_vehiculo on  vehiculo.id_tipo_vehiculo = tipo_vehiculo.id
		where upper(vehiculo.placa) like concat( '%', p_placa, '%');
	END IF;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_transporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_transporte`(
	IN p_nit varchar(45), 
	IN p_nombre varchar(45), 
	IN p_direccion varchar(45),
	IN p_telefono varchar(20), 
	IN p_correo varchar(45), 
	IN p_seguro_transporte BIT
)
BEGIN
 INSERT INTO transporte(nit, nombre, direccion, telefono, correo, seguro_transporte)
 VALUES(UPPER(p_nit), UPPER(p_nombre), UPPER(p_direccion), p_telefono, LOWER(p_correo), p_seguro_transporte);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_categoria`(
    IN p_id INT, 
    IN categoria varchar(45), 
    IN descripcion TEXT
)
BEGIN
	UPDATE categoria SET categoria = upper(categoria), descripcion = descripcion
	WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_hospedaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_hospedaje`(
    IN p_id INT, 
    IN p_nit VARCHAR(45), 
    IN p_nombre VARCHAR(45),
    IN p_direccion VARCHAR(45),
    IN p_telefono VARCHAR(15),
    IN p_descripcion TEXT,
    IN p_id_categoria INT, 
	IN p_estado BIT
)
BEGIN
	UPDATE hospedaje SET 
        nit = p_nit, 
        nombre = p_nombre,
        direccion = p_direccion,
        telefono = p_telefono,
        descripcion = p_descripcion,
        id_categoria = p_id_categoria,
        estado = p_estado

	WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_vehiculo`(
	p_placa varchar(45), 
	p_id_tipo_vehiculo int, 
	p_descripcion text, 
	p_cupo int, 
	p_id_transporte INT,
	p_estado INT,
	p_id INT
)
begin
	UPDATE vehiculo SET placa = p_placa, id_tipo_vehiculo = p_id_tipo_vehiculo, descripcion = p_descripcion,
	cupo_maximo = p_cupo, id_transporte = p_id_transporte, estado = p_estado
	WHERE id = p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_categoria`(
	IN categoria varchar(45), 
    IN descripcion TEXT
)
begin
 insert into categoria(categoria,descripcion)
 values(upper(categoria),descripcion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_hospedaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_hospedaje`(
    IN p_nit VARCHAR(45), 
    IN p_nombre VARCHAR(45),
    IN p_direccion VARCHAR(45),
    IN p_telefono VARCHAR(15),
    IN p_descripcion TEXT,
    IN p_id_categoria INT
)
BEGIN
	INSERT INTO hospedaje(nit, nombre, direccion, telefono, descripcion, id_categoria)
	VALUES(p_nit, p_nombre, p_direccion, p_telefono, p_descripcion, p_id_categoria);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `restore_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `restore_id`(table_name VARCHAR(45))
BEGIN
    SET @query = CONCAT('SELECT * FROM ', table_name);
    PREPARE stmt1 FROM @query;
    EXECUTE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_vehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_vehicle`(in p_id INT)
begin
	select vehiculo.id, transporte.nombre as empresa, vehiculo.placa, tipo_vehiculo.nombre as tipo, vehiculo.descripcion,
	vehiculo.cupo_maximo, vehiculo.estado
	from vehiculo 
	inner join transporte on vehiculo.id_transporte = transporte.id
	inner join tipo_vehiculo on  vehiculo.id_tipo_vehiculo = tipo_vehiculo.id
	where vehiculo.id = p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `see_all_vehicles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `see_all_vehicles`()
begin
	select vehiculo.id, transporte.nombre as empresa, 
	vehiculo.placa, tipo_vehiculo.nombre as tipo, vehiculo.descripcion,
	vehiculo.cupo_maximo, vehiculo.estado
	from vehiculo 
	inner join transporte on vehiculo.id_transporte = transporte.id
	inner join tipo_vehiculo on  vehiculo.id_tipo_vehiculo = tipo_vehiculo.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sitio_turistico_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sitio_turistico_register`(
	p_nombre VARCHAR(45), 
	p_ubicacion VARCHAR(45), 
	p_descripcion TEXT, 
	p_id_tipo_turismo INT,
	p_convenio BIT
)
BEGIN
	INSERT INTO sitio_turistico(nombre, ubicacion, descripcion, id_tipo_turismo, convenio)
	VALUES(upper(p_nombre), upper(p_ubicacion), p_descripcion, p_id_tipo_turismo, p_convenio);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sitio_turistico_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sitio_turistico_update`(
	p_id INT,
	p_nombre VARCHAR(45), 
	p_ubicacion VARCHAR(45), 
	p_descripcion TEXT, 
	p_id_tipo_turismo INT,
	p_convenio BIT,
	p_estado BIT
)
BEGIN
	UPDATE sitio_turistico 
	SET nombre = p_nombre, ubicacion = p_ubicacion, descripcion = p_descripcion, 
	id_tipo_turismo = p_id_tipo_turismo, convenio = p_convenio, estado = p_estado
	WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cliente`(
p_id int,p_identificacion varchar(15),
	p_tipo varchar(15), p_nombre varchar(45), p_apellido varchar (45),
	p_telefono varchar (15), p_celular varchar (15),p_fecha date, p_correo varchar(45)
)
begin
	update usuario
	set identificacion	=	p_identificacion,
	tipo_documento		=	p_tipo,
	nombres				=	p_nombre,
	apellidos			=	p_apellido,
	telefono			=	p_telefono,
	celular				=	p_celular,
	fecha_nacimiento	=	p_fecha,
	email				=	p_correo
	where id			=	p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_cuenta_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_cuenta_usuario`(
	p_usuario varchar(30),
	p_password varchar(30),
	p_id_user int,
	p_estado bit
)
begin 

update cuenta
	set usuario			=	p_usuario,
	password			=	p_password,
	estado				=	p_estado
	where id_usuario	=	p_id_user;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_empleado`(
	p_id int,p_identificacion varchar(15),
	p_tipo varchar(15), p_nombre varchar(45), p_apellido varchar (45),
	p_telefono varchar (15), p_celular varchar(20) , p_correo varchar(45)
)
begin
	update usuario
	set identificacion	=	p_identificacion,
	tipo_documento		=	p_tipo,
	nombres				=	p_nombre,
	apellidos			=	p_apellido,
	telefono			=	p_telefono,
	celular				=	p_celular,
	email				=	p_correo
	where id=p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_buscar_servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_buscar_servicio`(p_id int)
begin
	select servicio_adicional.id, servicio_adicional.nombre, servicio_adicional.descripcion,
	tipo_servicio.nombre as "nombres" from servicio_adicional
	inner join tipo_servicio on servicio_adicional.tipo_servicio_id = tipo_servicio.id 
	where servicio_adicional.id = p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_evento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_evento`(in p_nombre varchar(45))
begin
	select * from evento where upper(nombre) like concat( '%',p_nombre,'%') or lower(nombre)
	like concat('%',p_nombre,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_habitacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_habitacion`()
begin
	select habitacion.id, habitacion.comodidades,habitacion.cantidad,
	tipo_habitacion.nombre as "tipo",
	hospedaje.nombre as hospedaje,valor
	from habitacion 
	inner join tipo_habitacion on habitacion.id_tipohabitacion=tipo_habitacion.id
	inner join hospedaje on habitacion.id_hospedaje=hospedaje.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_habitaciones_paquete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_habitaciones_paquete`(p_fecha_inicio date , p_fecha_fin date)
begin
	SELECT habitacion.id, habitacion.comodidades, detalle_paquete_hospedaje.id_habitacion_hotel,
	hospedaje.nombre as hospedaje,
	tipo_habitacion.nombre as tipo
	FROM habitacion 
	LEFT JOIN detalle_paquete_hospedaje  ON habitacion.id = detalle_paquete_hospedaje.id_habitacion_hotel
	inner join tipo_habitacion on tipo_habitacion.id=habitacion.id_tipohabitacion
	inner join hospedaje on habitacion.id_hospedaje = hospedaje.id
	inner join convenio on convenio.id_hospedaje= hospedaje.id
	WHERE detalle_paquete_hospedaje.id_habitacion_hotel IS NULL
	and convenio.fecha_inicio <= p_fecha_inicio and convenio.fecha_fin >= p_fecha_fin
	UNION
	SELECT habitacion.id, habitacion.comodidades, detalle_paquete_hospedaje.id_habitacion_hotel,hospedaje.nombre as hospedaje
	,tipo_habitacion.nombre as tipo FROM habitacion 
	inner join hospedaje on habitacion.id_hospedaje = hospedaje.id
	inner join tipo_habitacion on tipo_habitacion.id=habitacion.id_tipohabitacion
	inner join convenio on convenio.id_hospedaje= hospedaje.id
	INNER JOIN detalle_paquete_hospedaje  ON habitacion.id = detalle_paquete_hospedaje.id_habitacion_hotel
	INNER JOIN paquete ON detalle_paquete_hospedaje.id_paquete = paquete.id
	and convenio.fecha_inicio <= p_fecha_inicio and convenio.fecha_fin >= p_fecha_fin
	AND paquete.fecha_fin < p_fecha_inicio;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_paquetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_paquetes`()
begin
select paquete.id, 
		tipo_paquete.descripcion,paquete.fecha_inicio, paquete.fecha_fin, 
		if (paquete.id_evento is null, "No contiene" ,evento.nombre) Evento,
		if (paquete.id_city_tour is null, "No contiene" ,citytour.nombre) Citytour,
		if(paquete.transporte = 1 , "Contiene", "No contiene") Transporte,
		 usuario.identificacion "Creador", paquete.cupos, paquete.estado
from paquete
inner join evento on paquete.id_evento=evento.id
INNER JOIN tipo_paquete on paquete.id = tipo_paquete.id
inner join citytour on paquete.id_city_tour=citytour.id
inner join usuario on paquete.id_usuario=usuario.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_paquetes_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_paquetes_2`(p_id int)
begin

select paquete.id, 
		tipo_paquete.descripcion,paquete.fecha_inicio, paquete.fecha_fin, 
		if (paquete.id_evento is null, "No contiene" ,evento.nombre) Evento,
		if (paquete.id_city_tour is null, "No contiene" ,citytour.nombre) Citytour,
		if(paquete.transporte = 1 , "Contiene", "No contiene") Transporte,
		 usuario.identificacion "Creador", paquete.cupos, paquete.estado
from paquete
inner join evento on paquete.id_evento=evento.id
INNER JOIN tipo_paquete
on paquete.id = tipo_paquete.id
inner join citytour on paquete.id_city_tour=citytour.id
inner join usuario on paquete.id_usuario=usuario.id
where paquete.id= p_id;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_transporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_transporte`(in p_nombre varchar(45))
begin
	select * from transporte where upper(nombre) like concat( '%',p_nombre,'%') or lower(nombre)
	like concat('%',p_nombre,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_usuario_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_usuario_cliente`(p_parametro varchar(45))
begin
	select * from usuario where
	(upper(nombres) like concat('%',p_parametro,'%') or
	lower(nombres) like concat('%',p_parametro,'%') or
	upper(apellidos) like concat('%',p_parametro,'%') or
	lower(apellidos) like concat('%',p_parametro,'%') or
	identificacion like concat('%',p_parametro,'%')) and tipo = 'Natural';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultar_usuario_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_usuario_empleado`(p_parametro varchar(45))
begin
	select * from usuario where
	(upper(nombres) like concat('%',p_parametro,'%') or
	lower(nombres) like concat('%',p_parametro,'%') or
	upper(apellidos) like concat('%',p_parametro,'%') or
	lower(apellidos) like concat('%',p_parametro,'%') or
	identificacion like concat('%',p_parametro,'%')) and tipo = 'empleado';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consultas_tipo_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultas_tipo_vehiculo`()
begin
select *from tipo_vehiculo ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_banco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_banco`(
	IN p_nit varchar(45),IN p_nombre varchar(45),IN p_direccion varchar(45),IN p_telefono varchar(20),
	IN p_numero_cuenta varchar(45)
)
begin
 insert into banco(nit, nombre, direccion, telefono,numero_cuenta)
 values(upper(p_nit),upper(p_nombre), upper(p_direccion), upper(p_telefono), upper(p_numero_cuenta));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_cliente`(
	p_identificacion varchar(15), p_tipo varchar(15), p_nombre varchar(45), 
	p_apellido varchar (45), p_telefono varchar (15), p_celular varchar (15),
	p_fecha date, p_correo varchar(45)
)
BEGIN
	insert into usuario(
		identificacion, tipo_documento,	nombres, apellidos, 
		telefono,celular,fecha_nacimiento,email,tipo
	) 
	values (p_identificacion,p_tipo,p_nombre,p_apellido,
	p_telefono,p_celular,p_fecha,p_correo,'Persona Natural');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_cuenta_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_cuenta_usuario`(
	p_usuario varchar(30),
	p_password varchar(30),
	id_rol int,
	p_id_user int
)
begin
	insert into cuenta (usuario, password, id_rol, id_usuario)
	values (p_usuario,p_password,id_rol,p_id_user);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_empleado`(
	p_identificacion varchar(15),
	p_tipo varchar(15), p_nombre varchar(45), p_apellido varchar (45),
	p_telefono varchar (15), p_celular varchar (15), p_correo varchar(45)
)
begin
	insert into usuario(
		identificacion,
		tipo_documento,
		nombres,apellidos,
		telefono,celular,email,tipo
	) 
	values (p_identificacion,p_tipo,p_nombre,p_apellido,
	p_telefono,p_celular,p_correo,'empleado');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_empresa_transporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_empresa_transporte`(p_id int,p_nombre varchar(45))
begin
	insert into trasnporte (id,nombre)
	values (p_id,p_nombre);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_evento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_evento`(
	IN p_nombre varchar(45),
	IN p_descripcion text,
	IN p_valor_compra float,
	IN p_valor_venta float,
	IN p_direccion varchar(45),
	iN p_cupos smallint(6),
	IN p_lugar varchar(45),
	IN p_fecha_inicio date,
	In p_fecha_fin date,
	IN p_hora_inicio time,
	IN p_hora_salida time
)
begin
 insert into evento(nombre, descripcion, valor_compra, valor_venta, direccion, cupos, lugar, fecha_inicio, fecha_fin, hora_inicio, hora_salida)
 values(upper(p_nombre), p_descripcion, p_valor_compra, p_valor_venta,  p_direccion, p_cupos, upper(p_lugar), p_fecha_inicio, p_fecha_fin, p_hora_inicio, p_hora_salida);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_tipo_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_tipo_vehiculo`(IN p_nombre varchar(45), IN p_descripcion TEXT)
BEGIN
	INSERT INTO tipo_vehiculo(nombre, descripcion)
	VALUES(UPPER(p_nombre), p_descripcion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_vehiculo`(
	p_placa varchar(45), 
	p_id_tipo_vehiculo int, 
	p_descripcion text, 
	p_cupo int, 
	p_id_transporte INT
)
begin
	insert into vehiculo(placa, id_tipo_vehiculo, descripcion, cupo_maximo, id_transporte) 
	values (p_placa, p_id_tipo_vehiculo, p_descripcion, p_cupo, p_id_transporte);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_banco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_banco`(
	IN p_nit varchar(45),IN p_nombre varchar(45),IN p_direccion varchar(45),IN p_telefono varchar(20),
	IN p_numero_cuenta varchar(45),p_estado BIT,p_id INT
)
begin
	UPDATE banco SET nit = upper(p_nit),nombre = upper(p_nombre),
	direccion = upper(p_direccion),telefono = p_telefono,
	numero_cuenta = upper(p_numero_cuenta), estado = p_estado
	WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_servicio`(
	p_nombre varchar(45), p_desc text, p_tipo int, p_id int
)
begin
	update servicio_adicional
	set nombre			=	p_nombre,
	descripcion			=	p_desc,
	tipo_servicio_id	=	p_tipo
	where id			=	p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_tipo_vehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_tipo_vehiculo`(
p_id INT, IN p_nombre varchar(45), p_descripcion TEXT)
BEGIN	
	UPDATE tipo_vehiculo SET nombre = upper(p_nombre), descripcion = p_descripcion WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificar_transporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_transporte`(
	IN p_id INT, IN p_nit varchar(45), IN p_nombre varchar(45), IN p_direccion varchar(45), IN p_telefono varchar(20),
	IN p_correo varchar(45), IN p_seguro_transporte BIT, IN p_estado BIT
)
begin
	UPDATE transporte SET nit = upper(p_nit), nombre = upper(p_nombre),	direccion = upper(p_direccion),
	telefono = p_telefono, correo = lower(p_correo), seguro_transporte = p_seguro_transporte, estado = p_estado
	WHERE id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_servicio_adicional` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_servicio_adicional`(
	p_nombre varchar(30)
)
begin 
	select servicio_adicional.id, servicio_adicional.nombre, servicio_adicional.descripcion,
	tipo_servicio.nombre as "nombres" from servicio_adicional
	inner join tipo_servicio 
	on servicio_adicional.tipo_servicio_id = tipo_servicio.id
	where upper(servicio_adicional.nombre) like concat('%',p_nombre,'%') or
	lower(servicio_adicional.nombre) like concat('%',p_nombre,'%') 
	or servicio_adicional.tipo_servicio_id = 5p_nombre;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-19 14:54:22
