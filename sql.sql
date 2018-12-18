/*
SQLyog Ultimate v8.32 
MySQL - 5.0.24-community-nt : Database - card
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`card` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `card`;

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `cardID` varchar(30) NOT NULL,
  `cardSet` varchar(30) default 'NB-IOT SIM卡',
  `cardType` varchar(30) default '插拔卡',
  `cardStatID` int(11) default NULL,
  `cardCombo` varchar(30) default NULL,
  `cardExpiry` varchar(20) default NULL,
  `cardOwnership` varchar(20) default NULL,
  `supplyCompanyID` int(11) default NULL,
  `cardInDate` date default NULL,
  `outDate` date default NULL,
  `receiverID` int(11) default NULL,
  `contractID` varchar(30) default NULL,
  `productID` int(11) default NULL,
  `takeCompanyID` int(11) default NULL,
  `openCardDate` date default NULL,
  `startCardDate` date default NULL,
  `endCardDate` date default NULL,
  `info` varchar(500) default NULL,
  `del` int(11) default NULL,
  `inDates` datetime default NULL,
  PRIMARY KEY  (`cardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card` */

/*Table structure for table `card_edit` */

DROP TABLE IF EXISTS `card_edit`;

CREATE TABLE `card_edit` (
  `cardID` varchar(30) NOT NULL,
  `cardSet` varchar(30) default NULL,
  `cardType` varchar(30) default NULL,
  `cardStatID` int(11) default NULL,
  `cardCombo` varchar(30) default NULL,
  `cardExpiry` varchar(20) default NULL,
  `cardOwnership` varchar(20) default NULL,
  `supplyCompanyID` int(11) default NULL,
  `cardInDate` date default NULL,
  `outDate` date default NULL,
  `receiverID` int(11) default NULL,
  `contractID` varchar(30) default NULL,
  `productID` int(11) default NULL,
  `takeCompanyID` int(11) default NULL,
  `openCardDate` date default NULL,
  `startCardDate` date default NULL,
  `endCardDate` date default NULL,
  `info` varchar(500) default NULL,
  `del` int(11) default NULL,
  `inDates` datetime default NULL,
  `editUser` varchar(30) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `card_edit` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `cID` int(11) default NULL,
  `cName` varchar(50) default NULL,
  `edit` int(11) default NULL,
  `del` int(11) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`cID`,`cName`,`edit`,`del`,`editDate`) values (0,'未指定',0,0,'2018-12-18 11:26:54');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pID` int(11) default NULL,
  `pName` varchar(100) default NULL,
  `edit` int(11) default NULL,
  `del` int(11) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pID`,`pName`,`edit`,`del`,`editDate`) values (0,'未指定',0,0,'2018-12-18 11:26:22');

/*Table structure for table `receiver` */

DROP TABLE IF EXISTS `receiver`;

CREATE TABLE `receiver` (
  `ID` int(11) default NULL,
  `recName` varchar(20) default NULL,
  `edit` int(11) default NULL,
  `del` int(11) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `receiver` */

insert  into `receiver`(`ID`,`recName`,`edit`,`del`,`editDate`) values (0,'未指定',0,0,'2018-12-18 11:27:13');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` int(11) default NULL,
  `state` varchar(10) default NULL,
  `edit` int(11) default NULL,
  `del` int(11) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

insert  into `state`(`id`,`state`,`edit`,`del`,`editDate`) values (0,'未指定',0,0,NULL),(1,'未开通',0,0,NULL),(2,'已开通',0,0,NULL);

/*Table structure for table `supplycompany` */

DROP TABLE IF EXISTS `supplycompany`;

CREATE TABLE `supplycompany` (
  `id` int(11) default NULL,
  `scName` varchar(50) default NULL,
  `edit` int(11) default NULL,
  `del` int(11) default NULL,
  `editDate` datetime default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `supplycompany` */

insert  into `supplycompany`(`id`,`scName`,`edit`,`del`,`editDate`) values (0,'未指定',0,0,NULL),(1,'漳州电信',0,0,NULL),(2,'永春电信',0,0,'2018-12-12 14:41:39'),(3,'永春移动',0,0,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` varchar(20) default NULL,
  `userName` varchar(30) default NULL,
  `pwd` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userID`,`userName`,`pwd`) values ('admin','silian','sl123456'),('asd','haha','111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
