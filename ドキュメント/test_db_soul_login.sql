-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: test_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `soul_login`
--

DROP TABLE IF EXISTS `soul_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soul_login` (
  `soul_userid` int NOT NULL,
  `soul_login_mail` varchar(50) NOT NULL,
  `soul_pw` varchar(12) NOT NULL,
  PRIMARY KEY (`soul_userid`),
  UNIQUE KEY `soul_userid_UNIQUE` (`soul_userid`),
  UNIQUE KEY `soul_login_mail_UNIQUE` (`soul_login_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soul_login`
--

LOCK TABLES `soul_login` WRITE;
/*!40000 ALTER TABLE `soul_login` DISABLE KEYS */;
INSERT INTO `soul_login` VALUES (100000,'1234@1234.com','12345566'),(100001,'1234111@1234.com','123123123'),(100002,'1234111@1234.com1','123124'),(100003,'123145@12341.com','123123123'),(100004,'12314@12341.com','123123123'),(100005,'aaaa@aaa.com','aaaaaa'),(100006,'444444@4444.com','11111111'),(100007,'sdfsfs@sdfsdfsdf.com','sfsdfda'),(100008,'dfsdfsf@4444.com','123123123'),(100009,'123411122@1234.com','sdfsfdssfdff'),(100010,'aaa@aaa.com','123123123');
/*!40000 ALTER TABLE `soul_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 21:50:30
