-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: lms1
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `AdminIdPk` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveIdFk` int(11) DEFAULT NULL,
  `LhIdFk` int(11) DEFAULT NULL,
  `LeaveStatus` varchar(5) DEFAULT NULL,
  `Time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AdminIdPk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeedetails`
--

DROP TABLE IF EXISTS `employeedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeedetails` (
  `EmpIdPk` int(11) NOT NULL AUTO_INCREMENT,
  `EmpName` varchar(30) DEFAULT NULL,
  `Contact` varchar(10) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `YearOfExperience` int(11) DEFAULT NULL,
  `EmpPassword` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EmpIdPk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeedetails`
--

LOCK TABLES `employeedetails` WRITE;
/*!40000 ALTER TABLE `employeedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_history`
--

DROP TABLE IF EXISTS `leave_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_history` (
  `LhIdPk` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveIdFk` int(11) DEFAULT NULL,
  PRIMARY KEY (`LhIdPk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_history`
--

LOCK TABLES `leave_history` WRITE;
/*!40000 ALTER TABLE `leave_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `LeaveIdPk` int(11) NOT NULL AUTO_INCREMENT,
  `EmpIdFk` int(11) DEFAULT NULL,
  `Earned_leavesremaining` int(11) NOT NULL,
  `PaidLeaves` int(11) DEFAULT NULL,
  `Reasons` varchar(100) DEFAULT NULL,
  `Reporting_managerFk` varchar(100) DEFAULT NULL,
  `Type_of_leave` varchar(100) DEFAULT NULL,
  `Date_Time` datetime NOT NULL,
  `Time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(100) DEFAULT NULL,
  `AdminIdFk` int(11) DEFAULT NULL,
  PRIMARY KEY (`LeaveIdPk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-31  9:23:15
