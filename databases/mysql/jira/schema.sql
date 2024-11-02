-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: jira
-- ------------------------------------------------------
-- Server version	5.6.47

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
-- Table structure for table `AO_0AC321_RECOMMENDATION_AO`
--

DROP TABLE IF EXISTS `AO_0AC321_RECOMMENDATION_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_0AC321_RECOMMENDATION_AO` (
  `CATEGORY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_FIELD_ID` bigint(20) DEFAULT NULL,
  `ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PERFORMANCE_IMPACT` double DEFAULT NULL,
  `PROJECT_IDS` longtext COLLATE utf8_bin,
  `RESOLVED` tinyint(1) DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_21D670_WHITELIST_RULES`
--

DROP TABLE IF EXISTS `AO_21D670_WHITELIST_RULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21D670_WHITELIST_RULES` (
  `ALLOWINBOUND` tinyint(1) DEFAULT NULL,
  `EXPRESSION` longtext COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_21F425_MESSAGE_AO`
--

DROP TABLE IF EXISTS `AO_21F425_MESSAGE_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_MESSAGE_AO` (
  `CONTENT` longtext COLLATE utf8_bin NOT NULL,
  `ID` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_21F425_MESSAGE_MAPPING_AO`
--

DROP TABLE IF EXISTS `AO_21F425_MESSAGE_MAPPING_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_MESSAGE_MAPPING_AO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `USER_HASH` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_21f425_mes223897723` (`USER_HASH`),
  KEY `index_ao_21f425_mes1965715920` (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_21F425_USER_PROPERTY_AO`
--

DROP TABLE IF EXISTS `AO_21F425_USER_PROPERTY_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_21F425_USER_PROPERTY_AO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  `USER` varchar(255) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_21f425_use1458667739` (`USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_38321B_CUSTOM_CONTENT_LINK`
--

DROP TABLE IF EXISTS `AO_38321B_CUSTOM_CONTENT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_38321B_CUSTOM_CONTENT_LINK` (
  `CONTENT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LINK_LABEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LINK_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `index_ao_38321b_cus1828044926` (`CONTENT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_3B1893_LOOP_DETECTION`
--

DROP TABLE IF EXISTS `AO_3B1893_LOOP_DETECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_3B1893_LOOP_DETECTION` (
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `EXPIRES_AT` bigint(20) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SENDER_EMAIL` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_4789DD_HEALTH_CHECK_STATUS`
--

DROP TABLE IF EXISTS `AO_4789DD_HEALTH_CHECK_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_HEALTH_CHECK_STATUS` (
  `APPLICATION_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COMPLETE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FAILED_DATE` datetime DEFAULT NULL,
  `FAILURE_REASON` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IS_HEALTHY` tinyint(1) DEFAULT NULL,
  `IS_RESOLVED` tinyint(1) DEFAULT NULL,
  `RESOLVED_DATE` datetime DEFAULT NULL,
  `SEVERITY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_4789DD_PROPERTIES`
--

DROP TABLE IF EXISTS `AO_4789DD_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_PROPERTIES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROPERTY_VALUE` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_4789DD_READ_NOTIFICATIONS`
--

DROP TABLE IF EXISTS `AO_4789DD_READ_NOTIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_READ_NOTIFICATIONS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IS_SNOOZED` tinyint(1) DEFAULT NULL,
  `NOTIFICATION_ID` int(11) NOT NULL,
  `SNOOZE_COUNT` int(11) DEFAULT NULL,
  `SNOOZE_DATE` datetime DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_4789DD_TASK_MONITOR`
--

DROP TABLE IF EXISTS `AO_4789DD_TASK_MONITOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4789DD_TASK_MONITOR` (
  `CLUSTERED_TASK_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NODE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROGRESS_MESSAGE` longtext COLLATE utf8_bin,
  `PROGRESS_PERCENTAGE` int(11) DEFAULT NULL,
  `SERIALIZED_ERRORS` longtext COLLATE utf8_bin,
  `SERIALIZED_WARNINGS` longtext COLLATE utf8_bin,
  `TASK_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_MONITOR_KIND` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_STATUS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_4789DD_TASK_MO1827547914` (`TASK_ID`),
  KEY `index_ao_4789dd_tas42846517` (`TASK_MONITOR_KIND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_4AEACD_WEBHOOK_DAO`
--

DROP TABLE IF EXISTS `AO_4AEACD_WEBHOOK_DAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_4AEACD_WEBHOOK_DAO` (
  `ENABLED` tinyint(1) DEFAULT NULL,
  `ENCODED_EVENTS` longtext COLLATE utf8_bin,
  `FILTER` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JQL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME` longtext COLLATE utf8_bin NOT NULL,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8_bin NOT NULL,
  `URL` longtext COLLATE utf8_bin NOT NULL,
  `PARAMETERS` longtext COLLATE utf8_bin,
  `EXCLUDE_ISSUE_DETAILS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_550953_SHORTCUT`
--

DROP TABLE IF EXISTS `AO_550953_SHORTCUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_550953_SHORTCUT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_ID` bigint(20) DEFAULT NULL,
  `SHORTCUT_URL` longtext COLLATE utf8_bin,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_550953_sho1778115994` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_563AEE_ACTIVITY_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTIVITY_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTIVITY_ENTITY` (
  `ACTIVITY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACTOR_ID` int(11) DEFAULT NULL,
  `CONTENT` longtext COLLATE utf8_bin,
  `GENERATOR_DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GENERATOR_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` int(11) DEFAULT NULL,
  `POSTER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLISHED` datetime DEFAULT NULL,
  `TARGET_ID` int(11) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VERB` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTIVITY_ID`),
  KEY `index_ao_563aee_act972488439` (`ICON_ID`),
  KEY `index_ao_563aee_act995325379` (`ACTOR_ID`),
  KEY `index_ao_563aee_act1642652291` (`OBJECT_ID`),
  KEY `index_ao_563aee_act1978295567` (`TARGET_ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_actor_id` FOREIGN KEY (`ACTOR_ID`) REFERENCES `AO_563AEE_ACTOR_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_icon_id` FOREIGN KEY (`ICON_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_object_id` FOREIGN KEY (`OBJECT_ID`) REFERENCES `AO_563AEE_OBJECT_ENTITY` (`ID`),
  CONSTRAINT `fk_ao_563aee_activity_entity_target_id` FOREIGN KEY (`TARGET_ID`) REFERENCES `AO_563AEE_TARGET_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_563AEE_ACTOR_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_ACTOR_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_ACTOR_ENTITY` (
  `FULL_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFILE_PAGE_URI` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `PROFILE_PICTURE_URI` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_563AEE_MEDIA_LINK_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_MEDIA_LINK_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_MEDIA_LINK_ENTITY` (
  `DURATION` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_563AEE_OBJECT_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_OBJECT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_OBJECT_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_obj696886343` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_object_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_563AEE_TARGET_ENTITY`
--

DROP TABLE IF EXISTS `AO_563AEE_TARGET_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_563AEE_TARGET_ENTITY` (
  `CONTENT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `OBJECT_ID` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(450) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_563aee_tar521440921` (`IMAGE_ID`),
  CONSTRAINT `fk_ao_563aee_target_entity_image_id` FOREIGN KEY (`IMAGE_ID`) REFERENCES `AO_563AEE_MEDIA_LINK_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_587B34_GLANCE_CONFIG`
--

DROP TABLE IF EXISTS `AO_587B34_GLANCE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_587B34_GLANCE_CONFIG` (
  `ROOM_ID` bigint(20) NOT NULL DEFAULT '0',
  `STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYNC_NEEDED` tinyint(1) DEFAULT NULL,
  `APPLICATION_USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JQL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_587B34_PROJECT_CONFIG`
--

DROP TABLE IF EXISTS `AO_587B34_PROJECT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_587B34_PROJECT_CONFIG` (
  `CONFIGURATION_GROUP_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_UNIQUE_CONSTRAINT` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROJECT_ID` bigint(20) NOT NULL DEFAULT '0',
  `ROOM_ID` bigint(20) NOT NULL DEFAULT '0',
  `VALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_587B34_PROJECT2070954277` (`NAME_UNIQUE_CONSTRAINT`),
  KEY `index_ao_587b34_pro2093917684` (`PROJECT_ID`),
  KEY `index_ao_587b34_pro193829489` (`CONFIGURATION_GROUP_ID`),
  KEY `index_ao_587b34_pro1732672724` (`ROOM_ID`),
  KEY `index_ao_587b34_pro2115480362` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_LINK`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_LINK` (
  `ADDON_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `API_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONNECT_DESCRIPTOR` longtext COLLATE utf8_bin,
  `GROUP_ID` int(11) DEFAULT '0',
  `GROUP_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OAUTH_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SECRET_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_PASSWORD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_TOKEN_EXPIRY` datetime DEFAULT NULL,
  `SYSTEM_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SYSTEM_USER_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_5FB9D7_AOHIP_CHAT_USER`
--

DROP TABLE IF EXISTS `AO_5FB9D7_AOHIP_CHAT_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_5FB9D7_AOHIP_CHAT_USER` (
  `HIP_CHAT_LINK_ID` int(11) DEFAULT NULL,
  `HIP_CHAT_USER_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIP_CHAT_USER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REFRESH_CODE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_SCOPES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_TOKEN_EXPIRY` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `index_ao_5fb9d7_aoh1981563178` (`USER_KEY`),
  KEY `index_ao_5fb9d7_aoh49772492` (`HIP_CHAT_LINK_ID`),
  CONSTRAINT `fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id` FOREIGN KEY (`HIP_CHAT_LINK_ID`) REFERENCES `AO_5FB9D7_AOHIP_CHAT_LINK` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_97EDAB_USERINVITATION`
--

DROP TABLE IF EXISTS `AO_97EDAB_USERINVITATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_97EDAB_USERINVITATION` (
  `APPLICATION_KEYS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXPIRY` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REDEEMED` tinyint(1) DEFAULT NULL,
  `SENDER_USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_A0B856_WEB_HOOK_LISTENER_AO`
--

DROP TABLE IF EXISTS `AO_A0B856_WEB_HOOK_LISTENER_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_A0B856_WEB_HOOK_LISTENER_AO` (
  `DESCRIPTION` longtext COLLATE utf8_bin,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `EVENTS` longtext COLLATE utf8_bin,
  `EXCLUDE_BODY` tinyint(1) DEFAULT NULL,
  `FILTERS` longtext COLLATE utf8_bin,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LAST_UPDATED` datetime NOT NULL,
  `LAST_UPDATED_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` longtext COLLATE utf8_bin NOT NULL,
  `PARAMETERS` longtext COLLATE utf8_bin,
  `REGISTRATION_METHOD` varchar(255) COLLATE utf8_bin NOT NULL,
  `URL` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_B9A0F0_APPLIED_TEMPLATE`
--

DROP TABLE IF EXISTS `AO_B9A0F0_APPLIED_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_B9A0F0_APPLIED_TEMPLATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` bigint(20) DEFAULT '0',
  `PROJECT_TEMPLATE_MODULE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT_TEMPLATE_WEB_ITEM_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_C16815_ALERT_AO`
--

DROP TABLE IF EXISTS `AO_C16815_ALERT_AO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_C16815_ALERT_AO` (
  `CREATED_DATE` bigint(20) DEFAULT '0',
  `DETAILS_JSON` longtext COLLATE utf8_bin,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ISSUE_COMPONENT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_SEVERITY` int(11) DEFAULT '0',
  `NODE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_MODULE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_KEY_VERSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_PLUGIN_VERSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AO_ED669C_SEEN_ASSERTIONS`
--

DROP TABLE IF EXISTS `AO_ED669C_SEEN_ASSERTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AO_ED669C_SEEN_ASSERTIONS` (
  `ASSERTION_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXPIRY_TIMESTAMP` bigint(20) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `U_AO_ED669C_SEEN_AS1055534769` (`ASSERTION_ID`),
  KEY `index_ao_ed669c_see20117222` (`EXPIRY_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `JQUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `CALENDAR` blob,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8_bin NOT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FIRED_TIME` bigint(20) DEFAULT NULL,
  `SCHED_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `STATE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `idx_qrtz_ft_trig_inst_name` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `idx_qrtz_ft_inst_job_req_rcvry` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_ft_j_g` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_t_g` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_ft_tg` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_j_req_recovery` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_j_grp` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_JOB_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_JOB_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_JOB_LISTENERS` (
  `JOB_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_LISTENER` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `JQUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `JQUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `JQUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `INSTANCE_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) DEFAULT NULL,
  `CHECKIN_INTERVAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `REPEAT_COUNT` bigint(20) DEFAULT NULL,
  `REPEAT_INTERVAL` bigint(20) DEFAULT NULL,
  `TIMES_TRIGGERED` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` bigint(20) DEFAULT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(5) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_t_j` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_c` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `idx_qrtz_j_g` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_j_state` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_state` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_g_state` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_next_fire_time` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_nft_st_misfire_grp` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JQUARTZ_TRIGGER_LISTENERS`
--

DROP TABLE IF EXISTS `JQUARTZ_TRIGGER_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JQUARTZ_TRIGGER_LISTENERS` (
  `TRIGGER_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(200) COLLATE utf8_bin NOT NULL,
  `TRIGGER_LISTENER` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TRIGGER_GROUP`,`TRIGGER_LISTENER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OS_CURRENTSTEP`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `wf_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OS_CURRENTSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_CURRENTSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_CURRENTSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OS_HISTORYSTEP`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP` (
  `ID` decimal(18,0) NOT NULL,
  `ENTRY_ID` decimal(18,0) DEFAULT NULL,
  `STEP_ID` decimal(9,0) DEFAULT NULL,
  `ACTION_ID` decimal(9,0) DEFAULT NULL,
  `OWNER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLER` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `historystep_entryid` (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OS_HISTORYSTEP_PREV`
--

DROP TABLE IF EXISTS `OS_HISTORYSTEP_PREV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_HISTORYSTEP_PREV` (
  `ID` decimal(18,0) NOT NULL,
  `PREVIOUS_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OS_WFENTRY`
--

DROP TABLE IF EXISTS `OS_WFENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OS_WFENTRY` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INITIALIZED` decimal(9,0) DEFAULT NULL,
  `STATE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SEQUENCE_VALUE_ITEM`
--

DROP TABLE IF EXISTS `SEQUENCE_VALUE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE_VALUE_ITEM` (
  `SEQ_NAME` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQ_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `ID` decimal(18,0) NOT NULL,
  `user_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_key` (`user_key`),
  UNIQUE KEY `uk_lower_user_name` (`lower_user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_changed_value`
--

DROP TABLE IF EXISTS `audit_changed_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_changed_value` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELTA_FROM` longtext COLLATE utf8_bin,
  `DELTA_TO` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_changed_value_log_id` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_item`
--

DROP TABLE IF EXISTS `audit_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_item` (
  `ID` decimal(18,0) NOT NULL,
  `LOG_ID` decimal(18,0) DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_item_log_id2` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `ID` decimal(18,0) NOT NULL,
  `REMOTE_ADDRESS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `AUTHOR_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJECT_PARENT_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR_TYPE` decimal(9,0) DEFAULT NULL,
  `EVENT_SOURCE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LONG_DESCRIPTION` longtext COLLATE utf8_bin,
  `SEARCH_FIELD` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_audit_log_created` (`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar` (
  `ID` decimal(18,0) NOT NULL,
  `filename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `contenttype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatartype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `systemavatar` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `avatar_index` (`avatartype`,`owner`),
  KEY `avatar_filename_index` (`filename`,`avatartype`,`systemavatar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `ID` decimal(18,0) NOT NULL,
  `JQL` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `boardproject`
--

DROP TABLE IF EXISTS `boardproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardproject` (
  `BOARD_ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) NOT NULL,
  PRIMARY KEY (`BOARD_ID`,`PROJECT_ID`),
  KEY `idx_board_project_ids` (`PROJECT_ID`),
  KEY `idx_board_board_ids` (`BOARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changegroup`
--

DROP TABLE IF EXISTS `changegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changegroup` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `chggroup_issue` (`issueid`),
  KEY `chggroup_author_created` (`AUTHOR`,`CREATED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changeitem`
--

DROP TABLE IF EXISTS `changeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeitem` (
  `ID` decimal(18,0) NOT NULL,
  `groupid` decimal(18,0) DEFAULT NULL,
  `FIELDTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OLDVALUE` longtext COLLATE utf8_bin,
  `OLDSTRING` longtext COLLATE utf8_bin,
  `NEWVALUE` longtext COLLATE utf8_bin,
  `NEWSTRING` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `chgitem_chggrp` (`groupid`),
  KEY `chgitem_field` (`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clusteredjob`
--

DROP TABLE IF EXISTS `clusteredjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusteredjob` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_RUNNER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCHED_TYPE` char(1) COLLATE utf8_bin DEFAULT NULL,
  `INTERVAL_MILLIS` decimal(18,0) DEFAULT NULL,
  `FIRST_RUN` decimal(18,0) DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_ZONE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_RUN` decimal(18,0) DEFAULT NULL,
  `VERSION` decimal(18,0) DEFAULT NULL,
  `PARAMETERS` blob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `clusteredjob_jobid_idx` (`JOB_ID`),
  KEY `clusteredjob_jrk_idx` (`JOB_RUNNER_KEY`),
  KEY `clusteredjob_nextrun_idx` (`NEXT_RUN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clusterlockstatus`
--

DROP TABLE IF EXISTS `clusterlockstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusterlockstatus` (
  `ID` decimal(18,0) NOT NULL,
  `LOCK_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCKED_BY_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `UPDATE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cluster_lock_name_idx` (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clustermessage`
--

DROP TABLE IF EXISTS `clustermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustermessage` (
  `ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESTINATION_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CLAIMED_BY_NODE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `source_destination_node_idx` (`SOURCE_NODE`,`DESTINATION_NODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clusternode`
--

DROP TABLE IF EXISTS `clusternode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternode` (
  `NODE_ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `NODE_STATE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TIMESTAMP` decimal(18,0) DEFAULT NULL,
  `IP` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CACHE_LISTENER_PORT` decimal(18,0) DEFAULT NULL,
  `NODE_BUILD_NUMBER` decimal(18,0) DEFAULT NULL,
  `NODE_VERSION` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clusternodeheartbeat`
--

DROP TABLE IF EXISTS `clusternodeheartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusternodeheartbeat` (
  `NODE_ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `HEARTBEAT_TIME` decimal(18,0) DEFAULT NULL,
  `DATABASE_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clusterupgradestate`
--

DROP TABLE IF EXISTS `clusterupgradestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clusterupgradestate` (
  `ID` decimal(18,0) NOT NULL,
  `DATABASE_TIME` decimal(18,0) DEFAULT NULL,
  `CLUSTER_BUILD_NUMBER` decimal(18,0) DEFAULT NULL,
  `CLUSTER_VERSION` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `STATE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ORDER_NUMBER` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ordernumber_idx` (`ORDER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `columnlayout`
--

DROP TABLE IF EXISTS `columnlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayout` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCHREQUEST` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cl_searchrequest` (`SEARCHREQUEST`),
  KEY `cl_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `columnlayoutitem`
--

DROP TABLE IF EXISTS `columnlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columnlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `COLUMNLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HORIZONTALPOSITION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_cli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `cname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_component_project` (`PROJECT`),
  KEY `idx_component_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `configurationcontext`
--

DROP TABLE IF EXISTS `configurationcontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationcontext` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECTCATEGORY` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `customfield` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `confcontext` (`PROJECTCATEGORY`,`PROJECT`,`customfield`),
  KEY `confcontextprojectkey` (`PROJECT`,`customfield`),
  KEY `confcontextfieldconfigscheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield` (
  `ID` decimal(18,0) NOT NULL,
  `cfkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELDTYPEKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELDSEARCHERKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cfname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `defaultvalue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDTYPE` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customfieldoption`
--

DROP TABLE IF EXISTS `customfieldoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldoption` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `PARENTOPTIONID` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `customvalue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `optiontype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `disabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_cfoption` (`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customfieldvalue`
--

DROP TABLE IF EXISTS `customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldvalue` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `UPDATED` decimal(18,0) DEFAULT NULL,
  `PARENTKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STRINGVALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NUMBERVALUE` decimal(18,6) DEFAULT NULL,
  `TEXTVALUE` longtext COLLATE utf8_bin,
  `DATEVALUE` datetime DEFAULT NULL,
  `VALUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cfvalue_issue` (`ISSUE`,`CUSTOMFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_application`
--

DROP TABLE IF EXISTS `cwd_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application` (
  `ID` decimal(18,0) NOT NULL,
  `application_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_application_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `application_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `credential` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_application_name` (`lower_application_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_application_address`
--

DROP TABLE IF EXISTS `cwd_application_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_application_address` (
  `application_id` decimal(18,0) NOT NULL,
  `remote_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `encoded_address_binary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remote_address_mask` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`application_id`,`remote_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_directory`
--

DROP TABLE IF EXISTS `cwd_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory` (
  `ID` decimal(18,0) NOT NULL,
  `directory_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_directory_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `impl_class` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_impl_class` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `directory_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `directory_position` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `uk_directory_name` (`lower_directory_name`),
  KEY `idx_directory_active` (`active`),
  KEY `idx_directory_impl` (`lower_impl_class`),
  KEY `idx_directory_type` (`directory_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_directory_attribute`
--

DROP TABLE IF EXISTS `cwd_directory_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_attribute` (
  `directory_id` decimal(18,0) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `attribute_value` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`directory_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_directory_operation`
--

DROP TABLE IF EXISTS `cwd_directory_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_directory_operation` (
  `directory_id` decimal(18,0) NOT NULL,
  `operation_type` varchar(60) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`directory_id`,`operation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_group`
--

DROP TABLE IF EXISTS `cwd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group` (
  `ID` decimal(18,0) NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `local` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_name_dir_id` (`lower_group_name`,`directory_id`),
  KEY `idx_group_active` (`lower_group_name`,`active`),
  KEY `idx_group_dir_id` (`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_group_attributes`
--

DROP TABLE IF EXISTS `cwd_group_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_group_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `group_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_group_attr_name_lval` (`group_id`,`attribute_name`,`lower_attribute_value`),
  KEY `idx_group_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_membership`
--

DROP TABLE IF EXISTS `cwd_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_membership` (
  `ID` decimal(18,0) NOT NULL,
  `parent_id` decimal(18,0) DEFAULT NULL,
  `child_id` decimal(18,0) DEFAULT NULL,
  `membership_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `group_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_parent_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `child_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_child_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_mem_parent_child_type` (`parent_id`,`child_id`,`membership_type`),
  KEY `idx_mem_dir_parent_child` (`lower_parent_name`,`lower_child_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_parent` (`lower_parent_name`,`membership_type`,`directory_id`),
  KEY `idx_mem_dir_child` (`lower_child_name`,`membership_type`,`directory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_user`
--

DROP TABLE IF EXISTS `cwd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user` (
  `ID` decimal(18,0) NOT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `active` decimal(9,0) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_email_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREDENTIAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted_externally` decimal(9,0) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_user_name_dir_id` (`lower_user_name`,`directory_id`),
  KEY `uk_user_externalid_dir_id` (`EXTERNAL_ID`,`directory_id`),
  KEY `idx_first_name` (`lower_first_name`),
  KEY `idx_last_name` (`lower_last_name`),
  KEY `idx_display_name` (`lower_display_name`),
  KEY `idx_email_address` (`lower_email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cwd_user_attributes`
--

DROP TABLE IF EXISTS `cwd_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cwd_user_attributes` (
  `ID` decimal(18,0) NOT NULL,
  `user_id` decimal(18,0) DEFAULT NULL,
  `directory_id` decimal(18,0) DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lower_attribute_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_user_attr_dir_name_lval` (`directory_id`,`attribute_name`,`lower_attribute_value`),
  KEY `uk_user_attr_name_lval` (`user_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deadletter`
--

DROP TABLE IF EXISTS `deadletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadletter` (
  `ID` decimal(18,0) NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_SEEN` decimal(18,0) DEFAULT NULL,
  `MAIL_SERVER_ID` decimal(18,0) DEFAULT NULL,
  `FOLDER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `deadletter_msg_server_folder` (`MESSAGE_ID`,`MAIL_SERVER_ID`,`FOLDER_NAME`),
  KEY `deadletter_lastSeen` (`LAST_SEEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `draftworkflowscheme`
--

DROP TABLE IF EXISTS `draftworkflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `WORKFLOW_SCHEME_ID` decimal(18,0) DEFAULT NULL,
  `LAST_MODIFIED_DATE` datetime DEFAULT NULL,
  `LAST_MODIFIED_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `draft_workflow_scheme_parent` (`WORKFLOW_SCHEME_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `draftworkflowschemeentity`
--

DROP TABLE IF EXISTS `draftworkflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftworkflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `draft_workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_property`
--

DROP TABLE IF EXISTS `entity_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `json_value` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `entityproperty_entity` (`ENTITY_NAME`,`ENTITY_ID`),
  KEY `entityproperty_key` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_property_index_document`
--

DROP TABLE IF EXISTS `entity_property_index_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_property_index_document` (
  `ID` decimal(18,0) NOT NULL,
  `PLUGIN_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MODULE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DOCUMENT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `entpropindexdoc_module` (`PLUGIN_KEY`,`MODULE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_translation`
--

DROP TABLE IF EXISTS `entity_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_translation` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `LOCALE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRANS_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uk_entitytranslation` (`ENTITY_NAME`,`ENTITY_ID`,`LOCALE`),
  KEY `entitytranslation_locale` (`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `external_entities`
--

DROP TABLE IF EXISTS `external_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_entities` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `entitytype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ext_entity_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `externalgadget`
--

DROP TABLE IF EXISTS `externalgadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalgadget` (
  `ID` decimal(18,0) NOT NULL,
  `GADGET_XML` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favouriteassociations`
--

DROP TABLE IF EXISTS `favouriteassociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favouriteassociations` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `favourite_index` (`USERNAME`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature` (
  `ID` decimal(18,0) NOT NULL,
  `FEATURE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FEATURE_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `feature_id_userkey` (`ID`,`USER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldconfigscheme`
--

DROP TABLE IF EXISTS `fieldconfigscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigscheme` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldconfigschemeissuetype`
--

DROP TABLE IF EXISTS `fieldconfigschemeissuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfigschemeissuetype` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIGSCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDCONFIGURATION` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fcs_issuetype` (`ISSUETYPE`),
  KEY `fcs_scheme` (`FIELDCONFIGSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldconfiguration`
--

DROP TABLE IF EXISTS `fieldconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `configname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fc_fieldid` (`FIELDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayout`
--

DROP TABLE IF EXISTS `fieldlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayout` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `layout_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayoutitem`
--

DROP TABLE IF EXISTS `fieldlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `VERTICALPOSITION` decimal(18,0) DEFAULT NULL,
  `ISHIDDEN` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ISREQUIRED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `RENDERERTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_fli_fieldidentifier` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayoutscheme`
--

DROP TABLE IF EXISTS `fieldlayoutscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayoutschemeassociation`
--

DROP TABLE IF EXISTS `fieldlayoutschemeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeassociation` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `FIELDLAYOUTSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fl_scheme_assoc` (`PROJECT`,`ISSUETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldlayoutschemeentity`
--

DROP TABLE IF EXISTS `fieldlayoutschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIELDLAYOUT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldlayout_scheme` (`SCHEME`),
  KEY `fieldlayout_layout` (`FIELDLAYOUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldscreen`
--

DROP TABLE IF EXISTS `fieldscreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreen` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldscreenlayoutitem`
--

DROP TABLE IF EXISTS `fieldscreenlayoutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenlayoutitem` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDIDENTIFIER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENTAB` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscitem_tab` (`FIELDSCREENTAB`),
  KEY `fieldscreen_field` (`FIELDIDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldscreenscheme`
--

DROP TABLE IF EXISTS `fieldscreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldscreenschemeitem`
--

DROP TABLE IF EXISTS `fieldscreenschemeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreenschemeitem` (
  `ID` decimal(18,0) NOT NULL,
  `OPERATION` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `screenitem_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldscreentab`
--

DROP TABLE IF EXISTS `fieldscreentab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldscreentab` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FIELDSCREEN` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_tab` (`FIELDSCREEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fileattachment`
--

DROP TABLE IF EXISTS `fileattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattachment` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `MIMETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `FILESIZE` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` decimal(9,0) DEFAULT NULL,
  `thumbnailable` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `attach_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filtersubscription`
--

DROP TABLE IF EXISTS `filtersubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtersubscription` (
  `ID` decimal(18,0) NOT NULL,
  `FILTER_I_D` decimal(18,0) DEFAULT NULL,
  `USERNAME` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `groupname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `LAST_RUN` datetime DEFAULT NULL,
  `EMAIL_ON_EMPTY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `subscrpt_user` (`FILTER_I_D`,`USERNAME`),
  KEY `subscrptn_group` (`FILTER_I_D`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gadgetuserpreference`
--

DROP TABLE IF EXISTS `gadgetuserpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgetuserpreference` (
  `ID` decimal(18,0) NOT NULL,
  `PORTLETCONFIGURATION` decimal(18,0) DEFAULT NULL,
  `USERPREFKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERPREFVALUE` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `userpref_portletconfiguration` (`PORTLETCONFIGURATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `genericconfiguration`
--

DROP TABLE IF EXISTS `genericconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genericconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `DATATYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DATAKEY` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `XMLVALUE` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type_key` (`DATATYPE`,`DATAKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `globalpermissionentry`
--

DROP TABLE IF EXISTS `globalpermissionentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalpermissionentry` (
  `ID` decimal(18,0) NOT NULL,
  `PERMISSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `groupbase`
--

DROP TABLE IF EXISTS `groupbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupbase` (
  `ID` decimal(18,0) NOT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osgroup_name` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_field_option`
--

DROP TABLE IF EXISTS `issue_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_field_option` (
  `ID` decimal(18,0) NOT NULL,
  `OPTION_ID` decimal(18,0) DEFAULT NULL,
  `FIELD_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `option_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPERTIES` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issue_field_option_scope`
--

DROP TABLE IF EXISTS `issue_field_option_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_field_option_scope` (
  `ID` decimal(18,0) NOT NULL,
  `OPTION_ID` decimal(18,0) DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuelink`
--

DROP TABLE IF EXISTS `issuelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelink` (
  `ID` decimal(18,0) NOT NULL,
  `LINKTYPE` decimal(18,0) DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `DESTINATION` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issuelink_src` (`SOURCE`),
  KEY `issuelink_dest` (`DESTINATION`),
  KEY `issuelink_type` (`LINKTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuelinktype`
--

DROP TABLE IF EXISTS `issuelinktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuelinktype` (
  `ID` decimal(18,0) NOT NULL,
  `LINKNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INWARD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OUTWARD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `linktypename` (`LINKNAME`),
  KEY `linktypestyle` (`pstyle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuesecurityscheme`
--

DROP TABLE IF EXISTS `issuesecurityscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuesecurityscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `DEFAULTLEVEL` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuestatus` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSCATEGORY` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuetype`
--

DROP TABLE IF EXISTS `issuetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetype` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `pstyle` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuetypescreenscheme`
--

DROP TABLE IF EXISTS `issuetypescreenscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issuetypescreenschemeentity`
--

DROP TABLE IF EXISTS `issuetypescreenschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuetypescreenschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `FIELDSCREENSCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldscreen_scheme` (`FIELDSCREENSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraaction`
--

DROP TABLE IF EXISTS `jiraaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraaction` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `actiontype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `actionlevel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `actionbody` longtext COLLATE utf8_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `actionnum` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `action_author_created` (`AUTHOR`,`CREATED`),
  KEY `action_issue` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiradraftworkflows`
--

DROP TABLE IF EXISTS `jiradraftworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiradraftworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `PARENTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraeventtype`
--

DROP TABLE IF EXISTS `jiraeventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraeventtype` (
  `ID` decimal(18,0) NOT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `event_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraissue`
--

DROP TABLE IF EXISTS `jiraissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraissue` (
  `ID` decimal(18,0) NOT NULL,
  `pkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuenum` decimal(18,0) DEFAULT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `REPORTER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` longtext COLLATE utf8_bin,
  `ENVIRONMENT` longtext COLLATE utf8_bin,
  `PRIORITY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESOLUTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuestatus` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `DUEDATE` datetime DEFAULT NULL,
  `RESOLUTIONDATE` datetime DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `WATCHES` decimal(18,0) DEFAULT NULL,
  `TIMEORIGINALESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMEESTIMATE` decimal(18,0) DEFAULT NULL,
  `TIMESPENT` decimal(18,0) DEFAULT NULL,
  `WORKFLOW_ID` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `FIXFOR` decimal(18,0) DEFAULT NULL,
  `COMPONENT` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `issue_proj_num` (`issuenum`,`PROJECT`),
  KEY `issue_proj_status` (`PROJECT`,`issuestatus`),
  KEY `issue_created` (`CREATED`),
  KEY `issue_updated` (`UPDATED`),
  KEY `issue_duedate` (`DUEDATE`),
  KEY `issue_resolutiondate` (`RESOLUTIONDATE`),
  KEY `issue_assignee` (`ASSIGNEE`),
  KEY `issue_reporter` (`REPORTER`),
  KEY `issue_workflow` (`WORKFLOW_ID`),
  KEY `issue_votes` (`VOTES`),
  KEY `issue_watches` (`WATCHES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraperms`
--

DROP TABLE IF EXISTS `jiraperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraperms` (
  `ID` decimal(18,0) NOT NULL,
  `permtype` decimal(18,0) DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraworkflows`
--

DROP TABLE IF EXISTS `jiraworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraworkflows` (
  `ID` decimal(18,0) NOT NULL,
  `workflowname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creatorname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTOR` longtext COLLATE utf8_bin,
  `ISLOCKED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jiraworkflowstatuses`
--

DROP TABLE IF EXISTS `jiraworkflowstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraworkflowstatuses` (
  `ID` decimal(18,0) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parentname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_parent_name` (`parentname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` decimal(18,0) DEFAULT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `LABEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `label_fieldissue` (`ISSUE`,`FIELDID`),
  KEY `label_fieldissuelabel` (`ISSUE`,`FIELDID`,`LABEL`),
  KEY `label_label` (`LABEL`),
  KEY `label_issue` (`ISSUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licenserolesdefault`
--

DROP TABLE IF EXISTS `licenserolesdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesdefault` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenseroledefault_index` (`LICENSE_ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licenserolesgroup`
--

DROP TABLE IF EXISTS `licenserolesgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenserolesgroup` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE_ROLE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_GROUP` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `licenserolegroup_index` (`LICENSE_ROLE_NAME`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `listenerconfig`
--

DROP TABLE IF EXISTS `listenerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listenerconfig` (
  `ID` decimal(18,0) NOT NULL,
  `CLAZZ` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `listenername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mailserver`
--

DROP TABLE IF EXISTS `mailserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailserver` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `mailfrom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `smtp_port` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `protocol` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `server_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SERVERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JNDILOCATION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailusername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailpassword` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISTLSREQUIRED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `socks_port` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `socks_host` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `managedconfigurationitem`
--

DROP TABLE IF EXISTS `managedconfigurationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managedconfigurationitem` (
  `ID` decimal(18,0) NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ITEM_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MANAGED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ACCESS_LEVEL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `managedconfigitem_id_type_idx` (`ITEM_ID`,`ITEM_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `membershipbase`
--

DROP TABLE IF EXISTS `membershipbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershipbase` (
  `ID` decimal(18,0) NOT NULL,
  `USER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `mshipbase_user` (`USER_NAME`),
  KEY `mshipbase_group` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `moved_issue_key`
--

DROP TABLE IF EXISTS `moved_issue_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moved_issue_key` (
  `ID` decimal(18,0) NOT NULL,
  `OLD_ISSUE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ISSUE_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_old_issue_key` (`OLD_ISSUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nodeassociation`
--

DROP TABLE IF EXISTS `nodeassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeassociation` (
  `SOURCE_NODE_ID` decimal(18,0) NOT NULL,
  `SOURCE_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `node_source` (`SOURCE_NODE_ID`,`SOURCE_NODE_ENTITY`),
  KEY `node_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nodeindexcounter`
--

DROP TABLE IF EXISTS `nodeindexcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeindexcounter` (
  `ID` decimal(18,0) NOT NULL,
  `NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SENDING_NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `INDEX_OPERATION_ID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `node_id_idx` (`NODE_ID`,`SENDING_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `EVENT` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EVENT_TYPE_ID` decimal(18,0) DEFAULT NULL,
  `TEMPLATE_ID` decimal(18,0) DEFAULT NULL,
  `notif_type` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `notif_parameter` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ntfctn_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificationinstance`
--

DROP TABLE IF EXISTS `notificationinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationinstance` (
  `ID` decimal(18,0) NOT NULL,
  `notificationtype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SOURCE` decimal(18,0) DEFAULT NULL,
  `emailaddress` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGEID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `notif_source` (`SOURCE`),
  KEY `notif_messageid` (`MESSAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificationscheme`
--

DROP TABLE IF EXISTS `notificationscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauthconsumer`
--

DROP TABLE IF EXISTS `oauthconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumerservice` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `PRIVATE_KEY` text COLLATE utf8_bin,
  `DESCRIPTION` text COLLATE utf8_bin,
  `CALLBACK` text COLLATE utf8_bin,
  `SIGNATURE_METHOD` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SHARED_SECRET` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_index` (`CONSUMER_KEY`),
  UNIQUE KEY `oauth_consumer_service_index` (`consumerservice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauthconsumertoken`
--

DROP TABLE IF EXISTS `oauthconsumertoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthconsumertoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_consumer_token_key_index` (`TOKEN_KEY`),
  KEY `oauth_consumer_token_index` (`TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauthspconsumer`
--

DROP TABLE IF EXISTS `oauthspconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthspconsumer` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consumername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `DESCRIPTION` text COLLATE utf8_bin,
  `CALLBACK` text COLLATE utf8_bin,
  `TWO_L_O_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTING_TWO_L_O_USER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TWO_L_O_IMPERSONATION_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `THREE_L_O_ALLOWED` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_consumer_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauthsptoken`
--

DROP TABLE IF EXISTS `oauthsptoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthsptoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_SECRET` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CONSUMER_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TTL` decimal(18,0) DEFAULT NULL,
  `spauth` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK` text COLLATE utf8_bin,
  `spverifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `spversion` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `SESSION_HANDLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SESSION_CREATION_TIME` datetime DEFAULT NULL,
  `SESSION_LAST_RENEWAL_TIME` datetime DEFAULT NULL,
  `SESSION_TIME_TO_LIVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `oauth_sp_token_index` (`TOKEN`),
  KEY `oauth_sp_consumer_key_index` (`CONSUMER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `optionconfiguration`
--

DROP TABLE IF EXISTS `optionconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optionconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `FIELDID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `OPTIONID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `FIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fieldid_optionid` (`FIELDID`,`OPTIONID`),
  KEY `fieldid_fieldconf` (`FIELDID`,`FIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permissionscheme`
--

DROP TABLE IF EXISTS `permissionscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permissionschemeattribute`
--

DROP TABLE IF EXISTS `permissionschemeattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionschemeattribute` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `ATTRIBUTE_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTRIBUTE_VALUE` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `prmssn_scheme_attr_idx` (`SCHEME`),
  KEY `prmssn_scheme_attr_key_idx` (`SCHEME`,`ATTRIBUTE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pluginstate`
--

DROP TABLE IF EXISTS `pluginstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginstate` (
  `pluginkey` varchar(255) COLLATE utf8_bin NOT NULL,
  `pluginenabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pluginkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pluginversion`
--

DROP TABLE IF EXISTS `pluginversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginversion` (
  `ID` decimal(18,0) NOT NULL,
  `pluginname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pluginkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pluginversion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `portalpage`
--

DROP TABLE IF EXISTS `portalpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpage` (
  `ID` decimal(18,0) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PAGENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `LAYOUT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ppversion` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ppage_username` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `portletconfiguration`
--

DROP TABLE IF EXISTS `portletconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletconfiguration` (
  `ID` decimal(18,0) NOT NULL,
  `PORTALPAGE` decimal(18,0) DEFAULT NULL,
  `PORTLET_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COLUMN_NUMBER` decimal(9,0) DEFAULT NULL,
  `positionseq` decimal(9,0) DEFAULT NULL,
  `GADGET_XML` text COLLATE utf8_bin,
  `COLOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DASHBOARD_MODULE_COMPLETE_KEY` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS_COLOR` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productlicense`
--

DROP TABLE IF EXISTS `productlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlicense` (
  `ID` decimal(18,0) NOT NULL,
  `LICENSE` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ID` decimal(18,0) NOT NULL,
  `pname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LEAD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `pkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pcounter` decimal(18,0) DEFAULT NULL,
  `ASSIGNEETYPE` decimal(18,0) DEFAULT NULL,
  `AVATAR` decimal(18,0) DEFAULT NULL,
  `ORIGINALKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROJECTTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_project_key` (`pkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project_key`
--

DROP TABLE IF EXISTS `project_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_key` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT_ID` decimal(18,0) DEFAULT NULL,
  `PROJECT_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `idx_all_project_keys` (`PROJECT_KEY`),
  KEY `idx_all_project_ids` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectcategory`
--

DROP TABLE IF EXISTS `projectcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectcategory` (
  `ID` decimal(18,0) NOT NULL,
  `cname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  KEY `idx_project_category_name` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectchangedtime`
--

DROP TABLE IF EXISTS `projectchangedtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectchangedtime` (
  `PROJECT_ID` decimal(18,0) NOT NULL,
  `ISSUE_CHANGED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectrole`
--

DROP TABLE IF EXISTS `projectrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectrole` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectroleactor`
--

DROP TABLE IF EXISTS `projectroleactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectroleactor` (
  `ID` decimal(18,0) NOT NULL,
  `PID` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  `ROLETYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROLETYPEPARAMETER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `role_player_idx` (`PROJECTROLEID`,`PID`),
  KEY `role_pid_idx` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectversion`
--

DROP TABLE IF EXISTS `projectversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectversion` (
  `ID` decimal(18,0) NOT NULL,
  `PROJECT` decimal(18,0) DEFAULT NULL,
  `vname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `RELEASED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ARCHIVED` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `RELEASEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_version_project` (`PROJECT`),
  KEY `idx_version_sequence` (`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertydata`
--

DROP TABLE IF EXISTS `propertydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydata` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertydate`
--

DROP TABLE IF EXISTS `propertydate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydate` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertydecimal`
--

DROP TABLE IF EXISTS `propertydecimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertydecimal` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertyentry`
--

DROP TABLE IF EXISTS `propertyentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertyentry` (
  `ID` decimal(18,0) NOT NULL,
  `ENTITY_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_ID` decimal(18,0) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `propertytype` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osproperty_all` (`ENTITY_ID`),
  KEY `osproperty_entityName` (`ENTITY_NAME`),
  KEY `osproperty_propertyKey` (`PROPERTY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertynumber`
--

DROP TABLE IF EXISTS `propertynumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertynumber` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertystring`
--

DROP TABLE IF EXISTS `propertystring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertystring` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propertytext`
--

DROP TABLE IF EXISTS `propertytext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propertytext` (
  `ID` decimal(18,0) NOT NULL,
  `propertyvalue` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `ID` decimal(18,0) DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `CALENDAR` text COLLATE utf8_bin,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `cronExperssion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `ID` decimal(18,0) DEFAULT NULL,
  `ENTRY_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FIRED_TIME` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLASS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_DURABLE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `JOB_DATA` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_job_listeners`
--

DROP TABLE IF EXISTS `qrtz_job_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `JOB_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `REPEAT_COUNT` decimal(9,0) DEFAULT NULL,
  `REPEAT_INTERVAL` decimal(18,0) DEFAULT NULL,
  `TIMES_TRIGGERED` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_trigger_listeners`
--

DROP TABLE IF EXISTS `qrtz_trigger_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_trigger_listeners` (
  `ID` decimal(18,0) NOT NULL,
  `trigger_id` decimal(18,0) DEFAULT NULL,
  `TRIGGER_LISTENER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `ID` decimal(18,0) NOT NULL,
  `TRIGGER_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_GROUP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JOB` decimal(18,0) DEFAULT NULL,
  `NEXT_FIRE` datetime DEFAULT NULL,
  `TRIGGER_STATE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIGGER_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CALENDAR_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reindex_component`
--

DROP TABLE IF EXISTS `reindex_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_component` (
  `ID` decimal(18,0) NOT NULL,
  `REQUEST_ID` decimal(18,0) DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_reindex_component_req_id` (`REQUEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reindex_request`
--

DROP TABLE IF EXISTS `reindex_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reindex_request` (
  `ID` decimal(18,0) NOT NULL,
  `TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `COMPLETION_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `QUERY` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `remembermetoken`
--

DROP TABLE IF EXISTS `remembermetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remembermetoken` (
  `ID` decimal(18,0) NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remembermetoken_username_index` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `remotelink`
--

DROP TABLE IF EXISTS `remotelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remotelink` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUEID` decimal(18,0) DEFAULT NULL,
  `GLOBALID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUMMARY` text COLLATE utf8_bin,
  `URL` text COLLATE utf8_bin,
  `ICONURL` text COLLATE utf8_bin,
  `ICONTITLE` text COLLATE utf8_bin,
  `RELATIONSHIP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESOLVED` char(1) COLLATE utf8_bin DEFAULT NULL,
  `STATUSNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSDESCRIPTION` text COLLATE utf8_bin,
  `STATUSICONURL` text COLLATE utf8_bin,
  `STATUSICONTITLE` text COLLATE utf8_bin,
  `STATUSICONLINK` text COLLATE utf8_bin,
  `STATUSCATEGORYKEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUSCATEGORYCOLORNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPLICATIONTYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPLICATIONNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `remotelink_issueid` (`ISSUEID`,`GLOBALID`),
  KEY `remotelink_globalid` (`GLOBALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `replicatedindexoperation`
--

DROP TABLE IF EXISTS `replicatedindexoperation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replicatedindexoperation` (
  `ID` decimal(18,0) NOT NULL,
  `INDEX_TIME` datetime DEFAULT NULL,
  `NODE_ID` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `AFFECTED_INDEX` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYPE` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `AFFECTED_IDS` longtext COLLATE utf8_bin,
  `OPERATION` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `FILENAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `node_operation_idx` (`NODE_ID`,`AFFECTED_INDEX`,`OPERATION`,`INDEX_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `ID` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(18,0) DEFAULT NULL,
  `pname` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `ICONURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rundetails`
--

DROP TABLE IF EXISTS `rundetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rundetails` (
  `ID` decimal(18,0) NOT NULL,
  `JOB_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `RUN_DURATION` decimal(18,0) DEFAULT NULL,
  `RUN_OUTCOME` char(1) COLLATE utf8_bin DEFAULT NULL,
  `INFO_MESSAGE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `rundetails_jobid_idx` (`JOB_ID`),
  KEY `rundetails_starttime_idx` (`START_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schemeissuesecurities`
--

DROP TABLE IF EXISTS `schemeissuesecurities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecurities` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `SECURITY` decimal(18,0) DEFAULT NULL,
  `sec_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sec_parameter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sec_scheme` (`SCHEME`),
  KEY `sec_security` (`SECURITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schemeissuesecuritylevels`
--

DROP TABLE IF EXISTS `schemeissuesecuritylevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemeissuesecuritylevels` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schemepermissions`
--

DROP TABLE IF EXISTS `schemepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schemepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `PERMISSION` decimal(18,0) DEFAULT NULL,
  `perm_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `perm_parameter` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PERMISSION_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `prmssn_scheme` (`SCHEME`),
  KEY `permission_key_idx` (`PERMISSION_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `searchrequest`
--

DROP TABLE IF EXISTS `searchrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchrequest` (
  `ID` decimal(18,0) NOT NULL,
  `filtername` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `authorname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `projectid` decimal(18,0) DEFAULT NULL,
  `reqcontent` longtext COLLATE utf8_bin,
  `FAV_COUNT` decimal(18,0) DEFAULT NULL,
  `filtername_lower` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sr_author` (`authorname`),
  KEY `searchrequest_filternameLower` (`filtername_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serviceconfig`
--

DROP TABLE IF EXISTS `serviceconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceconfig` (
  `ID` decimal(18,0) NOT NULL,
  `delaytime` decimal(18,0) DEFAULT NULL,
  `CLAZZ` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `servicename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CRON_EXPRESSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sharepermissions`
--

DROP TABLE IF EXISTS `sharepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharepermissions` (
  `ID` decimal(18,0) NOT NULL,
  `entityid` decimal(18,0) DEFAULT NULL,
  `entitytype` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `sharetype` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PARAM1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARAM2` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `RIGHTS` decimal(9,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `share_index` (`entityid`,`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tempattachmentsmonitor`
--

DROP TABLE IF EXISTS `tempattachmentsmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempattachmentsmonitor` (
  `TEMPORARY_ATTACHMENT_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `FORM_TOKEN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILE_SIZE` decimal(18,0) DEFAULT NULL,
  `CREATED_TIME` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`TEMPORARY_ATTACHMENT_ID`),
  KEY `idx_tam_by_form_token` (`FORM_TOKEN`),
  KEY `idx_tam_by_created_time` (`CREATED_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trackback_ping`
--

DROP TABLE IF EXISTS `trackback_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackback_ping` (
  `ID` decimal(18,0) NOT NULL,
  `ISSUE` decimal(18,0) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BLOGNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCERPT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trustedapp`
--

DROP TABLE IF EXISTS `trustedapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trustedapp` (
  `ID` decimal(18,0) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PUBLIC_KEY` text COLLATE utf8_bin,
  `IP_MATCH` text COLLATE utf8_bin,
  `URL_MATCH` text COLLATE utf8_bin,
  `TIMEOUT` decimal(18,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `trustedapp_id` (`APPLICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgradehistory`
--

DROP TABLE IF EXISTS `upgradehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradehistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `UPGRADECLASS` varchar(255) COLLATE utf8_bin NOT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOWNGRADETASKREQUIRED` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`UPGRADECLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgradetaskhistory`
--

DROP TABLE IF EXISTS `upgradetaskhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradetaskhistory` (
  `ID` decimal(18,0) NOT NULL,
  `UPGRADE_TASK_FACTORY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BUILD_NUMBER` decimal(9,0) DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `UPGRADE_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgradetaskhistoryauditlog`
--

DROP TABLE IF EXISTS `upgradetaskhistoryauditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradetaskhistoryauditlog` (
  `ID` decimal(18,0) NOT NULL,
  `UPGRADE_TASK_FACTORY_KEY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BUILD_NUMBER` decimal(9,0) DEFAULT NULL,
  `STATUS` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `UPGRADE_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `TIMEPERFORMED` datetime DEFAULT NULL,
  `ACTION` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgradeversionhistory`
--

DROP TABLE IF EXISTS `upgradeversionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgradeversionhistory` (
  `ID` decimal(18,0) DEFAULT NULL,
  `TIMEPERFORMED` datetime DEFAULT NULL,
  `TARGETBUILD` varchar(255) COLLATE utf8_bin NOT NULL,
  `TARGETVERSION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TARGETBUILD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userassociation`
--

DROP TABLE IF EXISTS `userassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassociation` (
  `SOURCE_NAME` varchar(60) COLLATE utf8_bin NOT NULL,
  `SINK_NODE_ID` decimal(18,0) NOT NULL,
  `SINK_NODE_ENTITY` varchar(60) COLLATE utf8_bin NOT NULL,
  `ASSOCIATION_TYPE` varchar(60) COLLATE utf8_bin NOT NULL,
  `SEQUENCE` decimal(9,0) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  PRIMARY KEY (`SOURCE_NAME`,`SINK_NODE_ID`,`SINK_NODE_ENTITY`,`ASSOCIATION_TYPE`),
  KEY `user_source` (`SOURCE_NAME`),
  KEY `user_sink` (`SINK_NODE_ID`,`SINK_NODE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userbase`
--

DROP TABLE IF EXISTS `userbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbase` (
  `ID` decimal(18,0) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_HASH` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `osuser_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userhistoryitem`
--

DROP TABLE IF EXISTS `userhistoryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhistoryitem` (
  `ID` decimal(18,0) NOT NULL,
  `entitytype` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `entityid` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastviewed` decimal(18,0) DEFAULT NULL,
  `data` longtext COLLATE utf8_bin,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uh_type_user_entity` (`entitytype`,`USERNAME`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpickerfilter`
--

DROP TABLE IF EXISTS `userpickerfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilter` (
  `ID` decimal(18,0) NOT NULL,
  `CUSTOMFIELD` decimal(18,0) DEFAULT NULL,
  `CUSTOMFIELDCONFIG` decimal(18,0) DEFAULT NULL,
  `enabled` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `upf_customfield` (`CUSTOMFIELD`),
  KEY `upf_fieldconfigid` (`CUSTOMFIELDCONFIG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpickerfiltergroup`
--

DROP TABLE IF EXISTS `userpickerfiltergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfiltergroup` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `groupname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfiltergroup` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userpickerfilterrole`
--

DROP TABLE IF EXISTS `userpickerfilterrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpickerfilterrole` (
  `ID` decimal(18,0) NOT NULL,
  `USERPICKERFILTER` decimal(18,0) DEFAULT NULL,
  `PROJECTROLEID` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cf_userpickerfilterrole` (`USERPICKERFILTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versioncontrol`
--

DROP TABLE IF EXISTS `versioncontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versioncontrol` (
  `ID` decimal(18,0) NOT NULL,
  `vcsname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vcsdescription` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vcstype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `votehistory`
--

DROP TABLE IF EXISTS `votehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votehistory` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `VOTES` decimal(18,0) DEFAULT NULL,
  `TIMESTAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `votehistory_issue_index` (`issueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflowscheme`
--

DROP TABLE IF EXISTS `workflowscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowscheme` (
  `ID` decimal(18,0) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflowschemeentity`
--

DROP TABLE IF EXISTS `workflowschemeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowschemeentity` (
  `ID` decimal(18,0) NOT NULL,
  `SCHEME` decimal(18,0) DEFAULT NULL,
  `WORKFLOW` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `issuetype` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `workflow_scheme` (`SCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `worklog`
--

DROP TABLE IF EXISTS `worklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worklog` (
  `ID` decimal(18,0) NOT NULL,
  `issueid` decimal(18,0) DEFAULT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grouplevel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rolelevel` decimal(18,0) DEFAULT NULL,
  `worklogbody` longtext COLLATE utf8_bin,
  `CREATED` datetime DEFAULT NULL,
  `UPDATEAUTHOR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `timeworked` decimal(18,0) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `worklog_issue` (`issueid`),
  KEY `worklog_author` (`AUTHOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-11 14:15:37
