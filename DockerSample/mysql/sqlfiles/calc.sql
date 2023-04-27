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
INSERT INTO `class` VALUES (1,'Operator',513,0),(2,'App',1,0),(3,'OutPutMessage',1,0),(4,'Add',1,0),(5,'Divide',1,0),(6,'Originator',1,0),(7,'Multiply',1,0),(8,'Subtract',1,0),(9,'CharacterUserInterface',1,0),(10,'MementoCalcResult',1,0),(11,'Main',1,0),(12,'Exception',1,0);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;




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
INSERT INTO `field` VALUES (1,2,2,'app','QApp;'),(2,2,2,'exception','QException;'),(3,2,2,'ops','QList<QOperator;>;'),(4,2,2,'cui','QCharacterUserInterface;'),(5,4,2,'sign','QString;'),(6,4,2,'addresult','QBigDecimal;'),(7,5,2,'sign','QString;'),(8,6,2,'result','QBigDecimal;'),(9,6,2,'random','QRandom;'),(10,6,2,'operators','QVector;'),(11,6,2,'operatorname','QString;'),(12,7,2,'sign','QString;'),(13,8,2,'sign','QString;'),(14,9,2,'s','QScanner;'),(15,10,0,'enzan_result','I'),(16,12,2,'exceptionID','I'),(17,12,2,'exceptionMessage','QMap;');
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
INSERT INTO `m_parameta` VALUES (1,2,0,'QBigDecimal;','left'),(2,2,0,'QBigDecimal;','right'),(3,5,0,'QBigDecimal;','ans'),(4,6,0,'QString;','operandMessage'),(5,8,0,'QList;','ops'),(6,11,0,'QBigDecimal;','left'),(7,11,0,'QBigDecimal;','right'),(8,14,0,'QBigDecimal;','left'),(9,14,0,'QBigDecimal;','right'),(10,15,0,'QBigDecimal;','result'),(11,16,0,'QBigDecimal;','result'),(12,18,0,'QBigDecimal;','new_result'),(13,21,0,'QMementoCalcResult;','memento'),(14,23,0,'QBigDecimal;','left'),(15,23,0,'QBigDecimal;','right'),(16,26,0,'QBigDecimal;','left'),(17,26,0,'QBigDecimal;','right'),(18,30,0,'QString;','s'),(19,32,0,'D','operator'),(20,34,0,'I','enzan'),(21,35,0,'[QString;','args'),(22,36,0,'I','exceptionID'),(23,37,0,'QString;','divideException'),(24,38,0,'QString;','substException'),(25,39,0,'QString;','multiException'),(26,40,0,'QString;','Addexception');
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
INSERT INTO `method` VALUES (1,1,1,'toString','QString;'),(2,1,1,'exec','QBigDecimal;'),(3,2,1,'start','V'),(4,3,1,'operatormessage','V'),(5,3,1,'calcresult','QString;'),(6,3,1,'operandMessege','V'),(7,3,1,'calcerror','V'),(8,3,1,'operatorMessage','V'),(9,4,1,'Add','CONSTRUCTOR'),(10,4,1,'toString','QString;'),(11,4,1,'exec','QBigDecimal;'),(12,5,1,'Divide','CONSTRUCTOR'),(13,5,1,'toString','QString;'),(14,5,1,'exec','QBigDecimal;'),(15,6,1,'Originator','CONSTRUCTOR'),(16,6,1,'setResult','V'),(17,6,1,'getResult','QBigDecimal;'),(18,6,1,'calcstore','V'),(19,6,1,'createMemento','QMementoCalcResult;'),(20,6,2,'getOperator','QString;'),(21,6,1,'restoreMemento','V'),(22,7,1,'toString','QString;'),(23,7,1,'exec','QBigDecimal;'),(24,8,1,'Subtract','CONSTRUCTOR'),(25,8,1,'toString','QString;'),(26,8,1,'exec','QBigDecimal;'),(27,9,1,'exit','V'),(28,9,1,'getOperand','QBigDecimal;'),(29,9,1,'CharacterUserInterface','CONSTRUCTOR'),(30,9,1,'printString','V'),(31,9,1,'getOperator','QString;'),(32,10,0,'addOperator','V'),(33,10,1,'getEnzan','QBigDecimal;'),(34,10,0,'MementoCalcResult','CONSTRUCTOR'),(35,11,9,'main','V'),(36,12,1,'CalcException','V'),(37,12,2,'DivideException','V'),(38,12,1,'SubtractException','V'),(39,12,2,'MultiplyException','V'),(40,12,2,'AddException','V');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

