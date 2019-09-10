CREATE DATABASE  IF NOT EXISTS `coconut_bank` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `coconut_bank`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: coconut_bank
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('jamesbond','007','JAMES BOND');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_accounts`
--

DROP TABLE IF EXISTS `customer_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_accounts` (
  `ACCOUNT_NUMBER` bigint(20) NOT NULL,
  `CURRENT_DA` date DEFAULT NULL,
  `NAME_OF` varchar(45) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `PHONE_NUMBER` bigint(20) DEFAULT NULL,
  `ADDRESS` varchar(145) DEFAULT NULL,
  `STATE` varchar(45) DEFAULT NULL,
  `COUNTRY` varchar(45) DEFAULT NULL,
  `OCCUPATION` varchar(45) DEFAULT NULL,
  `AADHAR_NUMBER` bigint(20) DEFAULT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `MARITAL_STATUS` varchar(45) DEFAULT NULL,
  `MOTHER_NAME` varchar(45) DEFAULT NULL,
  `FATHER_NAME` varchar(45) DEFAULT NULL,
  `BALANCE` bigint(20) DEFAULT NULL,
  `NOMINEE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ACCOUNT_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_accounts`
--

LOCK TABLES `customer_accounts` WRITE;
/*!40000 ALTER TABLE `customer_accounts` DISABLE KEYS */;
INSERT INTO `customer_accounts` VALUES (213453254233,'2018-02-25','ABHISHEK PRASAD','2018-02-07',9453254233,'sasaram','bihar','INDIA','student',2134532233,'MALE','UNMARRIED','SHANTI DEVI','MADAN PRASAD',190000,'ARCHANA'),(213453254234,'2018-02-25','MADHU SINGH','1995-07-12',8765872346,'MADHUBANI','BIHAR','INDIA','HOUSE WIFE',456789234567,'MALE','UNMARRIED','SAKUNTALA DEVI','HARIVANSH SINGH',30000,'SHIV KAILASH');
/*!40000 ALTER TABLE `customer_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_accounts`
--

DROP TABLE IF EXISTS `loan_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_accounts` (
  `account_number` bigint(20) NOT NULL,
  `loan_account_number` bigint(25) NOT NULL,
  `date` date DEFAULT NULL,
  `fmdl_account_number` bigint(20) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL,
  `loan_type` varchar(45) DEFAULT NULL,
  `loan_amount` bigint(20) DEFAULT NULL,
  `rate_of_interest` double DEFAULT NULL,
  `no_of_installment` bigint(20) DEFAULT NULL,
  `monthly_installment` float DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  PRIMARY KEY (`loan_account_number`,`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_accounts`
--

LOCK TABLES `loan_accounts` WRITE;
/*!40000 ALTER TABLE `loan_accounts` DISABLE KEYS */;
INSERT INTO `loan_accounts` VALUES (213453254233,21345325423301,'2018-02-25',213453254234,'INCAPP',50000,'PERSONAL',40000,8,5,8640,0);
/*!40000 ALTER TABLE `loan_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_transaction`
--

DROP TABLE IF EXISTS `loan_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_transaction` (
  `SN` int(10) NOT NULL AUTO_INCREMENT,
  `Loan_Account_Number` bigint(20) DEFAULT NULL,
  `FMDL_ACCOUNT_NUMBER` varchar(20) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `MODE` varchar(45) DEFAULT NULL,
  `AMOUNT` bigint(20) DEFAULT NULL,
  `REMAINING_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SN`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_transaction`
--

LOCK TABLES `loan_transaction` WRITE;
/*!40000 ALTER TABLE `loan_transaction` DISABLE KEYS */;
INSERT INTO `loan_transaction` VALUES (1,21345325423301,'--------------','2018-02-25','CASH',21600,21600),(2,21345325423301,'--------------','2018-02-25','CASH',21600,0),(3,21345325423301,'213453254234','2018-02-25','---------',8640,34560),(4,21345325423301,'213453254234','2018-02-25','---------',8640,25920),(5,21345325423301,'213453254234','2018-02-25','---------',8640,17280),(6,21345325423301,'213453254234','2018-02-25','---------',8640,17280),(7,21345325423301,'213453254234','2018-02-25','---------',8640,0);
/*!40000 ALTER TABLE `loan_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `sn` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` bigint(20) DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_type` varchar(45) DEFAULT NULL,
  `transaction_mode` varchar(45) DEFAULT NULL,
  `transaction_amount` bigint(20) DEFAULT NULL,
  `old_balance` bigint(20) DEFAULT NULL,
  `final_balance` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,213453254234,'MADHU SINGH','2018-02-25','Deposite','CASH',10200,19800,30000);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-25 12:04:14
