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
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `arena` varchar(200) DEFAULT NULL,
  `fromDate` varchar(200) DEFAULT '1947-07-11',
  `toDate` varchar(200) DEFAULT NULL,
  `championship` int(11) DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `lose` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES (1,'Atlanta Hawks','Philips Arena','1950','2017',2,2693,2695),(2,'Boston Celtics','TD Banknorth Garden','1947','2017',1,3274,2286),(3,'Charlotte Bobcats','Time Warner Cable Arena','1989','2017',5,952,1214),(4,'Chicago Bulls','United Center','1967','2017',1,2156,1977),(5,'Cleveland Cavaliers','Quicken Loans Arena','1971','2017',5,1779,2027),(6,'Dallas Mavericks','American Airlines Center','1981','2017',3,1515,1471),(7,'Denver Nuggets','Pepsi Center','1968','2017',2,2016,2042),(8,'Detroit Pistons','The Palace of Auburn Hills','1949','2017',4,2653,2797),(9,'Golden State Warriors','Oracle Arena','1947','2017',4,2657,2899),(10,'Houston Rockets','Toyota Center','1968','2017',4,2107,1945),(11,'Indiana Pacers','Conseco Fieldhouse','1968','2017',2,2075,1982),(12,'Los Angeles Clippers','Staples Center','1971','2017',2,1520,2286),(13,'Los Angeles Lakers','Staples Center','1949','2017',1,3261,2190),(14,'Memphis Grizzlies','FedExForum','1996','2017',2,737,1019),(15,'Miami Heat','AmericanAirlines Arena','1989','2017',1,1211,1119),(16,'Milwaukee Bucks','Bradley Center','1969','2017',3,2025,1945),(17,'Minnesota Timberwolves','Target Center','1990','2017',5,878,1370),(18,'New Jersey Nets','Izod Center','1968','2017',5,1754,2304),(19,'New Orleans Hornets','New Orleans Arena','2003','2017',5,562,652),(20,'New York Knicks','Madison Square Garden (IV)','1947','2017',2,2732,2825),(21,'Oklahoma City Thunder','Ford Center','1968','2017',1,2186,1866),(22,'Orlando Magic','Amway Arena','1990','2017',3,1091,1157),(23,'Philadelphia 76ers','Wachovia Center','1950','2017',3,2754,2632),(24,'Phoenix Suns','US Airways Center','1969','2017',3,2146,1824),(25,'Portland Trail Blazers','Rose Garden Arena','1971','2017',4,2032,1774),(26,'Sacramento Kings','ARCO Arena (II)','1949','2017',5,2496,2955),(27,'San Antonio Spurs','AT&T Center','1968','2017',1,2445,1613),(28,'Toronto Raptors','Air Canada Centre','1996','2017',3,785,971),(29,'Utah Jazz','EnergySolutions Arena','1975','2017',4,1866,1612),(30,'Washington Wizards','Verizon Center','1962','2017',1,2053,2480);
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
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
