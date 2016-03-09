/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.1-m2-community : Database - college
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`college` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `college`;

/*Table structure for table `semreg` */

DROP TABLE IF EXISTS `semreg`;

CREATE TABLE `semreg` (
  `uid` varchar(25) NOT NULL,
  `classrollno` varchar(12) DEFAULT NULL,
  `unm` varchar(25) DEFAULT NULL,
  `fnm` varchar(25) DEFAULT NULL,
  `mnm` varchar(25) DEFAULT NULL,
  `relation` varchar(25) DEFAULT NULL,
  `stuphno` varchar(25) DEFAULT NULL,
  `semail` varchar(50) DEFAULT NULL,
  `fmail` varchar(50) DEFAULT NULL,
  `locadrs` varchar(100) DEFAULT NULL,
  `paradrs` varchar(100) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `emername` varchar(25) DEFAULT NULL,
  `emerphno` varchar(25) DEFAULT NULL,
  `bloodgp` varchar(10) DEFAULT NULL,
  `donateblood` varchar(20) DEFAULT NULL,
  `disease` varchar(25) DEFAULT NULL,
  `joiningdate` varchar(25) DEFAULT NULL,
  `lastsemgread` varchar(25) DEFAULT NULL,
  `semno` varchar(25) NOT NULL,
  `fphno` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `branch` varchar(4) DEFAULT NULL,
  `sessionfrom` varchar(10) DEFAULT NULL,
  `sessionto` varchar(10) DEFAULT NULL,
  `sub1` varchar(25) DEFAULT NULL,
  `sub2` varchar(25) DEFAULT NULL,
  `sub3` varchar(25) DEFAULT NULL,
  `sub4` varchar(25) DEFAULT NULL,
  `sub5` varchar(25) DEFAULT NULL,
  `subcode1` varchar(25) DEFAULT NULL,
  `subcode2` varchar(25) DEFAULT NULL,
  `subcode3` varchar(25) DEFAULT NULL,
  `subcode4` varchar(25) DEFAULT NULL,
  `subcode5` varchar(25) DEFAULT NULL,
  `prat1` varchar(25) DEFAULT NULL,
  `prat2` varchar(25) DEFAULT NULL,
  `prat3` varchar(25) DEFAULT NULL,
  `prat4` varchar(25) DEFAULT NULL,
  `pratcode1` varchar(25) DEFAULT NULL,
  `pratcode2` varchar(25) DEFAULT NULL,
  `pratcode3` varchar(25) DEFAULT NULL,
  `pratcode4` varchar(25) DEFAULT NULL,
  `semgd` varchar(50) DEFAULT NULL,
  `selfstudy` varchar(50) DEFAULT NULL,
  `minormajor` varchar(50) DEFAULT NULL,
  `guidename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`,`semno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `semreg` */

insert  into `semreg`(`uid`,`classrollno`,`unm`,`fnm`,`mnm`,`relation`,`stuphno`,`semail`,`fmail`,`locadrs`,`paradrs`,`category`,`emername`,`emerphno`,`bloodgp`,`donateblood`,`disease`,`joiningdate`,`lastsemgread`,`semno`,`fphno`,`status`,`branch`,`sessionfrom`,`sessionto`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`subcode1`,`subcode2`,`subcode3`,`subcode4`,`subcode5`,`prat1`,`prat2`,`prat3`,`prat4`,`pratcode1`,`pratcode2`,`pratcode3`,`pratcode4`,`semgd`,`selfstudy`,`minormajor`,`guidename`) values ('0830cs101053','cs53','lovekesh','vishnu','chetna','fatherson','9589851804','lkhore@gmail.com','lkhore@yahoo.in','indore','indore','General','vishnu','9754903107','B+','yes','yes','2010','6.8','1','9754903107',0,'CSE','2010','2014','softcomputing','wireless','n/w mgmt','web eng.','','cs-801','cs-802','cs-8201','cs8301','','web eng','soft','','','cs 8301','cs 8201','','','virus','android','college registration system','narendra pal rathor');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(25) NOT NULL,
  `unm` varchar(25) NOT NULL,
  `upass` varchar(25) NOT NULL,
  `post` varchar(45) NOT NULL,
  `adrs` varchar(45) DEFAULT NULL,
  `sex` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`unm`,`upass`,`post`,`adrs`,`sex`,`email`,`contact`,`verify`) values ('0830ad101000','lovekesh','asdf@','admin','indore','MALE','lkhore1@gmail.com','9898989898',1),('0830cs101053','lovekesh','asdf@','student','indore','MALE','lkhore@gmail.com','9589851804',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
