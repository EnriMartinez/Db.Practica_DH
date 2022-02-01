-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: db.Practica
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `categorías`
--

DROP TABLE IF EXISTS `categorías`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorías` (
  `categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorías`
--

LOCK TABLES `categorías` WRITE;
/*!40000 ALTER TABLE `categorías` DISABLE KEYS */;
INSERT INTO `categorías` VALUES (1,'Drama'),(2,'Engaño'),(3,'Desesperación'),(4,'Practicas incorrectas'),(5,'Fuerza'),(6,'Psicología'),(7,'Confianza'),(8,'Audacia'),(9,'Errores'),(10,'Honor');
/*!40000 ALTER TABLE `categorías` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `nota_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `release_date` timestamp NULL DEFAULT NULL,
  `modify_date` timestamp NULL DEFAULT NULL,
  `Descripción` varchar(100) NOT NULL,
  `Eliminable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `notas_FK` (`id_categoria`),
  KEY `notas_FK_1` (`id_usuario`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categorías` (`categoria_id`),
  CONSTRAINT `notas_FK_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,9,2,NULL,NULL,'Como engañar a los sabios',NULL),(2,8,3,NULL,NULL,'Como ser seducido por lo facíl',NULL),(3,7,4,NULL,NULL,'Como esconder contrabando',NULL),(4,6,5,NULL,NULL,'Como hacerle imposible la vida a tu padre',NULL),(5,5,6,NULL,NULL,'Lidiar con la familia',NULL),(6,4,7,NULL,NULL,'Saberlo todo y no ver lo obvio',NULL),(7,3,8,NULL,NULL,'Bajarse del barco a tiempo',NULL),(8,2,9,NULL,NULL,'Como ser el mejor y cagarla',NULL),(9,1,10,NULL,NULL,'Seguir siendo correcto a pear de todo',NULL);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nota` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,10,'Obi Wan','obiwan@jedi.com'),(2,9,'Anakin','anakin@jedi.com'),(3,8,'Ashoka','ashoka@jedi.com'),(4,7,'Yoda','yoda@jedi.com'),(5,6,'Luke','luke@jedi.com'),(6,5,'Leia','leia@rebelde.com'),(7,4,'Han','han@crontrabandista.com'),(8,3,'Vader','vader@sith.com'),(9,2,'Palpatine','palpatine@sith.com'),(10,1,'Maul','maul@sith.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db.Practica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 16:37:23
