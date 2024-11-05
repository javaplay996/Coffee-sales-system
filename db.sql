/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqi99g
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqi99g` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqi99g`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822447357 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-19 16:40:38',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-19 16:40:38',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-19 16:40:38',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-19 16:40:38',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-19 16:40:38',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-19 16:40:38',6,'宇宙银河系月球1号','月某','13823888886','是'),(1618822447356,'2021-04-19 16:54:07',1618822358156,'广东省揭阳市榕城区西马街道西马路29号北市小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kafeixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822529864 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822579231 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-04-19 16:40:38',1,1,'提问1','回复1',1),(42,'2021-04-19 16:40:38',2,2,'提问2','回复2',2),(43,'2021-04-19 16:40:38',3,3,'提问3','回复3',3),(44,'2021-04-19 16:40:38',4,4,'提问4','回复4',4),(45,'2021-04-19 16:40:38',5,5,'提问5','回复5',5),(46,'2021-04-19 16:40:38',6,6,'提问6','回复6',6),(1618822544982,'2021-04-19 16:55:44',1618822358156,NULL,'请问有白咖啡吗',NULL,0),(1618822579230,'2021-04-19 16:56:18',1618822358156,1,NULL,'有的',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqi99g/upload/1618822109499.jpg'),(2,'picture2','http://localhost:8080/ssmqi99g/upload/1618822324355.jpg'),(3,'picture3','http://localhost:8080/ssmqi99g/upload/1618822334005.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskafeixinxi` */

DROP TABLE IF EXISTS `discusskafeixinxi`;

CREATE TABLE `discusskafeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822619922 DEFAULT CHARSET=utf8 COMMENT='咖啡信息评论表';

/*Data for the table `discusskafeixinxi` */

insert  into `discusskafeixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-19 16:40:38',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-19 16:40:38',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-19 16:40:38',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-19 16:40:38',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-19 16:40:38',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-19 16:40:38',6,6,'用户名6','评论内容6','回复内容6'),(1618822619921,'2021-04-19 16:56:59',1618822282747,1618822358156,'1','很不错的咖啡',NULL);

/*Table structure for table `kafeileixing` */

DROP TABLE IF EXISTS `kafeileixing`;

CREATE TABLE `kafeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kafeileixing` varchar(200) NOT NULL COMMENT '咖啡类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kafeileixing` (`kafeileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822241998 DEFAULT CHARSET=utf8 COMMENT='咖啡类型';

/*Data for the table `kafeileixing` */

insert  into `kafeileixing`(`id`,`addtime`,`kafeileixing`) values (21,'2021-04-19 16:40:38','厚乳拿铁'),(22,'2021-04-19 16:40:38','经典拿铁'),(23,'2021-04-19 16:40:38','大师咖啡'),(24,'2021-04-19 16:40:38','美式咖啡'),(25,'2021-04-19 16:40:38','摩卡咖啡'),(26,'2021-04-19 16:40:38','意式咖啡'),(1618822241997,'2021-04-19 16:50:41','白咖啡');

/*Table structure for table `kafeixinxi` */

DROP TABLE IF EXISTS `kafeixinxi`;

CREATE TABLE `kafeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kafeimingcheng` varchar(200) NOT NULL COMMENT '咖啡名称',
  `kafeileixing` varchar(200) NOT NULL COMMENT '咖啡类型',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zhuliao` varchar(200) DEFAULT NULL COMMENT '主料',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `lengreyin` varchar(200) DEFAULT NULL COMMENT '冷热饮',
  `kafeixiangqing` longtext COMMENT '咖啡详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822282748 DEFAULT CHARSET=utf8 COMMENT='咖啡信息';

/*Data for the table `kafeixinxi` */

insert  into `kafeixinxi`(`id`,`addtime`,`kafeimingcheng`,`kafeileixing`,`tupian`,`zhuliao`,`guige`,`lengreyin`,`kafeixiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-19 16:40:38','咖啡名称1','厚乳拿铁','http://localhost:8080/ssmqi99g/upload/1618821986538.jpg','主料1','规格1','热饮','<p>咖啡详情1</p>','2021-04-19 16:45:54',2,99.9),(32,'2021-04-19 16:40:38','咖啡名称2','大师咖啡','http://localhost:8080/ssmqi99g/upload/1618821995846.jpg','主料2','规格2','热饮','<p>咖啡详情2</p>','2021-04-19 16:54:21',10,99.9),(33,'2021-04-19 16:40:38','咖啡名称3','意式咖啡','http://localhost:8080/ssmqi99g/upload/1618822008620.jpg','主料3','规格3','热饮','<p>咖啡详情3</p>','2021-04-19 16:55:29',7,99.9),(34,'2021-04-19 16:40:38','咖啡名称4','摩卡咖啡','http://localhost:8080/ssmqi99g/upload/1618822019389.jpg','主料4','规格4','热饮','<p>咖啡详情4</p>','2021-04-19 16:46:52',5,99.9),(35,'2021-04-19 16:40:38','咖啡名称5','经典拿铁','http://localhost:8080/ssmqi99g/upload/kafeixinxi_tupian5.jpg','主料5','规格5','热饮','<p>咖啡详情5</p>','2021-04-19 16:47:05',6,99.9),(36,'2021-04-19 16:40:38','咖啡名称6','美式咖啡','http://localhost:8080/ssmqi99g/upload/kafeixinxi_tupian6.jpg','主料6','规格6','热饮','<p>咖啡详情6</p>','2021-04-19 16:53:29',9,99.9),(1618822282747,'2021-04-19 16:51:21','拿铁咖啡','经典拿铁','http://localhost:8080/ssmqi99g/upload/1618822257670.jpg','浓缩咖啡，鲜牛奶','300ml','热饮','<p>咖啡介绍</p><p><img src=\"http://localhost:8080/ssmqi99g/upload/1618822280803.jpg\"></p>','2021-04-19 16:57:02',6,29);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822310752 DEFAULT CHARSET=utf8 COMMENT='咖啡资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-19 16:40:38','标题1','简介1','http://localhost:8080/ssmqi99g/upload/news_picture1.jpg','内容1'),(92,'2021-04-19 16:40:38','标题2','简介2','http://localhost:8080/ssmqi99g/upload/1618822048427.jpg','<p>内容2</p>'),(93,'2021-04-19 16:40:38','标题3','简介3','http://localhost:8080/ssmqi99g/upload/1618822059405.jpg','<p>内容3</p>'),(94,'2021-04-19 16:40:38','标题4','简介4','http://localhost:8080/ssmqi99g/upload/news_picture4.jpg','内容4'),(95,'2021-04-19 16:40:38','标题5','简介5','http://localhost:8080/ssmqi99g/upload/news_picture5.jpg','内容5'),(96,'2021-04-19 16:40:38','标题6','简介6','http://localhost:8080/ssmqi99g/upload/1618822069421.jpg','<p>内容6</p>'),(1618822310751,'2021-04-19 16:51:50','新咖啡上线','新咖啡上线','http://localhost:8080/ssmqi99g/upload/1618822295770.jpg','<p>资讯内容KJDKHTFJYHKLYG</p><p><img src=\"http://localhost:8080/ssmqi99g/upload/1618822309184.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kafeixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822554577 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618822554576,'2021-04-19 16:55:54','20214191655543401917','kafeixinxi',1618822358156,1618822282747,'拿铁咖啡','http://localhost:8080/ssmqi99g/upload/1618822257670.jpg',2,29,29,58,58,1,'已完成','广东省揭阳市榕城区西马街道西马路29号北市小学','12312312312','陈一');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822525564 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618822499343,'2021-04-19 16:54:59',1618822358156,1618822282747,'kafeixinxi','拿铁咖啡','http://localhost:8080/ssmqi99g/upload/1618822257670.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','9t2s5olz2svujaayi1r6g94uqwhre15j','2021-04-19 16:43:46','2021-04-19 17:56:06'),(2,1618822358156,'1','yonghu','用户','61ltau1v7epkq47840x89wxy3q70ubx0','2021-04-19 16:53:28','2021-04-19 17:56:38');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 16:40:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618822358157 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-04-19 16:40:38','用户1','123456','姓名1','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-04-19 16:40:38','用户2','123456','姓名2','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-04-19 16:40:38','用户3','123456','姓名3','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-04-19 16:40:38','用户4','123456','姓名4','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-04-19 16:40:38','用户5','123456','姓名5','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-04-19 16:40:38','用户6','123456','姓名6','男','http://localhost:8080/ssmqi99g/upload/yonghu_touxiang6.jpg','13823888886',100),(1618822358156,'2021-04-19 16:52:38','1','1','陈一','女','http://localhost:8080/ssmqi99g/upload/1618822419408.jpg','12312312312',442);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
