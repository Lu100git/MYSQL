-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


create database store;
use store;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PROD_ID` int(11) NOT NULL,
  `PROD_NAME` varchar(60) DEFAULT NULL,
  `PROD_DESC` varchar(60) DEFAULT NULL,
  `PROD_SUBCATEGORY` varchar(60) DEFAULT NULL,
  `PROD_SUBCATEGORY_ID` int(11) NOT NULL,
  `PROD_SUBCATEGORY_DESC` varchar(60) DEFAULT NULL,
  `PROD_CATEGORY` varchar(40) DEFAULT NULL,
  `PROD_CATEGORY_ID` int(11) NOT NULL,
  `PROD_CATEGORY_DESC` varchar(60) DEFAULT NULL,
  `PROD_WEIGHT_CALSS` varchar(60) DEFAULT NULL,
  `PROD_UNIT_MEASURE` char(1) DEFAULT NULL,
  `PROD_PACK_SIZE` char(1) DEFAULT NULL,
  `SUPLIER_ID` int(11) NOT NULL,
  `PROD_STATUS` varchar(40) DEFAULT NULL,
  `PROD_LIST_PRICE` decimal(6,2) DEFAULT NULL,
  `PROD_MIN_PRICE` decimal(6,2) DEFAULT NULL,
  `PROD_TOTAL` varchar(40) DEFAULT NULL,
  `PROD_TOTAL_ID` int(11) NOT NULL,
  `PROD_SRC_ID` int(11) DEFAULT NULL,
  `PROD_EFF_FROM` datetime DEFAULT NULL,
  `PROD_EFF_TO` datetime DEFAULT NULL,
  `PROD_VALID` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,0,'PROD_DESC','PROD_SUBCATEGORY','PROD_SUBCATEGORY_ID',0,'PROD_CATEGORY','PROD_CATEGORY_ID',0,'PROD_WEIGHT_CLASS','PROD_UNIT_OF_MEASURE','P','S',0,'PROD_LIST_PRICE',0.00,0.00,'PROD_TOTAL_ID',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(13,5,'5MP Telephoto Digital Camera','Cameras','2044',0,'Photo','204',0,'1','U','P','1',0,'899.99',899.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(14,17,'17\" LCD w/built-in HDTV Tuner','Monitors','2035',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'999.99',999.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(15,0,'Envoy 256MB - 40Gb','Desktop PCs','2021',0,'Hardware','202',0,'1','U','P','1',0,'999.99',999.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(16,0,'Y Box','Game Consoles','2011',0,'Electronics','201',0,'1','U','P','1',0,'299.99',299.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(17,0,'Mini DV Camcorder with 3.5\" Swivel LCD','Camcorders','2041',0,'Photo','204',0,'1','U','P','1',0,'1099.99',1099.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(18,0,'Envoy Ambassador','Portable PCs','2022',0,'Hardware','202',0,'1','U','P','1',0,'1299.99',1299.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(19,0,'Laptop carrying case','Accessories','2051',0,'Software/Other','205',0,'1','U','P','1',0,'55.99',55.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(20,0,'Home Theatre Package with DVD-Audio/Video Play','Home Audio','2012',0,'Electronics','201',0,'1','U','P','1',0,'599.99',599.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(21,18,'18\" Flat Panel Graphics Monitor','Monitors','2035',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'899.99',899.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(22,0,'Envoy External Keyboard','Accessories','2031',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'24.99',24.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(23,0,'External 101-key keyboard','Accessories','2051',0,'Software/Other','205',0,'1','U','P','1',0,'21.99',21.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(24,0,'PCMCIA modem/fax 28800 baud','Modems/Fax','2034',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'45.99',45.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(25,0,'SIMM- 8MB PCMCIAII card','Memory','2033',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'112.99',112.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(26,0,'SIMM- 16MB PCMCIAII card','Memory','2033',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'149.99',149.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(27,0,'Multimedia speakers- 3\" cones','Accessories','2031',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(28,0,'Unix/Windows 1-user pack','Operating Systems','2052',0,'Software/Other','205',0,'1','U','P','1',0,'199.99',199.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(29,8,'8.3 Minitower Speaker','Home Audio','2012',0,'Electronics','201',0,'1','U','P','1',0,'499.99',499.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(30,0,'Mouse Pad','Accessories','2051',0,'Software/Other','205',0,'1','U','P','1',0,'9.99',9.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(31,1,'1.44MB External 3.5\" Diskette','Accessories','2051',0,'Software/Other','205',0,'1','U','P','1',0,'8.99',8.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(32,0,'Multimedia speakers- 5\" cones','Accessories','2031',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'67.99',67.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(33,0,'PCMCIA modem/fax 19200 baud','Modems/Fax','2034',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(34,0,'External 6X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'39.99',39.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(35,0,'External 8X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'49.99',49.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(36,0,'Envoy External 6X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(37,0,'Envoy External 8X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'54.99',54.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(38,0,'Internal 6X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'29.99',29.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(39,0,'Internal 8X CD-ROM','CD-ROM','2032',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'34.99',34.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(40,0,'O/S Documentation Set - English','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(41,0,'O/S Documentation Set - German','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(42,0,'O/S Documentation Set - French','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(43,0,'O/S Documentation Set - Spanish','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(44,0,'O/S Documentation Set - Italian','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(45,0,'O/S Documentation Set - Kanji','Documentation','2054',0,'Software/Other','205',0,'1','U','P','1',0,'44.99',44.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(46,0,'Standard Mouse','Accessories','2031',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'22.99',22.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(47,0,'Deluxe Mouse','Accessories','2031',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'28.99',28.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(48,0,'Keyboard Wrist Rest','Accessories','2051',0,'Software/Other','205',0,'1','U','P','1',0,'11.99',11.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(113,0,'CD-R Mini Discs with Jewel Case, 185MB, Pack of 5','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'22.99',22.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(114,0,'Music CD-R with Spindle, 700MB, Pack of 30','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'18.99',18.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(115,0,'CD-RW, High Speed, Pack of 10','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'8.99',8.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(116,0,'CD-RW, High Speed 650MB/74 Minutes, Pack of 5','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'11.99',11.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(117,0,'CD-R, Professional Grade, Pack of 10','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'8.99',8.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(118,0,'OraMusic CD-R, Pack of 10','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'7.99',7.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(119,0,'CD-R with Jewel Cases, 700MB/80 Minutes, Pack of 12','Recordable CDs','2055',0,'Software/Other','205',0,'1','U','P','1',0,'6.99',6.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(120,0,'DVD-R Disc with Jewel Case, 4.7 GB','Recordable DVD Discs','2056',0,'Software/Other','205',0,'1','U','P','1',0,'6.99',6.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(121,0,'DVD-RAM Media, with Jewel Case, Double-Sided, 9.4GB','Recordable DVD Discs','2056',0,'Software/Other','205',0,'1','U','P','1',0,'10.99',10.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(122,0,'DVD-R Discs, 4.7GB, Pack of 5','Recordable DVD Discs','2056',0,'Software/Other','205',0,'1','U','P','1',0,'18.99',18.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(123,0,'DVD-R Discs, 4.7GB, Pack of 5','Recordable DVD Discs','2056',0,'Software/Other','205',0,'1','U','P','1',0,'49.99',49.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(124,0,'DVD-RW Discs, 4.7GB, Pack of 3','Recordable DVD Discs','2056',0,'Software/Other','205',0,'1','U','P','1',0,'18.99',18.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(125,3,'3 1/2\" Bulk diskettes, Box of 50','Bulk Pack Diskettes','2053',0,'Software/Other','205',0,'1','U','P','1',0,'15.99',15.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(126,3,'3 1/2\" Bulk diskettes, Box of 100','Bulk Pack Diskettes','2053',0,'Software/Other','205',0,'1','U','P','1',0,'28.99',28.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(127,0,'Model CD13272 Tricolor Ink Cartridge','Printer Supplies','2036',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'36.99',36.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(128,0,'Model SM26273 Black Ink Cartridge','Printer Supplies','2036',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'27.99',27.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(129,0,'Model NM500X High Yield Toner Cartridge','Printer Supplies','2036',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'192.99',192.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(130,0,'Model A3827H Black Image Cartridge','Printer Supplies','2036',0,'Peripherals and Accessories','203',0,'1','U','P','1',0,'89.99',89.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(131,0,'Model K3822L Cordless Phone Battery','Camera Batteries','2042',0,'Photo','204',0,'1','U','P','1',0,'18.99',18.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(132,0,'Model C9827B Cordless Phone Battery','Camera Batteries','2042',0,'Photo','204',0,'1','U','P','1',0,'24.99',24.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(133,0,'Model K8822S Cordless Phone Battery','Camera Batteries','2042',0,'Photo','204',0,'1','U','P','1',0,'30.99',30.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(134,0,'Model C93822D Wireless Phone Battery','Camera Batteries','2042',0,'Photo','204',0,'1','U','P','1',0,'20.99',20.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(135,0,'Model S27273M Extended Use Wireless Phone Battery','Camera Batteries','2042',0,'Photo','204',0,'1','U','P','1',0,'49.99',49.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(136,64,'64MB Memory Card','Camera Media','2043',0,'Photo','204',0,'1','U','P','1',0,'32.99',32.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(137,128,'128MB Memory Card','Camera Media','2043',0,'Photo','204',0,'1','U','P','1',0,'52.99',52.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(138,256,'256MB Memory Card','Camera Media','2043',0,'Photo','204',0,'1','U','P','1',0,'69.99',69.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(139,0,'Bounce','Y Box Games','2014',0,'Electronics','201',0,'4','U','P','1',0,'19.99',19.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(140,0,'Endurance Racing','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'29.99',29.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(141,0,'Smash up Boxing','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'29.99',29.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(142,0,'Martial Arts Champions','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'19.99',19.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(143,0,'Comic Book Heroes','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'19.99',19.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(144,0,'Fly Fishing','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'7.99',7.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(145,0,'Finding Fido','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'12.99',12.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(146,0,'Adventures with Numbers','Y Box Games','2014',0,'Electronics','201',0,'1','U','P','1',0,'11.99',11.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(147,0,'Extension Cable','Y Box Accessories','2013',0,'Electronics','201',0,'1','U','P','1',0,'7.99',7.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(148,0,'Xtend Memory','Y Box Accessories','2013',0,'Electronics','201',0,'1','U','P','1',0,'20.99',20.99,0.00,'1',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-16  7:44:27

#calculating percentage dicount of listed price 
select PROD_ID, PROD_NAME, PROD_LIST_PRICE, 
  PROD_LIST_PRICE  * .15 as `75% DISCOUNT`, 
  PROD_LIST_PRICE * .50 as `50% DISCOUNT`, 
  PROD_LIST_PRICE * .75 as `15% DISCOUNT` 
  from products order by PROD_LIST_PRICE desc;
  #


  #drop database store;