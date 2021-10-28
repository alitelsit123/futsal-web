/*
SQLyog Ultimate v10.42  s
MySQL - 5.5.5-10.1.19-MariaDB : Database - db_vigor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_vigor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_vigor`;

/*Table structure for table `tboking` */

DROP TABLE IF EXISTS `tboking`;

CREATE TABLE `tboking` (
  `kdBoking` bigint(20) NOT NULL AUTO_INCREMENT,
  `noInvoice` varchar(20) NOT NULL,
  `tglInvoice` date NOT NULL,
  `usernameBoking` varchar(100) NOT NULL,
  `an` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `totalBayar` double NOT NULL,
  `statusBayar` char(1) NOT NULL,
  PRIMARY KEY (`kdBoking`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tboking` */

insert  into `tboking`(`kdBoking`,`noInvoice`,`tglInvoice`,`usernameBoking`,`an`,`alamat`,`email`,`kontak`,`totalBayar`,`statusBayar`) values (10,'INV-000001','2017-03-14','Boogye32','Budi Hermawan','Jl.M.Yamin Gg.Usaha Baru','mail.budihermawan@gmail.com','0821008911',100000,'B'),(11,'INV-000002','2017-03-15','admin','Budi Hermawan','jl','mail.budihermawan@gmail.com','0821008911',100000,'B');

/*Table structure for table `tboking_temp` */

DROP TABLE IF EXISTS `tboking_temp`;

CREATE TABLE `tboking_temp` (
  `kdBokingTemp` bigint(20) NOT NULL AUTO_INCREMENT,
  `kdJadwal` int(5) NOT NULL,
  `nomorLapangan` int(5) NOT NULL,
  `tglBokingTemp` date NOT NULL,
  `jamBokingTemp` varchar(20) NOT NULL,
  `hargaTemp` double NOT NULL,
  `subTotalTemp` double NOT NULL,
  `idSession` varchar(100) NOT NULL,
  PRIMARY KEY (`kdBokingTemp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tboking_temp` */

/*Table structure for table `thalamanstatis` */

DROP TABLE IF EXISTS `thalamanstatis`;

CREATE TABLE `thalamanstatis` (
  `kdHalaman` int(1) NOT NULL AUTO_INCREMENT,
  `profil` longtext NOT NULL,
  `caraBoking` longtext NOT NULL,
  PRIMARY KEY (`kdHalaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `thalamanstatis` */

/*Table structure for table `tjadwal` */

DROP TABLE IF EXISTS `tjadwal`;

CREATE TABLE `tjadwal` (
  `kdJadwal` bigint(20) NOT NULL AUTO_INCREMENT,
  `tglJadwal` date NOT NULL,
  `kdLapangan` int(5) NOT NULL,
  `kdJam` int(5) NOT NULL,
  `harga` double NOT NULL,
  `statusBoking` char(1) NOT NULL,
  PRIMARY KEY (`kdJadwal`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tjadwal` */

insert  into `tjadwal`(`kdJadwal`,`tglJadwal`,`kdLapangan`,`kdJam`,`harga`,`statusBoking`) values (7,'2017-03-13',1,1,100000,'B'),(8,'2017-03-13',1,2,100000,'R'),(9,'2017-03-13',1,3,100000,'R'),(10,'2017-03-13',1,4,100000,'R'),(11,'2017-03-15',1,1,100000,'B'),(12,'2017-03-16',1,1,100000,'B'),(13,'2017-03-16',1,2,100000,'R');

/*Table structure for table `tjam` */

DROP TABLE IF EXISTS `tjam`;

CREATE TABLE `tjam` (
  `kdJam` int(5) NOT NULL AUTO_INCREMENT,
  `jam` varchar(20) NOT NULL,
  PRIMARY KEY (`kdJam`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tjam` */

insert  into `tjam`(`kdJam`,`jam`) values (1,'08:00'),(2,'09:00'),(3,'10:00'),(4,'11:00'),(5,'12:00'),(6,'13:00'),(7,'14:00'),(8,'15:00'),(9,'16:00'),(10,'17:00'),(11,'18:00'),(12,'19:00'),(13,'20:00'),(14,'21:00'),(15,'22:00'),(16,'23:00'),(17,'24:00');

/*Table structure for table `tlapangan` */

DROP TABLE IF EXISTS `tlapangan`;

CREATE TABLE `tlapangan` (
  `kdLapangan` int(5) NOT NULL AUTO_INCREMENT,
  `noLapangan` int(5) NOT NULL,
  `gambarLapangan` varchar(1000) NOT NULL,
  `deskripsi` longtext NOT NULL,
  PRIMARY KEY (`kdLapangan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tlapangan` */

insert  into `tlapangan`(`kdLapangan`,`noLapangan`,`gambarLapangan`,`deskripsi`) values (1,1,'757a91448d779d6a42052f8235338fa4lapangan futsal.jpg','Lapangan Footsal Sintesis\r\nTes Konten Tes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes KontenTes Konten');

/*Table structure for table `tmember` */

DROP TABLE IF EXISTS `tmember`;

CREATE TABLE `tmember` (
  `kdMember` bigint(20) NOT NULL AUTO_INCREMENT,
  `usermember` varchar(100) NOT NULL,
  `passmember` varchar(100) NOT NULL,
  `nmLengkap` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `emailMember` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `fotoMember` varchar(1000) NOT NULL,
  `aktif` char(1) NOT NULL,
  PRIMARY KEY (`kdMember`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tmember` */

insert  into `tmember`(`kdMember`,`usermember`,`passmember`,`nmLengkap`,`alamat`,`emailMember`,`kontak`,`fotoMember`,`aktif`) values (2,'member','member','Budi Hermawan','Jl.kebakir','mail.budihermawan@gmail.com','0821008911','e2cea35294e2c56ea8ebfa2aaad4acb7profile_user.jpg','Y');

/*Table structure for table `tpengguna` */

DROP TABLE IF EXISTS `tpengguna`;

CREATE TABLE `tpengguna` (
  `kdPengguna` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nmPengguna` varchar(100) NOT NULL,
  `emailPengguna` varchar(100) NOT NULL,
  `alamatPengguna` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `aktif` char(1) NOT NULL,
  PRIMARY KEY (`kdPengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tpengguna` */

insert  into `tpengguna`(`kdPengguna`,`username`,`password`,`nmPengguna`,`emailPengguna`,`alamatPengguna`,`kontak`,`aktif`) values (1,'admin','admin','administrator','admin@gmail.com','Jl.M.Yamin Gg.Usaha Baru','082188991010','Y');

/*Table structure for table `trincian_boking` */

DROP TABLE IF EXISTS `trincian_boking`;

CREATE TABLE `trincian_boking` (
  `kdRincianBoking` bigint(20) NOT NULL AUTO_INCREMENT,
  `kdBoking` int(5) NOT NULL,
  `noLapangan` int(5) NOT NULL,
  `kdJadwal` int(5) NOT NULL,
  `hargaBoking` double NOT NULL,
  `jamBoking` varchar(15) NOT NULL,
  `tglBoking` varchar(15) NOT NULL,
  `subTotal` double NOT NULL,
  PRIMARY KEY (`kdRincianBoking`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `trincian_boking` */

insert  into `trincian_boking`(`kdRincianBoking`,`kdBoking`,`noLapangan`,`kdJadwal`,`hargaBoking`,`jamBoking`,`tglBoking`,`subTotal`) values (10,10,1,11,100000,'08:00','2017-03-15',100000),(11,11,1,12,100000,'08:00','2017-03-16',100000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
