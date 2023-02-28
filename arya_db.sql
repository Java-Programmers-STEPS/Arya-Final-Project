/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.27-MariaDB : Database - crimefinal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crimefinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `crimefinal`;

/*Table structure for table `addteam` */

DROP TABLE IF EXISTS `addteam`;

CREATE TABLE `addteam` (
  `id` int(11) NOT NULL,
  `nameofteam` varchar(255) DEFAULT NULL,
  `leadingofficername` varchar(255) DEFAULT NULL,
  `officeaddress` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `selectteammembers` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `addteam` */

/*Table structure for table `complaintdtls` */

DROP TABLE IF EXISTS `complaintdtls`;

CREATE TABLE `complaintdtls` (
  `id` int(11) NOT NULL,
  `policestationname` varchar(255) DEFAULT NULL,
  `petitionername` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `complaintdetails` varchar(255) DEFAULT NULL,
  `dateofcomplaint` datetime DEFAULT NULL,
  `idproof` longblob DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `complaintdtls` */

/*Table structure for table `criminal` */

DROP TABLE IF EXISTS `criminal`;

CREATE TABLE `criminal` (
  `id` int(11) NOT NULL,
  `policestationname` varchar(255) DEFAULT NULL,
  `crimetype` varchar(255) DEFAULT NULL,
  `firid` int(11) DEFAULT NULL,
  `dateofcrime` date DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `jailterm` varchar(255) DEFAULT NULL,
  `criminalimage` longblob DEFAULT NULL,
  `mostwanted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `criminal` */

/*Table structure for table `districts` */

DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `id` int(14) DEFAULT NULL,
  `Districtname` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `districts` */

insert  into `districts`(`id`,`Districtname`) values 
(1,'Alappuzha'),
(2,'Eranakulam'),
(3,'Idukki'),
(4,'kannur'),
(5,'kottayam'),
(6,'kozhikode'),
(7,'kollam'),
(8,'Kasaragod'),
(9,'malappuram'),
(10,'Pathanamthitta'),
(11,'Palakkad'),
(12,'Thrissur'),
(13,'Thiruvananthapuram'),
(14,'Wayanad');

/*Table structure for table `firdlts` */

DROP TABLE IF EXISTS `firdlts`;

CREATE TABLE `firdlts` (
  `id` int(11) NOT NULL,
  `firregistrationnumber` int(11) DEFAULT NULL,
  `dateofregistration` date DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `firdlts` */

/*Table structure for table `mostwanted` */

DROP TABLE IF EXISTS `mostwanted`;

CREATE TABLE `mostwanted` (
  `id` int(11) NOT NULL,
  `policestationname` varchar(255) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `idproof` longblob DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateofbirth` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `identifyingmark` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mostwanted` */

/*Table structure for table `officers` */

DROP TABLE IF EXISTS `officers`;

CREATE TABLE `officers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cpassword` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pennumber` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `officers` */

/*Table structure for table `postmortum` */

DROP TABLE IF EXISTS `postmortum`;

CREATE TABLE `postmortum` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `doctorsname` varchar(255) DEFAULT NULL,
  `hospitaladdress` varchar(255) DEFAULT NULL,
  `descriptionofcase` varchar(255) DEFAULT NULL,
  `dateofbirth` int(11) DEFAULT NULL,
  `firid` int(11) DEFAULT NULL,
  `dateofpostmortum` int(11) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `idproof` longblob DEFAULT NULL,
  `postmortum` longblob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `postmortum` */

/*Table structure for table `securityquestion` */

DROP TABLE IF EXISTS `securityquestion`;

CREATE TABLE `securityquestion` (
  `id` int(3) DEFAULT NULL,
  `securityquestions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `securityquestion` */

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cpassword` varchar(255) DEFAULT NULL,
  `pennumber` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `selectsecurityquestions` varchar(255) DEFAULT NULL,
  `answerthesecurityquestions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `signup` */

/*Table structure for table `suspectedcriminals` */

DROP TABLE IF EXISTS `suspectedcriminals`;

CREATE TABLE `suspectedcriminals` (
  `id` int(11) NOT NULL,
  `image` longblob DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `idproof` longblob DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `policestationname` varchar(255) DEFAULT NULL,
  `officerincharge` varchar(255) DEFAULT NULL,
  `arrestdate` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `suspectedcriminals` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
