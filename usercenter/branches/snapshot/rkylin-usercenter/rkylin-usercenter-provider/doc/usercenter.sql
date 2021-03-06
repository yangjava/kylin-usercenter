/*
SQLyog Ultimate v11.13 (64 bit)
MySQL - 5.6.23-log : Database - usercenter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `UC_COMPANY_INFO` */

DROP TABLE IF EXISTS `UC_COMPANY_INFO`;

CREATE TABLE `UC_COMPANY_INFO` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `USER_INFO_ID` bigint(20) unsigned NOT NULL COMMENT '用户信息表主键',
  `COMPANY_NAME` varchar(120) CHARACTER SET utf8 NOT NULL COMMENT '企业名称',
  `COMPANY_SHORT_NAME` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '企业简称',
  `COMPANY_TYPE` tinyint(2) unsigned DEFAULT NULL COMMENT '企业类型',
  `MCC` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '行业编号',
  `POST` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮编',
  `FAX` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '传真',
  `PROVINCE` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '省份',
  `CITY` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '地市',
  `CONTACTS` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `CONTACTS_INFO` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `REGIST_FINACNCE` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '注册资金',
  `MEMBERS` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工数',
  `ADDRESS` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `WEBSITE` varchar(120) CHARACTER SET utf8 DEFAULT NULL COMMENT '网址',
  `BUSLINCE` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '营业执照号',
  `ACUNT_OPN_LINCE` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '开户许可证',
  `TAXREG_CARD1` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '税务登记证1',
  `TAXREG_CARD2` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '税务登记证2',
  `ORGAN_CERTIFICATE` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '住址机构代码证',
  `CORPORATE_NAME` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人姓名',
  `CORPORATE_IDENTITY` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人身份证',
  `CORPORATE_TEL` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人电话',
  `CORPORATE_MAIL` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人邮箱',
  `BUS_PLACE_CTF` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '经营场所实地认证',
  `LOAN_CARD` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '贷款卡',
  `OTHERINFO1` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用1',
  `OTHERINFO2` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用2',
  `OTHERINFO3` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用3',
  `REMARK` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='企业信息表';

/*Table structure for table `UC_PERSON_INFO` */

DROP TABLE IF EXISTS `UC_PERSON_INFO`;

CREATE TABLE `UC_PERSON_INFO` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USER_INFO_ID` bigint(20) unsigned NOT NULL COMMENT '用户信息表主键',
  `USER_CNAME` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '用户中文名字',
  `USER_ENAME` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户英文名字',
  `USER_TYPE` tinyint(3) unsigned DEFAULT '0' COMMENT '用户类型',
  `GENDER` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '用户生日',
  `ID_NUMBER` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份证号',
  `ADDRESS` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户地址',
  `MOBILE_PHONE` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '移动电话',
  `FIXED_PHONE` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '固定电话',
  `EMAIL` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `HANDLER_FAX` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '传真号',
  `NATIONAL` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '国家',
  `PROVINCE` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '省',
  `CITY` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '市',
  `DISTRICT` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '区',
  `ZIP_CODE` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮政编码',
  `EDUCATION` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '学历',
  `POLITICAL_STATUS` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '政治面貌',
  `INDUSTRY` varchar(8) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属行业',
  `COMPANY_NAME` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司名称',
  `COMPANY_ATTRIBUTE` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司性质',
  `COMPANY_PHONE` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT '公司电话',
  `JOB_ATTRIBUTE` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作性质',
  `OCCUPATION` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '职位',
  `MARRIAGE` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否结婚',
  `FAMILY_SIZE` tinyint(2) unsigned DEFAULT '0' COMMENT '家庭人口数量',
  `PERSON_INCOME` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '个人收入',
  `FAMILY_INCOME` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '家庭收入',
  `COME_FROM` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户来源',
  `QQ_NUMBER` varchar(16) CHARACTER SET utf8 DEFAULT NULL COMMENT 'QQ号',
  `WECHAT_NUMBER` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信号',
  `WEBO_NUMBER` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '微博号',
  `ISAUTHOR` tinyint(2) unsigned DEFAULT NULL COMMENT '实名验证类型',
  `OTHERINFO1` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用1',
  `OTHERINFO2` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用2',
  `OTHERINFO3` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT '备用3',
  `REMARK` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户备注',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表';

/*Table structure for table `UC_PWD_QUESTION` */

DROP TABLE IF EXISTS `UC_PWD_QUESTION`;

CREATE TABLE `UC_PWD_QUESTION` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `USER_INFO_ID` bigint(20) unsigned DEFAULT NULL COMMENT '用户信息表主键',
  `QUESTION_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '问题名称',
  `QUESTION_ANSWER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '问题答案',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='密码问题表答案表';

/*Table structure for table `UC_USER_INFO` */

DROP TABLE IF EXISTS `UC_USER_INFO`;

CREATE TABLE `UC_USER_INFO` (
  `USER_INFO_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户信息主键',
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `USER_CODE` varchar(32) DEFAULT NULL COMMENT '用户编码',
  `USER_TYPE` tinyint(4) unsigned DEFAULT NULL COMMENT '用户类型  1商户  2个人',
  `STATUS` tinyint(4) unsigned DEFAULT NULL COMMENT '用户状态  1正常  0禁用  9删除',
  `VERSION` int(11) unsigned DEFAULT '1' COMMENT '版本',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`USER_INFO_ID`),
  UNIQUE KEY `UK_UC_USER_INFO01` (`USER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Table structure for table `UC_USER_LOGIN` */

DROP TABLE IF EXISTS `UC_USER_LOGIN`;

CREATE TABLE `UC_USER_LOGIN` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '登陆ID',
  `USER_INFO_ID` bigint(20) unsigned NOT NULL COMMENT '用户编码(个人或企业)',
  `PWD_SALT` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '密码盐值',
  `PWD_MD` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `USER_TYPE` tinyint(4) unsigned NOT NULL COMMENT '用户类型 1企业  2个人',
  `LOGIN_NAME` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '登陆名(手机)',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_UC_USER_LOGIN01` (`LOGIN_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户登陆信息表';

/*Table structure for table `UC_USER_LOGIN_HISTORY` */

DROP TABLE IF EXISTS `UC_USER_LOGIN_HISTORY`;

CREATE TABLE `UC_USER_LOGIN_HISTORY` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `USER_INFO_ID` bigint(20) unsigned NOT NULL COMMENT '登陆ID',
  `LOGIN_IP` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT 'IP',
  `LOGIN_TYPE` tinyint(2) unsigned DEFAULT NULL COMMENT '类型 1登陆 2退出',
  `LONG_SOURCE` tinyint(2) unsigned NOT NULL COMMENT '用户登陆来源 1 andird 2 ios 3 pc',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='登陆登出历史表';

/*Table structure for table `UC_USER_WHITE` */

DROP TABLE IF EXISTS `UC_USER_WHITE`;

CREATE TABLE `UC_USER_WHITE` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `USER_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '用户ID',
  `REF_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '关联的USER_ID',
  `REF_NAME` varchar(120) COLLATE utf8_bin NOT NULL COMMENT '关联名称',
  `REF_TYPE` tinyint(4) unsigned DEFAULT NULL COMMENT '1.供应商，2.分销商',
  `APPLY_ID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '应用ID',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_UC_USER_WHITE01` (`USER_ID`,`APPLY_ID`,`REF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户白明单表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
