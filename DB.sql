/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - home_prediction
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `home_prediction`;

USE `home_prediction`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin','123','admin','bnagaloree','9988668866','admin123@gmail.com');

/*Table structure for table `house_dataset` */

DROP TABLE IF EXISTS `house_dataset`;

CREATE TABLE `house_dataset` (
  `h_id` int(11) NOT NULL auto_increment,
  `h_city` varchar(20) default NULL,
  `h_division` varchar(30) default NULL,
  `h_area` varchar(40) default NULL,
  `h_street` varchar(100) default NULL,
  `h_rssqft` int(50) default NULL,
  `h_year` int(10) default NULL,
  `h_type` varchar(20) default NULL,
  `h_bhk` int(10) default NULL,
  PRIMARY KEY  (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `house_dataset` */

insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (1,'bangalore','bangalore_south','Electronic City Phase II','6th main road',1200,2019,'independent',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (2,'bangalore','bangalore_north','Electronic City Phase II','5th main road',2000,2018,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (3,'bangalore','bangalore_north','Electronic City Phase II','2nd main road',1800,2014,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (4,'bangalore','bangalore_south','Electronic City Phase II','7th main road',1600,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (5,'bangalore','bangalore_north','Kothanur','4th main road',1200,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (6,'bangalore','bangalore_south','Whitefield','5th main road',1170,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (7,'bangalore','bangalore_south','Old Airport Road','1st main road',2732,2015,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (8,'bangalore','bangalore_south','Rajaji Nagar','2nd main road',3300,2015,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (9,'bangalore','bangalore_south','Marathahalli','3rd main road',1310,2014,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (10,'bangalore','bangalore_north','Gandhi Bazar','2nd main road',1020,2014,'villa',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (11,'bangalore','bangalore_south','Whitefield','3rd main road',1800,2014,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (12,'bangalore','banglore_rural','Whitefield','4th main road',2785,2014,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (13,'bangalore','banglore_rural','7th Phase JP Nagar','1st main road',1000,2017,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (14,'bangalore','banglore_rural','Gottigere','7th main road',1100,2017,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (15,'bangalore','banglore_rural','Sarjapur','8th main road',2250,2017,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (16,'bangalore','banglore_rural','Mysore Road','2nd main road',1175,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (17,'bangalore','banglore_rural','Bisuvanahalli','3rd main road',1180,2016,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (18,'bangalore','bangalore_north','Raja Rajeshwari Nagar','1st main road',1540,2016,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (19,'bangalore','bangalore_north','Ramakrishnappa Layout','2nd main road',2770,2016,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (20,'bangalore','bangalore_south','Manayata Tech Park','3rd main road',1100,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (21,'bangalore','bangalore_north','Kengeri','4th main road',600,2015,'villa',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (22,'bangalore','bangalore_north','Binny Pete','5th main road',1755,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (23,'bangalore','bangalore_north','Thanisandra','6th main road',2800,2014,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (24,'bangalore','bangalore_north','Bellandur','1st main road',1767,2014,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (25,'bangalore','bangalore_north','Mangammanapalya','3rd main road',1250,2014,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (26,'bangalore','bangalore_south','Electronic City','4th main road',660,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (27,'bangalore','bangalore_north','Whitefield','2nd main road',1610,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (28,'bangalore','bangalore_south','Ramagondanahalli','3rd main road',1151,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (29,'bangalore','bangalore_north','Electronic City','4th main road',1025,2016,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (30,'bangalore','bangalore_north','Yelahanka','5th main road',2100,2016,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (31,'bangalore','bangalore_north','Bisuvanahalli','1st main road',1075,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (32,'bangalore','bangalore_north','Hebbal','2nd main road',1760,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (33,'bangalore','bangalore_north','Raja Rajeshwari Nagar','3rd main road',1693,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (34,'bangalore','bangalore_north','Kasturi Nagar','2nd main road',1925,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (35,'bangalore','bangalore_north','Kanakpura Road','7th main road',700,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (36,'bangalore','bangalore_north','Electronics City Phase 1','8th main road',1070,2017,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (37,'bangalore','bangalore_south','Kundalahalli','9th main road',1724,2017,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (38,'bangalore','bangalore_south','Chikkalasandra','4th main road',1290,2017,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (39,'bangalore','bangalore_south','Uttarahalli','5th main road',1143,2017,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (40,'bangalore','bangalore_south','Murugeshpalya','6th main road',1296,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (41,'bangalore','bangalore_south','Sarjapur  Road','7th main road',1254,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (42,'bangalore','bangalore_south','Ganga Nagar','1st main road',600,2016,'appartment',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (43,'bangalore','bangalore_south','Yelahanka','2nd main road',660,2016,'appartment',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (44,'bangalore','bangalore_south','Kanakpura Road','3rd main road',1330,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (45,'bangalore','bangalore_south','HSR Layout','4th main road',600,2016,'appartment',8);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (46,'bangalore','bangalore_south','Doddathoguru','5th main road',970,2015,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (47,'bangalore','bangalore_north','Whitefield','1st main road',1459,2015,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (48,'bangalore','bangalore_north','KR Puram','2nd main road',800,2015,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (49,'bangalore','bangalore_north','Himagiri Meadows','3rd main road',869,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (50,'bangalore','bangalore_north','Adarsh Nagar','7th main road',1270,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (51,'bangalore','bangalore_north','Bhoganhalli','8th main road',1670,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (52,'bangalore','bangalore_north','Whitefield','1st main road',2010,2018,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (53,'bangalore','bangalore_north','Lakshminarayana Pura','4th main road',1185,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (54,'bangalore','bangalore_north','Yelahanka','1st main road',1600,2018,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (55,'bangalore','banglore_rural','Begur Road','2nd main road',1200,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (56,'bangalore','banglore_rural','Devanahalli','3rd main road',3010,2018,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (57,'bangalore','banglore_rural','Ramakrishnappa Layout','5th main road',1500,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (58,'bangalore','banglore_rural','Murugeshpalya','6th main road',1407,2018,'flat',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (59,'bangalore','banglore_rural','Govindaraja Nagar Ward','7th main road',840,2019,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (60,'bangalore','banglore_rural','Tharabanahalli','1st main road',4395,2019,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (61,'bangalore','banglore_urban','Ganga Nagar','2nd main road',845,2019,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (62,'bangalore','banglore_urban','Whitefield','3rd main road',5700,2019,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (63,'bangalore','banglore_urban','Varthur','4th main road',1160,2019,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (64,'bangalore','banglore_urban','Bommanahalli','5th main road',3000,2019,'flat',8);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (65,'bangalore','banglore_urban','Doddathoguru','6th main road',1100,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (66,'bangalore','banglore_urban','Gunjur','2nd main road',1140,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (67,'bangalore','banglore_urban','Marathahalli','3rd main road',1220,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (68,'bangalore','bangalore_south','Devarachikkanahalli','4th main road',1350,2015,'villa',8);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (69,'bangalore','bangalore_south','Kanakpura Road','5th main road',1005,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (70,'bangalore','bangalore_south','Double Road','2nd main road',500,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (71,'bangalore','bangalore_south','Begur Road','7th main road',1358,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (72,'bangalore','bangalore_south','Hegde Nagar','1st main road',1569,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (73,'bangalore','banglore_north','Haralur Road','2nd main road',1240,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (74,'bangalore','banglore_north','Hennur Road','3rd main road',2089,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (75,'bangalore','banglore_north','Kothannur','4th main road',1206,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (76,'bangalore','banglore_north','Kalena Agrahara','5th main road',1150,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (77,'bangalore','bangalore_south','Cholanayakanahalli','6th main road',2511,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (78,'bangalore','banglore_urban','Kaval Byrasandra','7th main road',460,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (79,'bangalore','banglore_urban','ISRO Layout','1st main road',4400,2016,'appartment',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (80,'bangalore','banglore_urban','Kodanda Reddy Layout','2nd main road',1660,2018,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (81,'bangalore','bangalore_south','Hennur Road','3rd main road',2957,2018,'appartment',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (82,'bangalore','banglore_north','Yelahanka','4th main road',1326,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (83,'bangalore','banglore_north','Garudachar Palya','5th main road',1325,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (84,'bangalore','bangalore_south','EPIP Zone','6th main road',1499,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (85,'bangalore','banglore_rural','Hegde Nagar','7th main road',3000,2018,'flat',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (86,'bangalore','bangalore_south','Kanakpura Road','1st main road',1665,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (87,'bangalore','banglore_rural','Dasanapura','2nd main road',708,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (88,'bangalore','banglore_rural','Kasavanhalli','3rd main road',1060,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (89,'bangalore','bangalore_south','Rajaji Nagar','4th main road',710,2017,'flat',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (90,'bangalore','bangalore_south','Sanjay nagar','5th main road',1000,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (91,'bangalore','bangalore_south','Electronic City','2nd main road',1000,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (92,'bangalore','bangalore_south',' Mysore Highway','1st main road',1450,2017,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (93,'bangalore','bangalore_south','ISRO Layout','2nd main road',1200,2017,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (94,'bangalore','bangalore_south','Thanisandra','3rd main road',1296,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (95,'bangalore','bangalore_south','Domlur','4th main road',1540,2017,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (96,'bangalore','bangalore_south','Kengeri','5th main road',2894,2015,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (97,'bangalore','bangalore_south','Sarjapura - Attibele Road','6th main road',1330,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (98,'bangalore','bangalore_south','Devasthanagalu','1st main road',1200,2015,'independent',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (99,'bangalore','banglore_north','T Dasarahalli','2nd main road',1200,2015,'independent',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (100,'bangalore','banglore_north','Yeshwanthpur','3rd main road',2502,2015,'independent',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (101,'bangalore','bangalore_south','Chandapura','4th main road',650,2015,'independent',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (102,'bangalore','banglore_north','Kothanur','5th main road',2400,2015,'independent',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (103,'bangalore','banglore_north','Green View Layout','6th main road',1007,2015,'independent',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (104,'bangalore','banglore_north','Shantiniketan Layout','2nd main road',1200,2016,'independent',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (105,'bangalore','banglore_north','Peenya','1st main road',966,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (106,'bangalore','banglore_north','Nagarbhavi','2nd main road',1630,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (107,'bangalore','banglore_north','Rajaji Nagar','3rd main road',1640,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (108,'bangalore','banglore_north','Jalahalli West','4th main road',782,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (109,'bangalore','banglore_north','Devanahalli','5th main road',1260,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (110,'bangalore','banglore_north','Lakshmiamma Garden','6th main road',1800,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (111,'bangalore','banglore_north','Byatarayanapura','1st main road',1413,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (112,'bangalore','banglore_north','Whitefield','2nd main road',1116,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (113,'bangalore','banglore_north','Electronic City','3rd main road',1530,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (114,'bangalore','banglore_north','Ramamurthy Nagar','4th main road',3700,2018,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (115,'bangalore','banglore_north','Sarjapur  Road','5th main road',2497,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (116,'bangalore','banglore_north','Kengeri','6th main road',1540,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (117,'bangalore','banglore_north','Thanisandra','7th main road',1436,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (118,'bangalore','banglore_north','Malleshwaram','8th main road',1100,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (119,'bangalore','banglore_north','Hennur Road','1st main road',276,2019,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (120,'bangalore','bangalore_south','Thanisandra','2nd main road',1427,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (121,'bangalore','bangalore_south','Akshaya Nagar','3rd main road',2061,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (122,'bangalore','bangalore_south','Hebbal','4th main road',3067,2019,'appartment',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (123,'bangalore','bangalore_south','Shampura','5th main road',2650,2019,'appartment',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (124,'bangalore','bangalore_south','Devanahalli','1st main road',1282,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (125,'bangalore','bangalore_south','Kadugodi','2nd main road',1050,2019,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (126,'bangalore','bangalore_south','LB Shastri Nagar','3rd main road',1600,2019,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (127,'bangalore','bangalore_south','Vajarahalli','4th main road',945,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (128,'bangalore','bangalore_south','Hormavu','5th main road',1500,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (129,'bangalore','bangalore_south','Vishwapriya Layout','6th main road',950,2015,'villa',7);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (130,'bangalore','bangalore_south','Peenya','1st main road',1870,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (131,'bangalore','bangalore_south','Sarjapur','2nd main road',1600,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (132,'bangalore','banglore_rural','Electronic City','3rd main road',880,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (133,'bangalore','banglore_rural','Ramaswamy Palya - Kammanahalli Main Road','4th main road',1200,2016,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (134,'bangalore','banglore_rural','Kudlu Gate','5th main road',1535,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (135,'bangalore','banglore_rural','Kanakpura Road','6th main road',950,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (136,'bangalore','banglore_rural','Devanahalli','2nd main road',1360,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (137,'bangalore','banglore_rural','8th Phase JP Nagar','3rd main road',1042,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (138,'bangalore','bangalore_south','Bommasandra Industrial Area','4th main road',1280,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (139,'bangalore','banglore_urban','Chandra Layout','5th main road',1260,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (140,'bangalore','banglore_urban','Hennur Road','1st main road',5000,2017,'appartment',8);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (141,'bangalore','banglore_urban','Yelahanka','2nd main road',3050,2017,'appartment',5);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (142,'bangalore','banglore_urban','Kasavanhalli','3rd main road',1563,2017,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (143,'bangalore','banglore_urban','ISRO Layout','4th main road',1000,2017,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (144,'bangalore','bangalore_south','Anandapura','5th main road',1167,2017,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (145,'bangalore','banglore_north','Vishveshwarya Layout','6th main road',4000,2017,'appartment',7);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (146,'bangalore','banglore_north','Kothanur','7th main road',1828,2017,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (147,'bangalore','bangalore_south','Kengeri Satellite Town','8th main road',890,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (148,'bangalore','banglore_north','Basavanapura','1st main road',1612,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (149,'bangalore','banglore_north','Dinnur','2nd main road',1034,2018,'flat',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (150,'bangalore','bangalore_south','Mysore Road','3rd main road',1710,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (151,'bangalore','banglore_rural','Kannamangala','4th main road',957,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (152,'bangalore','banglore_rural',' Devarachikkanahalli','5th main road',1250,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (153,'bangalore','bangalore_south','Sanjeevini Nagar','6th main road',2795,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (154,'bangalore','banglore_urban','Hulimavu','7th main road',1125,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (155,'bangalore','banglore_urban','Electronic City Phase II','8th main road',1020,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (156,'bangalore','bangalore_south','Kalena Agrahara','1st main road',1200,2015,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (157,'bangalore','bangalore_south','Thanisandra','2nd main road',1735,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (158,'bangalore','bangalore_south','Thanisandra','3rd main road',2050,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (159,'bangalore','bangalore_south','Mahalakshmi Layout','4th main road',3750,2015,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (160,'bangalore','banglore_rural','Yarandahalli','5th main road',1350,2015,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (161,'bangalore','banglore_rural','Hosa Road','2nd main road',1063,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (162,'bangalore','banglore_rural','Keshava Nagar','3rd main road',1904,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (163,'bangalore','banglore_rural','Whitefield','4th main road',4200,2016,'villa',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (164,'bangalore','bangalore_south','RMV Extension','5th main road',2000,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (165,'bangalore','banglore_north','Sarjapur','6th main road',1340,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (166,'bangalore','banglore_north','Tejaswini Nagar','1st main road',1425,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (167,'bangalore','banglore_north','Electronic City','2nd main road',1500,2016,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (168,'bangalore','bangalore_south','Electronic City','3rd main road',1060,2016,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (169,'bangalore','bangalore_south','Jai Bheema Nagar','4th main road',1470,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (170,'bangalore','bangalore_south','Kothnur Narayanapura','5th main road',1300,2019,'flat',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (171,'bangalore','bangalore_south','Attibele','1st main road',450,2019,'flat',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (172,'bangalore','bangalore_urban','Electronic City','2nd main road',1152,2019,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (173,'bangalore','bangalore_south','Electronic City','3rd main road',1350,2019,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (174,'bangalore','bangalore_urban','CV Raman Nagar','4th main road',1550,2019,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (175,'bangalore','bangalore_urban','CHIKKATIRUPATHI','5th main road',1500,2019,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (176,'bangalore','bangalore_south','Kumaraswami Layout','6th main road',600,2019,'flat',5);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (177,'bangalore','bangalore_urban','Nagavara','2nd main road',400,2017,'flat',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (178,'bangalore','bangalore_south','Malleshwaram','3rd main road',705,2017,'flat',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (179,'bangalore','bangalore_urban','Electronic City','4th main road',770,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (180,'bangalore','bangalore_south','Hulimavu','5th main road',1242,2017,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (181,'bangalore','bangalore_south','Hebbal Kempapura','6th main road',1700,2017,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (182,'bangalore','bangalore_south','Thanisandra','7th main road',2144,2017,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (183,'bangalore','bangalore_south','Vijayanagar','8th main road',1704,2017,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (184,'bangalore','bangalore_rural','Electronic City','9th main road',1070,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (185,'bangalore','bangalore_rural','8th block Koramangala','10th main road',1846,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (186,'bangalore','bangalore_south','Jakkuru Layout','2nd main road',1340,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (187,'bangalore','bangalore_north','Electronic City','3rd main road',1025,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (188,'bangalore','bangalore_north','KR Puram','4th main road',1540,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (189,'bangalore','bangalore_north','Marathahalli','5th main road',1200,2016,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (190,'bangalore','bangalore_north','Kanakpura Road','6th main road',2250,2016,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (191,'bangalore','bangalore_rural','Pattandur Agrahara','7th main road',1550,2016,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (192,'bangalore','bangalore_rural','Bellandur','8th main road',1200,2015,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (193,'bangalore','bangalore_rural','Ejipura','1st main road',1800,2015,'flat',7);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (194,'bangalore','bangalore_rural','Marathahalli','2nd main road',1200,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (195,'bangalore','bangalore_rural','Yelahanka','3rd main road',1327,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (196,'bangalore','bangalore_south','Kothanur','4th main road',1186,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (197,'bangalore','bangalore_south','MS Pallya','5th main road',1783,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (198,'bangalore','bangalore_south','HSR Layout','6th main road',1400,2015,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (199,'bangalore','bangalore_south','Nagasandra','7th main road',980,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (200,'bangalore','bangalore_south','EPIP Zone','2nd main road',1285,2015,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (201,'bangalore','bangalore_urban','Langford Town','1st main road',912,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (202,'bangalore','bangalore_south','Whitefield','2nd main road',1225,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (203,'bangalore','bangalore_urban','Whitefield','3rd main road',1075,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (204,'bangalore','bangalore_urban','Kadugodi','4th main road',1260,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (205,'bangalore','bangalore_urban','Yelahanka','5th main road',1282,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (206,'bangalore','bangalore_urban','Kogilu','6th main road',1909,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (207,'bangalore','bangalore_urban','Panathur','7th main road',1359,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (208,'bangalore','bangalore_urban','Nagondanahalli','1st main road',1207,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (209,'bangalore','bangalore_north','Padmanabhanagar','2nd main road',1736,2018,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (210,'bangalore','bangalore_north','1st Block Jayanagar','3rd main road',2850,2019,'flat',4);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (211,'bangalore','bangalore_north','Kammasandra','4th main road',1595,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (212,'bangalore','bangalore_south','Off Sarjapur Road, ','5th main road',1798,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (213,'bangalore','bangalore_south','Electronics City Phase 1','6th main road',1475,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (214,'bangalore','bangalore_south','Tala Cauvery Layout','1st main road',1580,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (215,'bangalore','bangalore_north','Dasarahalli','2nd main road',1295,2019,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (216,'bangalore','bangalore_north','Magadi Road','3rd main road',3600,2019,'appartment',6);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (217,'bangalore','bangalore_north','Electronic City','4th main road',589,2019,'appartment',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (218,'bangalore','bangalore_north','Ngef Layout','5th main road',1415,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (219,'bangalore','bangalore_rural','Sarjapur  Road','6th main road',1787,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (220,'bangalore','bangalore_south','Sarjapur  Road','7th main road',1787,2019,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (221,'bangalore','bangalore_urban','Koramangala','1st main road',1475,2019,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (222,'bangalore','bangalore_rural','Sarjapur  Road','3rd main road',984,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (223,'bangalore','bangalore_rural','Devanahalli','4th main road',1740,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (224,'bangalore','bangalore_rural','Muthurayya Swamy Layout','5th main road',2405,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (225,'bangalore','bangalore_rural','7th Phase JP Nagar','6th main road',1080,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (226,'bangalore','bangalore_rural','Shantiniketan Layout','7th main road',1500,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (227,'bangalore','bangalore_south','Hebbal','8th main road',1900,2016,'villa',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (228,'bangalore','bangalore_urban','Dommasandra','1st main road',805,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (229,'bangalore','bangalore_urban','Budigere','2nd main road',1153,2016,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (230,'bangalore','bangalore_urban','Dodda Nekkundi Extension','3rd main road',1148,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (231,'bangalore','bangalore_urban','Mylasandra','4th main road',1110,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (232,'bangalore','bangalore_urban','Electronic City','5th main road',1100,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (233,'bangalore','bangalore_urban','Kalyan nagar','1st main road',1290,2018,'villa',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (234,'bangalore','bangalore_south','Dr Shivarama Karantha Nagar','2nd main road',1500,2018,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (235,'bangalore','bangalore_south','Bank Of Baroda Colony','3rd main road',1080,2018,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (236,'bangalore','bangalore_south','Vijayanagar','4th main road',1933,2014,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (237,'bangalore','bangalore_south','Ramamurthy Nagar','5th main road',3500,2014,'flat',5);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (238,'bangalore','bangalore_south','Kullappa Colony','6th main road',1060,2014,'flat',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (239,'bangalore','bangalore_south','Chandapura','7th main road',645,2014,'flat',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (240,'bangalore','bangalore_south','Mukkutam Nagar','1st main road',2600,2014,'flat',8);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (241,'bangalore','bangalore_north','Chandapura','2nd main road',645,2014,'flat',1);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (242,'bangalore','bangalore_north','Ashwath Nagar','3rd main road',1644,2014,'flat',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (243,'bangalore','bangalore_north','Ncpr Industrial Layout','4th main road',1285,2019,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (244,'bangalore','bangalore_north','Electronic City','5th main road',1200,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (245,'bangalore','bangalore_north','Electronic City','6th main road',910,2019,'appartment',2);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (246,'bangalore','bangalore_north','Kothanur','7th main road',1577,2019,'appartment',3);
insert into `house_dataset` (`h_id`,`h_city`,`h_division`,`h_area`,`h_street`,`h_rssqft`,`h_year`,`h_type`,`h_bhk`) values (247,'bangalore','bangalore_north','Meenakunte','8th main road',4050,2019,'appartment',3);

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `id` int(5) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `username` varchar(20) default NULL,
  `gender` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(12) default NULL,
  PRIMARY KEY  (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (31,'amutha','amutha','amutha','Female','Bangalore','bangalore','bansalrajat016@gmail.com','9632917445');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (36,'manu','shanu','manu','Male','jayanagara','Bangalore`','manu@gmail.com','9900392855');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (40,'merry','123','merry','Male','Jayanagarrrrr','Bangalore','shanu@gmail.com','9900223344');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (43,'manohar','shalini','shanu','Male','vidhyanagar','hassan','shanusharugowda@gmail.com','9988776655');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
