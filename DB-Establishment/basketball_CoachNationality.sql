-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: basketball
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `CoachNationality`
--

DROP TABLE IF EXISTS `CoachNationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CoachNationality` (
  `coach` int(11) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  PRIMARY KEY (`coach`,`nationality`),
  CONSTRAINT `coachnationality_ibfk_1` FOREIGN KEY (`coach`) REFERENCES `Coach` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CoachNationality`
--

LOCK TABLES `CoachNationality` WRITE;
/*!40000 ALTER TABLE `CoachNationality` DISABLE KEYS */;
INSERT INTO `CoachNationality` VALUES (1,'USA'),(2,'USA'),(3,'USA'),(4,'USA'),(5,'USA'),(6,'USA'),(7,'USA'),(8,'USA'),(9,'USA'),(10,'USA'),(11,'USA'),(12,'USA'),(13,'USA'),(14,'USA'),(15,'USA'),(16,'USA'),(17,'USA'),(18,'USA'),(19,'USA'),(20,'USA'),(21,'USA'),(22,'USA'),(23,'USA'),(24,'USA'),(25,'USA'),(26,'USA'),(27,'USA'),(28,'USA'),(29,'USA'),(30,'USA');
/*!40000 ALTER TABLE `CoachNationality` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-19 19:43:50
