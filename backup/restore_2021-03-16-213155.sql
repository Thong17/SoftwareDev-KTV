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
INSERT INTO `payment` VALUES ('cf536495-c7b6-454b-b8e1-9f147200394e','6040f3df-b7c5-4360-8312-bdb58e2cf270'),('fa073fa9-67eb-4c57-b789-3bf9d3418c96','be50bb01-2bb7-4756-838e-aee913dcb523'),('857374df-a87c-42b4-a77c-d23915fba6f8','206004f3-8827-4f42-b507-48bc31f30cb8'),('faacbb34-77be-4505-999c-7ed1ca27b4cc','1e6875d3-3218-4855-81c9-e2a2a1f4477c'),('e907c138-639a-4a42-83b8-0cbe37104daf','0127d2c5-bbb7-478d-aed4-d9072d9a024e'),('e907c138-639a-4a42-83b8-0cbe37104daf','9735e425-bb23-44c3-9c05-92cc926d84d7'),('55305972-8248-4cdb-b11f-1f3ea31eca44','216faeb5-1e94-4fd2-86b1-0822658c76d0');
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
INSERT INTO `tbl_activity` VALUES ('021faec8-cfbe-4fff-a914-85a3fff661f4','Admin has checked in order from: 03:48 PM to 04:48 PM','Check In','2021-03-16 08:48:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0a458575-3860-4de8-9d27-3c3e70144e86','Admin has added Spaghetti Italy to favorite','Add','2021-03-16 08:12:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0a534d8a-7160-4e81-98b4-5be0323bba8e','Admin has checked in order from: 07:26 PM to 08:26 PM','Check In','2021-03-16 12:27:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('23ebc530-7904-40a3-8f19-4d7a190156e9','Admin has checked out order from: 07:26 PM to 08:26 PM','Check Out','2021-03-16 12:29:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2539f686-0e9c-43a6-a95f-7aa3d7822357','Admin has added product Coca Cola Original Taste','Add','2021-03-16 08:01:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2d412389-15fd-4b00-82f8-1e91c0903d59','Admin has added transaction: Spaghetti Italy-Double','Add','2021-03-16 08:14:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('302b9be0-9641-4307-ab41-ed6be701e61d','Admin has added property: Size in category Food','Add','2021-03-16 08:01:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('31fa51c2-725c-4efb-b474-61017947a292','Admin has modified product from Spaghetti Italy//True/dollar/3.00///None/Food','Modify','2021-03-16 08:11:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('32c37a82-7139-48cc-981a-34558833b0b6','Admin has added transaction: Coca Cola Original Taste','Add','2021-03-16 12:34:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3bbd85be-716d-451f-8a32-893f1c53632a','Admin has ordered invoice: INV0000003','Order','2021-03-16 08:14:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3eed5294-cd28-40ea-bb4f-650b2fd0c099','Admin has deleted value: test in product','Delete','2021-03-16 08:04:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('43ae8010-6d80-4810-9cf7-17f4e3f611ab','Admin has added order from: 07:25 PM to 08:25 PM','Add','2021-03-16 12:26:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4c05a81e-5134-44f2-a4de-de0a203b5b66','Admin has added transaction: Spaghetti Italy','Add','2021-03-16 08:13:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4ed6cf2e-7142-4f32-9109-a6a27cdfa87a','Admin has added product Spaghetti Italy','Add','2021-03-16 08:11:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('56a9a027-8a8f-40bb-9de8-6d6308c5c245','Admin has modified product from Spaghetti Italy//False/dollar/3.00///None/Food','Modify','2021-03-16 08:13:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('589e40a5-0067-40a9-be9a-5f1fa42f1ddd','Admin has modified language from english','Modify','2021-03-16 07:59:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('60363f94-c3d6-44f4-a12b-8296e496192d','Admin has modified product from Spaghetti Italy//True/dollar/3.00///None/Beverage','Modify','2021-03-16 08:12:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('64164650-4010-41c5-966c-354690b891e7','Admin has deleted value: Double in product','Delete','2021-03-16 08:11:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('65159156-ed23-413b-8f8b-a81431fc062a','Admin has added order from: 03:47 PM to 04:47 PM','Add','2021-03-16 08:48:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('654edd62-c236-4a2e-a576-1f0a64797117','Admin has added room: Room 3','Create','2021-03-16 08:39:35','174084d3-74e4-495b-8e00-cb44eadcbf15'),('66036e7c-0da8-4197-b311-ecd275f286e4','Admin has modified theme from light','Modify','2021-03-16 07:59:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('69a77271-5ab1-4a27-a1c0-a57a54503898','Admin has added brand: Coca Cola in brand','Add','2021-03-16 08:01:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('69ba9400-0e8e-4622-b3ac-3f2105d96990','Admin has ordered invoice: INV0000006','Order','2021-03-16 12:34:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6a7865b1-401c-41f6-8292-92f660fbc057','Admin has checked out payment INV0000004','Payment','2021-03-16 12:22:04','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6eac65aa-ce2f-4102-8c53-ecf5cef5dfcd','Admin has added room: Room 2','Create','2021-03-16 08:39:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7376b862-e069-4041-9ac5-9927d4e43dce','Admin has added brand: Restaurant in brand','Add','2021-03-16 08:10:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('85928731-16d8-442a-ab38-886302efb3e0','Admin has opened drawer','Open','2021-03-16 08:13:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('87ea36a7-7f2a-4cf9-96e1-f2880aa3bbf8','Admin has added value Double in product','Add','2021-03-16 08:14:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8cb1395c-fe0d-45c2-9a11-488be7b1c04c','Admin has uploaded his profile picture ','Modify','2021-03-16 08:00:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('909a4b08-18be-40f4-9186-c641f67d0b14','Admin has added value Double in product','Add','2021-03-16 08:11:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('96c1f53a-475d-44e7-99d1-2cf40251af26','Admin has checked out payment INV0000005','Payment','2021-03-16 12:29:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9a65e4b8-6d90-41cc-b2fd-bd6f26084e38','Admin has ordered invoice: INV0000002','Order','2021-03-16 08:14:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9db1afb2-0535-4f65-b072-da5961195ff4','Admin has checked out order from: 03:48 PM to 04:48 PM','Check Out','2021-03-16 12:21:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a38f5d39-c72b-4ec8-b7b6-5854880c8616','Admin has updated transaction Room 3, 3h 34min','Modified','2021-03-16 12:21:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a7fe9fa6-df49-47ee-926b-7a620736f145','Admin has added stock: 0.2/dollar/100/4000/0.0 in product Coca Cola Original Taste','Add','2021-03-16 12:30:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a868ee83-9f52-4fca-a9f4-709fd3fc63bf','Admin has added product Pepsi ','Add','2021-03-16 08:02:42','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a9db27b1-827d-47b8-87f9-9ea3ee615acb','Admin has logged in','Login','2021-03-14 15:20:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('aad2fdbc-bd4d-4b2e-be98-6c1abbc6ee7d','Admin has checked out payment INV0000002','Payment','2021-03-16 08:14:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b0eaafbc-7a54-4946-97fd-0267813d3459','Admin has added product Coca Cola Zero','Add','2021-03-16 08:10:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b22c8655-1dbf-408f-a5d7-886c882985f8','Admin has logged in','Login','2021-03-16 12:20:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bbbfddf8-1590-4809-b4d2-16db32f86181','Admin has checked out payment INV0000001','Payment','2021-03-16 08:13:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bf7b834d-6ac2-46a3-839e-cc85db72b827','Admin has added transaction: Spaghetti Italy-Double','Add','2021-03-16 12:27:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bfa2ce7d-6588-45ec-b618-f64ed534bce8','Admin has ordered invoice: INV0000001','Order','2021-03-16 08:13:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c2c583e7-cb3e-4713-9ce1-4bf580acf504','Admin has added category: Beverage in category','Add','2021-03-16 08:01:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c33efc8d-98d4-49eb-80a0-3d29e432e3fe','Admin has added expense: Test','Create','2021-03-16 12:32:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c4a62e35-0515-4c3b-8d3e-930c57fbf57a','Admin has upload photo for product: Spaghetti Italy','Upload','2021-03-16 08:35:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c57a5652-3262-4471-8f32-aad8713a72f2','Admin has added room: Room 1','Create','2021-03-16 08:39:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c7958ae1-9a58-4704-a13b-b334cc1a1945','Admin has added value test in product','Add','2021-03-16 08:03:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cad731d0-ccea-4841-b2ce-2bcb9d58b0b3','Admin has added transaction: Spaghetti Italy-Normal','Add','2021-03-16 08:14:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cebdb2c7-88e3-431f-9daa-13b41add95e6','Admin has added category: Food in category','Add','2021-03-16 08:01:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e9b0ac82-be6c-4ca2-bf2d-32dc9fb30979','Admin has checked out payment INV0000003','Payment','2021-03-16 08:15:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e9e1e899-454b-437a-8e1d-c22b1ef443d8','Admin has updated transaction Room 3, 30min','Modified','2021-03-16 12:29:49','174084d3-74e4-495b-8e00-cb44eadcbf15'),('eb607dcf-eeac-4af5-91f9-11ee05cb4abe','Admin has added customer: Thong','Add','2021-03-16 08:48:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f0cfab7b-5d0a-4ddc-acf7-cf6ecea6d6f9','Admin has modified product from Spaghetti Italy//True/dollar/3.00///None/Beverage','Modify','2021-03-16 08:12:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f245da19-efa0-4ff2-9db0-91d2f9ddfc01','Admin has added value Normal in product','Add','2021-03-16 08:11:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fcea1ebe-89b5-4021-a1eb-4a6a7ef676d2','Admin has checked out payment INV0000006','Payment','2021-03-16 12:34:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('feb6cb20-c028-441f-861c-d05c5626ce21','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-03-16 08:35:31','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_appearance` VALUES ('0b6ffc81-caef-4827-9fc2-5da6eb0abd26','','','','','','d7ca4006-fd6c-46d2-ae3d-8a0f3b611b09'),('adeef57a-d5aa-4a36-9d69-96e47ec5adbf','','','','','','fc587e1d-3b06-4d08-91b9-bf9a9de8918a'),('bba9255b-9908-4735-a743-635af65fe352','','','','','','75947ae9-2c8b-49b5-994c-bd0c75957bed'),('ca69590d-c044-40f9-b7ad-98ad7c683bca','','','','','','14e5649e-019c-4702-bbbc-52e3c4389007');
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
INSERT INTO `tbl_brand` VALUES ('317d89a3-4c6a-40cf-9224-3096e623554b','Coca Cola','','2021-03-16 08:01:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4eb745a2-51cf-4005-9dd8-ae0f29fed4a9','Restaurant','','2021-03-16 08:10:30','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_category` VALUES ('ab42a578-78cd-4fec-a872-a3124f385308','Food','default.png','','2021-03-16 08:01:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f5f51d8f-d5b0-4f8c-b9a5-164af9af8848','Beverage','default.png','','2021-03-16 08:01:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_checkin` VALUES ('8fdc62bd-d73c-42b0-bb95-0dfd61ba139f','2021-03-16 08:48:56','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 08:48:56','61dc6943-654b-48bd-aea3-7014e03bdb07','faacbb34-77be-4505-999c-7ed1ca27b4cc'),('cb0008b9-5946-4550-b710-c158a612c97b','2021-03-16 12:27:01','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 12:27:01','18c05e58-5585-4a4b-bef3-e0f29cb4d8aa','e907c138-639a-4a42-83b8-0cbe37104daf');
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
INSERT INTO `tbl_checkout` VALUES ('8ac2a54a-32f7-440c-8c0e-01760def7c84','2021-03-16 12:29:48',30,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 12:29:48','18c05e58-5585-4a4b-bef3-e0f29cb4d8aa'),('a1170830-b2c6-4e81-ae5d-851ea4281df7','2021-03-16 12:21:54',214,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 12:21:54','61dc6943-654b-48bd-aea3-7014e03bdb07');
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
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES ('32c88703-aa46-41f4-961b-3b42b19e3eeb','Thong',NULL,'017 467 617','2021-03-16 08:48:41','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
  `startCost` decimal(10,2) DEFAULT NULL,
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
INSERT INTO `tbl_drawer` VALUES ('f3c65416-5039-43f3-b54c-db422e9edb63','fc88b22e-577f-492a-b6cf-c9c53621ad4f',4000.00,'Default',0.00,'2021-03-16 08:13:22',NULL,'174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_floor` VALUES ('436f239c-9d00-46ef-bb8d-b39ffb7944ee','Ground Floor','2021-03-14 15:20:10','c3cb5134-a51e-450a-835f-dd59c9d42cfe');
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
  `money` decimal(10,0) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `value` decimal(10,5) DEFAULT NULL,
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
INSERT INTO `tbl_order` VALUES ('18c05e58-5585-4a4b-bef3-e0f29cb4d8aa',1,1,'2021-03-16 12:26:00','2021-03-16 13:26:00','d2f52d53-b518-4907-86db-d1cc342940d3','32c88703-aa46-41f4-961b-3b42b19e3eeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 12:26:54'),('61dc6943-654b-48bd-aea3-7014e03bdb07',1,1,'2021-03-16 08:48:00','2021-03-16 09:48:00','d2f52d53-b518-4907-86db-d1cc342940d3','32c88703-aa46-41f4-961b-3b42b19e3eeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 08:48:50');
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
INSERT INTO `tbl_outcome` VALUES ('59288948-588b-4ce0-a683-c43e876cd51b',1,'Coca Cola Original Taste x100',20.00,'2021-03-16 12:30:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9643bc92-2cf4-4623-aeb8-edad781afdd9',0,'Test',10.00,'2021-03-16 12:32:09','174084d3-74e4-495b-8e00-cb44eadcbf15');
/*!40000 ALTER TABLE `tbl_outcome` ENABLE KEYS */;
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
  `amount` decimal(10,2) DEFAULT NULL,
  `receive` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `change` decimal(10,2) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `drawerId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `drawerId` (`drawerId`),
  CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_payment_ibfk_2` FOREIGN KEY (`drawerId`) REFERENCES `tbl_drawer` (`id`),
  CONSTRAINT `tbl_payment_chk_1` CHECK ((`isComplete` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES ('55305972-8248-4cdb-b11f-1f3ea31eca44',1,'INV0000006',5.00,10.00,4000.00,5.00,'2021-03-16 12:34:21','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63'),('857374df-a87c-42b4-a77c-d23915fba6f8',1,'INV0000003',3.00,10.00,4000.00,7.00,'2021-03-16 08:14:57','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63'),('cf536495-c7b6-454b-b8e1-9f147200394e',1,'INV0000001',3.00,5.00,4000.00,2.00,'2021-03-16 08:13:33','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63'),('e907c138-639a-4a42-83b8-0cbe37104daf',1,'INV0000005',9.00,10.00,4000.00,1.00,'2021-03-16 12:27:01','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63'),('fa073fa9-67eb-4c57-b789-3bf9d3418c96',1,'INV0000002',3.00,5.00,4000.00,2.00,'2021-03-16 08:14:20','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63'),('faacbb34-77be-4505-999c-7ed1ca27b4cc',1,'INV0000004',28.53,30.00,4000.00,1.47,'2021-03-16 08:48:56','174084d3-74e4-495b-8e00-cb44eadcbf15','f3c65416-5039-43f3-b54c-db422e9edb63');
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
INSERT INTO `tbl_product` VALUES ('14e5649e-019c-4702-bbbc-52e3c4389007','Pepsi ','',1,0.50,'dollar','',NULL,'default.png','','[]','2021-03-16 08:02:42','174084d3-74e4-495b-8e00-cb44eadcbf15','317d89a3-4c6a-40cf-9224-3096e623554b','f5f51d8f-d5b0-4f8c-b9a5-164af9af8848'),('75947ae9-2c8b-49b5-994c-bd0c75957bed','Spaghetti Italy','',0,3.00,'dollar','',NULL,'1939239a-be04-4fbb-917d-9b260b0ac0d6.png','','[\"174084d3-74e4-495b-8e00-cb44eadcbf15\"]','2021-03-16 08:11:00','174084d3-74e4-495b-8e00-cb44eadcbf15','4eb745a2-51cf-4005-9dd8-ae0f29fed4a9','ab42a578-78cd-4fec-a872-a3124f385308'),('d7ca4006-fd6c-46d2-ae3d-8a0f3b611b09','Coca Cola Original Taste','',1,0.50,'dollar','',NULL,'0128d7f5-8f3f-4e21-9ecd-6db1f4cb7f71.jpeg','','[]','2021-03-16 08:01:48','174084d3-74e4-495b-8e00-cb44eadcbf15','317d89a3-4c6a-40cf-9224-3096e623554b','f5f51d8f-d5b0-4f8c-b9a5-164af9af8848'),('fc587e1d-3b06-4d08-91b9-bf9a9de8918a','Coca Cola Zero','',1,0.70,'dollar','',NULL,'default.png','','[]','2021-03-16 08:10:17','174084d3-74e4-495b-8e00-cb44eadcbf15','317d89a3-4c6a-40cf-9224-3096e623554b','f5f51d8f-d5b0-4f8c-b9a5-164af9af8848');
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
INSERT INTO `tbl_profile` VALUES ('96ad051c-71b8-41c0-bda6-b74c578eaede','aeec822a-f8b2-4e10-8a14-c1b8e89eb9a0.jpg','Single','','','','','','2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_property` VALUES ('08973a0f-1ba5-4c22-b5ab-d8499b1c6c31','Size','text','','2021-03-16 08:01:19','174084d3-74e4-495b-8e00-cb44eadcbf15','ab42a578-78cd-4fec-a872-a3124f385308');
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
INSERT INTO `tbl_quantity` VALUES ('0d817698-0f11-422c-bfa0-62caf3fbe33b',10,10,'59288948-588b-4ce0-a683-c43e876cd51b','216faeb5-1e94-4fd2-86b1-0822658c76d0');
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
INSERT INTO `tbl_role` VALUES ('ff681de8-3d05-450c-8d35-1b7f47326182','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_room` VALUES ('d2f52d53-b518-4907-86db-d1cc342940d3','Room 3',8.00,'1h','Open','2021-03-16 08:39:35','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('ee902bea-0fd9-4773-a65e-7cba4f95ccda','Room 1',8.00,'1h','Open','2021-03-16 08:39:23','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('eeb0114a-3a28-4d22-904d-4d9f242c26a6','Room 2',8.00,'1h','Open','2021-03-16 08:39:32','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee');
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
  `currency` varchar(20) NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `color` varchar(36) DEFAULT NULL,
  `adjust` decimal(10,2) DEFAULT NULL,
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
INSERT INTO `tbl_stock` VALUES ('59288948-588b-4ce0-a683-c43e876cd51b',0.20,'dollar',4000.00,90,'',0.00,'2021-03-16 12:30:37','174084d3-74e4-495b-8e00-cb44eadcbf15','d7ca4006-fd6c-46d2-ae3d-8a0f3b611b09');
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
INSERT INTO `tbl_store` VALUES ('c3cb5134-a51e-450a-835f-dd59c9d42cfe','Store Name','','','2021-03-14 15:20:10');
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
INSERT INTO `tbl_transaction` VALUES ('0127d2c5-bbb7-478d-aed4-d9072d9a024e',1,1,'0',3.00,5.00,1,5.00,'Spaghetti Italy-Double','75947ae9-2c8b-49b5-994c-bd0c75957bed','2021-03-16 12:27:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1e6875d3-3218-4855-81c9-e2a2a1f4477c',1,0,'0',28.53,28.53,1,28.53,'Room 3, 3h 34min','d2f52d53-b518-4907-86db-d1cc342940d3','2021-03-16 12:21:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('206004f3-8827-4f42-b507-48bc31f30cb8',1,1,'0',3.00,3.00,1,3.00,'Spaghetti Italy-Double','75947ae9-2c8b-49b5-994c-bd0c75957bed','2021-03-16 08:14:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('216faeb5-1e94-4fd2-86b1-0822658c76d0',1,1,'0',0.50,5.00,10,3.00,'Coca Cola Original Taste','d7ca4006-fd6c-46d2-ae3d-8a0f3b611b09','2021-03-16 12:34:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6040f3df-b7c5-4360-8312-bdb58e2cf270',1,1,'0',3.00,3.00,1,3.00,'Spaghetti Italy','75947ae9-2c8b-49b5-994c-bd0c75957bed','2021-03-16 08:13:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9735e425-bb23-44c3-9c05-92cc926d84d7',1,0,'0',4.00,4.00,1,4.00,'Room 3, 30min','d2f52d53-b518-4907-86db-d1cc342940d3','2021-03-16 12:29:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('be50bb01-2bb7-4756-838e-aee913dcb523',1,1,'0',3.00,3.00,1,3.00,'Spaghetti Italy-Normal','75947ae9-2c8b-49b5-994c-bd0c75957bed','2021-03-16 08:14:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_user` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','','','Admin','',NULL,'','$2b$12$B212Iy7eHShZmr2IRiTb7.K.9a3.PSDXq5JmKiO5UAKuRnL8mAqVK','dark','khmer','e4769719-e2a2-4a1b-9685-09d045a4a20e','1029cf1a-47e8-4bbf-a914-206571dd07d9','f3c65416-5039-43f3-b54c-db422e9edb63',1,1,'2021-03-14 15:20:10');
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
INSERT INTO `tbl_value` VALUES ('00d8586f-3a12-4d18-991b-36a54ec4a429','Double',2.00,'dollar','','75947ae9-2c8b-49b5-994c-bd0c75957bed','08973a0f-1ba5-4c22-b5ab-d8499b1c6c31','2021-03-16 08:14:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('565d440e-56b1-453e-986d-9ed96260596b','Normal',0.00,'dollar','','75947ae9-2c8b-49b5-994c-bd0c75957bed','08973a0f-1ba5-4c22-b5ab-d8499b1c6c31','2021-03-16 08:11:13','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `user_role` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','ff681de8-3d05-450c-8d35-1b7f47326182');
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

-- Dump completed on 2021-03-16 21:31:55
