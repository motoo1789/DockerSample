-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: umlds
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `class_num` int(11) NOT NULL,
  `class_name` varchar(128) DEFAULT NULL,
  `class_access` int(11) DEFAULT NULL,
  `project_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Task',1,0),(2,'Table',1,0),(3,'Start',1,0),(4,'Label',1,0),(5,'DriverAccessor',1,0),(6,'Dao',1,0),(7,'Button',1,0),(8,'AddButton',0,0),(9,'SearchButton',1,0),(10,'TextField',1,0),(11,'SideButton',1,0),(12,'Component',1025,0),(13,'Main',1,0);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `exercise`
--




--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `field_num` int(11) NOT NULL,
  `class_num` int(11) DEFAULT NULL,
  `field_access` int(11) DEFAULT NULL,
  `field_name` varchar(128) DEFAULT NULL,
  `field_type` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`field_num`),
  KEY `class_num` (`class_num`),
  CONSTRAINT `field_ibfk_1` FOREIGN KEY (`class_num`) REFERENCES `class` (`class_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (1,1,2,'taskname','QString;'),(2,1,2,'timestart','QDate;'),(3,1,2,'priority','Z'),(4,1,2,'timelimit','QDate;'),(5,2,2,'showpanel','QJPanel;'),(6,2,1,'table','QJTable;'),(7,3,2,'layout','QCardLayout;'),(8,3,2,'componentsList','QList<QComponent;>;'),(9,3,2,'mainPanel','QJPanel;'),(10,3,2,'title','QString;'),(11,4,2,'addlabel','QJLabel;'),(12,5,2,'DRIVER_URL','QString;'),(13,5,2,'PASSWORD','QString;'),(14,5,2,'databaseName','QString;'),(15,5,2,'USER_NAME','QString;'),(16,6,2,'UTF_8','QString;'),(17,6,2,'connection','QConnection;'),(18,7,0,'button','QJButton;'),(19,8,2,'button','QJButton;'),(20,8,2,'databaseaccess','QDao;'),(21,8,2,'addpanel','QJPanel;'),(22,9,2,'searchButton','QButton;'),(23,9,2,'searchdatabase','QDriverAccessor;'),(24,9,2,'searchpanel','QJPanel;'),(25,10,2,'textfield','QJTextField;'),(26,10,2,'panelAddSearch','QJPanel;'),(27,11,2,'sideButton','QJButton;');
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_parameta`
--

DROP TABLE IF EXISTS `m_parameta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_parameta` (
  `para_num` int(11) NOT NULL,
  `method_num` int(11) DEFAULT NULL,
  `method_access` int(11) DEFAULT NULL,
  `para_type` varchar(128) DEFAULT NULL,
  `para_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`para_num`),
  KEY `method_num` (`method_num`),
  CONSTRAINT `m_parameta_ibfk_1` FOREIGN KEY (`method_num`) REFERENCES `method` (`method_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_parameta`
--

LOCK TABLES `m_parameta` WRITE;
/*!40000 ALTER TABLE `m_parameta` DISABLE KEYS */;
INSERT INTO `m_parameta` VALUES (1,1,0,'QString;','taskname'),(2,1,0,'QDate;','timelimit'),(3,1,0,'Z','priority'),(4,4,0,'QJPanel;','mainpanel'),(5,5,0,'I','x'),(6,5,0,'I','y'),(7,5,0,'I','width'),(8,5,0,'I','height'),(9,6,0,'QList<QTask;>;','tasks'),(10,7,0,'QActionEvent;','e'),(11,9,0,'QString;','frameTitle'),(12,11,0,'I','x'),(13,11,0,'I','y'),(14,11,0,'I','width'),(15,11,0,'I','height'),(16,12,0,'I','x'),(17,12,0,'I','y'),(18,12,0,'I','width'),(19,12,0,'I','height'),(20,12,0,'QString;','labeltext'),(21,14,0,'QConnection;','con'),(22,19,0,'QTask;','addTask'),(23,20,0,'QActionEvent;','e'),(24,21,0,'QString;','showText'),(25,21,0,'QJPanel;','mainpanel'),(26,22,0,'QActionEvent;','e'),(27,23,0,'I','x'),(28,23,0,'I','y'),(29,23,0,'I','width'),(30,24,0,'QString;','showText'),(31,24,0,'QJPanel;','mainpanel'),(32,24,0,'QMap<QInteger;>;','point'),(33,25,0,'QActionEvent;','e'),(34,26,0,'I','x'),(35,26,0,'I','y'),(36,26,0,'I','width'),(37,26,0,'I','height'),(38,27,0,'QString;','showText'),(39,27,0,'QJPanel;','mainpanel'),(40,29,0,'I','x'),(41,29,0,'I','y'),(42,29,0,'I','width'),(43,29,0,'I','height'),(44,30,0,'I','x'),(45,30,0,'I','y'),(46,30,0,'I','width'),(47,30,0,'I','height'),(48,30,0,'QJPanel;','mainpanel'),(49,31,0,'QString;','bottonTitle'),(50,33,0,'I','x'),(51,33,0,'I','y'),(52,33,0,'I','width'),(53,33,0,'I','height'),(54,34,0,'[QString;','args');
/*!40000 ALTER TABLE `m_parameta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `method` (
  `method_num` int(11) NOT NULL,
  `class_num` int(11) DEFAULT NULL,
  `method_access` int(11) DEFAULT NULL,
  `method_name` varchar(128) DEFAULT NULL,
  `returnvalue` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`method_num`),
  KEY `class_num` (`class_num`),
  CONSTRAINT `method_ibfk_1` FOREIGN KEY (`class_num`) REFERENCES `class` (`class_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,1,1,'Task','CONSTRUCTOR'),(2,1,1,'getTaskName','QString;'),(3,1,1,'getTaskLimit','QDate;'),(4,2,1,'Table','CONSTRUCTOR'),(5,2,4,'Bounds','V'),(6,2,1,'setTask','V'),(7,3,1,'actionPerformed','V'),(8,3,0,'star','V'),(9,3,1,'Start','CONSTRUCTOR'),(10,3,2,'end','V'),(11,4,4,'Bounds','V'),(12,4,1,'Label','CONSTRUCTOR'),(13,5,1,'DriverAccessor','CONSTRUCTOR'),(14,5,1,'closeConection','Z'),(15,5,1,'createConenction','QConnection;'),(16,6,1,'Dao','CONSTRUCTOR'),(17,6,1,'getTaskSize','V'),(18,6,1,'getTask','QList<QTask;>;'),(19,6,1,'addTask','V'),(20,7,1,'actionPerformed','V'),(21,7,1,'Button','CONSTRUCTOR'),(22,8,1,'actionPerformed','V'),(23,8,4,'Bounds','V'),(24,8,1,'AddButton','CONSTRUCTOR'),(25,9,1,'actionPerformed','V'),(26,9,4,'Bounds','V'),(27,9,1,'SearchButton','CONSTRUCTOR'),(28,10,1,'getValue','QString;'),(29,10,4,'Bounds','V'),(30,10,1,'TextField','CONSTRUCTOR'),(31,11,1,'SideButton','CONSTRUCTOR'),(32,12,4,'getValue','QString;'),(33,12,4,'Bounds','V'),(34,13,9,'main','V');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27 11:04:58
