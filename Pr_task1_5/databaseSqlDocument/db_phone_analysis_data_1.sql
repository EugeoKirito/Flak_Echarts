-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db_phone_analysis_data_1
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_brand_count`
--

DROP TABLE IF EXISTS `tbl_phone_brand_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_brand_count` (
  `fld_index` int(10) NOT NULL AUTO_INCREMENT,
  `fld_brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_sale_count` int(255) NOT NULL,
  PRIMARY KEY (`fld_index`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_brand_count`
--

LOCK TABLES `tbl_phone_brand_count` WRITE;
/*!40000 ALTER TABLE `tbl_phone_brand_count` DISABLE KEYS */;
INSERT INTO `tbl_phone_brand_count` VALUES (70,'酷派（Coolpad）',112),(71,'锤子（smartisan）',6101),(72,'飞利浦（PHILIPS）',6789),(73,'魅族（MEIZU）',11541),(74,'黑鲨',407),(75,'诺基亚（NOKIA）',8312),(76,'联想（Lenovo）',2614),(77,'美图（meitu）',839),(78,'摩托罗拉（Motorola）',47),(79,'小辣椒',210),(80,'小米（MI）',87697),(81,'守护宝',13),(82,'天语（K-TOUCH）',1013),(83,'华为（HUAWEI）',179804),(84,'努比亚（nubia）',2847),(85,'中兴（ZTE）',539),(86,'三星（SAMSUNG）',7651),(87,'一加',489),(88,'vivo',12655),(89,'OPPO',18108),(90,'HTC',172),(91,'Apple',34064),(92,'360',2838);
/*!40000 ALTER TABLE `tbl_phone_brand_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_brand_count_raw`
--

DROP TABLE IF EXISTS `tbl_phone_brand_count_raw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_brand_count_raw` (
  `fld_brand_name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fld_sale_count` int(11) DEFAULT NULL,
  `fld_index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fld_index`),
  UNIQUE KEY `fld_brand_name` (`fld_brand_name`) USING BTREE,
  UNIQUE KEY `fld_sale_count` (`fld_sale_count`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_brand_count_raw`
--

LOCK TABLES `tbl_phone_brand_count_raw` WRITE;
/*!40000 ALTER TABLE `tbl_phone_brand_count_raw` DISABLE KEYS */;
INSERT INTO `tbl_phone_brand_count_raw` VALUES ('酷派（Coolpad）',112,1),('锤子（smartisan）',6101,2),('飞利浦（PHILIPS）',6789,3),('魅族（MEIZU）',11541,4),('黑鲨',407,5),('诺基亚（NOKIA）',8312,6),('联想（Lenovo）',2614,7),('美图（meitu）',839,8),('摩托罗拉（Motorola）',47,9),('小辣椒',210,10),('小米（MI）',87697,11),('守护宝',13,12),('天语（K-TOUCH）',1013,13),('华为（HUAWEI）',179804,14),('努比亚（nubia）',2847,15),('中兴（ZTE）',539,16),('三星（SAMSUNG）',7651,17),('一加',489,18),('vivo',12655,19),('OPPO',18108,21),('HTC',172,22),('Apple',34064,23),('360',2838,24);
/*!40000 ALTER TABLE `tbl_phone_brand_count_raw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_color_count`
--

DROP TABLE IF EXISTS `tbl_phone_color_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_color_count` (
  `fld_index` int(11) NOT NULL AUTO_INCREMENT,
  `fld_phone_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_sale_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fld_index`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_color_count`
--

LOCK TABLES `tbl_phone_color_count` WRITE;
/*!40000 ALTER TABLE `tbl_phone_color_count` DISABLE KEYS */;
INSERT INTO `tbl_phone_color_count` VALUES (1,'青','974'),(2,'黄','349'),(3,'黑','132182'),(4,'其他','16695'),(5,'灰','14623'),(6,'白','11455'),(7,'粉','6616'),(8,'紫','5944'),(9,'红','20291'),(10,'绿','1489'),(11,'蓝','66192'),(12,'金','92806'),(13,'银','15368');
/*!40000 ALTER TABLE `tbl_phone_color_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_color_count_raw`
--

DROP TABLE IF EXISTS `tbl_phone_color_count_raw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_color_count_raw` (
  `fld_phone_color` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fld_sale_count` int(11) DEFAULT NULL,
  `fld_index` int(11) NOT NULL,
  UNIQUE KEY `fld_phone_color` (`fld_phone_color`) USING BTREE,
  UNIQUE KEY `fld_sale_count` (`fld_sale_count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_color_count_raw`
--

LOCK TABLES `tbl_phone_color_count_raw` WRITE;
/*!40000 ALTER TABLE `tbl_phone_color_count_raw` DISABLE KEYS */;
INSERT INTO `tbl_phone_color_count_raw` VALUES ('青',974,0),('黄',349,0),('黑',132182,0),('其他',16695,0),('灰',14623,0),('白',11455,0),('粉',6616,0),('紫',5944,0),('红',20291,0),('绿',1489,0),('蓝',66192,0),('金',92806,0),('银',15368,0);
/*!40000 ALTER TABLE `tbl_phone_color_count_raw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_size_count`
--

DROP TABLE IF EXISTS `tbl_phone_size_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_size_count` (
  `fld_index` int(11) NOT NULL AUTO_INCREMENT,
  `fld_phone_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fld_sale_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fld_index`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_size_count`
--

LOCK TABLES `tbl_phone_size_count` WRITE;
/*!40000 ALTER TABLE `tbl_phone_size_count` DISABLE KEYS */;
INSERT INTO `tbl_phone_size_count` VALUES (1,'6.41英寸','291'),(2,'6.42英寸','1299'),(3,'6.44英寸','1194'),(4,'6.4英寸','3936'),(5,'6.4英寸（直角）6.3英寸（圆角）','1308'),(6,'6.59英寸','137'),(7,'6.5英寸','2127'),(8,'6.9','1294'),(9,'6.95英寸','76'),(10,'6.9英寸','1514'),(11,'7.12（英寸）','1100'),(12,'其他','60690'),(13,'1.5英寸','3'),(14,'1.77','399'),(15,'1.77英寸','53'),(16,'1.8英寸','1306'),(17,'2.0英寸','173'),(18,'2.31','1029'),(19,'2.4英寸','7624'),(20,'2.8英寸','1661'),(21,'4.0英寸','1613'),(22,'4.7英寸','14787'),(23,'5.0英寸','14911'),(24,'5.15英寸','1687'),(25,'5.1英寸','1541'),(26,'5.2英寸','7220'),(27,'5.45英寸','11224'),(28,'5.46英寸','224'),(29,'5.5英寸','37013'),(30,'5.65英寸','2067'),(31,'5.6英寸','1113'),(32,'5.7英寸','18913'),(33,'5.8','2806'),(34,'5.84英寸','23446'),(35,'5.84英寸（按圆角对角线计算屏幕尺寸为5.7英寸）','180'),(36,'5.86','232'),(37,'5.88英寸','1743'),(38,'5.8”（5.6“圆角）','863'),(39,'5.8英寸','15099'),(40,'5.93','1573'),(41,'5.99','2363'),(42,'5.99英寸','61465'),(43,'5.9英寸','9948'),(44,'6.01','2132'),(45,'6.01英寸','1588'),(46,'6.0英寸','13013'),(47,'6.17','318'),(48,'6.1英寸','10581'),(49,'6.21英寸','10139'),(50,'6.26英寸','2789'),(51,'6.28英寸','6411'),(52,'6.2“（6.1”圆角）','1585'),(53,'6.2英寸','5275'),(54,'6.3英寸','10828'),(55,'6.3英寸(直角)/6.2英寸(圆角)*','1080');
/*!40000 ALTER TABLE `tbl_phone_size_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_phone_size_count_raw`
--

DROP TABLE IF EXISTS `tbl_phone_size_count_raw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_phone_size_count_raw` (
  `fld_phone_size` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fld_sale_count` int(11) DEFAULT NULL,
  `fld_index` int(11) NOT NULL,
  UNIQUE KEY `fld_phone_size` (`fld_phone_size`) USING BTREE,
  UNIQUE KEY `fld_sale_count` (`fld_sale_count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_phone_size_count_raw`
--

LOCK TABLES `tbl_phone_size_count_raw` WRITE;
/*!40000 ALTER TABLE `tbl_phone_size_count_raw` DISABLE KEYS */;
INSERT INTO `tbl_phone_size_count_raw` VALUES ('6.41英寸',291,0),('6.42英寸',1299,0),('6.44英寸',1194,0),('6.4英寸',3936,0),('6.4英寸（直角）6.3英寸（圆角）',1308,0),('6.59英寸',137,0),('6.5英寸',2127,0),('6.9',1294,0),('6.95英寸',76,0),('6.9英寸',1514,0),('7.12（英寸）',1100,0),('其他',60690,0),('1.5英寸',3,0),('1.77',399,0),('1.77英寸',53,0),('1.8英寸',1306,0),('2.0英寸',173,0),('2.31',1029,0),('2.4英寸',7624,0),('2.8英寸',1661,0),('4.0英寸',1613,0),('4.7英寸',14787,0),('5.0英寸',14911,0),('5.15英寸',1687,0),('5.1英寸',1541,0),('5.2英寸',7220,0),('5.45英寸',11224,0),('5.46英寸',224,0),('5.5英寸',37013,0),('5.65英寸',2067,0),('5.6英寸',1113,0),('5.7英寸',18913,0),('5.8',2806,0),('5.84英寸',23446,0),('5.84英寸（按圆角对角线计算屏幕尺寸为5.7英寸）',180,0),('5.86',232,0),('5.88英寸',1743,0),('5.8”（5.6“圆角）',863,0),('5.8英寸',15099,0),('5.93',1573,0),('5.99',2363,0),('5.99英寸',61465,0),('5.9英寸',9948,0),('6.01',2132,0),('6.01英寸',1588,0),('6.0英寸',13013,0),('6.17',318,0),('6.1英寸',10581,0),('6.21英寸',10139,0),('6.26英寸',2789,0),('6.28英寸',6411,0),('6.2“（6.1”圆角）',1585,0),('6.2英寸',5275,0),('6.3英寸',10828,0),('6.3英寸(直角)/6.2英寸(圆角)*',1080,0);
/*!40000 ALTER TABLE `tbl_phone_size_count_raw` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 14:55:10
