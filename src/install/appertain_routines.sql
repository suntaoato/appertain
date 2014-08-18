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
-- Temporary table structure for view `vwAvailableTeams`
--

DROP TABLE IF EXISTS `vwAvailableTeams`;
/*!50001 DROP VIEW IF EXISTS `vwAvailableTeams`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwAvailableTeams` (
  `team_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `max_seats` tinyint NOT NULL,
  `open_seats` tinyint NOT NULL
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
-- Temporary table structure for view `vwEvents`
--

DROP TABLE IF EXISTS `vwEvents`;
/*!50001 DROP VIEW IF EXISTS `vwEvents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwEvents` (
  `event_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `size` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwApprovedApplications`
--

DROP TABLE IF EXISTS `vwApprovedApplications`;
/*!50001 DROP VIEW IF EXISTS `vwApprovedApplications`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwApprovedApplications` (
  `application_id` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `approval` tinyint NOT NULL,
  `profile_id` tinyint NOT NULL
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
  `user_id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `password` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwProfiles`
--

DROP TABLE IF EXISTS `vwProfiles`;
/*!50001 DROP VIEW IF EXISTS `vwProfiles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwProfiles` (
  `profile_id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `handle` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `logo` tinyint NOT NULL,
  `status` tinyint NOT NULL
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
-- Temporary table structure for view `vwEnabledProfiles`
--

DROP TABLE IF EXISTS `vwEnabledProfiles`;
/*!50001 DROP VIEW IF EXISTS `vwEnabledProfiles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwEnabledProfiles` (
  `profile_id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `handle` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `logo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwDisabledEvents`
--

DROP TABLE IF EXISTS `vwDisabledEvents`;
/*!50001 DROP VIEW IF EXISTS `vwDisabledEvents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwDisabledEvents` (
  `event_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `size` tinyint NOT NULL
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
  `profile_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `handle` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `logo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwTeams`
--

DROP TABLE IF EXISTS `vwTeams`;
/*!50001 DROP VIEW IF EXISTS `vwTeams`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwTeams` (
  `team_id` tinyint NOT NULL,
  `team_name` tinyint NOT NULL,
  `team_size` tinyint NOT NULL,
  `logo` tinyint NOT NULL,
  `event_id` tinyint NOT NULL,
  `event_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwTeamMemberCount`
--

DROP TABLE IF EXISTS `vwTeamMemberCount`;
/*!50001 DROP VIEW IF EXISTS `vwTeamMemberCount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwTeamMemberCount` (
  `team_id` tinyint NOT NULL,
  `team_size` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwEnabledEvents`
--

DROP TABLE IF EXISTS `vwEnabledEvents`;
/*!50001 DROP VIEW IF EXISTS `vwEnabledEvents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vwEnabledEvents` (
  `event_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `size` tinyint NOT NULL
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
  `application_id` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `rating` tinyint NOT NULL,
  `approval` tinyint NOT NULL,
  `profile_id` tinyint NOT NULL
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
  `skill_id` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vwAvailableTeams`
--

/*!50001 DROP TABLE IF EXISTS `vwAvailableTeams`*/;
/*!50001 DROP VIEW IF EXISTS `vwAvailableTeams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwAvailableTeams` AS select `t`.`id` AS `team_id`,`t`.`name` AS `name`,`t`.`size` AS `max_seats`,(`t`.`size` - `tp`.`team_size`) AS `open_seats` from (((`teams` `t` join `vwTeamMemberCount` `tp` on((`t`.`id` = `tp`.`team_id`))) join `event_teams` `et` on((`t`.`id` = `et`.`team_id`))) join `vwEnabledEvents` `e` on((`et`.`event_id` = `e`.`event_id`))) where (`t`.`size` > `tp`.`team_size`) */;
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
-- Final view structure for view `vwEvents`
--

/*!50001 DROP TABLE IF EXISTS `vwEvents`*/;
/*!50001 DROP VIEW IF EXISTS `vwEvents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwEvents` AS select `e`.`id` AS `event_id`,`e`.`name` AS `name`,`e`.`size` AS `size`,`s`.`description` AS `status` from (`events` `e` join `status` `s` on((`e`.`status_id` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!50001 VIEW `vwApprovedApplications` AS select `a`.`id` AS `application_id`,`a`.`description` AS `description`,`a`.`rating` AS `rating`,`ap`.`description` AS `approval`,`a`.`profile_id` AS `profile_id` from (((`applications` `a` join `profiles` `p` on((`a`.`profile_id` = `p`.`id`))) join `users` `u` on((`p`.`user_id` = `u`.`id`))) join `approval` `ap`) where ((`a`.`approval_id` = `ap`.`id`) and (`a`.`approval_id` = 1) and (`u`.`status_id` = 1)) */;
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
/*!50001 VIEW `vwEnabledUsers` AS select `u`.`id` AS `user_id`,`u`.`username` AS `username`,`u`.`password` AS `password` from `users` `u` where (`u`.`status_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwProfiles`
--

/*!50001 DROP TABLE IF EXISTS `vwProfiles`*/;
/*!50001 DROP VIEW IF EXISTS `vwProfiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwProfiles` AS select `p`.`id` AS `profile_id`,`p`.`user_id` AS `user_id`,`p`.`name` AS `name`,`p`.`handle` AS `handle`,`p`.`email` AS `email`,`p`.`title` AS `title`,`c`.`path` AS `logo`,`s`.`description` AS `status` from ((((`profiles` `p` join `users` `u` on((`p`.`user_id` = `u`.`id`))) join `status` `s` on((`u`.`status_id` = `s`.`id`))) join `profile_content` `pc` on((`p`.`id` = `pc`.`profile_id`))) join `content` `c` on((`c`.`id` = `pc`.`content_id`))) */;
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
/*!50001 VIEW `vwEnabledProfiles` AS select `p`.`id` AS `profile_id`,`u`.`id` AS `user_id`,`p`.`name` AS `name`,`p`.`handle` AS `handle`,`p`.`email` AS `email`,`p`.`title` AS `title`,`c`.`path` AS `logo` from (((`users` `u` join `profiles` `p` on((`p`.`user_id` = `u`.`id`))) join `profile_content` `pc` on((`p`.`id` = `pc`.`profile_id`))) join `content` `c` on((`c`.`id` = `pc`.`content_id`))) where (`u`.`status_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwDisabledEvents`
--

/*!50001 DROP TABLE IF EXISTS `vwDisabledEvents`*/;
/*!50001 DROP VIEW IF EXISTS `vwDisabledEvents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwDisabledEvents` AS select `e`.`id` AS `event_id`,`e`.`name` AS `name`,`e`.`size` AS `size` from `events` `e` where (`e`.`status_id` = 0) */;
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
/*!50001 VIEW `vwDisabledProfiles` AS select `u`.`id` AS `user_id`,`p`.`id` AS `profile_id`,`p`.`name` AS `name`,`p`.`handle` AS `handle`,`p`.`email` AS `email`,`p`.`title` AS `title`,`c`.`path` AS `logo` from (((`users` `u` join `profiles` `p` on((`p`.`user_id` = `u`.`id`))) join `profile_content` `pc` on((`p`.`id` = `pc`.`profile_id`))) join `content` `c` on((`c`.`id` = `pc`.`content_id`))) where (`u`.`status_id` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwTeams`
--

/*!50001 DROP TABLE IF EXISTS `vwTeams`*/;
/*!50001 DROP VIEW IF EXISTS `vwTeams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwTeams` AS select `t`.`id` AS `team_id`,`t`.`name` AS `team_name`,`t`.`size` AS `team_size`,`c`.`path` AS `logo`,`e`.`id` AS `event_id`,`e`.`name` AS `event_name` from ((((`teams` `t` join `event_teams` `et` on((`t`.`id` = `et`.`team_id`))) join `events` `e` on((`et`.`event_id` = `e`.`id`))) join `team_content` `tc` on((`t`.`id` = `tc`.`team_id`))) join `content` `c` on((`tc`.`content_id` = `c`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwTeamMemberCount`
--

/*!50001 DROP TABLE IF EXISTS `vwTeamMemberCount`*/;
/*!50001 DROP VIEW IF EXISTS `vwTeamMemberCount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwTeamMemberCount` AS select `tp`.`team_id` AS `team_id`,count(`tp`.`profile_id`) AS `team_size` from `team_profiles` `tp` group by `tp`.`team_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwEnabledEvents`
--

/*!50001 DROP TABLE IF EXISTS `vwEnabledEvents`*/;
/*!50001 DROP VIEW IF EXISTS `vwEnabledEvents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwEnabledEvents` AS select `e`.`id` AS `event_id`,`e`.`name` AS `name`,`e`.`size` AS `size` from `events` `e` where (`e`.`status_id` = 1) */;
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
/*!50001 VIEW `vwUnapprovedApplications` AS select `a`.`id` AS `application_id`,`a`.`description` AS `description`,`a`.`rating` AS `rating`,`ap`.`description` AS `approval`,`a`.`profile_id` AS `profile_id` from (((`applications` `a` join `profiles` `p` on((`a`.`profile_id` = `p`.`id`))) join `users` `u` on((`p`.`user_id` = `u`.`id`))) join `approval` `ap`) where ((`a`.`approval_id` = `ap`.`id`) and (`a`.`approval_id` in (0,2)) and (`u`.`status_id` = 1)) */;
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
/*!50001 VIEW `vwSkills` AS select `s`.`id` AS `skill_id`,`s`.`name` AS `name` from `skills` `s` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'appertain'
--
/*!50003 DROP PROCEDURE IF EXISTS `spExportEnabledProfiles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spExportEnabledProfiles`()
BEGIN
  SET @query = "SELECT * FROM vwEnabledProfiles";
  call spExportToFile(@query, "/tmp/EnabledProfiles", "	");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spExportToFile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spExportToFile`(IN select_query TEXT, IN filepath VARCHAR(45), IN delimchar VARCHAR(1))
BEGIN
  SET @timestamp = DATE_FORMAT(NOW(),'_%Y_%m_%d_%H_%i_%s');
  SET @CMD = CONCAT(select_query, " INTO OUTFILE '", filepath, @timestamp, "' FIELDS ENCLOSED BY '\"' TERMINATED BY '", 
		delimchar, "' ESCAPED BY '\"' LINES TERMINATED BY '\r\n';");
  PREPARE statement FROM @CMD;
  EXECUTE statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spNewApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewApplication`( IN username VARCHAR(60),
						IN password VARCHAR(150),
						IN fullname VARCHAR(45),
						IN handle VARCHAR(45),
						IN email VARCHAR(45),
						IN contentpath VARCHAR(100),
						IN title VARCHAR(45),
						IN skills TEXT,
						IN eventlist TEXT,
						IN description VARCHAR(300),
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
  INSERT INTO profiles(name, handle, email, user_id, title) VALUES(fullname, handle, email, userid, title);
  SET profileid = LAST_INSERT_ID();
  INSERT INTO content(path, type) VALUES(contentpath, 1);
  INSERT INTO profile_content(profile_id, content_id) VALUES(profileid, LAST_INSERT_ID());
  CALL spSetSkills(profileid, skills);
  INSERT INTO applications(description, rating, approval_id, profile_id) VALUES(description, 0, 0, profileid);
  CALL spSetApplicationEvents(LAST_INSERT_ID(), eventlist);
  SET result = userid;
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spNewProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewProfile`(IN username VARCHAR(60),
						IN password VARCHAR(150),
						IN fullname VARCHAR(45),
						IN handle VARCHAR(45),
						IN email VARCHAR(45),
						IN contentpath VARCHAR(100),
						IN title VARCHAR(45),
						IN skills TEXT,
						OUT result INT)
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
  INSERT INTO profiles(name, handle, email, user_id, title) VALUES(fullname, handle, email, userid, title);
  SET profileid = LAST_INSERT_ID();
  INSERT INTO content(path, type) VALUES(contentpath, 1);
  INSERT INTO profile_content(profile_id, content_id) VALUES(profileid, LAST_INSERT_ID());
  CALL spSetSkills(profileid, skills);
  SET result = userid;
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spNewTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spNewTeam`(IN profileid INT,
														IN teamname VARCHAR(45),
														IN teamsize TINYINT(4),
														IN teamlogo VARCHAR(100),
	                                                    IN eventlist TEXT,
														OUT result INT)
BEGIN
  DECLARE teamid INT;
  DECLARE exit handler for sqlexception
  BEGIN
    SET result = 0;
    ROLLBACK;
  END;
  START TRANSACTION;
  INSERT INTO teams(name, size) VALUES(teamname, teamsize);
  SET teamid = LAST_INSERT_ID();
  INSERT INTO team_profiles(team_id, profile_id) VALUES(teamid, profileid);
  INSERT INTO content(path, type) VALUES(teamlogo, 2);
  INSERT INTO team_content(team_id, content_id) VALUES(teamid, LAST_INSERT_ID());
  CALL spSetTeamEvents(teamid, eventlist);
  SET result = teamid;
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetApplicationEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetApplicationEvents`(IN applicationid INT, IN eventlist TEXT)
BEGIN
  DECLARE eventid text;
  DELETE FROM application_event WHERE application_id = applicationid;
  WHILE eventlist != '' DO
    SET eventid = SUBSTRING_INDEX(eventlist, '|', 1);
    INSERT INTO application_event(application_id, event_id) VALUES(applicationid, eventid);
    SET eventlist = SUBSTRING(eventlist, CHAR_LENGTH(eventid) + 2);
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetPassword`(IN userid INT, IN password VARCHAR(150))
BEGIN
  UPDATE users u SET u.password = password WHERE u.id = userid;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetSkills`(IN profileid INT, IN skills TEXT)
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
/*!50003 DROP PROCEDURE IF EXISTS `spSetTeamEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetTeamEvents`(IN teamid INT, IN eventlist TEXT)
BEGIN
  DECLARE eventid text;
  DELETE FROM event_teams WHERE team_id = teamid;
  WHILE eventlist != '' DO
    SET eventid = SUBSTRING_INDEX(eventlist, '|', 1);
    INSERT INTO event_teams(team_id, event_id) VALUES(teamid, eventid);
    SET eventlist = SUBSTRING(eventlist, CHAR_LENGTH(eventid) + 2);
  END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-18 20:12:08
