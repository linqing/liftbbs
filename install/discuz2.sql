-- MySQL dump 10.13  Distrib 5.1.57, for apple-darwin10.8.0 (i386)
--
-- Host: localhost    Database: discuz2
-- ------------------------------------------------------
-- Server version	5.1.57-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Author` (
  `email` varchar(128) DEFAULT NULL,
  `lastName` varchar(128) NOT NULL,
  `firstName` varchar(128) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (NULL,'Tolkien','JRR',1),(NULL,'Austen','Jane',2),(NULL,'Pullman','Philip',3);
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorId` bigint(20) NOT NULL,
  `coAuthorId` bigint(20) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES (1,1,NULL,'The Lord of the Rings'),(2,2,NULL,'Pride and Prejudice'),(3,3,NULL,'His Dark Materials');
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_announcements`
--

DROP TABLE IF EXISTS `cdb_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_announcements` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_announcements`
--

LOCK TABLES `cdb_announcements` WRITE;
/*!40000 ALTER TABLE `cdb_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_attachments`
--

DROP TABLE IF EXISTS `cdb_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_attachments` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `creditsrequire` smallint(6) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `filesize` int(12) unsigned NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `downloads` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_attachments`
--

LOCK TABLES `cdb_attachments` WRITE;
/*!40000 ALTER TABLE `cdb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_banned`
--

DROP TABLE IF EXISTS `cdb_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_banned` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip1` smallint(3) NOT NULL DEFAULT '0',
  `ip2` smallint(3) NOT NULL DEFAULT '0',
  `ip3` smallint(3) NOT NULL DEFAULT '0',
  `ip4` smallint(3) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip1` (`ip1`),
  KEY `ip2` (`ip2`),
  KEY `ip3` (`ip3`),
  KEY `ip4` (`ip1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_banned`
--

LOCK TABLES `cdb_banned` WRITE;
/*!40000 ALTER TABLE `cdb_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_buddys`
--

DROP TABLE IF EXISTS `cdb_buddys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_buddys` (
  `username` varchar(15) NOT NULL DEFAULT '',
  `buddyname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_buddys`
--

LOCK TABLES `cdb_buddys` WRITE;
/*!40000 ALTER TABLE `cdb_buddys` DISABLE KEYS */;
INSERT INTO `cdb_buddys` VALUES ('linqing','admin');
/*!40000 ALTER TABLE `cdb_buddys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_favorites`
--

DROP TABLE IF EXISTS `cdb_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_favorites` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_favorites`
--

LOCK TABLES `cdb_favorites` WRITE;
/*!40000 ALTER TABLE `cdb_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_forumlinks`
--

DROP TABLE IF EXISTS `cdb_forumlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_forumlinks` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_forumlinks`
--

LOCK TABLES `cdb_forumlinks` WRITE;
/*!40000 ALTER TABLE `cdb_forumlinks` DISABLE KEYS */;
INSERT INTO `cdb_forumlinks` VALUES (1,0,'Discuz! Board','http://www.Discuz.net','本站论坛程序 Discuz! 的官方站点，专门讨论 Discuz! 的使用与 Hack，提供论坛升级与技术支持等。','images/logo.gif');
/*!40000 ALTER TABLE `cdb_forumlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_forums`
--

DROP TABLE IF EXISTS `cdb_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_forums` (
  `fid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fup` smallint(6) unsigned NOT NULL DEFAULT '0',
  `type` enum('group','forum','sub') NOT NULL DEFAULT 'forum',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `moderator` tinytext NOT NULL,
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `threads` smallint(6) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpost` varchar(130) NOT NULL DEFAULT '',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(12) NOT NULL DEFAULT '',
  `postcredits` tinyint(1) NOT NULL DEFAULT '-1',
  `viewperm` tinytext NOT NULL,
  `postperm` tinytext NOT NULL,
  `getattachperm` tinytext NOT NULL,
  `postattachperm` tinytext NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_forums`
--

LOCK TABLES `cdb_forums` WRITE;
/*!40000 ALTER TABLE `cdb_forums` DISABLE KEYS */;
INSERT INTO `cdb_forums` VALUES (1,0,'forum','','默认板块','',1,0,'',0,1,2,'测试帖        1310095420      linqing',1,0,1,1,'',0,'','','','');
/*!40000 ALTER TABLE `cdb_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_karmalog`
--

DROP TABLE IF EXISTS `cdb_karmalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_karmalog` (
  `username` varchar(15) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_karmalog`
--

LOCK TABLES `cdb_karmalog` WRITE;
/*!40000 ALTER TABLE `cdb_karmalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_karmalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_members`
--

DROP TABLE IF EXISTS `cdb_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_members` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('Member','Admin','SuperMod','Moderator','Banned','PostBanned','Inactive') NOT NULL DEFAULT 'Member',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `postnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `credit` int(10) NOT NULL DEFAULT '0',
  `charset` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `site` varchar(75) NOT NULL DEFAULT '',
  `icq` varchar(12) NOT NULL DEFAULT '',
  `oicq` varchar(12) NOT NULL DEFAULT '',
  `yahoo` varchar(40) NOT NULL DEFAULT '',
  `msn` varchar(40) NOT NULL DEFAULT '',
  `location` varchar(30) NOT NULL DEFAULT '',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `bio` text NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `customstatus` varchar(20) NOT NULL DEFAULT '',
  `tpp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ppp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateformat` varchar(10) NOT NULL DEFAULT '',
  `timeformat` varchar(5) NOT NULL DEFAULT '',
  `showemail` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `timeoffset` char(3) NOT NULL DEFAULT '',
  `ignorepm` text NOT NULL,
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `pwdrecover` varchar(30) NOT NULL DEFAULT '',
  `pwdrcvtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_members`
--

LOCK TABLES `cdb_members` WRITE;
/*!40000 ALTER TABLE `cdb_members` DISABLE KEYS */;
INSERT INTO `cdb_members` VALUES (1,'admin','3b932a915e709ccbaa703660512dce5b',0,'Admin','hidden',1101432885,1101439020,0,0,'','name@domain.com','','','','','','','0000-00-00','','','','',0,0,0,'Y-n-j','h:i A',1,1,'8','',0,'',0),(2,'linqing','a6c211647be0a60ad249904c681a2355',1,'Member','127.0.0.1',1310094966,1310109729,2,2,'','linqing01@gmail.com','http://www.starworking.com','','','','','shanghai','2002-03-09','','','Have fun!','',0,0,0,'Y-n-j','H:i',1,1,'8','',0,'',0);
/*!40000 ALTER TABLE `cdb_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_pm`
--

DROP TABLE IF EXISTS `cdb_pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_pm` (
  `pmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgto` varchar(15) NOT NULL DEFAULT '',
  `msgfrom` varchar(15) NOT NULL DEFAULT '',
  `folder` enum('inbox','outbox') NOT NULL DEFAULT 'inbox',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(75) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`pmid`),
  KEY `msgto` (`msgto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_pm`
--

LOCK TABLES `cdb_pm` WRITE;
/*!40000 ALTER TABLE `cdb_pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_poll`
--

DROP TABLE IF EXISTS `cdb_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_poll` (
  `pollid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `options` text NOT NULL,
  `voters` text NOT NULL,
  `maxvotes` smallint(6) unsigned NOT NULL DEFAULT '0',
  `totalvotes` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_poll`
--

LOCK TABLES `cdb_poll` WRITE;
/*!40000 ALTER TABLE `cdb_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_posts`
--

DROP TABLE IF EXISTS `cdb_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_posts` (
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` mediumtext NOT NULL,
  `useip` varchar(15) NOT NULL DEFAULT '',
  `usesig` tinyint(1) NOT NULL DEFAULT '0',
  `bbcodeoff` tinyint(1) NOT NULL DEFAULT '0',
  `smileyoff` tinyint(1) NOT NULL DEFAULT '0',
  `parseurloff` tinyint(1) NOT NULL DEFAULT '0',
  `rate` smallint(6) NOT NULL DEFAULT '0',
  `ratetimes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `fid` (`fid`),
  KEY `tid` (`tid`,`dateline`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_posts`
--

LOCK TABLES `cdb_posts` WRITE;
/*!40000 ALTER TABLE `cdb_posts` DISABLE KEYS */;
INSERT INTO `cdb_posts` VALUES (1,2,2,0,'0','linqing','测试帖',1310095038,'测试帖测试帖测试帖测试帖测试帖测试帖\r\n测试帖测试帖测试帖测试帖测试帖测试帖测试帖','127.0.0.1',1,0,0,0,0,0),(1,2,3,0,'0','linqing','测试回帖',1310095420,'测试回帖测试回帖测试回帖\r\n测试回帖测试回帖测试回帖','127.0.0.1',1,0,0,0,0,0);
/*!40000 ALTER TABLE `cdb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_searchindex`
--

DROP TABLE IF EXISTS `cdb_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_searchindex` (
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `results` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_searchindex`
--

LOCK TABLES `cdb_searchindex` WRITE;
/*!40000 ALTER TABLE `cdb_searchindex` DISABLE KEYS */;
INSERT INTO `cdb_searchindex` VALUES ('测试||all|0|1|',1,1310096363);
/*!40000 ALTER TABLE `cdb_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_sessions`
--

DROP TABLE IF EXISTS `cdb_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_sessions` (
  `sid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ipbanned` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('Guest','Member','Admin','SuperMod','Moderator','Banned','IPBanned','PostBanned','Inactive') NOT NULL DEFAULT 'Guest',
  `username` varchar(15) NOT NULL DEFAULT '',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `sid` (`sid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 MAX_ROWS=1000;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_sessions`
--

LOCK TABLES `cdb_sessions` WRITE;
/*!40000 ALTER TABLE `cdb_sessions` DISABLE KEYS */;
INSERT INTO `cdb_sessions` VALUES ('ETJ6uhHl','192.168.56.1',0,'Member','linqing',1310159975,15,1,1,0,0);
/*!40000 ALTER TABLE `cdb_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_settings`
--

DROP TABLE IF EXISTS `cdb_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_settings` (
  `bbname` varchar(50) NOT NULL DEFAULT '',
  `regstatus` tinyint(1) NOT NULL DEFAULT '0',
  `censoruser` text NOT NULL,
  `doublee` tinyint(1) NOT NULL DEFAULT '0',
  `regverify` tinyint(1) NOT NULL DEFAULT '0',
  `bbrules` tinyint(1) NOT NULL DEFAULT '0',
  `bbrulestxt` text NOT NULL,
  `welcommsg` tinyint(1) NOT NULL DEFAULT '0',
  `welcommsgtxt` text NOT NULL,
  `bbclosed` tinyint(1) NOT NULL DEFAULT '0',
  `closedreason` text NOT NULL,
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `siteurl` varchar(60) NOT NULL DEFAULT '',
  `moddisplay` enum('flat','selectbox') NOT NULL DEFAULT 'flat',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxonlines` smallint(6) unsigned NOT NULL DEFAULT '0',
  `floodctrl` smallint(6) unsigned NOT NULL DEFAULT '0',
  `searchctrl` smallint(6) unsigned NOT NULL DEFAULT '0',
  `hottopic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `topicperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `memberperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxpostsize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxavatarsize` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `smcols` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `logincredits` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postcredits` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `digestcredits` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `whosonlinestatus` tinyint(1) NOT NULL DEFAULT '0',
  `vtonlinestatus` tinyint(1) NOT NULL DEFAULT '0',
  `gzipcompress` tinyint(1) NOT NULL DEFAULT '0',
  `hideprivate` tinyint(1) NOT NULL DEFAULT '0',
  `fastpost` tinyint(1) NOT NULL DEFAULT '0',
  `modshortcut` tinyint(1) NOT NULL DEFAULT '0',
  `memliststatus` tinyint(1) NOT NULL DEFAULT '0',
  `statstatus` tinyint(1) NOT NULL DEFAULT '0',
  `debug` tinyint(1) NOT NULL DEFAULT '0',
  `reportpost` tinyint(1) NOT NULL DEFAULT '0',
  `bbinsert` tinyint(1) NOT NULL DEFAULT '0',
  `smileyinsert` tinyint(1) NOT NULL DEFAULT '0',
  `editedby` tinyint(1) NOT NULL DEFAULT '0',
  `dotfolders` tinyint(1) NOT NULL DEFAULT '0',
  `attachsave` tinyint(1) NOT NULL DEFAULT '0',
  `attachimgpost` tinyint(1) NOT NULL DEFAULT '0',
  `timeoffset` varchar(5) NOT NULL DEFAULT '',
  `timeformat` varchar(5) NOT NULL DEFAULT '',
  `dateformat` varchar(10) NOT NULL DEFAULT '',
  `version` varchar(100) NOT NULL DEFAULT '',
  `onlinerecord` varchar(30) NOT NULL DEFAULT '',
  `totalmembers` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lastmember` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_settings`
--

LOCK TABLES `cdb_settings` WRITE;
/*!40000 ALTER TABLE `cdb_settings` DISABLE KEYS */;
INSERT INTO `cdb_settings` VALUES ('Discuz! Board',1,'',1,0,0,'',0,'',0,'','Crossday Studio','http://www.crossday.com/','flat',1,1000,15,5,10,20,10,25,10000,0,3,0,1,10,1,1,0,1,1,0,1,0,1,1,1,1,1,0,0,1,'8','h:i A','Y-n-j','2.0 <b style=\'color: #FF9900\'>COML</b>','1 1040034649',2,'linqing');
/*!40000 ALTER TABLE `cdb_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_smilies`
--

DROP TABLE IF EXISTS `cdb_smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_smilies` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('smiley','picon') NOT NULL DEFAULT 'smiley',
  `code` varchar(10) NOT NULL DEFAULT '',
  `url` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_smilies`
--

LOCK TABLES `cdb_smilies` WRITE;
/*!40000 ALTER TABLE `cdb_smilies` DISABLE KEYS */;
INSERT INTO `cdb_smilies` VALUES (1,'smiley',':)','smile.gif'),(2,'smiley',':(','sad.gif'),(3,'smiley',':D','biggrin.gif'),(4,'smiley',';)','wink.gif'),(5,'smiley',':cool:','cool.gif'),(6,'smiley',':mad:','mad.gif'),(7,'smiley',':o','shocked.gif'),(8,'smiley',':P','tongue.gif'),(9,'smiley',':lol:','lol.gif'),(10,'picon','','icon1.gif'),(11,'picon','','icon2.gif'),(12,'picon','','icon3.gif'),(13,'picon','','icon4.gif'),(14,'picon','','icon5.gif'),(15,'picon','','icon6.gif'),(16,'picon','','icon7.gif'),(17,'picon','','icon8.gif'),(18,'picon','','icon9.gif');
/*!40000 ALTER TABLE `cdb_smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_stats`
--

DROP TABLE IF EXISTS `cdb_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_stats` (
  `type` varchar(20) NOT NULL DEFAULT '',
  `var` varchar(20) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `type` (`type`),
  KEY `var` (`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_stats`
--

LOCK TABLES `cdb_stats` WRITE;
/*!40000 ALTER TABLE `cdb_stats` DISABLE KEYS */;
INSERT INTO `cdb_stats` VALUES ('total','hits',0),('total','members',0),('total','guests',0),('os','Windows',0),('os','Mac',0),('os','Linux',0),('os','FreeBSD',0),('os','SunOS',0),('os','BeOS',0),('os','OS/2',0),('os','AIX',0),('os','Other',0),('browser','MSIE',0),('browser','Netscape',0),('browser','Mozilla',0),('browser','Lynx',0),('browser','Opera',0),('browser','Konqueror',0),('browser','Other',0),('week','0',0),('week','1',0),('week','2',0),('week','3',0),('week','4',0),('week','5',0),('week','6',0),('hour','00',0),('hour','01',0),('hour','02',0),('hour','03',0),('hour','04',0),('hour','05',0),('hour','06',0),('hour','07',0),('hour','08',0),('hour','09',0),('hour','10',0),('hour','11',0),('hour','12',0),('hour','13',0),('hour','14',0),('hour','15',0),('hour','16',0),('hour','17',0),('hour','18',0),('hour','19',0),('hour','20',0),('hour','21',0),('hour','22',0),('hour','23',0);
/*!40000 ALTER TABLE `cdb_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_styles`
--

DROP TABLE IF EXISTS `cdb_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_styles` (
  `styleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `templateid` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`),
  KEY `themename` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_styles`
--

LOCK TABLES `cdb_styles` WRITE;
/*!40000 ALTER TABLE `cdb_styles` DISABLE KEYS */;
INSERT INTO `cdb_styles` VALUES (1,'Default Style',1,1);
/*!40000 ALTER TABLE `cdb_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_stylevars`
--

DROP TABLE IF EXISTS `cdb_stylevars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_stylevars` (
  `stylevarid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `variable` text NOT NULL,
  `substitute` text NOT NULL,
  PRIMARY KEY (`stylevarid`),
  KEY `styleid` (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_stylevars`
--

LOCK TABLES `cdb_stylevars` WRITE;
/*!40000 ALTER TABLE `cdb_stylevars` DISABLE KEYS */;
INSERT INTO `cdb_stylevars` VALUES (1,1,'bgcolor','bg.gif'),(2,1,'altbg1','#F8F8F8'),(3,1,'altbg2','#FFFFFF'),(4,1,'link','#003366'),(5,1,'bordercolor','#000000'),(6,1,'headercolor','headerbg.gif'),(7,1,'headertext','#FFFFFF'),(8,1,'catcolor','catbg.gif'),(9,1,'tabletext','#000000'),(10,1,'text','#000000'),(11,1,'borderwidth','1'),(12,1,'tablewidth','98%'),(13,1,'tablespace','4'),(14,1,'font','Tahoma, Verdana'),(15,1,'fontsize','12px'),(16,1,'nobold','0'),(17,1,'boardimg','logo.gif'),(18,1,'imgdir','images/default'),(19,1,'smdir','images/smilies'),(20,1,'cattext','#000000'),(21,1,'smfontsize','11px'),(22,1,'smfont','Arial');
/*!40000 ALTER TABLE `cdb_stylevars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_subscriptions`
--

DROP TABLE IF EXISTS `cdb_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_subscriptions` (
  `username` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastnotify` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_subscriptions`
--

LOCK TABLES `cdb_subscriptions` WRITE;
/*!40000 ALTER TABLE `cdb_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_templates`
--

DROP TABLE IF EXISTS `cdb_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_templates` (
  `templateid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `charset` varchar(30) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`templateid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_templates`
--

LOCK TABLES `cdb_templates` WRITE;
/*!40000 ALTER TABLE `cdb_templates` DISABLE KEYS */;
INSERT INTO `cdb_templates` VALUES (1,'Default','gb2312','./templates/default','Designed by Laogui(lgvbb.126.com)');
/*!40000 ALTER TABLE `cdb_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_threads`
--

DROP TABLE IF EXISTS `cdb_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_threads` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `creditsrequire` smallint(6) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastposter` varchar(15) NOT NULL DEFAULT '',
  `views` smallint(6) unsigned NOT NULL DEFAULT '0',
  `replies` smallint(6) unsigned NOT NULL DEFAULT '0',
  `topped` tinyint(1) NOT NULL DEFAULT '0',
  `digest` tinyint(1) NOT NULL DEFAULT '0',
  `closed` varchar(15) NOT NULL DEFAULT '',
  `pollopts` text NOT NULL,
  `attachment` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `lastpost` (`topped`,`lastpost`,`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_threads`
--

LOCK TABLES `cdb_threads` WRITE;
/*!40000 ALTER TABLE `cdb_threads` DISABLE KEYS */;
INSERT INTO `cdb_threads` VALUES (2,1,0,'0','linqing','测试帖',1310095038,1310095420,'linqing',5,1,0,0,'','','');
/*!40000 ALTER TABLE `cdb_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_usergroups`
--

DROP TABLE IF EXISTS `cdb_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_usergroups` (
  `groupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `specifiedusers` text NOT NULL,
  `status` enum('Guest','Member','Admin','SuperMod','Moderator','Banned','IPBanned','PostBanned','Inactive') NOT NULL DEFAULT 'Member',
  `grouptitle` varchar(30) NOT NULL DEFAULT '',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `groupavatar` varchar(60) NOT NULL DEFAULT '',
  `allowcstatus` tinyint(1) NOT NULL DEFAULT '0',
  `allowavatar` tinyint(1) NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostpoll` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowvote` tinyint(1) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `allowkarma` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetviewperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetattachperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewstats` tinyint(1) NOT NULL DEFAULT '0',
  `ismoderator` tinyint(1) NOT NULL DEFAULT '0',
  `issupermod` tinyint(1) NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `maxpmnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxmemonum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxsigsize` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxkarmarate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxrateperday` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxattachsize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachextensions` tinytext NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `status` (`status`),
  KEY `creditshigher` (`creditshigher`),
  KEY `creditslower` (`creditslower`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_usergroups`
--

LOCK TABLES `cdb_usergroups` WRITE;
/*!40000 ALTER TABLE `cdb_usergroups` DISABLE KEYS */;
INSERT INTO `cdb_usergroups` VALUES (1,'','Guest','Guest',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,''),(2,'','IPBanned','IP Banned',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),(3,'','Banned','Banned',0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),(4,'','PostBanned','Banned to Post',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),(5,'','Inactive','Inactive Member',0,0,0,'',0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,50,0,0,0,''),(6,'','Moderator','Moderator',0,0,7,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,0,0,80,0,200,10,30,2048000,''),(7,'','SuperMod','Super Moderator',0,0,8,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,0,120,0,300,15,50,2048000,''),(8,'','Admin','Administrator',0,0,9,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,200,0,500,30,500,2048000,''),(9,'','Member','King',1000,3000,6,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,0,0,0,80,0,300,15,40,1024000,''),(10,'','Member','Forum Legend',3000,9999999,8,'',1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,0,0,0,100,0,500,20,50,2048000,''),(11,'','Member','Lord',500,1000,4,'',1,2,1,1,1,1,1,1,1,2,1,0,0,1,0,1,0,0,0,60,0,200,10,30,512000,'zip,rar,chm,txt,gif,jpg,png'),(12,'','Member','Beggar',-9999999,0,0,'',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),(13,'','Member','Conqueror',200,500,3,'',0,2,1,1,1,1,1,0,1,2,0,0,0,1,0,1,0,0,0,50,0,150,6,15,256000,'gif,jpg,png'),(14,'','Member','Member',50,200,2,'',0,1,1,1,1,1,1,0,1,1,0,0,0,1,0,1,0,0,0,30,0,100,4,10,0,''),(15,'','Member','Newbie',0,50,1,'',0,0,1,1,1,0,1,0,0,1,0,0,0,1,0,0,0,0,0,20,0,80,0,0,0,'');
/*!40000 ALTER TABLE `cdb_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdb_words`
--

DROP TABLE IF EXISTS `cdb_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdb_words` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `find` varchar(60) NOT NULL DEFAULT '',
  `replacement` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdb_words`
--

LOCK TABLES `cdb_words` WRITE;
/*!40000 ALTER TABLE `cdb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdb_words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-18 13:57:24
