-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmupfv7
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmupfv7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmupfv7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmupfv7/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiaoxueziyuan`
--

DROP TABLE IF EXISTS `discussjiaoxueziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='教学资源评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiaoxueziyuan`
--

LOCK TABLES `discussjiaoxueziyuan` WRITE;
/*!40000 ALTER TABLE `discussjiaoxueziyuan` DISABLE KEYS */;
INSERT INTO `discussjiaoxueziyuan` VALUES (121,'2021-02-25 14:53:17',1,1,'评论内容1','回复内容1'),(122,'2021-02-25 14:53:17',2,2,'评论内容2','回复内容2'),(123,'2021-02-25 14:53:17',3,3,'评论内容3','回复内容3'),(124,'2021-02-25 14:53:17',4,4,'评论内容4','回复内容4'),(125,'2021-02-25 14:53:17',5,5,'评论内容5','回复内容5'),(126,'2021-02-25 14:53:17',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiaoxueziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszuoyefabu`
--

DROP TABLE IF EXISTS `discusszuoyefabu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszuoyefabu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='作业发布评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszuoyefabu`
--

LOCK TABLES `discusszuoyefabu` WRITE;
/*!40000 ALTER TABLE `discusszuoyefabu` DISABLE KEYS */;
INSERT INTO `discusszuoyefabu` VALUES (131,'2021-02-25 14:53:17',1,1,'评论内容1','回复内容1'),(132,'2021-02-25 14:53:17',2,2,'评论内容2','回复内容2'),(133,'2021-02-25 14:53:17',3,3,'评论内容3','回复内容3'),(134,'2021-02-25 14:53:17',4,4,'评论内容4','回复内容4'),(135,'2021-02-25 14:53:17',5,5,'评论内容5','回复内容5'),(136,'2021-02-25 14:53:17',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszuoyefabu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265583274 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-02-25 14:53:17','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-02-25 14:53:17','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-02-25 14:53:17','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-02-25 14:53:17','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-02-25 14:53:17','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-02-25 14:53:17','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1614265583273,'2021-02-25 15:06:22','练习书法','<p>书法大家一起练习</p>',0,1614265294839,'111','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshixinxi`
--

DROP TABLE IF EXISTS `jiaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265330532 DEFAULT CHARSET=utf8 COMMENT='教师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshixinxi`
--

LOCK TABLES `jiaoshixinxi` WRITE;
/*!40000 ALTER TABLE `jiaoshixinxi` DISABLE KEYS */;
INSERT INTO `jiaoshixinxi` VALUES (21,'2021-02-25 14:53:17','教师信息1','123456','教师姓名1','男','440300199101010001','13823888881','773890001@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian1.jpg'),(22,'2021-02-25 14:53:17','教师信息2','123456','教师姓名2','男','440300199202020002','13823888882','773890002@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian2.jpg'),(23,'2021-02-25 14:53:17','教师信息3','123456','教师姓名3','男','440300199303030003','13823888883','773890003@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian3.jpg'),(24,'2021-02-25 14:53:17','教师信息4','123456','教师姓名4','男','440300199404040004','13823888884','773890004@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian4.jpg'),(25,'2021-02-25 14:53:17','教师信息5','123456','教师姓名5','男','440300199505050005','13823888885','773890005@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian5.jpg'),(26,'2021-02-25 14:53:17','教师信息6','123456','教师姓名6','男','440300199606060006','13823888886','773890006@qq.com','http://localhost:8080/jspmupfv7/upload/jiaoshixinxi_zhaopian6.jpg'),(1614265330531,'2021-02-25 15:02:10','222','222','孙俪','女','665477711122336598','12544589632','5533@163.com','http://localhost:8080/jspmupfv7/upload/1614265380229.png');
/*!40000 ALTER TABLE `jiaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuedayi`
--

DROP TABLE IF EXISTS `jiaoxuedayi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuedayi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanbianhao` varchar(200) DEFAULT NULL COMMENT '资源编号',
  `jiaoxuexiangmu` varchar(200) DEFAULT NULL COMMENT '教学项目',
  `jiaoxueneirong` varchar(200) DEFAULT NULL COMMENT '教学内容',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `fankuibiaoti` varchar(200) DEFAULT NULL COMMENT '反馈标题',
  `fankuineirong` varchar(200) DEFAULT NULL COMMENT '反馈内容',
  `dayixinxi` varchar(200) NOT NULL COMMENT '答疑信息',
  `dayineirong` varchar(200) DEFAULT NULL COMMENT '答疑内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265633081 DEFAULT CHARSET=utf8 COMMENT='教学答疑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuedayi`
--

LOCK TABLES `jiaoxuedayi` WRITE;
/*!40000 ALTER TABLE `jiaoxuedayi` DISABLE KEYS */;
INSERT INTO `jiaoxuedayi` VALUES (51,'2021-02-25 14:53:17','资源编号1','教学项目1','教学内容1','日期1','学生账号1','学生姓名1','身份证号码1','反馈标题1','反馈内容1','答疑信息1','答疑内容1'),(52,'2021-02-25 14:53:17','资源编号2','教学项目2','教学内容2','日期2','学生账号2','学生姓名2','身份证号码2','反馈标题2','反馈内容2','答疑信息2','答疑内容2'),(53,'2021-02-25 14:53:17','资源编号3','教学项目3','教学内容3','日期3','学生账号3','学生姓名3','身份证号码3','反馈标题3','反馈内容3','答疑信息3','答疑内容3'),(54,'2021-02-25 14:53:17','资源编号4','教学项目4','教学内容4','日期4','学生账号4','学生姓名4','身份证号码4','反馈标题4','反馈内容4','答疑信息4','答疑内容4'),(55,'2021-02-25 14:53:17','资源编号5','教学项目5','教学内容5','日期5','学生账号5','学生姓名5','身份证号码5','反馈标题5','反馈内容5','答疑信息5','答疑内容5'),(56,'2021-02-25 14:53:17','资源编号6','教学项目6','教学内容6','日期6','学生账号6','学生姓名6','身份证号码6','反馈标题6','反馈内容6','答疑信息6','答疑内容6'),(1614265633080,'2021-02-25 15:07:12','1614265396','历史','历史书法','2021-02-03','111','章三','113244445556668888','书法有误','第二笔貌似不正确','不是有误','第二笔有两种写法');
/*!40000 ALTER TABLE `jiaoxuedayi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuefankui`
--

DROP TABLE IF EXISTS `jiaoxuefankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuefankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanbianhao` varchar(200) NOT NULL COMMENT '资源编号',
  `jiaoxuexiangmu` varchar(200) NOT NULL COMMENT '教学项目',
  `jiaoxueneirong` varchar(200) DEFAULT NULL COMMENT '教学内容',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `fankuibiaoti` varchar(200) NOT NULL COMMENT '反馈标题',
  `fankuineirong` varchar(200) NOT NULL COMMENT '反馈内容',
  `fankuiriqi` date DEFAULT NULL COMMENT '反馈日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265544983 DEFAULT CHARSET=utf8 COMMENT='教学反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuefankui`
--

LOCK TABLES `jiaoxuefankui` WRITE;
/*!40000 ALTER TABLE `jiaoxuefankui` DISABLE KEYS */;
INSERT INTO `jiaoxuefankui` VALUES (41,'2021-02-25 14:53:17','资源编号1','教学项目1','教学内容1','日期1','工号1','教师姓名1','教师性别1','学生账号1','学生姓名1','身份证号码1','反馈标题1','反馈内容1','2021-02-25'),(42,'2021-02-25 14:53:17','资源编号2','教学项目2','教学内容2','日期2','工号2','教师姓名2','教师性别2','学生账号2','学生姓名2','身份证号码2','反馈标题2','反馈内容2','2021-02-25'),(43,'2021-02-25 14:53:17','资源编号3','教学项目3','教学内容3','日期3','工号3','教师姓名3','教师性别3','学生账号3','学生姓名3','身份证号码3','反馈标题3','反馈内容3','2021-02-25'),(44,'2021-02-25 14:53:17','资源编号4','教学项目4','教学内容4','日期4','工号4','教师姓名4','教师性别4','学生账号4','学生姓名4','身份证号码4','反馈标题4','反馈内容4','2021-02-25'),(45,'2021-02-25 14:53:17','资源编号5','教学项目5','教学内容5','日期5','工号5','教师姓名5','教师性别5','学生账号5','学生姓名5','身份证号码5','反馈标题5','反馈内容5','2021-02-25'),(46,'2021-02-25 14:53:17','资源编号6','教学项目6','教学内容6','日期6','工号6','教师姓名6','教师性别6','学生账号6','学生姓名6','身份证号码6','反馈标题6','反馈内容6','2021-02-25'),(1614265544982,'2021-02-25 15:05:44','1614265396','历史','历史书法','2021-02-03','222','孙俪','女','111','章三','113244445556668888','书法有误','第二笔貌似不正确','2021-02-10');
/*!40000 ALTER TABLE `jiaoxuefankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxueziyuan`
--

DROP TABLE IF EXISTS `jiaoxueziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxueziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanbianhao` varchar(200) NOT NULL COMMENT '资源编号',
  `jiaoxuexiangmu` varchar(200) NOT NULL COMMENT '教学项目',
  `jiaoxueneirong` varchar(200) DEFAULT NULL COMMENT '教学内容',
  `jiaoxuetupian` varchar(200) DEFAULT NULL COMMENT '教学图片',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziyuanbianhao` (`ziyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265428855 DEFAULT CHARSET=utf8 COMMENT='教学资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxueziyuan`
--

LOCK TABLES `jiaoxueziyuan` WRITE;
/*!40000 ALTER TABLE `jiaoxueziyuan` DISABLE KEYS */;
INSERT INTO `jiaoxueziyuan` VALUES (31,'2021-02-25 14:53:17','资源编号1','教学项目1','教学内容1','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian1.jpg','2021-02-25','工号1','教师姓名1','教师性别1','手机号码1',1,1,'2021-02-25 22:53:17',1),(32,'2021-02-25 14:53:17','资源编号2','教学项目2','教学内容2','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian2.jpg','2021-02-25','工号2','教师姓名2','教师性别2','手机号码2',2,2,'2021-02-25 22:53:17',2),(33,'2021-02-25 14:53:17','资源编号3','教学项目3','教学内容3','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian3.jpg','2021-02-25','工号3','教师姓名3','教师性别3','手机号码3',3,3,'2021-02-25 22:53:17',3),(34,'2021-02-25 14:53:17','资源编号4','教学项目4','教学内容4','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian4.jpg','2021-02-25','工号4','教师姓名4','教师性别4','手机号码4',4,4,'2021-02-25 22:53:17',4),(35,'2021-02-25 14:53:17','资源编号5','教学项目5','教学内容5','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian5.jpg','2021-02-25','工号5','教师姓名5','教师性别5','手机号码5',5,5,'2021-02-25 22:53:17',5),(36,'2021-02-25 14:53:17','资源编号6','教学项目6','教学内容6','http://localhost:8080/jspmupfv7/upload/jiaoxueziyuan_jiaoxuetupian6.jpg','2021-02-25','工号6','教师姓名6','教师性别6','手机号码6',6,6,'2021-02-25 22:53:17',6),(1614265428854,'2021-02-25 15:03:48','1614265396','历史','历史书法','http://localhost:8080/jspmupfv7/upload/1614265424309.jpg','2021-02-03','222','孙俪','女','12544589632',0,0,'2021-02-25 23:05:47',2);
/*!40000 ALTER TABLE `jiaoxueziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-02-25 14:53:17',1,'用户名1','留言内容1','回复内容1'),(112,'2021-02-25 14:53:17',2,'用户名2','留言内容2','回复内容2'),(113,'2021-02-25 14:53:17',3,'用户名3','留言内容3','回复内容3'),(114,'2021-02-25 14:53:17',4,'用户名4','留言内容4','回复内容4'),(115,'2021-02-25 14:53:17',5,'用户名5','留言内容5','回复内容5'),(116,'2021-02-25 14:53:17',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-25 14:53:17','标题1','简介1','http://localhost:8080/jspmupfv7/upload/news_picture1.jpg','内容1'),(102,'2021-02-25 14:53:17','标题2','简介2','http://localhost:8080/jspmupfv7/upload/news_picture2.jpg','内容2'),(103,'2021-02-25 14:53:17','标题3','简介3','http://localhost:8080/jspmupfv7/upload/news_picture3.jpg','内容3'),(104,'2021-02-25 14:53:17','标题4','简介4','http://localhost:8080/jspmupfv7/upload/news_picture4.jpg','内容4'),(105,'2021-02-25 14:53:17','标题5','简介5','http://localhost:8080/jspmupfv7/upload/news_picture5.jpg','内容5'),(106,'2021-02-25 14:53:17','标题6','简介6','http://localhost:8080/jspmupfv7/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1614264881278,'111','xueshengxinxi','学生信息','bk3vrd9qk51x3c86ndidqpl208u15cpt','2021-02-25 14:55:26','2021-02-25 15:59:01'),(2,1614264917713,'222','jiaoshixinxi','教师信息','n5npwf3qgdbiopqkote2ca60q6aak5vy','2021-02-25 14:55:59','2021-02-25 15:56:00'),(3,1,'abo','users','管理员','4bgbxnkn148ie2hmnhy9zgdsaduhwemw','2021-02-25 14:59:14','2021-02-25 16:07:41'),(4,1614265294839,'111','xueshengxinxi','学生信息','mow6jz365vkc8vghvcocjai8kbsiecfh','2021-02-25 15:02:18','2021-02-25 16:07:23'),(5,1614265330531,'222','jiaoshixinxi','教师信息','v7mxlyga092os9z7c5inq6sexgjb8w7i','2021-02-25 15:02:48','2021-02-25 16:06:42');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 14:53:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxinxi`
--

DROP TABLE IF EXISTS `xueshengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xueshengxingbie` varchar(200) DEFAULT NULL COMMENT '学生性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265294840 DEFAULT CHARSET=utf8 COMMENT='学生信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxinxi`
--

LOCK TABLES `xueshengxinxi` WRITE;
/*!40000 ALTER TABLE `xueshengxinxi` DISABLE KEYS */;
INSERT INTO `xueshengxinxi` VALUES (11,'2021-02-25 14:53:17','学生信息1','123456','学生姓名1','男','440300199101010001','13823888881','773890001@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian1.jpg'),(12,'2021-02-25 14:53:17','学生信息2','123456','学生姓名2','男','440300199202020002','13823888882','773890002@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian2.jpg'),(13,'2021-02-25 14:53:17','学生信息3','123456','学生姓名3','男','440300199303030003','13823888883','773890003@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian3.jpg'),(14,'2021-02-25 14:53:17','学生信息4','123456','学生姓名4','男','440300199404040004','13823888884','773890004@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian4.jpg'),(15,'2021-02-25 14:53:17','学生信息5','123456','学生姓名5','男','440300199505050005','13823888885','773890005@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian5.jpg'),(16,'2021-02-25 14:53:17','学生信息6','123456','学生姓名6','男','440300199606060006','13823888886','773890006@qq.com','http://localhost:8080/jspmupfv7/upload/xueshengxinxi_zhaopian6.jpg'),(1614265294839,'2021-02-25 15:01:34','111','111','章三','男','113244445556668888','13444445555','123@163.com','http://localhost:8080/jspmupfv7/upload/1614265356286.png');
/*!40000 ALTER TABLE `xueshengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoye`
--

DROP TABLE IF EXISTS `zuoye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) NOT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zuoyeqingkuang` varchar(200) NOT NULL COMMENT '作业情况',
  `wanchengriqi` date DEFAULT NULL COMMENT '完成日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265560572 DEFAULT CHARSET=utf8 COMMENT='作业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoye`
--

LOCK TABLES `zuoye` WRITE;
/*!40000 ALTER TABLE `zuoye` DISABLE KEYS */;
INSERT INTO `zuoye` VALUES (71,'2021-02-25 14:53:17','作业编号1','作业标题1','作业内容1','工号1','教师姓名1','教师性别1','学生账号1','学生姓名1','已完成','2021-02-25'),(72,'2021-02-25 14:53:17','作业编号2','作业标题2','作业内容2','工号2','教师姓名2','教师性别2','学生账号2','学生姓名2','已完成','2021-02-25'),(73,'2021-02-25 14:53:17','作业编号3','作业标题3','作业内容3','工号3','教师姓名3','教师性别3','学生账号3','学生姓名3','已完成','2021-02-25'),(74,'2021-02-25 14:53:17','作业编号4','作业标题4','作业内容4','工号4','教师姓名4','教师性别4','学生账号4','学生姓名4','已完成','2021-02-25'),(75,'2021-02-25 14:53:17','作业编号5','作业标题5','作业内容5','工号5','教师姓名5','教师性别5','学生账号5','学生姓名5','已完成','2021-02-25'),(76,'2021-02-25 14:53:17','作业编号6','作业标题6','作业内容6','工号6','教师姓名6','教师性别6','学生账号6','学生姓名6','已完成','2021-02-25'),(1614265560571,'2021-02-25 15:05:59','1614265433','日常练习','书法练习','222','孙俪','女','111','章三','已完成','2021-02-19');
/*!40000 ALTER TABLE `zuoye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoyefabu`
--

DROP TABLE IF EXISTS `zuoyefabu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoyefabu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) NOT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) NOT NULL COMMENT '作业标题',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshixingbie` varchar(200) DEFAULT NULL COMMENT '教师性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuoyebianhao` (`zuoyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614265453394 DEFAULT CHARSET=utf8 COMMENT='作业发布';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoyefabu`
--

LOCK TABLES `zuoyefabu` WRITE;
/*!40000 ALTER TABLE `zuoyefabu` DISABLE KEYS */;
INSERT INTO `zuoyefabu` VALUES (61,'2021-02-25 14:53:17','作业编号1','作业标题1','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian1.jpg','作业内容1','工号1','教师姓名1','教师性别1','身份证号码1','手机号码1',1,1),(62,'2021-02-25 14:53:17','作业编号2','作业标题2','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian2.jpg','作业内容2','工号2','教师姓名2','教师性别2','身份证号码2','手机号码2',2,2),(63,'2021-02-25 14:53:17','作业编号3','作业标题3','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian3.jpg','作业内容3','工号3','教师姓名3','教师性别3','身份证号码3','手机号码3',3,3),(64,'2021-02-25 14:53:17','作业编号4','作业标题4','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian4.jpg','作业内容4','工号4','教师姓名4','教师性别4','身份证号码4','手机号码4',4,4),(65,'2021-02-25 14:53:17','作业编号5','作业标题5','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian5.jpg','作业内容5','工号5','教师姓名5','教师性别5','身份证号码5','手机号码5',5,5),(66,'2021-02-25 14:53:17','作业编号6','作业标题6','http://localhost:8080/jspmupfv7/upload/zuoyefabu_zuoyetupian6.jpg','作业内容6','工号6','教师姓名6','教师性别6','身份证号码6','手机号码6',6,6),(1614265453393,'2021-02-25 15:04:13','1614265433','日常练习','http://localhost:8080/jspmupfv7/upload/1614265448061.jpg','书法练习','222','孙俪','女','665477711122336598','12544589632',0,0);
/*!40000 ALTER TABLE `zuoyefabu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 15:36:02
