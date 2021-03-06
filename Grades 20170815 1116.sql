-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.50-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema student_schedule
--

CREATE DATABASE IF NOT EXISTS student_schedule;
USE student_schedule;

--
-- Definition of table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `section` varchar(15) NOT NULL,
  `grade` double NOT NULL,
  `rating` double NOT NULL,
  `remarks` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` (`id`,`name`,`section`,`grade`,`rating`,`remarks`) VALUES 
 (1,'Joahnna Codilla','BSIT3B',94.3,1.5,'Pass'),
 (2,'Julian Blackthorn','BSIT3B',94.04,1.5,'Pass'),
 (3,'Czarina Juliano','BSIT3B',93.5,1.5,'Pass');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;


--
-- Definition of table `stud_sched`
--

DROP TABLE IF EXISTS `stud_sched`;
CREATE TABLE `stud_sched` (
  `idSched` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stud_id` varchar(15) NOT NULL,
  `idSubj` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idSched`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stud_sched`
--

/*!40000 ALTER TABLE `stud_sched` DISABLE KEYS */;
INSERT INTO `stud_sched` (`idSched`,`stud_id`,`idSubj`) VALUES 
 (1,'2016-0123-MN',1),
 (2,'2016-0123-MN',2),
 (3,'2016-0123-MN',3),
 (4,'2016-0123-MN',4);
/*!40000 ALTER TABLE `stud_sched` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `section` varchar(15) NOT NULL,
  `stud_id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`name`,`section`,`stud_id`) VALUES 
 (1,'Dave Mustaine','BSIT 3-ST','2016-0123-MN');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `idSubj` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(40) NOT NULL,
  `time` varchar(15) NOT NULL,
  `day` varchar(10) NOT NULL,
  `instructor` varchar(25) NOT NULL,
  `room` varchar(8) NOT NULL,
  `subj_id` varchar(10) NOT NULL,
  PRIMARY KEY (`idSubj`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`idSubj`,`subject`,`time`,`day`,`instructor`,`room`,`subj_id`) VALUES 
 (1,'Web Services and Cloud Computing','9:00-12:00','Tuesday','Mr. Ralph Dayot','ICT306','IT 242'),
 (2,'Web Services and Cloud Computing','10:00-12:00','Thursday','Mr. Ralph Dayot','ICT 306','IT 242'),
 (3,'Introduction to Research in ICT','7:00-8:30','Tuesday','Mr. Regin Cabacas','ICT 105','ITE 201B'),
 (4,'Introduction to Research in ICT','7:00-8:30','Thursday','Mr. Regin Cabacas','ICT 105','ITE 201B'),
 (5,'Philosophy of Man','1:00-2:30','Monday','Mr. Erebaren Gerardo','QH 218','HUM 102'),
 (6,'Philosophy of Man','1:00-2:30','Wednesday','Mr. Erebaren Gerardo','QH 218','HUM 102');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
