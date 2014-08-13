CREATE DATABASE  IF NOT EXISTS `appertain` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `appertain`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: appertain
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `account_status`
--

DROP TABLE IF EXISTS `account_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_status` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_status`
--

LOCK TABLES `account_status` WRITE;
/*!40000 ALTER TABLE `account_status` DISABLE KEYS */;
INSERT INTO `account_status` VALUES (0,'Disabled'),(1,'Enabled');
/*!40000 ALTER TABLE `account_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  `approval_id` tinyint(4) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_applications_1_idx` (`profile_id`),
  CONSTRAINT `fk_applications_1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'i like anime',0,0,2),(2,'i like games',0,1,3),(3,'i dont like games or anime',0,2,4),(4,'i like stuff',0,0,5),(5,'i like anything',0,1,5);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval`
--

DROP TABLE IF EXISTS `approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;
/*!40000 ALTER TABLE `approval` DISABLE KEYS */;
INSERT INTO `approval` VALUES (0,'Pending'),(1,'Approved'),(2,'Declined');
/*!40000 ALTER TABLE `approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_content_2_idx` (`type`),
  CONSTRAINT `fk_content_1` FOREIGN KEY (`type`) REFERENCES `content_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'1.jpg',2),(2,'2.jpg',2),(3,'3.jpg',2),(4,'4.jpg',1),(5,'5.jpg',1),(6,'6.jpg',1),(7,'7.jpg',1),(8,'8.jpg',1);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_types`
--

LOCK TABLES `content_types` WRITE;
/*!40000 ALTER TABLE `content_types` DISABLE KEYS */;
INSERT INTO `content_types` VALUES (1,'Profile Logo'),(2,'Team Logo'),(3,'Picture'),(4,'Movie');
/*!40000 ALTER TABLE `content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_content`
--

DROP TABLE IF EXISTS `profile_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_content` (
  `profile_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  KEY `index1` (`profile_id`),
  KEY `fk_profile_content_2_idx` (`content_id`),
  CONSTRAINT `fk_profile_content_1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profile_content_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_content`
--

LOCK TABLES `profile_content` WRITE;
/*!40000 ALTER TABLE `profile_content` DISABLE KEYS */;
INSERT INTO `profile_content` VALUES (1,4),(2,5),(3,6),(4,7),(5,8);
/*!40000 ALTER TABLE `profile_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_skills`
--

DROP TABLE IF EXISTS `profile_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_skills` (
  `profile_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  KEY `index1` (`profile_id`),
  KEY `fk_profile_skills_2_idx` (`skill_id`),
  CONSTRAINT `fk_profile_skills_1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profile_skills_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_skills`
--

LOCK TABLES `profile_skills` WRITE;
/*!40000 ALTER TABLE `profile_skills` DISABLE KEYS */;
INSERT INTO `profile_skills` VALUES (1,1),(3,1),(4,1),(5,1),(2,2),(2,3);
/*!40000 ALTER TABLE `profile_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_profile_1_idx` (`user_id`),
  CONSTRAINT `fk_profile_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Kayaba Akihiko','GM','gm@sao.com',1),(2,'Howard','Howie','howie@sweating.com',2),(3,'Roux','Angry Guy','roux@awesomeness.com',3),(4,'dude1','dude','dude@dude.com',4),(5,'dude2','dudett','dude2@dude.com',5);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_members`
--

DROP TABLE IF EXISTS `project_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_members` (
  `project_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `fk_project_members_2_idx` (`applicant_id`),
  CONSTRAINT `fk_project_members_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_project_members_2` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_members`
--

LOCK TABLES `project_members` WRITE;
/*!40000 ALTER TABLE `project_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Programming'),(2,'Scripting'),(3,'Level Design'),(4,'Gameplay'),(5,'Animation'),(6,'Illustration'),(7,'Modeling'),(8,'Mechanics'),(9,'Content Design'),(10,'Sound Design'),(11,'Marketing'),(12,'Artificial Intelligence'),(13,'Computer Gaming'),(14,'Video Gaming'),(15,'Mobile Gaming'),(16,'Network'),(17,'Graphics Design'),(18,'Interactive Design'),(19,'Rapid Prototyping'),(20,'Social Gaming');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_content`
--

DROP TABLE IF EXISTS `team_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_content` (
  `team_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  KEY `index1` (`team_id`),
  KEY `fk_team_content_2_idx` (`content_id`),
  CONSTRAINT `fk_team_content_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_content_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_content`
--

LOCK TABLES `team_content` WRITE;
/*!40000 ALTER TABLE `team_content` DISABLE KEYS */;
INSERT INTO `team_content` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `team_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_profiles`
--

DROP TABLE IF EXISTS `team_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_profiles` (
  `team_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  KEY `index1` (`team_id`),
  KEY `fk_team_profiles_2_idx` (`profile_id`),
  CONSTRAINT `fk_team_profiles_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_profiles_2` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_profiles`
--

LOCK TABLES `team_profiles` WRITE;
/*!40000 ALTER TABLE `team_profiles` DISABLE KEYS */;
INSERT INTO `team_profiles` VALUES (1,2),(1,3),(2,4),(2,5);
/*!40000 ALTER TABLE `team_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `size` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Team A',2),(2,'Team B',3),(3,'Team C',4);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_users_1` (`status`),
  CONSTRAINT `fk_users_1` FOREIGN KEY (`status`) REFERENCES `account_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','',1),(2,'howie@sweating.com','',1),(3,'roux@awesomeness.com','',1),(4,'dude@dude.com','',1),(5,'dude2@dude.com','',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vwApprovedApplications`
--

DROP TABLE IF EXISTS `vwApprovedApplications`;
/*!50001 DROP VIEW IF EXISTS `vwApprovedApplications`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwApprovedApplications` (
  `id` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `approval` tinyint NOT NULL,
  `profile_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwContentTypes`
--

DROP TABLE IF EXISTS `vwContentTypes`;
/*!50001 DROP VIEW IF EXISTS `vwContentTypes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwContentTypes` (
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwDisabledProfiles`
--

DROP TABLE IF EXISTS `vwDisabledProfiles`;
/*!50001 DROP VIEW IF EXISTS `vwDisabledProfiles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwDisabledProfiles` (
  `user_id` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `handle` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwEnabledProfiles`
--

DROP TABLE IF EXISTS `vwEnabledProfiles`;
/*!50001 DROP VIEW IF EXISTS `vwEnabledProfiles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwEnabledProfiles` (
  `id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `handle` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `path` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwEnabledUsers`
--

DROP TABLE IF EXISTS `vwEnabledUsers`;
/*!50001 DROP VIEW IF EXISTS `vwEnabledUsers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwEnabledUsers` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwProfileSkills`
--

DROP TABLE IF EXISTS `vwProfileSkills`;
/*!50001 DROP VIEW IF EXISTS `vwProfileSkills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwProfileSkills` (
  `profile_id` tinyint NOT NULL,
  `skill_id` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwSkills`
--

DROP TABLE IF EXISTS `vwSkills`;
/*!50001 DROP VIEW IF EXISTS `vwSkills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwSkills` (
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwUnapprovedApplications`
--

DROP TABLE IF EXISTS `vwUnapprovedApplications`;
/*!50001 DROP VIEW IF EXISTS `vwUnapprovedApplications`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwUnapprovedApplications` (
  `id` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `approval` tinyint NOT NULL,
  `profile_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'appertain'
--
/*!50003 DROP PROCEDURE IF EXISTS `spRegister` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRegister`( IN username VARCHAR(60),
						IN password VARCHAR(45),
						IN fullname VARCHAR(45),
						IN handle VARCHAR(45),
						IN email VARCHAR(45),
						IN contentpath VARCHAR(100),
						IN skills TEXT,
						OUT result INT
					)
BEGIN
  DECLARE count INT;
  DECLARE skillid TEXT;
  DECLARE userid INT;
  DECLARE profileid INT;
  DECLARE exit handler for sqlexception
  BEGIN
    SET result = 0;
    ROLLBACK;
  END;
  START TRANSACTION;
  INSERT INTO users(username, password, status) VALUES(username, password, 1);
  SET userid = LAST_INSERT_ID();
  INSERT INTO profiles(name, handle, email, user_id) VALUES(fullname, handle, email, userid);
  SET profileid = LAST_INSERT_ID();
  INSERT INTO content(path, type) VALUES(contentpath, 1);
  INSERT INTO profile_content(profile_id, content_id) VALUES(profileid, LAST_INSERT_ID());
  call spSetSkills(profileid, skills);
  COMMIT;
  SET result = userid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetSkills`(in profileid int, IN skills TEXT)
BEGIN
  DECLARE skillid text;
  DELETE FROM profile_skills WHERE profile_id = profileid;
  WHILE skills != '' DO
    SET skillid = SUBSTRING_INDEX(skills, '|', 1);
    INSERT INTO profile_skills(profile_id, skill_id) VALUES(profileid, skillid);
    SET skills = SUBSTRING(skills, CHAR_LENGTH(skillid) + 2);
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vwApprovedApplications`
--

/*!50001 DROP TABLE IF EXISTS `vwApprovedApplications`*/;
/*!50001 DROP VIEW IF EXISTS `vwApprovedApplications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwApprovedApplications` AS select `a`.`id` AS `id`,`a`.`description` AS `description`,`a`.`rating` AS `rating`,`ap`.`description` AS `approval`,`a`.`profile_id` AS `profile_id` from (((`applications` `a` join `profiles` `p` on((`a`.`profile_id` = `p`.`id`))) join `users` `u` on((`p`.`user_id` = `u`.`id`))) join `approval` `ap`) where ((`a`.`approval_id` = `ap`.`id`) and (`a`.`approval_id` = 1) and (`u`.`status` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwContentTypes`
--

/*!50001 DROP TABLE IF EXISTS `vwContentTypes`*/;
/*!50001 DROP VIEW IF EXISTS `vwContentTypes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwContentTypes` AS select `ct`.`id` AS `id`,`ct`.`name` AS `name` from `content_types` `ct` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwDisabledProfiles`
--

/*!50001 DROP TABLE IF EXISTS `vwDisabledProfiles`*/;
/*!50001 DROP VIEW IF EXISTS `vwDisabledProfiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwDisabledProfiles` AS select `u`.`id` AS `user_id`,`p`.`id` AS `id`,`p`.`name` AS `name`,`p`.`handle` AS `handle`,`p`.`email` AS `email`,`c`.`path` AS `path` from (((`users` `u` join `profiles` `p` on((`p`.`user_id` = `u`.`id`))) join `profile_content` `pc` on((`p`.`id` = `pc`.`profile_id`))) join `content` `c` on((`c`.`id` = `pc`.`content_id`))) where (`u`.`status` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwEnabledProfiles`
--

/*!50001 DROP TABLE IF EXISTS `vwEnabledProfiles`*/;
/*!50001 DROP VIEW IF EXISTS `vwEnabledProfiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwEnabledProfiles` AS select `p`.`id` AS `id`,`u`.`id` AS `user_id`,`p`.`name` AS `name`,`p`.`handle` AS `handle`,`p`.`email` AS `email`,`c`.`path` AS `path` from (((`users` `u` join `profiles` `p` on((`p`.`user_id` = `u`.`id`))) join `profile_content` `pc` on((`p`.`id` = `pc`.`profile_id`))) join `content` `c` on((`c`.`id` = `pc`.`content_id`))) where (`u`.`status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwEnabledUsers`
--

/*!50001 DROP TABLE IF EXISTS `vwEnabledUsers`*/;
/*!50001 DROP VIEW IF EXISTS `vwEnabledUsers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwEnabledUsers` AS select `u`.`id` AS `id`,`u`.`username` AS `username`,`u`.`password` AS `password` from `users` `u` where (`u`.`status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwProfileSkills`
--

/*!50001 DROP TABLE IF EXISTS `vwProfileSkills`*/;
/*!50001 DROP VIEW IF EXISTS `vwProfileSkills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwProfileSkills` AS select `p`.`id` AS `profile_id`,`s`.`id` AS `skill_id`,`s`.`name` AS `name` from ((`profiles` `p` join `profile_skills` `ps`) join `skills` `s`) where ((`p`.`id` = `ps`.`profile_id`) and (`s`.`id` = `ps`.`skill_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwSkills`
--

/*!50001 DROP TABLE IF EXISTS `vwSkills`*/;
/*!50001 DROP VIEW IF EXISTS `vwSkills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwSkills` AS select `s`.`id` AS `id`,`s`.`name` AS `name` from `skills` `s` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwUnapprovedApplications`
--

/*!50001 DROP TABLE IF EXISTS `vwUnapprovedApplications`*/;
/*!50001 DROP VIEW IF EXISTS `vwUnapprovedApplications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwUnapprovedApplications` AS select `a`.`id` AS `id`,`a`.`description` AS `description`,`a`.`rating` AS `rating`,`ap`.`description` AS `approval`,`a`.`profile_id` AS `profile_id` from (((`applications` `a` join `profiles` `p` on((`a`.`profile_id` = `p`.`id`))) join `users` `u` on((`p`.`user_id` = `u`.`id`))) join `approval` `ap`) where ((`a`.`approval_id` = `ap`.`id`) and (`a`.`approval_id` in (0,2)) and (`u`.`status` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-13 18:57:27
