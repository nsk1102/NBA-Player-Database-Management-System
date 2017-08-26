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
-- Table structure for table `PlayerNationality`
--

DROP TABLE IF EXISTS `PlayerNationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PlayerNationality` (
  `player` int(11) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  PRIMARY KEY (`player`,`nationality`),
  CONSTRAINT `playernationality_ibfk_1` FOREIGN KEY (`player`) REFERENCES `Player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayerNationality`
--

LOCK TABLES `PlayerNationality` WRITE;
/*!40000 ALTER TABLE `PlayerNationality` DISABLE KEYS */;
INSERT INTO `PlayerNationality` VALUES (1,'USA'),(2,'USA'),(3,'USA'),(4,'USA'),(5,'USA'),(6,'USA'),(7,'USA'),(8,'USA'),(9,'USA'),(10,'USA'),(11,'USA'),(12,'USA'),(13,'USA'),(14,'USA'),(15,'USA'),(16,'USA'),(17,'USA'),(18,'USA'),(19,'USA'),(20,'USA'),(21,'USA'),(22,'USA'),(23,'USA'),(24,'USA'),(25,'USA'),(26,'USA'),(27,'USA'),(28,'USA'),(29,'USA'),(30,'USA'),(31,'USA'),(32,'USA'),(33,'USA'),(34,'USA'),(35,'USA'),(36,'USA'),(37,'USA'),(38,'USA'),(39,'USA'),(40,'USA'),(41,'USA'),(42,'USA'),(43,'USA'),(44,'USA'),(45,'USA'),(46,'USA'),(47,'USA'),(48,'USA'),(49,'USA'),(50,'USA'),(51,'USA'),(52,'USA'),(53,'USA'),(54,'USA'),(55,'USA'),(56,'USA'),(57,'USA'),(58,'USA'),(59,'USA'),(60,'USA'),(61,'USA'),(62,'USA'),(63,'USA'),(64,'USA'),(65,'USA'),(66,'USA'),(67,'USA'),(68,'USA'),(69,'USA'),(70,'USA'),(71,'USA'),(72,'USA'),(73,'USA'),(74,'USA'),(75,'USA'),(76,'USA'),(77,'USA'),(78,'USA'),(79,'USA'),(80,'USA'),(81,'USA'),(82,'USA'),(83,'USA'),(84,'USA'),(85,'USA'),(86,'USA'),(87,'USA'),(88,'USA'),(89,'USA'),(90,'USA'),(91,'USA'),(92,'USA'),(93,'USA'),(94,'USA'),(95,'USA'),(96,'USA'),(97,'USA'),(98,'USA'),(99,'USA'),(100,'USA'),(101,'USA'),(102,'USA'),(103,'USA'),(104,'USA'),(105,'USA'),(106,'USA'),(107,'USA'),(108,'USA'),(109,'USA'),(110,'USA'),(111,'USA'),(112,'USA'),(113,'USA'),(114,'USA'),(115,'USA'),(116,'USA'),(117,'USA'),(118,'USA'),(119,'USA'),(120,'USA'),(121,'USA'),(122,'USA'),(123,'USA'),(124,'USA'),(125,'USA'),(126,'USA'),(127,'USA'),(128,'USA'),(129,'USA'),(130,'USA'),(131,'USA'),(132,'USA'),(133,'USA'),(134,'USA'),(135,'USA'),(136,'USA'),(137,'USA'),(138,'USA'),(139,'USA'),(140,'USA'),(141,'USA'),(142,'USA'),(143,'USA'),(144,'USA'),(145,'USA'),(146,'USA'),(147,'USA'),(148,'USA'),(149,'USA'),(150,'USA'),(151,'USA'),(152,'USA'),(153,'USA'),(154,'USA'),(155,'USA'),(156,'USA'),(157,'USA'),(158,'USA'),(159,'USA'),(160,'USA'),(161,'USA'),(162,'USA'),(163,'USA'),(164,'USA'),(165,'USA'),(166,'USA'),(167,'USA'),(168,'USA'),(169,'USA'),(170,'USA'),(171,'USA'),(172,'USA'),(173,'USA'),(174,'USA'),(175,'USA'),(176,'USA'),(177,'USA'),(178,'USA'),(179,'USA'),(180,'USA'),(181,'USA'),(182,'USA'),(183,'USA'),(184,'USA'),(185,'USA'),(186,'USA'),(187,'USA'),(188,'USA'),(189,'USA'),(190,'USA'),(191,'USA'),(192,'USA'),(193,'USA'),(194,'USA'),(195,'USA'),(196,'USA'),(197,'USA'),(198,'USA'),(199,'USA'),(200,'USA'),(201,'USA'),(202,'USA'),(203,'USA'),(204,'USA'),(205,'USA'),(206,'USA'),(207,'USA'),(208,'USA'),(209,'USA'),(210,'USA'),(211,'USA'),(212,'USA'),(213,'USA'),(214,'USA'),(215,'USA'),(216,'USA'),(217,'USA'),(218,'USA'),(219,'USA'),(220,'USA'),(221,'USA'),(222,'USA'),(223,'USA'),(224,'USA'),(225,'USA'),(226,'USA'),(227,'USA'),(228,'USA'),(229,'USA'),(230,'USA'),(231,'USA'),(232,'USA'),(233,'USA'),(234,'USA'),(235,'USA'),(236,'USA'),(237,'USA'),(238,'USA'),(239,'USA'),(240,'USA'),(241,'USA'),(242,'USA'),(243,'USA'),(244,'USA'),(245,'USA'),(246,'USA'),(247,'USA'),(248,'USA'),(249,'USA'),(250,'USA'),(251,'USA'),(252,'USA'),(253,'USA'),(254,'USA'),(255,'USA'),(256,'USA'),(257,'USA'),(258,'USA'),(259,'USA'),(260,'USA'),(261,'USA'),(262,'USA'),(263,'USA'),(264,'USA'),(265,'USA'),(266,'USA'),(267,'USA'),(268,'USA'),(269,'USA'),(270,'USA'),(271,'USA'),(272,'USA'),(273,'USA'),(274,'USA'),(275,'USA'),(276,'USA'),(277,'USA'),(278,'USA'),(279,'USA'),(280,'USA'),(281,'USA'),(282,'USA'),(283,'USA'),(284,'USA'),(285,'USA'),(286,'USA'),(287,'USA'),(288,'USA'),(289,'USA'),(290,'USA'),(291,'USA'),(292,'USA'),(293,'USA'),(294,'USA'),(295,'USA'),(296,'USA'),(297,'USA'),(298,'USA'),(299,'USA'),(300,'USA'),(301,'USA'),(302,'USA'),(303,'USA'),(304,'USA'),(305,'USA'),(306,'USA'),(307,'USA'),(308,'USA'),(309,'USA'),(310,'USA'),(311,'USA'),(312,'USA'),(313,'USA'),(314,'USA'),(315,'USA'),(316,'USA'),(317,'USA'),(318,'USA'),(319,'USA'),(320,'USA'),(321,'USA'),(322,'USA'),(323,'USA'),(324,'USA'),(325,'USA'),(326,'USA'),(327,'USA'),(328,'USA'),(329,'USA'),(330,'USA'),(331,'USA'),(332,'USA'),(333,'USA'),(334,'USA'),(335,'USA'),(336,'USA'),(337,'USA'),(338,'USA'),(339,'USA'),(340,'USA'),(341,'USA'),(342,'USA'),(343,'USA'),(344,'USA'),(345,'USA'),(346,'USA'),(347,'USA'),(348,'USA'),(349,'USA'),(350,'USA'),(351,'USA'),(352,'USA'),(353,'USA'),(354,'USA'),(355,'USA'),(356,'USA'),(357,'USA'),(358,'USA'),(359,'USA'),(360,'USA'),(361,'USA'),(362,'USA'),(363,'USA'),(364,'USA'),(365,'USA'),(366,'USA'),(367,'USA'),(368,'USA'),(369,'USA'),(370,'USA'),(371,'USA'),(372,'USA'),(373,'USA'),(374,'USA'),(375,'USA'),(376,'USA'),(377,'USA'),(378,'USA'),(379,'USA'),(380,'USA'),(381,'USA'),(382,'USA'),(383,'USA'),(384,'USA'),(385,'USA'),(386,'USA'),(387,'USA'),(388,'USA'),(389,'USA'),(390,'USA'),(391,'USA'),(392,'USA'),(393,'USA'),(394,'USA'),(395,'USA'),(396,'USA'),(397,'USA'),(398,'USA'),(399,'USA'),(400,'USA'),(401,'USA'),(402,'USA'),(403,'USA'),(404,'USA'),(405,'USA'),(406,'USA'),(407,'USA'),(408,'USA'),(409,'USA'),(410,'USA'),(411,'USA'),(412,'USA'),(413,'USA'),(414,'USA'),(415,'USA'),(416,'USA'),(417,'USA'),(418,'USA'),(419,'USA'),(420,'USA'),(421,'USA'),(422,'USA'),(423,'USA'),(424,'USA'),(425,'USA'),(426,'USA'),(427,'USA'),(428,'USA'),(429,'USA'),(430,'USA'),(431,'USA'),(432,'USA'),(433,'USA'),(434,'USA'),(435,'USA'),(436,'USA'),(437,'USA'),(438,'USA'),(439,'USA'),(440,'USA'),(441,'USA'),(442,'USA'),(443,'USA'),(444,'USA'),(445,'USA'),(446,'USA'),(447,'USA'),(448,'USA'),(449,'USA'),(450,'USA'),(451,'USA'),(452,'USA'),(453,'USA'),(454,'USA'),(455,'USA'),(456,'USA'),(457,'USA'),(458,'USA'),(459,'USA'),(460,'USA'),(461,'USA'),(462,'USA'),(463,'USA'),(464,'USA'),(465,'USA'),(466,'USA'),(467,'USA'),(468,'USA'),(469,'USA'),(470,'USA'),(471,'USA'),(472,'USA'),(473,'USA'),(474,'USA'),(475,'USA'),(476,'USA'),(477,'USA'),(478,'USA'),(479,'USA'),(480,'USA'),(481,'USA'),(482,'USA'),(483,'USA'),(484,'USA'),(485,'USA'),(486,'USA'),(487,'USA'),(488,'USA'),(489,'USA'),(490,'USA'),(491,'USA'),(492,'USA'),(493,'USA'),(494,'USA'),(495,'USA'),(496,'USA'),(497,'USA'),(498,'USA'),(499,'USA'),(500,'USA'),(501,'USA'),(502,'USA'),(503,'USA'),(504,'USA'),(505,'USA'),(506,'USA'),(507,'USA'),(508,'USA'),(509,'USA'),(510,'USA'),(511,'USA'),(512,'USA'),(513,'USA'),(514,'USA'),(515,'USA'),(516,'USA'),(517,'USA'),(518,'USA'),(519,'USA'),(520,'USA'),(521,'USA'),(522,'USA'),(523,'USA'),(524,'USA'),(525,'USA'),(526,'USA');
/*!40000 ALTER TABLE `PlayerNationality` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-19 19:43:49
