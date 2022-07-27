/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 10.4.22-MariaDB : Database - portfolio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `portfolio`;

/*Table structure for table `berkas` */

DROP TABLE IF EXISTS `berkas`;

CREATE TABLE `berkas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `berkas` */

insert  into `berkas`(`id`,`keterangan`,`pdf`) values (5,'Ijazah','file_1643082051.pdf'),(6,'CV ','file_1643082095.pdf');

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `education` */

insert  into `education`(`id`,`date`,`school`,`content`) values (2,'2012-2015','SMAN 5 Surabaya',''),(4,'2015-2018','Politeknik Kediri - DIII Teknik Informatika','');

/*Table structure for table `experience` */

DROP TABLE IF EXISTS `experience`;

CREATE TABLE `experience` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `experience` */

insert  into `experience`(`id`,`date`,`company`,`position`,`description`) values (1,'Jul 2017- Agu 2017','PT. Piramida Teknologi Informasi','Magang','Membuat web company profile.'),(2,'Apr 2019 - Jul 2019','WEBANE.COM','Web developer','Membuat dan merancang sistem akademik.'),(4,'Nov 2019 - Apr 2020','CV. Harmoni Integra','Web developer','-Maintenance web dan aplikasi mobile PSC-119 .'),(5,'Mei 2020 - Sekarang','Freelance (Self-employed)','Web developer','- Sistem akademik Perguruan Tinggi Advent Nusantara');

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profesi` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `profile` */

insert  into `profile`(`id`,`content`,`name`,`profesi`,`img`) values (2,'<p>Web developer dengan pengalaman kurang lebih 1 tahun.</p>\r\n\r\n<p><strong>Birthday:</strong>&nbsp;15 April 1996</p>\r\n\r\n<p><strong>Website:</strong>&nbsp;https://dikareza96.github.io/</p>\r\n\r\n<p><strong>Phone:</strong>&nbsp;089-533-803-9131</p>\r\n\r\n<p><strong>Github:</strong>&nbsp;https://github.com/dikareza96/</p>\r\n\r\n<p><strong>Pendidikan:</strong>&nbsp;D-III Teknik Informatika</p>\r\n\r\n<p><strong>Mail:</strong>&nbsp;dikareza966@gmail.com</p>\r\n\r\n<p><strong>Alamat</strong>: Mojoroto, Kota Kediri</p>\r\n','Dika Reza Rostanto','Web developer','file_1643074659.jpg');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `teaser` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`id`,`title`,`teaser`,`content`,`img`) values (5,'Project 1','Job Placement Center, Web Info','<p>Website penyedia lowongan pekerjaan bagi mahasiswa Politeknik Kediri.</p>\r\n\r\n<p><strong>Fitur:</strong><br />\r\n<strong>-</strong>&nbsp;Lowongan terbaru<br />\r\n<strong>-</strong>&nbsp;Pencarian lowongan<br />\r\n<strong>-</strong>&nbsp;Lowongan terpopuler</p>\r\n\r\n<p><strong>Teknologi:</strong><br />\r\n<strong>-</strong>&nbsp;Codeigniter<br />\r\n<strong>-</strong>&nbsp;PHP<br />\r\n<strong>-</strong>&nbsp;MySQL</p>\r\n\r\n<p><strong>Demo</strong><br />\r\n<a href=\"https://karirpoltek.000webhostapp.com/\">Job Placement Center</a></p>\r\n','file_1643075890.png'),(6,'Project 2','Frozen Food, Ecommerce','<h2>Frozen Food</h2>\r\n\r\n<p>Aplikasi e-commerce toko Frozen Food dengan pembayaran payment gateway IPAYMU.</p>\r\n\r\n<p><strong>Fitur:</strong><br />\r\n<strong>-</strong>&nbsp;Register Member<br />\r\n<strong>-</strong>&nbsp;Login<br />\r\n<strong>-</strong>&nbsp;Keranjang Belanja<br />\r\n<strong>-</strong>&nbsp;Dukungan pengiriman JNE/TIKI<br />\r\n<strong>-</strong>&nbsp;Pembayaran mudah dengan IPAYMU<br />\r\n<strong>-</strong>&nbsp;Pengaturan Akun</p>\r\n\r\n<p><strong>Teknologi:</strong><br />\r\n<strong>-</strong>&nbsp;Laravel<br />\r\n<strong>-</strong>&nbsp;PHP<br />\r\n<strong>-</strong>&nbsp;MySQL</p>\r\n\r\n<p><strong>Demo</strong><br />\r\n<a href=\"https://frozen-food.000webhostapp.com/\">E-commerce Frozen Food</a></p>\r\n','file_1643075943.png');

/*Table structure for table `skill` */

DROP TABLE IF EXISTS `skill`;

CREATE TABLE `skill` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `skill` varchar(255) DEFAULT NULL,
  `experience` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `skill` */

insert  into `skill`(`id`,`skill`,`experience`) values (1,'PHP',7),(3,'Javascript',7),(4,'Mysql',7),(5,'Codeigniter',7),(6,'Laravel',7);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`name`,`level`) values (1,'admin','admin','Admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
