/*
SQLyog Enterprise - MySQL GUI v5.14
Host - 5.5.5-10.4.28-MariaDB : Database - codo
*********************************************************************
Server version : 5.5.5-10.4.28-MariaDB
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `codo`;

USE `codo`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `alumno` */

DROP TABLE IF EXISTS `alumno`;

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `edad` tinyint(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `provincia` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `alumno` */

insert into `alumno` (`id`,`nombre`,`apellido`,`edad`,`fecha`,`provincia`) values (1,'Moni','Mada',40,'2023-06-07 14:42:06','Cordoba'),(2,'Nico','Sap',18,'2023-06-07 14:43:32','Misiones'),(3,'Eze','Hola',30,'2023-06-07 14:44:06','Santa Fe'),(4,'Julio','Sil',46,'2023-06-07 14:44:34','Corrientes'),(5,'Maria','Mes',50,'2023-06-07 14:45:18','Formosa');

SET SQL_MODE=@OLD_SQL_MODE;