-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (11,'2023-10-12 07:02:34','feuwv','xvicotpbmwyzviqsjouzxbwfcqgvexmp'),(12,'2023-10-12 07:02:34','fisph','ydmrkpkcxbpldyotuverixnwgcjkedhy'),(13,'2023-10-12 07:02:34','ottap','bqjewwprqhahbwdlheqhjqyvbtofzysc'),(14,'2023-10-12 07:02:34','lmdag','ubqolgikdybkdhkegdccmllowqbpdnrf'),(15,'2023-10-12 07:02:34','fylvp','irklxgducrdlyphstnywrhviflfuoqrq'),(16,'2023-10-12 07:02:34','xvrdv','nrwudqeufnmrmkwtstwjbotcwnvwqnfm'),(17,'2023-10-12 07:02:34','wmhrj','kbgsjjgbmrggvoymqewdyfsstdixdrer'),(18,'2023-10-12 07:02:34','rgbsn','fdtcsrnxxjyxtrgbzmbtklszamljtlwi'),(19,'2023-10-12 07:02:34','wbnpi','mougrcvbufomwogrhiiluyvxyuxmqpci'),(20,'2023-10-12 07:02:34','kqcce','ticjyhfmrqdejrsfcbapdcdpietulktn'),(21,'2023-10-12 07:02:58','omxkhuhc','gdmqmhgfxnjloxdxkrilhsslxfyilvxh'),(22,'2023-10-12 07:02:58','rrkuouxgfpuw','wleomovgeireejywsxpfaxqxfmujhhns'),(23,'2023-10-12 07:02:58','yxtdivug','euianvdouncdbxevmpeipyztftlfxxvl'),(24,'2023-10-12 07:02:58','eypfps','gsovrexxtcaphypsedhtjjumvvypzunf'),(25,'2023-10-12 07:02:58','cvyliifc','lsxpibbrppmqmadpvhojexoontxjvmii'),(26,'2023-10-12 07:02:58','bnhgxhgfowu','gbljnzsgvjpdhyslcaiupqkucpdohosq'),(27,'2023-10-12 07:02:58','ngrtsqjhks','ghptsgymgpknwineynsdcbmmjfdqkejs'),(28,'2023-10-12 07:02:58','idlnhyfbv','vsoioielomvkdtmvcerncneykqokizdq'),(29,'2023-10-12 07:02:58','glmwwtkuejx','wfpjhwfwwkhmugvnqycllecoqgufogbt'),(30,'2023-10-12 07:02:58','cgvwqqsurfri','rmswkfkntwxekjempkujrqfnnbewikdv'),(31,'2023-10-12 07:03:07','267330295741','rxdsddugqcuqbjlrjwjqyqbhpdouykam'),(32,'2023-10-12 07:03:07','80233772','tnkmibspperoptvafmpiatdhcgbmdqxm'),(33,'2023-10-12 07:03:07','67193642547','zyymkihoemhnynwsimijivqfuytbjfmb'),(34,'2023-10-12 07:03:07','021420385117','atslymmpstbmgkcvhhxcvfxowxjkdtie'),(35,'2023-10-12 07:03:07','94837','vlokwscwqajvvgsbvxmopxuwckpjpnlg'),(36,'2023-10-12 07:03:07','80387701806','uduhizptvgdyiyjphijquftnmbqmnjxu'),(37,'2023-10-12 07:03:07','8027313','yrwxbfqftdpbvfmjlmzpntlooluoxeds'),(38,'2023-10-12 07:03:07','8225379','uhzdzukkoamywphmbmifqqvvdnonvepo'),(39,'2023-10-12 07:03:07','78364827831','ftobtugoabwhnfbrcxzqxxmxvhuxocox'),(40,'2023-10-12 07:03:07','79457','hubgwhoceythynwddmuwsphgppylaoit'),(41,'2023-10-12 07:03:08','8849587','ljomwhnvjpiefgyooxekruqgqolceist'),(42,'2023-10-12 07:03:08','62240110482','fxdjzmqlponxhvtyvegubxhwrgrdqllh'),(43,'2023-10-12 07:03:08','66119372785','svhfmxnpgepxbwhmhdsmvklygqhcspjb'),(44,'2023-10-12 07:03:08','7038920903','ygjfgmzsihlowlgmzgjigoyqvmprxfjp'),(45,'2023-10-12 07:03:08','26491','nodvxnnrormbelqfxbyhwetnkbkutczi'),(46,'2023-10-12 07:03:08','722175739','lmrxjydcvuvslwktsiqckcrhovpgrysl'),(47,'2023-10-12 07:03:08','178779','ehpjgozbmmewuxduanjldppcbnvbwvwv'),(48,'2023-10-12 07:03:08','4284336427','sxrkpitokbqmbfjmbrpfpbkifyalmeex'),(49,'2023-10-12 07:03:08','384747','ymcimjurfvkvnehdlsdmznxthrxydgfs'),(50,'2023-10-12 07:03:08','735108','tyfmergvycssdeulqqgnwwmwjiieuohg');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12  7:03:27
