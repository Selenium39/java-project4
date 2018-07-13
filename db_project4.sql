-- MySQL dump 10.13  Distrib 8.0.11, for Linux (x86_64)
--
-- Host: localhost    Database: db_project4
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_photo`
--

DROP TABLE IF EXISTS `tb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoName` varchar(255) DEFAULT NULL,
  `photoSize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photoWidth` varchar(255) DEFAULT NULL,
  `photoHeight` varchar(255) DEFAULT NULL,
  `photoType` varchar(255) DEFAULT NULL,
  `photoTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photoAddress` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `printAddress` varchar(255) DEFAULT NULL COMMENT '水印地址',
  `smallPhotoAddress` varchar(255) DEFAULT NULL,
  `userPhotoName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_photo`
--

LOCK TABLES `tb_photo` WRITE;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
INSERT INTO `tb_photo` VALUES (8,'1','18485','480','300','BEAUTIFUL','2018/7/12','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1.jpg','万晓菲','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1_water.jpg','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1_small.jpg','1'),(9,'2','16308','500','312','BEAUTIFUL','2018/7/12','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/2.jpg','万晓菲',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/2_small.jpg','2'),(10,'3','10664','470','300','BEAUTIFUL','2018/7/12','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/3.jpg','万晓菲',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/3_small.jpg','3'),(11,'1958705415','69256','500','993','SUKURA','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1958705415.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1958705415_small.jpg','sukura1'),(12,'1719194241','124367','1080','810','SUKURA','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1719194241.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1719194241_small.jpg','sukura2'),(13,'1324119361','42682','531','893','SUKURA','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1324119361.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/1324119361_small.jpg','sukura3'),(14,'cute1','19475','500','452','CUTE','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute1.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute1_small.jpg','cute1'),(15,'cute2','16394','500','356','CUTE','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute2.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute2_small.jpg','cute2'),(16,'cute3','11670','302','300','CUTE','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute3.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cute3_small.jpg','cute3'),(17,'others1','11230','500','313','Others','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others1.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others1_small.jpg','others1'),(18,'others2','10444','500','313','Others','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others2.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others2_small.jpg','others2'),(19,'others3','35120','480','300','Others','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others3.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/others3_small.jpg','others3'),(20,'cartoon1','15731','300','273','CARTOON','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon1.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon1_small.jpg','cartoon1'),(21,'cartoon2','19084','500','306','CARTOON','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon2.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon2_small.jpg','cartoon2'),(22,'cartoon3','15451','370','300','CARTOON','2018/7/13','/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon3.jpg','万涛',NULL,'/home/wantao/user/src/eclipse/java-project4/src/main/webapp/images/cartoon3_small.jpg','cartoon3');
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (2,'万涛','123456','895484122@qq.com','18221390332'),(3,'万晓菲','123456','895484122@qq.com','18221390333');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-13 15:26:04
