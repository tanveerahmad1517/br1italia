-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: br1italia
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add galleria',7,'add_galleria'),(20,'Can change galleria',7,'change_galleria'),(21,'Can delete galleria',7,'delete_galleria'),(22,'Can add post',8,'add_post'),(23,'Can change post',8,'change_post'),(24,'Can delete post',8,'delete_post'),(25,'Can add immagini',9,'add_immagini'),(26,'Can change immagini',9,'change_immagini'),(27,'Can delete immagini',9,'delete_immagini'),(28,'Can add source',10,'add_source'),(29,'Can change source',10,'change_source'),(30,'Can delete source',10,'delete_source'),(31,'Can add thumbnail',11,'add_thumbnail'),(32,'Can change thumbnail',11,'change_thumbnail'),(33,'Can delete thumbnail',11,'delete_thumbnail'),(34,'Can add thumbnail dimensions',12,'add_thumbnaildimensions'),(35,'Can change thumbnail dimensions',12,'change_thumbnaildimensions'),(36,'Can delete thumbnail dimensions',12,'delete_thumbnaildimensions');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$EsZn1qEtST6g$2jglm5eRVMTJKqzdLnCR7WUifre+xEEnOpQtPKg1Sho=','2016-05-04 09:57:11',1,'pierangelo','','','pierangelo1982@gmail.com',1,1,'2014-10-27 07:19:52');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-10-27 07:40:33','1','Ciao',1,'',9,1),(2,'2014-10-27 08:34:23','1','attrezzi',1,'',8,1),(3,'2014-10-27 08:34:56','2','Att_1',1,'',9,1),(4,'2014-10-27 08:35:16','3','Att_2',1,'',9,1),(5,'2014-10-27 08:35:34','4','Att_3',1,'',9,1),(6,'2014-10-27 08:35:54','5','Att_4',1,'',9,1),(7,'2014-10-27 08:36:10','6','Att_5',1,'',9,1),(8,'2014-10-27 08:36:26','7','Att_6',1,'',9,1),(9,'2014-10-27 08:37:08','7','Att_5a',2,'Changed titolo, cropping, slider, thumb, croppinguno, croppingdue, croppingquattro and croppingcinque.',9,1),(10,'2014-10-27 08:37:28','8','Att_6',1,'',9,1),(11,'2014-10-27 08:37:43','9','Att_7',1,'',9,1),(12,'2014-10-27 08:37:59','10','Att_8',1,'',9,1),(13,'2014-10-27 08:38:12','11','Att_9',1,'',9,1),(14,'2014-10-27 08:38:22','12','Att_10',1,'',9,1),(15,'2014-10-27 08:38:33','13','Att_11',1,'',9,1),(16,'2014-10-27 08:38:44','14','Att_12',1,'',9,1),(17,'2014-10-27 08:38:57','15','Att_13',1,'',9,1),(18,'2014-10-27 08:39:08','16','Att_14',1,'',9,1),(19,'2014-10-27 08:39:21','17','Att_15',1,'',9,1),(20,'2014-10-27 08:39:32','18','Att_16',1,'',9,1),(21,'2014-10-27 08:39:47','19','Att_17',1,'',9,1),(22,'2014-10-27 08:39:57','20','Att_18',1,'',9,1),(23,'2014-10-27 08:40:10','21','Att_19',1,'',9,1),(24,'2014-10-27 08:40:21','22','Att_20',1,'',9,1),(25,'2014-10-27 09:16:39','4','Att_3',2,'Changed categoria, cropping, slider, thumb, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(26,'2015-03-03 11:02:11','2','dottori',1,'',8,1),(27,'2015-03-03 11:03:24','23','dot_1',1,'',9,1),(28,'2015-03-03 11:03:59','24','dot_2',1,'',9,1),(29,'2015-03-03 11:05:40','25','dot_3',1,'',9,1),(30,'2015-03-03 11:06:33','26','Dot_4',1,'',9,1),(31,'2015-03-03 11:07:20','27','dot_5',1,'',9,1),(32,'2015-03-03 11:08:10','28','dott_6',1,'',9,1),(33,'2015-03-03 11:09:04','29','dot_7',1,'',9,1),(34,'2015-03-03 11:10:04','30','dot_8',1,'',9,1),(35,'2015-03-03 11:11:06','31','dott_9',1,'',9,1),(36,'2015-03-03 12:45:09','3','scelta italiana',1,'',8,1),(37,'2015-03-03 12:45:44','32','italiana_1',1,'',9,1),(38,'2015-03-03 12:45:57','32','italiana_1',2,'Changed slider, thumb, croppingdue, croppingtre, croppingquattro, croppingcinque and croppingsei.',9,1),(39,'2015-03-03 12:46:29','33','italiana_2',1,'',9,1),(40,'2015-03-03 12:47:15','34','italiana_2',1,'',9,1),(41,'2015-03-03 12:47:22','34','italiana_2',2,'Changed cropping, slider, thumb, croppingdue, croppingtre and croppingcinque.',9,1),(42,'2015-03-03 12:47:53','35','italiana_3',1,'',9,1),(43,'2015-03-03 12:48:22','36','italiana_4',1,'',9,1),(44,'2015-03-03 12:53:49','37','italiana_5',1,'',9,1),(45,'2015-03-03 13:00:45','32','italiana_1',3,'',9,1),(46,'2015-03-03 13:01:24','38','italiana_6',1,'',9,1),(47,'2015-03-03 13:05:44','7','Att_5a',3,'',9,1),(48,'2015-03-03 13:06:59','18','Att_16',3,'',9,1),(49,'2015-03-03 13:16:35','39','dott_10',1,'',9,1),(50,'2015-03-03 13:18:13','29','dot_7',3,'',9,1),(51,'2015-03-03 13:19:02','40','italiana_7',1,'',9,1),(52,'2015-03-03 13:19:39','41','Italiana_8',1,'',9,1),(53,'2015-03-03 13:21:39','41','Italiana_8',2,'Changed cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(54,'2016-04-13 11:49:45','23','dot_1',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(55,'2016-04-13 11:49:57','24','dot_2',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(56,'2016-04-13 11:50:12','25','dot_3',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(57,'2016-04-13 11:50:24','26','Dot_4',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(58,'2016-04-13 11:50:35','27','dot_5',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(59,'2016-04-13 11:51:06','28','dott_6',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(60,'2016-04-13 11:51:25','30','dot_8',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(61,'2016-04-13 11:51:36','31','dott_9',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1),(62,'2016-04-13 11:52:53','39','dott_10',2,'Changed categoria, cropping, slider, croppinguno, croppingtre, croppingquattro and croppingsei.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'galleria','sito','galleria'),(8,'post','sito','post'),(9,'immagini','sito','immagini'),(10,'source','easy_thumbnails','source'),(11,'thumbnail','easy_thumbnails','thumbnail'),(12,'thumbnail dimensions','easy_thumbnails','thumbnaildimensions');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2014-10-27 07:05:48'),(2,'auth','0001_initial','2014-10-27 07:05:52'),(3,'admin','0001_initial','2014-10-27 07:05:53'),(4,'sessions','0001_initial','2014-10-27 07:05:53'),(5,'sito','0001_initial','2014-10-27 07:12:37'),(6,'easy_thumbnails','0001_initial','2014-10-27 07:41:27'),(7,'easy_thumbnails','0002_thumbnaildimensions','2014-10-27 07:41:27'),(8,'sito','0002_auto_20141027_0856','2014-10-27 08:56:45'),(9,'sito','0003_auto_20141114_1931','2015-03-01 07:21:28');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1is0tpdx3zu0q04pikav71vbi4ehk5dd','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:43'),('1wo9l3k8iui7zydlgc2kpzklmasxa9sn','OWJjY2U4NjFiZGJlNjA1MTc0NzBlMmQyYTIxNmM2MDhjMjlmMTkwYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjMxNjM0ZWM4NzVjMzFlODRiMTE1MWI1OGIxNmY0MzM3NDdmNmUwZDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-04-15 12:50:25'),('2kdfi9kebwiq8kafs7dr5k4me823kypl','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:44'),('3z7wawqd5envxr2rluzk1n5ry3ut7oad','OWJjY2U4NjFiZGJlNjA1MTc0NzBlMmQyYTIxNmM2MDhjMjlmMTkwYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjMxNjM0ZWM4NzVjMzFlODRiMTE1MWI1OGIxNmY0MzM3NDdmNmUwZDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-03-17 10:42:48'),('7ty55jc4z5292qnxks2ae762fgevvops','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:59'),('dyzf0c8v8uacygzl0rf76gyf86o2l4og','NWQyNTNjZjY2MmFjMjM4NWYxOTgyOTliOWEwMzk0NDliNjk2Mzg5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MTI3Y2YwNzQ2OTljZWE1ZjhiYmJjNThjMWExMDZkNzAzNmIwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-05-18 15:46:12'),('ei78h1bnccvl3rx0zp7l4j12yvw4i6t2','NWQyNTNjZjY2MmFjMjM4NWYxOTgyOTliOWEwMzk0NDliNjk2Mzg5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MTI3Y2YwNzQ2OTljZWE1ZjhiYmJjNThjMWExMDZkNzAzNmIwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-04-18 07:12:41'),('g2zideiijlihwbpgv1xfejsxcmnmc9wo','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:41'),('jz4gl267g3p8kg4qbtareq3gg7qiaj9m','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:18'),('m9wyca3ugfiuz6xe1zlauqzf4vrut8ib','NWQyNTNjZjY2MmFjMjM4NWYxOTgyOTliOWEwMzk0NDliNjk2Mzg5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MTI3Y2YwNzQ2OTljZWE1ZjhiYmJjNThjMWExMDZkNzAzNmIwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-04-27 11:47:28'),('ruih89xy1fuq2csrmpgz2w577vc5qfx0','MmQ4MDM0ZDdjZmI5YTViYmYxYzVkY2IzOTFjZjVkODExNTI1YjU3Mjp7fQ==','2014-11-10 07:06:57'),('s5d03b6uxnkso08eocjbufar939has2h','NWQyNTNjZjY2MmFjMjM4NWYxOTgyOTliOWEwMzk0NDliNjk2Mzg5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MTI3Y2YwNzQ2OTljZWE1ZjhiYmJjNThjMWExMDZkNzAzNmIwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-18 09:57:11'),('x1edp5mqyma9vah11gyjpramo541swqe','ZDNlYzM1NzFhYTM0MTQ3Y2Y0NjY4MmJhYzFlNTQ0OTgwNmY2MzIxNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjU3NmU3MGQyNGVmM2QxNDJmZDQ1NjMzYzlkZTlhMTBmODRmZmU3MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-11-10 07:31:24'),('xxkejothyh2oda1czltf1hxxe0vma165','NWQyNTNjZjY2MmFjMjM4NWYxOTgyOTliOWEwMzk0NDliNjk2Mzg5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MTI3Y2YwNzQ2OTljZWE1ZjhiYmJjNThjMWExMDZkNzAzNmIwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-07-13 12:33:57');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_40116450c1e4f2ed_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/6.jpeg','2015-03-03 13:05:13'),(2,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/1.jpeg','2015-03-03 10:42:56'),(3,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/2.jpeg','2016-04-13 11:54:27'),(4,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/3.jpeg','2014-10-27 09:16:18'),(5,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/4.jpeg','2014-10-27 08:49:50'),(6,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/5.jpeg','2014-10-27 08:49:50'),(7,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/6_1XVpfoB.jpeg','2015-03-01 09:44:59'),(8,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/7.jpeg','2015-03-03 13:17:57'),(9,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/8.jpeg','2014-10-27 08:49:52'),(10,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/9.jpeg','2014-10-27 08:49:53'),(11,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/10.jpeg','2016-04-13 11:54:33'),(12,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/11.jpeg','2016-04-13 11:54:32'),(13,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/12.jpeg','2016-04-13 11:54:33'),(14,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/13.jpg','2015-03-01 09:44:59'),(15,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/14.jpeg','2016-04-13 11:54:35'),(16,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/15.jpeg','2016-04-13 11:54:36'),(17,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/17.jpeg','2015-03-03 13:06:37'),(18,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/17_1nvPuqe.jpeg','2014-10-27 08:49:55'),(19,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/18.jpeg','2016-04-13 11:54:37'),(20,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/19.jpeg','2015-03-03 13:06:46'),(21,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/20.jpg','2016-04-13 11:53:38'),(22,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Dr_Spezia-_Dr_Casali_ednxEFJ.JPG','2016-04-13 11:49:05'),(23,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Prof._Denaro_U3oMUFw.JPG','2016-04-13 11:49:50'),(24,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Dr_De_Falco-_Dr_Rampini-_Dr_Boriani_s7AFHUi.JPG','2016-04-13 11:50:05'),(25,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Drssa_Chessa_2_zIsjz49.JPG','2016-04-13 11:50:17'),(26,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Dr_Pola_4_Y1i5xJv.JPG','2016-04-13 11:50:28'),(27,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Dr_De_Falco_cMTKkdi.JPG','2016-04-13 11:50:59'),(28,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Drssa_Chessa_2_UpwLowj_uChqnNc.JPG','2015-03-03 13:18:05'),(29,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/033_A3zRvWQ_Plqmffs.JPG','2016-04-13 11:51:19'),(30,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Prof_Boriani_2_wzOKMTI.JPG','2015-03-03 13:15:53'),(31,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/_D8N5344_8LNuU8z.jpg','2015-03-03 12:48:39'),(32,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/_D8N5201_PgJutgD.jpg','2015-03-03 12:48:40'),(33,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/_D8N5153_9EVFfmv.jpg','2016-04-13 11:48:31'),(34,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/_D8N5462_BGnegjh.jpg','2016-04-13 11:54:02'),(35,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/052_n0qNxlv.JPG','2015-03-03 12:49:41'),(36,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/023_PI6fxh4.JPG','2016-04-13 11:54:04'),(37,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/_D8N5778_Yt9Pwz8.jpg','2016-04-13 11:54:05'),(38,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/069_tHI07j1.JPG','2016-04-13 11:52:45'),(39,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/066_g8Pc8wX.JPG','2015-03-03 13:25:59'),(40,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/062_BmVDn1K.JPG','2016-04-13 11:54:06'),(41,'f9bde26a1556cd667f742bd34ec7c55e','uploaded_images/Dr_Spezia-_Dr_Casali_yNvPPh0.JPG','2015-04-01 12:50:31');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_66cc758d07ef9fce_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  KEY `easy_thumbnails_thumbnail_0afd9202` (`source_id`),
  CONSTRAINT `easy_thu_source_id_50b260de7106e1b7_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/6.jpeg.1425x500_q85_detail_upscale.jpg','2015-03-03 13:05:13',1),(2,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/1.jpeg.132x94_q85_box-91,0,2361,1616_crop_detail.jpg','2014-10-27 08:48:45',2),(3,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/2.jpeg.132x94_q85_box-0,269,1711,1488_crop_detail.jpg','2014-10-27 08:48:46',3),(4,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/3.jpeg.132x94_q85_box-1007,0,1303,211_crop_detail.jpg','2014-10-27 08:48:46',4),(5,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/4.jpeg.132x94_q85_box-7,0,2363,1678_crop_detail.jpg','2014-10-27 08:48:47',5),(6,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/5.jpeg.132x94_q85_box-0,802,991,1507_crop_detail.jpg','2014-10-27 08:48:47',6),(7,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/6.jpeg.132x94_q85_box-0,285,1732,1517_crop_detail.jpg','2014-10-27 08:48:47',1),(8,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/6_1XVpfoB.jpeg.132x94_q85_box-0,285,1732,1518_crop_detail.jpg','2014-10-27 08:48:47',7),(9,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/7.jpeg.132x94_q85_box-108,0,2420,1647_crop_detail.jpg','2014-10-27 08:48:48',8),(10,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/8.jpeg.132x94_q85_box-595,0,1997,998_crop_detail.jpg','2014-10-27 08:48:48',9),(11,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/9.jpeg.132x94_q85_box-0,108,1861,1433_crop_detail.jpg','2014-10-27 08:48:49',10),(12,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/10.jpeg.132x94_q85_box-658,0,1466,576_crop_detail.jpg','2014-10-27 08:48:49',11),(13,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/11.jpeg.132x94_q85_box-0,581,682,1067_crop_detail.jpg','2014-10-27 08:48:49',12),(14,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/12.jpeg.132x94_q85_box-0,180,1200,1034_crop_detail.jpg','2014-10-27 08:48:49',13),(15,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/13.jpg.132x94_q85_box-160,0,2224,1470_crop_detail.jpg','2014-10-27 08:48:50',14),(16,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/14.jpeg.132x94_q85_box-355,0,1145,562_crop_detail.jpg','2014-10-27 08:48:50',15),(17,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/15.jpeg.132x94_q85_box-476,0,1850,978_crop_detail.jpg','2014-10-27 08:48:50',16),(18,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/17.jpeg.132x94_q85_box-0,851,986,1554_crop_detail.jpg','2014-10-27 08:48:50',17),(19,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/17_1nvPuqe.jpeg.132x94_q85_box-0,851,986,1554_crop_detail.jpg','2014-10-27 08:48:51',18),(20,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/18.jpeg.132x94_q85_box-0,82,1815,1375_crop_detail.jpg','2014-10-27 08:48:51',19),(21,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/19.jpeg.132x94_q85_box-151,0,1897,1244_crop_detail.jpg','2014-10-27 08:48:51',20),(22,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/20.jpg.132x94_q85_box-559,0,2134,1122_crop_detail.jpg','2014-10-27 08:48:52',21),(23,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/1.jpeg.500x300_q85_box-91,0,2361,1616_crop_detail.jpg','2014-10-27 08:49:49',2),(24,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/2.jpeg.500x300_q85_box-0,269,1711,1488_crop_detail.jpg','2015-03-01 09:44:58',3),(25,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/3.jpeg.500x300_q85_box-1007,0,1303,211_crop_detail.jpg','2014-10-27 08:49:49',4),(26,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/4.jpeg.500x300_q85_box-7,0,2363,1678_crop_detail.jpg','2014-10-27 08:49:50',5),(27,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/5.jpeg.500x300_q85_box-0,802,991,1507_crop_detail.jpg','2014-10-27 08:49:50',6),(28,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/6.jpeg.500x300_q85_box-0,285,1732,1517_crop_detail.jpg','2015-03-01 09:44:58',1),(29,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/6_1XVpfoB.jpeg.500x300_q85_box-0,285,1732,1518_crop_detail.jpg','2015-03-01 09:44:59',7),(30,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/7.jpeg.500x300_q85_box-108,0,2420,1647_crop_detail.jpg','2014-10-27 08:49:52',8),(31,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/8.jpeg.500x300_q85_box-595,0,1997,998_crop_detail.jpg','2014-10-27 08:49:52',9),(32,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/9.jpeg.500x300_q85_box-0,108,1861,1433_crop_detail.jpg','2014-10-27 08:49:53',10),(33,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/10.jpeg.500x300_q85_box-658,0,1466,576_crop_detail.jpg','2014-10-27 08:49:53',11),(34,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/11.jpeg.500x300_q85_box-0,581,682,1067_crop_detail.jpg','2014-10-27 08:49:53',12),(35,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/12.jpeg.500x300_q85_box-0,180,1200,1034_crop_detail.jpg','2015-03-01 09:44:59',13),(36,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/13.jpg.500x300_q85_box-160,0,2224,1470_crop_detail.jpg','2015-03-01 09:44:59',14),(37,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/14.jpeg.500x300_q85_box-355,0,1145,562_crop_detail.jpg','2015-03-01 09:45:00',15),(38,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/15.jpeg.500x300_q85_box-476,0,1850,978_crop_detail.jpg','2015-03-01 09:45:00',16),(39,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/17.jpeg.500x300_q85_box-0,851,986,1554_crop_detail.jpg','2014-10-27 08:49:55',17),(40,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/17_1nvPuqe.jpeg.500x300_q85_box-0,851,986,1554_crop_detail.jpg','2014-10-27 08:49:55',18),(41,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/18.jpeg.500x300_q85_box-0,82,1815,1375_crop_detail.jpg','2015-03-01 09:45:00',19),(42,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/19.jpeg.500x300_q85_box-151,0,1897,1244_crop_detail.jpg','2015-03-01 09:45:01',20),(43,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/20.jpg.500x300_q85_box-559,0,2134,1122_crop_detail.jpg','2015-03-01 09:45:04',21),(44,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/3.jpeg.1425x500_q85_detail_upscale.jpg','2014-10-27 09:16:18',4),(45,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/1.jpeg.1425x500_q85_detail_upscale.jpg','2015-03-03 10:42:56',2),(46,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_Spezia-_Dr_Casali_ednxEFJ.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:04:30',22),(47,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Prof._Denaro_U3oMUFw.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:04:31',23),(48,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_De_Falco-_Dr_Rampini-_Dr_Boriani_s7AFHUi.JPG.830x530_q85_box-0,55,3888,2537_crop_detail.jpg','2015-03-03 11:14:26',24),(49,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Drssa_Chessa_2_zIsjz49.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:26',25),(50,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_Pola_4_Y1i5xJv.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:27',26),(51,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_De_Falco_cMTKkdi.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:27',27),(52,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Drssa_Chessa_2_UpwLowj_uChqnNc.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:28',28),(53,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/033_A3zRvWQ_Plqmffs.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:29',29),(54,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Prof_Boriani_2_wzOKMTI.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 11:14:29',30),(55,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5344_8LNuU8z.jpg.1425x500_q85_detail_upscale.jpg','2015-03-03 12:45:45',31),(56,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5201_PgJutgD.jpg.1425x500_q85_detail_upscale.jpg','2015-03-03 12:47:15',32),(57,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5344_8LNuU8z.jpg.830x530_q85_box-0,44,3000,1959_crop_detail.jpg','2015-03-03 12:48:39',31),(58,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5153_9EVFfmv.jpg.830x530_q85_box-0,22,1500,979_crop_detail.jpg','2015-03-03 12:48:39',33),(59,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5201_PgJutgD.jpg.830x530_q85_box-0,22,1500,980_crop_detail.jpg','2015-03-03 12:48:40',32),(60,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5462_BGnegjh.jpg.830x530_q85_box-0,22,1500,979_crop_detail.jpg','2015-03-03 12:48:40',34),(61,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/052_n0qNxlv.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 12:48:41',35),(62,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/052_n0qNxlv.JPG.1425x500_q85_detail_upscale.jpg','2015-03-03 12:49:41',35),(63,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/023_PI6fxh4.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 12:53:52',36),(64,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5778_Yt9Pwz8.jpg.830x530_q85_box-0,22,1500,979_crop_detail.jpg','2015-03-03 13:05:51',37),(65,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/17.jpeg.1425x500_q85_detail_upscale.jpg','2015-03-03 13:06:37',17),(66,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/19.jpeg.1425x500_q85_detail_upscale.jpg','2015-03-03 13:06:46',20),(67,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Prof_Boriani_2_wzOKMTI.JPG.1425x500_q85_detail_upscale.jpg','2015-03-03 13:15:53',30),(68,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/069_tHI07j1.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 13:17:38',38),(69,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/7.jpeg.1425x500_q85_detail_upscale.jpg','2015-03-03 13:17:57',8),(70,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Drssa_Chessa_2_UpwLowj_uChqnNc.JPG.1425x500_q85_detail_upscale.jpg','2015-03-03 13:18:05',28),(71,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/066_g8Pc8wX.JPG.1425x500_q85_detail_upscale.jpg','2015-03-03 13:21:30',39),(72,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/062_BmVDn1K.JPG.830x530_q85_box-0,27,1944,1269_crop_detail.jpg','2015-03-03 13:25:58',40),(73,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/066_g8Pc8wX.JPG.830x530_q85_box-0,26,1944,1267_crop_detail.jpg','2015-03-03 13:25:59',39),(74,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_Spezia-_Dr_Casali_yNvPPh0.JPG.1425x500_q85_detail_upscale.jpg','2015-04-01 12:50:31',41),(75,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5153_9EVFfmv.jpg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:48:31',33),(76,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_Spezia-_Dr_Casali_ednxEFJ.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:49:05',22),(77,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Prof._Denaro_U3oMUFw.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:49:50',23),(78,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_De_Falco-_Dr_Rampini-_Dr_Boriani_s7AFHUi.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:50:05',24),(79,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Drssa_Chessa_2_zIsjz49.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:50:17',25),(80,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_Pola_4_Y1i5xJv.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:50:28',26),(81,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/Dr_De_Falco_cMTKkdi.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:50:59',27),(82,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/033_A3zRvWQ_Plqmffs.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:51:19',29),(83,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/069_tHI07j1.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:52:45',38),(84,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/20.jpg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:53:38',21),(85,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5462_BGnegjh.jpg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:02',34),(86,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/023_PI6fxh4.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:04',36),(87,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/_D8N5778_Yt9Pwz8.jpg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:05',37),(88,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/062_BmVDn1K.JPG.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:06',40),(89,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/2.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:27',3),(90,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/11.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:32',12),(91,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/10.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:33',11),(92,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/12.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:33',13),(93,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/14.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:35',15),(94,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/15.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:36',16),(95,'d26becbf46ac48eda79c7a39a13a02dd','uploaded_images/18.jpeg.1425x500_q85_detail_upscale.jpg','2016-04-13 11:54:37',19);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `ea_thumbnail_id_29ad34faceb3c17c_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sito_galleria`
--

DROP TABLE IF EXISTS `sito_galleria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sito_galleria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `didascalia` longtext,
  `cropping` varchar(255) NOT NULL,
  `slider` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `croppinguno` varchar(255) NOT NULL,
  `croppingdue` varchar(255) NOT NULL,
  `croppingtre` varchar(255) NOT NULL,
  `croppingquattro` varchar(255) NOT NULL,
  `croppingcinque` varchar(255) NOT NULL,
  `croppingsei` varchar(255) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sito_galleria`
--

LOCK TABLES `sito_galleria` WRITE;
/*!40000 ALTER TABLE `sito_galleria` DISABLE KEYS */;
/*!40000 ALTER TABLE `sito_galleria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sito_immagini`
--

DROP TABLE IF EXISTS `sito_immagini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sito_immagini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `didascalia` longtext,
  `cropping` varchar(255) NOT NULL,
  `slider` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `croppinguno` varchar(255) NOT NULL,
  `croppingdue` varchar(255) NOT NULL,
  `croppingtre` varchar(255) NOT NULL,
  `croppingquattro` varchar(255) NOT NULL,
  `croppingcinque` varchar(255) NOT NULL,
  `croppingsei` varchar(255) NOT NULL,
  `pub_date` datetime NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sito_immagini_daf3833b` (`categoria_id`),
  CONSTRAINT `sito_immagini_categoria_id_1d45187ec26ab8aa_fk_sito_post_id` FOREIGN KEY (`categoria_id`) REFERENCES `sito_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sito_immagini`
--

LOCK TABLES `sito_immagini` WRITE;
/*!40000 ALTER TABLE `sito_immagini` DISABLE KEYS */;
INSERT INTO `sito_immagini` VALUES (1,'Ciao','uploaded_images/BET_0291.JPG','','764,0,4164,3264','0,273,4928,2991','172,0,4756,3264','0,579,4928,2685','16,0,4912,3264','0,247,4928,3017','724,0,4204,3264','16,0,4912,3264','723,0,4205,3264','2014-10-27 07:40:32',NULL),(2,'Att_1','uploaded_images/1.jpeg','','384,0,2068,1616','0,132,2452,1484','91,0,2361,1616','0,284,2452,1332','14,0,2438,1616','0,119,2452,1497','365,0,2087,1616','14,0,2438,1616','364,0,2088,1616','2014-10-27 08:34:54',1),(3,'Att_2','uploaded_images/2.jpeg','','0,57,1711,1700','0,407,1711,1350','0,269,1711,1488','0,513,1711,1244','0,308,1711,1449','0,398,1711,1359','0,76,1711,1681','0,308,1711,1449','0,76,1711,1681','2014-10-27 08:35:14',1),(4,'Att_3','uploaded_images/3.jpeg','','42,0,262,211','965,0,1346,211','1007,0,1358,211','908,0,1401,211','997,0,1313,211','968,0,1343,211','1042,0,1267,211','997,0,1313,211','1042,0,1267,211','2014-10-27 08:35:33',NULL),(5,'Att_4','uploaded_images/4.jpeg','','311,0,2059,1678','0,185,2370,1493','7,0,2363,1678','0,333,2370,1345','0,49,2370,1629','0,173,2370,1505','291,0,2079,1678','0,49,2370,1629','290,0,2080,1678','2014-10-27 08:35:52',1),(6,'Att_5','uploaded_images/5.jpeg','','0,679,991,1630','0,881,991,1428','0,802,991,1507','0,943,991,1366','0,824,991,1485','0,876,991,1433','0,690,991,1619','0,824,991,1485','0,690,991,1619','2014-10-27 08:36:09',1),(8,'Att_6','uploaded_images/6_1XVpfoB.jpeg','','0,70,1732,1733','0,424,1732,1379','0,285,1732,1518','0,532,1732,1271','0,324,1732,1479','0,415,1732,1388','0,89,1732,1714','0,324,1732,1479','0,90,1732,1713','2014-10-27 08:37:11',1),(9,'Att_7','uploaded_images/7.jpeg','','406,0,2122,1647','0,126,2528,1521','108,0,2420,1647','0,284,2528,1363','29,0,2499,1647','0,113,2528,1534','386,0,2142,1647','29,0,2499,1647','386,0,2142,1647','2014-10-27 08:37:41',1),(10,'Att_8','uploaded_images/8.jpeg','','776,0,1816,998','392,0,2200,998','595,0,1997,998','128,0,2464,998','548,0,2044,998','408,0,2184,998','764,0,1828,998','548,0,2044,998','764,0,1828,998','2014-10-27 08:37:58',1),(11,'Att_9','uploaded_images/9.jpeg','','128,0,1733,1541','0,257,1861,1284','0,108,1861,1433','0,373,1861,1168','0,150,1861,1391','0,247,1861,1294','109,0,1752,1541','0,150,1861,1391','109,0,1752,1541','2014-10-27 08:38:10',1),(12,'Att_10','uploaded_images/10.jpeg','','762,0,1362,576','540,0,1584,576','658,0,1466,576','388,0,1736,576','630,0,1494,576','550,0,1574,576','755,0,1369,576','630,0,1494,576','755,0,1369,576','2014-10-27 08:38:21',1),(13,'Att_11','uploaded_images/11.jpeg','','0,497,682,1151','0,636,682,1012','0,581,682,1067','0,678,682,970','0,597,682,1051','0,632,682,1016','0,504,682,1144','0,597,682,1051','0,504,682,1144','2014-10-27 08:38:32',1),(14,'Att_12','uploaded_images/12.jpeg','','0,31,1200,1183','0,276,1200,938','0,180,1200,1034','0,351,1200,863','0,207,1200,1007','0,270,1200,944','0,44,1200,1170','0,207,1200,1007','0,45,1200,1169','2014-10-27 08:38:43',1),(15,'Att_13','uploaded_images/13.jpg','','426,0,1958,1470','0,77,2384,1393','160,0,2224,1470','0,226,2384,1244','90,0,2294,1470','0,65,2384,1405','408,0,1976,1470','90,0,2294,1470','408,0,1976,1470','2014-10-27 08:38:56',1),(16,'Att_14','uploaded_images/14.jpeg','','457,0,1043,562','241,0,1259,562','355,0,1145,562','92,0,1408,562','329,0,1171,562','250,0,1250,562','450,0,1050,562','329,0,1171,562','450,0,1050,562','2014-10-27 08:39:07',1),(17,'Att_15','uploaded_images/15.jpeg','','654,0,1672,978','277,0,2049,978','476,0,1850,978','18,0,2308,978','430,0,1896,978','293,0,2033,978','642,0,1684,978','430,0,1896,978','641,0,1685,978','2014-10-27 08:39:20',1),(19,'Att_17','uploaded_images/17_1nvPuqe.jpeg','','0,729,986,1676','0,931,986,1474','0,851,986,1554','0,992,986,1413','0,874,986,1531','0,925,986,1480','0,740,986,1665','0,874,986,1531','0,740,986,1665','2014-10-27 08:39:46',1),(20,'Att_18','uploaded_images/18.jpeg','','149,0,1666,1457','0,228,1815,1229','0,82,1815,1375','0,341,1815,1116','0,124,1815,1333','0,218,1815,1239','131,0,1684,1457','0,124,1815,1333','130,0,1685,1457','2014-10-27 08:39:56',1),(21,'Att_19','uploaded_images/19.jpeg','','376,0,1672,1244','0,57,2048,1187','151,0,1897,1244','0,185,2048,1059','91,0,1957,1244','0,46,2048,1198','361,0,1687,1244','91,0,1957,1244','361,0,1687,1244','2014-10-27 08:40:09',1),(22,'Att_20','uploaded_images/20.jpg','','762,0,1931,1122','330,0,2363,1122','559,0,2134,1122','33,0,2660,1122','505,0,2188,1122','349,0,2344,1122','748,0,1945,1122','505,0,2188,1122','748,0,1945,1122','2014-10-27 08:40:20',1),(23,'dot_1','uploaded_images/Dr_Spezia-_Dr_Casali_ednxEFJ.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:03:12',NULL),(24,'dot_2','uploaded_images/Prof._Denaro_U3oMUFw.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:03:46',NULL),(25,'dot_3','uploaded_images/Dr_De_Falco-_Dr_Rampini-_Dr_Boriani_s7AFHUi.JPG','','596,0,3296,2592','0,57,3888,2540','0,130,3888,2462','0,467,3888,2127','0,0,3888,2592','0,202,3888,2388','560,0,3323,2592','0,0,3888,2592','560,0,3325,2592','2015-03-03 11:04:57',NULL),(26,'Dot_4','uploaded_images/Drssa_Chessa_2_zIsjz49.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:06:19',NULL),(27,'dot_5','uploaded_images/Dr_Pola_4_Y1i5xJv.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:07:09',NULL),(28,'dott_6','uploaded_images/Dr_De_Falco_cMTKkdi.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:07:57',NULL),(30,'dot_8','uploaded_images/033_A3zRvWQ_Plqmffs.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:09:37',NULL),(31,'dott_9','uploaded_images/Prof_Boriani_2_wzOKMTI.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 11:10:53',NULL),(33,'italiana_2','uploaded_images/_D8N5153_9EVFfmv.jpg','','229,0,1271,1001','0,22,1500,979','0,51,1500,950','0,180,1500,821','0,1,1500,1000','0,79,1500,922','216,0,1284,1001','0,1,1500,1000','216,0,1284,1001','2015-03-03 12:46:21',3),(34,'italiana_2','uploaded_images/_D8N5201_PgJutgD.jpg','','228,0,1271,1001','0,22,1500,980','0,50,1500,950','0,180,1500,821','0,0,1500,1000','0,78,1500,921','216,0,1284,1001','0,0,1500,1000','216,0,1284,1001','2015-03-03 12:47:09',3),(35,'italiana_3','uploaded_images/_D8N5462_BGnegjh.jpg','','229,0,1271,1001','0,22,1500,979','0,51,1500,950','0,180,1500,821','0,1,1500,1000','0,79,1500,922','216,0,1284,1001','0,1,1500,1000','216,0,1284,1001','2015-03-03 12:47:46',3),(36,'italiana_4','uploaded_images/052_n0qNxlv.JPG','','297,0,1647,1296','0,27,1944,1269','0,65,1944,1231','0,233,1944,1063','0,0,1944,1296','0,102,1944,1194','281,0,1663,1296','0,0,1944,1296','281,0,1663,1296','2015-03-03 12:48:13',3),(37,'italiana_5','uploaded_images/023_PI6fxh4.JPG','','297,0,1647,1296','0,27,1944,1269','0,65,1944,1231','0,233,1944,1063','0,0,1944,1296','0,102,1944,1194','281,0,1663,1296','0,0,1944,1296','281,0,1663,1296','2015-03-03 12:53:39',3),(38,'italiana_6','uploaded_images/_D8N5778_Yt9Pwz8.jpg','','229,0,1271,1001','0,22,1500,979','0,51,1500,950','0,180,1500,821','0,1,1500,1000','0,79,1500,922','216,0,1284,1001','0,1,1500,1000','216,0,1284,1001','2015-03-03 13:01:18',3),(39,'dott_10','uploaded_images/069_tHI07j1.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 13:16:26',NULL),(40,'italiana_7','uploaded_images/062_BmVDn1K.JPG','','297,0,1647,1296','0,27,1944,1269','0,65,1944,1231','0,233,1944,1063','0,0,1944,1296','0,102,1944,1194','281,0,1663,1296','0,0,1944,1296','281,0,1663,1296','2015-03-03 13:18:49',3),(41,'Italiana_8','uploaded_images/066_g8Pc8wX.JPG','','298,0,1648,1296','0,26,1944,1267','0,65,1944,1231','0,233,1944,1064','0,0,1944,1296','0,101,1944,1194','280,0,1662,1296','0,0,1944,1296','280,0,1662,1296','2015-03-03 13:19:29',3);
/*!40000 ALTER TABLE `sito_immagini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sito_post`
--

DROP TABLE IF EXISTS `sito_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sito_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(100) DEFAULT NULL,
  `titolo_menu` varchar(100) DEFAULT NULL,
  `body` longtext,
  `image` varchar(100) DEFAULT NULL,
  `miniatura` varchar(255) NOT NULL,
  `cropping` varchar(255) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sito_post`
--

LOCK TABLES `sito_post` WRITE;
/*!40000 ALTER TABLE `sito_post` DISABLE KEYS */;
INSERT INTO `sito_post` VALUES (1,'attrezzi','','','','','','2014-10-27 08:34:22'),(2,'dottori','dottori','','uploaded_images/Dr_Spezia-_Dr_Casali_yNvPPh0.JPG','0,102,1944,1194','0,101,1944,1195','2015-03-03 11:01:54'),(3,'scelta italiana','scelta italiana','','','','','2015-03-03 12:45:00');
/*!40000 ALTER TABLE `sito_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sito_post_galleria`
--

DROP TABLE IF EXISTS `sito_post_galleria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sito_post_galleria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `galleria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`,`galleria_id`),
  KEY `sito_post_galleria_f3aa1999` (`post_id`),
  KEY `sito_post_galleria_2f03872c` (`galleria_id`),
  CONSTRAINT `sito_post_galleria_post_id_24b130d60d9cefe_fk_sito_post_id` FOREIGN KEY (`post_id`) REFERENCES `sito_post` (`id`),
  CONSTRAINT `sito_post_galle_galleria_id_7aa331c72f6d6397_fk_sito_galleria_id` FOREIGN KEY (`galleria_id`) REFERENCES `sito_galleria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sito_post_galleria`
--

LOCK TABLES `sito_post_galleria` WRITE;
/*!40000 ALTER TABLE `sito_post_galleria` DISABLE KEYS */;
/*!40000 ALTER TABLE `sito_post_galleria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 17:54:45
