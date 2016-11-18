-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hotel_order
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ hotel_order;
USE hotel_order;

--
-- Table structure for table `hotel_order`.`bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `bill_date` date NOT NULL default '0000-00-00',
  `bill_time` varchar(45) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_order`.`bill`
--

/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


--
-- Table structure for table `hotel_order`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(70) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='details of all categoried';

--
-- Dumping data for table `hotel_order`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`name`) VALUES 
 (1,'Statters'),
 (2,'BreakFast'),
 (3,'Lunch'),
 (4,'Snaks & Drinks');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `hotel_order`.`item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(45) NOT NULL default '',
  `qnt` int(10) unsigned NOT NULL default '0',
  `cost` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='item detail';

--
-- Dumping data for table `hotel_order`.`item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`id`,`category_id`,`name`,`qnt`,`cost`) VALUES 
 (1,1,'Rostet Papad',1,'20'),
 (2,1,'Soup',1,'50'),
 (3,2,'aaaa',2,'100');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


--
-- Table structure for table `hotel_order`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_order`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`user_name`,`pass`) VALUES 
 (1,'cook','cook'),
 (2,'1','table1'),
 (3,'2','table2'),
 (4,'3','table3'),
 (5,'4','table4'),
 (6,'5','table5');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `hotel_order`.`order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `qnt` int(10) unsigned NOT NULL default '0',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_order`.`order_details`
--

/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`,`order_id`,`item_id`,`qnt`,`status`) VALUES 
 (7,9,2,2,'COOKED'),
 (8,9,2,2,'COOKED'),
 (9,10,2,2,'COOKED'),
 (10,10,2,2,'COOKED'),
 (11,11,1,1,'COOKED'),
 (12,12,3,3,'COOKED');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;


--
-- Table structure for table `hotel_order`.`order_master`
--

DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_no` int(10) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL default '',
  `order_date` date NOT NULL default '0000-00-00',
  `order_time` time NOT NULL default '00:00:00',
  `status` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_order`.`order_master`
--

/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` (`id`,`table_no`,`name`,`order_date`,`order_time`,`status`) VALUES 
 (9,2,'zzz','2015-02-18','20:37:17','DELIVERED'),
 (10,2,'aaa','2015-02-18','20:37:42','DELIVERED'),
 (11,3,'qqq','2015-02-18','20:46:01','DELIVERED'),
 (12,1,'aaa','2015-02-23','16:41:46','DELIVERED');
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
