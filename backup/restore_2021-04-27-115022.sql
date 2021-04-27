-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category_brand`
--

DROP TABLE IF EXISTS `category_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_brand` (
  `category_id` varchar(36) DEFAULT NULL,
  `brand_id` varchar(36) DEFAULT NULL,
  KEY `category_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `category_brand_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`),
  CONSTRAINT `category_brand_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_brand`
--

LOCK TABLES `category_brand` WRITE;
/*!40000 ALTER TABLE `category_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owe`
--

DROP TABLE IF EXISTS `owe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owe` (
  `payment_id` varchar(36) DEFAULT NULL,
  `owe_id` varchar(36) DEFAULT NULL,
  KEY `payment_id` (`payment_id`),
  KEY `owe_id` (`owe_id`),
  CONSTRAINT `owe_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`id`),
  CONSTRAINT `owe_ibfk_2` FOREIGN KEY (`owe_id`) REFERENCES `tbl_owe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owe`
--

LOCK TABLES `owe` WRITE;
/*!40000 ALTER TABLE `owe` DISABLE KEYS */;
INSERT INTO `owe` VALUES ('740d834e-dbd3-4f62-a7b4-0a9c244a130b','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('55782b87-de47-4dfd-bc1e-960cbcef3973','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('356676db-306a-4349-bf49-649a04e21c9e','4d128b25-0b1a-4eeb-839d-104d947f88e1');
/*!40000 ALTER TABLE `owe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` varchar(36) DEFAULT NULL,
  `transaction_id` varchar(36) DEFAULT NULL,
  KEY `payment_id` (`payment_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `tbl_transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('740d834e-dbd3-4f62-a7b4-0a9c244a130b','aa23664a-4775-4114-a5b6-642ebd4d0897'),('55782b87-de47-4dfd-bc1e-960cbcef3973','d2a48582-6c85-489b-9953-524252aaaa68'),('356676db-306a-4349-bf49-649a04e21c9e','a90ced9f-c69e-47f4-b342-3e6a7c63be45'),('356676db-306a-4349-bf49-649a04e21c9e','f8043955-4c82-433b-8c0d-0212184f2539');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity`
--

DROP TABLE IF EXISTS `tbl_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activity` (
  `id` varchar(36) NOT NULL,
  `activity` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_activity_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity`
--

LOCK TABLES `tbl_activity` WRITE;
/*!40000 ALTER TABLE `tbl_activity` DISABLE KEYS */;
INSERT INTO `tbl_activity` VALUES ('071c55b7-2ef5-482b-8705-1ad5530e2678','Admin has checked out payment INV0000002','Payment','2021-04-27 04:10:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1895a234-2caf-433a-aba6-c33c67c6b691','Admin has added product Coca Cola Original Taste','Add','2021-04-26 12:20:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('18e06128-18d1-4943-80e7-a15633f2f4a2','Admin has checkout owe total: 5','Checkout','2021-04-27 04:44:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1bbb8563-cb2e-4510-876c-f5c0177453f6','Admin has modified product from Burger Bacon//True/USD/3.00///None/Food','Modify','2021-04-26 12:22:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('260b6ee2-2959-4f7b-b3ad-218872b2b177','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-04-26 12:22:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2833eded-7c52-4646-b699-a93c724965d7','Admin has added customer: Thong','Add','2021-04-27 04:10:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('33813763-f001-4686-b861-cafdd5db76cf','Admin has opened drawer','Open','2021-04-26 12:22:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('37a8fea4-a0ae-49ed-8c7f-61a01690334c','Admin has upload photo for product: Burger Bacon','Upload','2021-04-26 12:21:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4096f416-d7df-4371-b4ae-ddcd072ce909','Admin has checkout owe total: 10','Checkout','2021-04-27 04:45:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('55443297-9bc2-4bb0-9299-580e030e42e0','Admin has added category: Food in category','Add','2021-04-26 12:20:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5e704ca4-6bbe-4e61-a729-95330fe19c31','Admin has added brand: Coca Cola in brand','Add','2021-04-26 12:20:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5ee6ef5b-3d27-4568-b421-4268a3a9de81','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 12:22:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('640ebc62-c5f1-42b3-8b0a-b0888088e772','Admin has checked out order from: 11:10 AM to 11:10 AM','Check Out','2021-04-27 04:10:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('69084727-b7a3-4581-84c9-7ced9af80f5b','Admin has modified theme from light','Modify','2021-04-26 12:21:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6d5e5015-8b37-46cc-8f2d-d2df74904ef7','Admin has added product Burger Bacon','Add','2021-04-26 12:21:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77644a28-07d6-4a0e-bddb-7ae55b792359','Admin has logged in','Login','2021-04-26 12:20:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77c3c2b8-5d71-43d0-b7ef-7b9303a1afda','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8c144a4b-a85b-480e-acd5-599f5a58624e','Admin has added order from 2021-04-27 11:09 AM to 2021-04-27 11:09 AM for customer Thong','Add','2021-04-27 04:10:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('99c09872-8365-4d14-96a9-a961a83618c4','Admin has ordered invoice: INV0000001','Order','2021-04-27 04:10:16','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ab3c34f1-5e1f-4fe6-95a7-12fee80b23c9','Admin has added room: Room 1','Create','2021-04-26 12:21:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b098797c-2caf-48ca-ab03-e2e2305cbd75','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-04-26 12:20:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b75976af-edb4-44ab-8b78-53bc840b47aa','Admin has checked out payment INV0000001','Payment','2021-04-27 04:10:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ba568cf8-5d39-45ac-9eb7-aab6391bfcbe','Admin has checked in order from: 11:10 AM to 11:10 AM','Check In','2021-04-27 04:10:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d49c0d74-240d-4e48-af0e-ab3237009076','Admin has checkout owe total: 3','Checkout','2021-04-27 04:44:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('da8631d4-7b05-4af2-ba75-107ba0bfbd8b','Admin has checked out payment INV0000003','Payment','2021-04-27 04:10:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('df2f003e-dba8-41a7-bd81-4bb6c730a8f8','Admin has updated transaction Room 1, 60min','Modified','2021-04-27 04:10:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('dfc9fc8f-f2b8-415e-a854-267c0b310497','Admin has added category: Beverage in category','Add','2021-04-26 12:20:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e084445a-881a-4706-b6d7-c3ad2028ee41','Admin has added brand: Shop in brand','Add','2021-04-26 12:20:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e505187c-af64-4380-bda2-fd0ca0d2aef1','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ecb69f83-2793-4b3c-a997-290d4bc1beb5','Admin has added stock: 0.2/USD/100/4000/None/20.0 in product Coca Cola Original Taste','Add','2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f0f5bad9-4e9b-4aae-b63d-407275539841','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fff6b6e5-d200-44e0-931f-73a03af638f7','Admin has ordered invoice: INV0000002','Order','2021-04-27 04:10:25','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_advertise`
--

DROP TABLE IF EXISTS `tbl_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_advertise` (
  `id` varchar(36) NOT NULL,
  `src` varchar(255) NOT NULL,
  `alt` varchar(50) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_advertise_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_advertise_chk_1` CHECK ((`main` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_advertise`
--

LOCK TABLES `tbl_advertise` WRITE;
/*!40000 ALTER TABLE `tbl_advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_appearance`
--

DROP TABLE IF EXISTS `tbl_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_appearance` (
  `id` varchar(36) NOT NULL,
  `width` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `depth` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `productId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `tbl_appearance_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_appearance`
--

LOCK TABLES `tbl_appearance` WRITE;
/*!40000 ALTER TABLE `tbl_appearance` DISABLE KEYS */;
INSERT INTO `tbl_appearance` VALUES ('ad3767e9-bfd2-4536-8964-6bff69bdf96b','','','','','','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79'),('d748bed6-1c08-47a2-8fc9-2b076d5ffdbe','','','','','','e61363a3-3080-4af1-944f-8fb2cf5a1156');
/*!40000 ALTER TABLE `tbl_appearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_brand` (
  `id` varchar(36) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `description` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand` (`brand`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_brand_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES ('02210d30-7f54-430e-8a7c-a38cf33a0be0','Shop','','2021-04-26 12:20:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f38541c5-bb56-4bdf-a856-89bde0a55ec8','Coca Cola','','2021-04-26 12:20:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` varchar(36) NOT NULL,
  `category` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_category_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES ('85ab3b9b-a0a6-4d6c-b2c6-7fd4ece4c181','Food','default.png','','2021-04-26 12:20:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a4fb17e7-6397-4972-88e3-1aac313c19a0','Beverage','default.png','','2021-04-26 12:20:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checkin`
--

DROP TABLE IF EXISTS `tbl_checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_checkin` (
  `id` varchar(36) NOT NULL,
  `startedOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `orderId` varchar(36) NOT NULL,
  `paymentId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `orderId` (`orderId`),
  KEY `paymentId` (`paymentId`),
  CONSTRAINT `tbl_checkin_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_checkin_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `tbl_order` (`id`),
  CONSTRAINT `tbl_checkin_ibfk_3` FOREIGN KEY (`paymentId`) REFERENCES `tbl_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checkin`
--

LOCK TABLES `tbl_checkin` WRITE;
/*!40000 ALTER TABLE `tbl_checkin` DISABLE KEYS */;
INSERT INTO `tbl_checkin` VALUES ('dc1eaf09-178b-43fc-b706-554e215edef6','2021-04-27 04:10:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:39','96e1c94f-34f5-4583-b833-b27b9a210d42','356676db-306a-4349-bf49-649a04e21c9e');
/*!40000 ALTER TABLE `tbl_checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checkout`
--

DROP TABLE IF EXISTS `tbl_checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_checkout` (
  `id` varchar(36) NOT NULL,
  `endedOn` datetime DEFAULT NULL,
  `totalHour` decimal(10,0) DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `orderId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tbl_checkout_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_checkout_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `tbl_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checkout`
--

LOCK TABLES `tbl_checkout` WRITE;
/*!40000 ALTER TABLE `tbl_checkout` DISABLE KEYS */;
INSERT INTO `tbl_checkout` VALUES ('3b9a7a23-b9f6-41a1-854d-8fbcf334d62b','2021-04-27 04:10:44',60,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:44','96e1c94f-34f5-4583-b833-b27b9a210d42');
/*!40000 ALTER TABLE `tbl_checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_color` (
  `id` varchar(36) NOT NULL,
  `color` varchar(20) NOT NULL,
  `hex` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `productId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `productId` (`productId`),
  CONSTRAINT `tbl_color_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_color_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `description` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES ('4feb3818-dfbf-4979-8159-414c635e2033','Thong',NULL,'','','2021-04-27 04:10:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('87912c32-6d74-4e00-ae4b-d07f78da5837','Customer',NULL,'','','2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_drawer`
--

DROP TABLE IF EXISTS `tbl_drawer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_drawer` (
  `id` varchar(36) NOT NULL,
  `key` varchar(36) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `counter` varchar(50) DEFAULT NULL,
  `startCost` decimal(16,2) DEFAULT NULL,
  `startedOn` datetime DEFAULT NULL,
  `endedOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_drawer_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_drawer`
--

LOCK TABLES `tbl_drawer` WRITE;
/*!40000 ALTER TABLE `tbl_drawer` DISABLE KEYS */;
INSERT INTO `tbl_drawer` VALUES ('7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5','02fb2104-2e30-4afa-996b-3073e3cf87f5',4000.00,'Default',0.00,'2021-04-26 12:22:22',NULL,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_drawer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_floor`
--

DROP TABLE IF EXISTS `tbl_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_floor` (
  `id` varchar(36) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `storeId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `storeId` (`storeId`),
  CONSTRAINT `tbl_floor_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `tbl_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_floor`
--

LOCK TABLES `tbl_floor` WRITE;
/*!40000 ALTER TABLE `tbl_floor` DISABLE KEYS */;
INSERT INTO `tbl_floor` VALUES ('570e9bb9-8e00-4fe1-9d47-5b4835545f47','Ground Floor','2021-04-26 12:19:38','6a72363f-1376-44c5-8b32-aabb4cac4aa4');
/*!40000 ALTER TABLE `tbl_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_money`
--

DROP TABLE IF EXISTS `tbl_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_money` (
  `id` varchar(36) NOT NULL,
  `money` decimal(16,0) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `value` decimal(16,5) DEFAULT NULL,
  `unit` decimal(10,0) DEFAULT NULL,
  `drawerId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drawerId` (`drawerId`),
  CONSTRAINT `tbl_money_ibfk_1` FOREIGN KEY (`drawerId`) REFERENCES `tbl_drawer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_money`
--

LOCK TABLES `tbl_money` WRITE;
/*!40000 ALTER TABLE `tbl_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` varchar(36) NOT NULL,
  `isCompleted` tinyint(1) DEFAULT NULL,
  `isProcessed` tinyint(1) DEFAULT NULL,
  `orderOn` datetime DEFAULT NULL,
  `orderTo` datetime DEFAULT NULL,
  `roomId` varchar(36) NOT NULL,
  `orderedBy` varchar(36) NOT NULL,
  `createdBy` varchar(36) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `orderedBy` (`orderedBy`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `tbl_room` (`id`),
  CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`orderedBy`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_order_ibfk_3` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_order_chk_1` CHECK ((`isCompleted` in (0,1))),
  CONSTRAINT `tbl_order_chk_2` CHECK ((`isProcessed` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES ('96e1c94f-34f5-4583-b833-b27b9a210d42',1,1,'2021-04-27 04:10:00','2021-04-27 04:10:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:37');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_outcome`
--

DROP TABLE IF EXISTS `tbl_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_outcome` (
  `id` varchar(36) NOT NULL,
  `isStock` tinyint(1) DEFAULT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_outcome_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_outcome_chk_1` CHECK ((`isStock` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_outcome`
--

LOCK TABLES `tbl_outcome` WRITE;
/*!40000 ALTER TABLE `tbl_outcome` DISABLE KEYS */;
INSERT INTO `tbl_outcome` VALUES ('c2578a27-be0f-4fed-ab44-dbde9bfb2399',1,'Coca Cola Original Taste x100',20.00,'2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_owe`
--

DROP TABLE IF EXISTS `tbl_owe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_owe` (
  `id` varchar(36) NOT NULL,
  `invoice` varchar(20) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `receive` varchar(20) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `owedBy` varchar(36) NOT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owedBy` (`owedBy`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_owe_ibfk_1` FOREIGN KEY (`owedBy`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_owe_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_owe`
--

LOCK TABLES `tbl_owe` WRITE;
/*!40000 ALTER TABLE `tbl_owe` DISABLE KEYS */;
INSERT INTO `tbl_owe` VALUES ('4d128b25-0b1a-4eeb-839d-104d947f88e1',NULL,0.0000,0.0000,0.0000,'0,0','2021-04-27 04:10:12','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_owe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment` (
  `id` varchar(36) NOT NULL,
  `isComplete` tinyint(1) DEFAULT NULL,
  `invoice` varchar(20) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `receive` varchar(20) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `change` decimal(10,4) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `orderedBy` varchar(36) NOT NULL,
  `createdBy` varchar(36) NOT NULL,
  `drawerId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderedBy` (`orderedBy`),
  KEY `createdBy` (`createdBy`),
  KEY `drawerId` (`drawerId`),
  CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`orderedBy`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_payment_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_payment_ibfk_3` FOREIGN KEY (`drawerId`) REFERENCES `tbl_drawer` (`id`),
  CONSTRAINT `tbl_payment_chk_1` CHECK ((`isComplete` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES ('356676db-306a-4349-bf49-649a04e21c9e',1,'INV0000003',11.0000,11.0000,0.0000,'0,44000',4000.0000,0.0000,'2021-04-27 04:10:39','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('55782b87-de47-4dfd-bc1e-960cbcef3973',1,'INV0000002',3.0000,3.0000,0.0000,'0,12000',4000.0000,0.0000,'2021-04-27 04:10:25','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('740d834e-dbd3-4f62-a7b4-0a9c244a130b',1,'INV0000001',3.0000,3.0000,0.0000,'0,12000',4000.0000,0.0000,'2021-04-27 04:10:16','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_photo`
--

DROP TABLE IF EXISTS `tbl_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_photo` (
  `id` varchar(36) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(50) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `productId` varchar(36) NOT NULL,
  `colorId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `productId` (`productId`),
  KEY `colorId` (`colorId`),
  CONSTRAINT `tbl_photo_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_photo_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `tbl_photo_ibfk_3` FOREIGN KEY (`colorId`) REFERENCES `tbl_color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_photo`
--

LOCK TABLES `tbl_photo` WRITE;
/*!40000 ALTER TABLE `tbl_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` varchar(36) NOT NULL,
  `product` varchar(50) NOT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `isStock` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `priceCurrency` decimal(10,2) DEFAULT NULL,
  `discount` varchar(3) DEFAULT NULL,
  `period` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text,
  `listFavorite` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `brandId` varchar(36) NOT NULL,
  `categoryId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `brandId` (`brandId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`id`),
  CONSTRAINT `tbl_product_ibfk_3` FOREIGN KEY (`categoryId`) REFERENCES `tbl_category` (`id`),
  CONSTRAINT `tbl_product_chk_1` CHECK ((`isStock` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES ('bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','Coca Cola Original Taste','',1,0.50,'USD',0.50,'',NULL,'a5d2d955-6bdf-4c05-b5c3-733df619fafb.jpeg','','[]','2021-04-26 12:20:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','f38541c5-bb56-4bdf-a856-89bde0a55ec8','a4fb17e7-6397-4972-88e3-1aac313c19a0'),('e61363a3-3080-4af1-944f-8fb2cf5a1156','Burger Bacon','',0,3.00,'USD',3.00,'',NULL,'c9e10b4d-af05-492c-9fb3-e301b1425065.png','','[]','2021-04-26 12:21:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','02210d30-7f54-430e-8a7c-a38cf33a0be0','85ab3b9b-a0a6-4d6c-b2c6-7fd4ece4c181');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_profile`
--

DROP TABLE IF EXISTS `tbl_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_profile` (
  `id` varchar(36) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `bio` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_profile_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_profile`
--

LOCK TABLES `tbl_profile` WRITE;
/*!40000 ALTER TABLE `tbl_profile` DISABLE KEYS */;
INSERT INTO `tbl_profile` VALUES ('a4f3a643-e04d-4691-ba4e-e6f3d4b72e58','default.png','Single','','','','','','2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_property`
--

DROP TABLE IF EXISTS `tbl_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_property` (
  `id` varchar(36) NOT NULL,
  `property` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `categoryId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `tbl_property_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_property_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_property`
--

LOCK TABLES `tbl_property` WRITE;
/*!40000 ALTER TABLE `tbl_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quantity`
--

DROP TABLE IF EXISTS `tbl_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_quantity` (
  `id` varchar(36) NOT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `stockId` varchar(36) NOT NULL,
  `transactionId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stockId` (`stockId`),
  KEY `transactionId` (`transactionId`),
  CONSTRAINT `tbl_quantity_ibfk_1` FOREIGN KEY (`stockId`) REFERENCES `tbl_stock` (`id`),
  CONSTRAINT `tbl_quantity_ibfk_2` FOREIGN KEY (`transactionId`) REFERENCES `tbl_transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quantity`
--

LOCK TABLES `tbl_quantity` WRITE;
/*!40000 ALTER TABLE `tbl_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role` (
  `id` varchar(36) NOT NULL,
  `role` varchar(20) NOT NULL,
  `description` text,
  `isDefault` tinyint(1) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_role_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_role_chk_1` CHECK ((`isDefault` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES ('a67baebe-622e-4ca2-af6e-b6f04ecf6c85','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room`
--

DROP TABLE IF EXISTS `tbl_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room` (
  `id` varchar(36) NOT NULL,
  `room` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `hour` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `floorId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room` (`room`),
  KEY `createdBy` (`createdBy`),
  KEY `floorId` (`floorId`),
  CONSTRAINT `tbl_room_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_room_ibfk_2` FOREIGN KEY (`floorId`) REFERENCES `tbl_floor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room`
--

LOCK TABLES `tbl_room` WRITE;
/*!40000 ALTER TABLE `tbl_room` DISABLE KEYS */;
INSERT INTO `tbl_room` VALUES ('8bf53e58-e565-4ced-8e7a-9b3767fdbe32','Room 1',8.00,'1h','Open','2021-04-26 12:21:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','570e9bb9-8e00-4fe1-9d47-5b4835545f47');
/*!40000 ALTER TABLE `tbl_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock`
--

DROP TABLE IF EXISTS `tbl_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_stock` (
  `id` varchar(36) NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `costCurrency` decimal(16,2) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `color` varchar(36) DEFAULT NULL,
  `expire` date DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `productId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `productId` (`productId`),
  CONSTRAINT `tbl_stock_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_stock_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
INSERT INTO `tbl_stock` VALUES ('c2578a27-be0f-4fed-ab44-dbde9bfb2399',0.20,0.20,'USD',4000.00,100,20.00,'',NULL,'2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79');
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store`
--

DROP TABLE IF EXISTS `tbl_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store` (
  `id` varchar(36) NOT NULL,
  `store` varchar(20) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `location` text,
  `createdOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store`
--

LOCK TABLES `tbl_store` WRITE;
/*!40000 ALTER TABLE `tbl_store` DISABLE KEYS */;
INSERT INTO `tbl_store` VALUES ('6a72363f-1376-44c5-8b32-aabb4cac4aa4','Store Name','','','2021-04-26 12:19:38');
/*!40000 ALTER TABLE `tbl_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transaction`
--

DROP TABLE IF EXISTS `tbl_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transaction` (
  `id` varchar(36) NOT NULL,
  `isComplete` tinyint(1) DEFAULT NULL,
  `isEditable` tinyint(1) DEFAULT NULL,
  `discount` varchar(3) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `description` text,
  `product` varchar(36) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_transaction_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_transaction_chk_1` CHECK ((`isComplete` in (0,1))),
  CONSTRAINT `tbl_transaction_chk_2` CHECK ((`isEditable` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transaction`
--

LOCK TABLES `tbl_transaction` WRITE;
/*!40000 ALTER TABLE `tbl_transaction` DISABLE KEYS */;
INSERT INTO `tbl_transaction` VALUES ('a90ced9f-c69e-47f4-b342-3e6a7c63be45',1,0,'0',8.00,8.00,1,8.00,'Room 1, 60min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-27 04:10:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('aa23664a-4775-4114-a5b6-642ebd4d0897',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d2a48582-6c85-489b-9953-524252aaaa68',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f8043955-4c82-433b-8c0d-0212184f2539',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
/*!40000 ALTER TABLE `tbl_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` varchar(36) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `theme` varchar(20) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `publicId` varchar(50) NOT NULL,
  `token` varchar(36) DEFAULT NULL,
  `drawer` varchar(36) DEFAULT NULL,
  `isConfirm` tinyint(1) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `tbl_user_chk_1` CHECK ((`isConfirm` in (0,1))),
  CONSTRAINT `tbl_user_chk_2` CHECK ((`isAdmin` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','','','Admin','',NULL,'','$2b$12$sQ/.lVX.2wQN6wzAif9H.eBawQK1KbHIgo1m39ruhhNxAFp/EyUr2','dark','english','f0f6f545-0dc9-4b6a-9866-5e935b2d6ca2','51a6b44c-b410-48ec-a8ba-2d0ab2729c5e','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5',1,1,'2021-04-26 12:19:38');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_value`
--

DROP TABLE IF EXISTS `tbl_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_value` (
  `id` varchar(36) NOT NULL,
  `value` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `priceCurrency` decimal(10,2) DEFAULT NULL,
  `description` text,
  `productId` varchar(36) NOT NULL,
  `propertyId` varchar(36) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `propertyId` (`propertyId`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_value_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `tbl_value_ibfk_2` FOREIGN KEY (`propertyId`) REFERENCES `tbl_property` (`id`),
  CONSTRAINT `tbl_value_ibfk_3` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_value`
--

LOCK TABLES `tbl_value` WRITE;
/*!40000 ALTER TABLE `tbl_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','a67baebe-622e-4ca2-af6e-b6f04ecf6c85');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 11:50:23
