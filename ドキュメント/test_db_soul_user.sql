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
-- Table structure for table `soul_user`
--

DROP TABLE IF EXISTS `soul_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soul_user` (
  `soul_userid` int NOT NULL,
  `soul_name` varchar(20) NOT NULL,
  `soul_sex` varchar(1) NOT NULL,
  `birthday` varchar(8) NOT NULL,
  `star` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`soul_userid`),
  UNIQUE KEY `soul_userid_UNIQUE` (`soul_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soul_user`
--

LOCK TABLES `soul_user` WRITE;
/*!40000 ALTER TABLE `soul_user` DISABLE KEYS */;
INSERT INTO `soul_user` VALUES (100000,'姚啟焰','M','196123','1','Tokyo','音楽,絵画,読書,ジョギング'),(100001,'12313','M','196324','1','New York','音楽,絵画,読書'),(100002,'姚啟焰2','M','196334','1','New York','音楽,絵画'),(100003,'1234','M','196034','2','Tokyo','音楽,絵画,読書'),(100004,'12312312312','M','196123','2','Tokyo','音楽'),(100005,'王正','F','196026','3','New York','音楽,絵画'),(100006,'Test_1','M','19711212','6','Tokyo','音楽,絵画'),(100007,'Test_2','F','19691121','10','Tokyo','音楽,絵画'),(100008,'sfdsf','M','19711213','12','Hawii','音楽,ジョギング'),(100009,'sfdsf','F','19701112','11','Okinawa','読書,ジョギング,ゲーム'),(100010,'aaaa','F','196022','1','Tokyo','音楽,ジョギング');
/*!40000 ALTER TABLE `soul_user` ENABLE KEYS */;
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
