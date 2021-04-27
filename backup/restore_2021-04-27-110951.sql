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
INSERT INTO `owe` VALUES ('9d062e34-a30a-4070-bb5b-622e9c86d69e','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('df5f78d9-a863-4188-97d6-1442cc5c3cc3','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('ec198d0e-2054-4531-80c5-bad2d7c717fa','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('f226a26e-0a7c-4f00-be7d-864eb1f1457b','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('e236ebcf-9bed-4712-87e1-d5ef96f78fc7','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('6b13ea85-5419-4aad-926a-d789ebfad24e','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('8c1b99a9-a376-4c00-b9af-ebd0a023c2cf','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('a2cf34f5-6ac2-4aa6-8f1d-79513b1a6523','e9d35315-1207-4cb5-ad89-87cd6b7c617a'),('c0400866-33dd-4e2b-9dbc-806509352831','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('1c8f7205-9d5b-40a1-a7a1-af6ecbb8777d','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('e1436c72-3745-43d5-bd40-a546c720918d','dfaa58c4-b2ed-4473-8351-61a6d9468b5f'),('74ba63ca-5b65-471c-b5b0-f6b31fbcad4c','dfaa58c4-b2ed-4473-8351-61a6d9468b5f');
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
INSERT INTO `payment` VALUES ('9d062e34-a30a-4070-bb5b-622e9c86d69e','4a7770e4-8a34-4be4-930e-f8483e7b0117'),('9d062e34-a30a-4070-bb5b-622e9c86d69e','6461f6a9-70db-44e9-b387-25da2f6f910f'),('df5f78d9-a863-4188-97d6-1442cc5c3cc3','00b05093-3d51-4b21-8073-3715c6915e75'),('df5f78d9-a863-4188-97d6-1442cc5c3cc3','ca92804c-cf84-4e30-9ed9-bbe9aa67f987'),('df5f78d9-a863-4188-97d6-1442cc5c3cc3','784fb1a9-b3ae-4f0f-b569-8d72e79c9731'),('7d553e81-c9ee-43fd-8cf2-ea37b345da56','96fb67a7-4fcd-45d9-8ffa-239d74206a71'),('ec08023e-d5a1-41f8-8c22-5760868e4c28','e8b92800-2248-49e9-87aa-c8ed7a84ae59'),('ec08023e-d5a1-41f8-8c22-5760868e4c28','aa0afc00-e866-433e-86d3-f9abcd4dc150'),('ec198d0e-2054-4531-80c5-bad2d7c717fa','3bc957ab-108b-4b6f-bfc4-9fd92dbf1121'),('f226a26e-0a7c-4f00-be7d-864eb1f1457b','4deb64c8-261d-4711-92d9-3890ab46f570'),('e236ebcf-9bed-4712-87e1-d5ef96f78fc7','19d1f40c-2864-4096-a859-7ee6752aad7c'),('e236ebcf-9bed-4712-87e1-d5ef96f78fc7','b3623ed4-54c3-4a23-bb31-5f3887e20233'),('c2ac8ea8-7fde-437b-acb9-15af86dd5537','2d622452-1319-41b2-9902-3d7b93597653'),('6b13ea85-5419-4aad-926a-d789ebfad24e','8f4ae790-c375-4804-a2ce-faa6c5ee7c96'),('8c1b99a9-a376-4c00-b9af-ebd0a023c2cf','87824cc4-5451-4cad-b764-6bb9c3959d5d'),('2de1c777-2a48-44b1-96c3-a9ab6870b966','1e483351-a14f-4adc-a12d-9beaee549f98'),('a2cf34f5-6ac2-4aa6-8f1d-79513b1a6523','5a034714-dc4f-4824-9bd0-3b0ca51e39f4'),('c0400866-33dd-4e2b-9dbc-806509352831','c7607162-f336-4b1b-83be-3c8fe254739f'),('1c8f7205-9d5b-40a1-a7a1-af6ecbb8777d','55851e30-eb44-4742-9d26-a0178941a1ad'),('1c8f7205-9d5b-40a1-a7a1-af6ecbb8777d','9d1ca20f-0e98-4da3-84ae-111abd5a983f'),('e1436c72-3745-43d5-bd40-a546c720918d','854e3593-cb28-4a70-aed5-7fa15aee939c'),('74ba63ca-5b65-471c-b5b0-f6b31fbcad4c','9aa9239a-efb6-4476-8116-8a3150f9d08e'),('74ba63ca-5b65-471c-b5b0-f6b31fbcad4c','b0700cda-38a4-4dab-a049-bbd0b3586d76');
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
INSERT INTO `tbl_activity` VALUES ('024e5547-a463-4c69-b74c-af1187add1e4','Admin has checked out payment INV0000001','Payment','2021-04-26 12:24:31','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0372b6e4-29ff-4255-84ac-21f33b5695ab','Admin has checked out payment INV0000009','Payment','2021-04-26 13:27:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('055c6846-cd14-4748-9081-d409bff323a0','Admin has ordered invoice: INV0000009','Order','2021-04-26 13:27:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('05cc6b2d-7a23-444a-8b6d-40224de6b7da','Admin has checked in order from: 10:30 AM to 10:30 AM','Check In','2021-04-27 03:53:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('06264de7-cfd0-4def-8d8b-fbe2317eafb2','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 13:09:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('094512d2-9175-4e70-99dc-bd6e430462f5','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:27:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('09805739-a0eb-43d3-9f5c-88e68c29d1b5','Admin has checkout owe total: 2.5','Checkout','2021-04-27 04:04:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('11948daa-b6ae-49e5-a98b-ec4329db897e','Admin has added order from 2021-04-26 08:10 PM to 2021-04-26 09:10 PM for customer Thong','Add','2021-04-26 13:11:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('11dbbf05-a509-42a5-93c9-58b3694ab4f7','Admin has checkout owe total: 0.10','Checkout','2021-04-27 04:03:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1514a004-4d35-4ee1-9f75-199cc5c0d51c','Admin has checked out payment INV0000003','Payment','2021-04-26 13:01:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('151d21a1-372d-467a-a67c-5a7f45892eb6','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:09:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('153468ed-5c36-4624-a48c-3897570144af','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:10:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1895a234-2caf-433a-aba6-c33c67c6b691','Admin has added product Coca Cola Original Taste','Add','2021-04-26 12:20:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1bbb8563-cb2e-4510-876c-f5c0177453f6','Admin has modified product from Burger Bacon//True/USD/3.00///None/Food','Modify','2021-04-26 12:22:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1c65dee9-f7af-4c71-af23-42af75f7f75c','Admin has checkout owe total: 2.5','Checkout','2021-04-26 13:12:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1d337f25-1e24-4819-990a-fea86bac3c07','Admin has added transaction: Burger Bacon','Add','2021-04-26 12:43:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('20f21170-7a32-4d9e-9c51-9e39581295a0','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 13:01:06','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2245e197-f609-434e-b5c1-642442015511','Admin has checked out payment INV0000002','Payment','2021-04-26 12:43:30','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('24f785ac-fb22-434c-b0d9-c83426311fd7','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 13:10:57','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('260b6ee2-2959-4f7b-b3ad-218872b2b177','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-04-26 12:22:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2772b841-be29-455d-a09f-9ac1b4b62a9d','Admin has checked out payment INV0000014','Payment','2021-04-27 03:07:30','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2f0673b8-8480-48c4-b7e2-0b80a5d7f895','Admin has updated transaction Room 1, 60min','Modified','2021-04-26 13:11:31','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('31e32a01-7738-4557-ab55-44c96c159451','Admin has ordered invoice: INV0000010','Order','2021-04-26 13:28:57','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('32f45cb5-e2b8-4a33-a97a-255500853fdf','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-27 03:07:24','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('33813763-f001-4686-b861-cafdd5db76cf','Admin has opened drawer','Open','2021-04-26 12:22:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('369e6571-b0c8-4455-a3d2-aaf7bd949e88','Admin has checked out payment INV0000007','Payment','2021-04-26 13:20:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('37a8fea4-a0ae-49ed-8c7f-61a01690334c','Admin has upload photo for product: Burger Bacon','Upload','2021-04-26 12:21:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3f1aeb13-65e1-4fe7-963f-690bd1c1b299','Admin has closed drawer','Close','2021-04-26 13:09:23','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3fbb6e64-8f46-4c53-8f79-6b73e42a9c37','Admin has checked out payment INV0000013','Payment','2021-04-26 15:05:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('405b4693-c1c6-4654-95d8-800246275ffa','Admin has checked out payment INV0000010','Payment','2021-04-26 13:29:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('40966c0a-365e-43ec-ba04-84c772c49f11','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:29:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('454112f4-d7bc-4483-8980-46527d0a8971','Admin has ordered invoice: INV0000004','Order','2021-04-26 13:09:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4a66c073-30de-48c9-ad49-fd4a002705b2','Admin has checked out payment INV0000013','Payment','2021-04-26 13:59:50','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4af72068-0cdc-4dd2-9ab2-d1466b2b4300','Admin has ordered invoice: INV0000014','Order','2021-04-27 03:07:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5067fafa-a116-415b-a3d4-497508c00381','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 12:22:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('55443297-9bc2-4bb0-9299-580e030e42e0','Admin has added category: Food in category','Add','2021-04-26 12:20:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('587ea29f-6ca4-4809-aa0c-0a0553cbf7cc','Admin has checkout owe total: 1','Checkout','2021-04-26 15:05:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('58f052b1-a399-4fa1-900f-d2d74dae1b2a','Admin has checked out payment INV0000005','Payment','2021-04-26 13:10:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5a702f89-5b3e-4ec4-825a-6daaebe6a6e5','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-27 03:07:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5e704ca4-6bbe-4e61-a729-95330fe19c31','Admin has added brand: Coca Cola in brand','Add','2021-04-26 12:20:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5ee6ef5b-3d27-4568-b421-4268a3a9de81','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 12:22:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('60f0e251-9eec-4bc6-b449-25d8c6ee62e9','Admin has checked out order from: 10:30 AM to 10:30 AM','Check Out','2021-04-27 03:54:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6439e0b8-8088-4cbe-940e-4c8ce4798bb8','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 12:43:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6649b65b-a15c-47fb-a8ef-df320999befb','Admin has checked out payment INV0000012','Payment','2021-04-26 13:59:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('66a1f11e-0250-4d25-95b3-af628d5a389b','Admin has checked out payment INV0000010','Payment','2021-04-26 13:28:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('67c372b7-4d3c-4df3-a0d3-6bdbb56cf1f7','Admin has ordered invoice: INV0000011','Order','2021-04-26 13:29:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('68d1e04a-f599-4bd5-af20-e7a4c62e1445','Admin has checked out order from: 08:11 PM to 09:11 PM','Check Out','2021-04-26 13:11:29','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('69084727-b7a3-4581-84c9-7ced9af80f5b','Admin has modified theme from light','Modify','2021-04-26 12:21:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('69874765-c6fe-4c41-bb35-b5c5ce395510','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 13:23:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6d5e5015-8b37-46cc-8f2d-d2df74904ef7','Admin has added product Burger Bacon','Add','2021-04-26 12:21:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77644a28-07d6-4a0e-bddb-7ae55b792359','Admin has logged in','Login','2021-04-26 12:20:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('78ae7c0a-5cea-4b81-8a7c-c2fc2be107d2','Admin has ordered invoice: INV0000001','Order','2021-04-26 12:23:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('78d5a7b4-ecb6-4cd7-9771-70f8112267fe','Admin has checked out payment INV0000001','Payment','2021-04-26 12:36:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7aea112b-374b-4c31-9697-c7baf84a5005','Admin has logged in','Login','2021-04-26 15:05:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8001bfd9-14e9-452c-b6c5-9ea1848c528c','Admin has added order from 2021-04-26 07:41 PM to 2021-04-26 08:41 PM for customer Thong','Add','2021-04-26 12:42:52','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('88f5237f-c270-45ae-abb8-c78a8d8a6d12','Admin has ordered invoice: INV0000013','Order','2021-04-26 13:59:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8ac7f851-be6a-4e30-9309-0e994cdc7ba5','Admin has checked out payment INV0000013','Payment','2021-04-26 15:05:50','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8b152b41-7166-4139-994b-581963206915','Admin has opened drawer','Open','2021-04-26 13:09:35','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8d4450c1-d170-4ed3-80cb-411893ba8454','Admin has updated transaction Room 1, 30min','Modified','2021-04-26 12:43:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8e431395-d24b-485b-8e9f-99f671e22a5f','Admin has added order from 2021-04-27 10:29 AM to 2021-04-27 10:29 AM for customer Thong','Add','2021-04-27 03:30:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8ed374fe-bf84-4753-9e17-47e1265e283a','Admin has checkout owe total: 3','Checkout','2021-04-26 14:00:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('95d81179-f313-4480-b7c5-1291f9dc7984','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:59:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('987e695e-9c62-4af4-8806-290f203e803c','Admin has ordered invoice: INV0000008','Order','2021-04-26 13:23:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a4665208-ed42-4762-a12b-3c1b9e55a602','Admin has checked out order from: 07:42 PM to 08:42 PM','Check Out','2021-04-26 12:43:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a4bbad03-9125-4a92-88bd-6938e29f3712','Admin has added customer: Thong','Add','2021-04-26 12:22:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a649c62b-80da-4adf-955a-08e45734e97b','Admin has added customer: Test','Add','2021-04-26 13:59:30','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a702ad2c-bb6b-4679-84f0-5b12254a7ce5','Admin has checked out payment INV0000007','Payment','2021-04-26 13:11:50','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ab29f607-62dc-45c5-9968-b391de8e58ce','Admin has ordered invoice: INV0000015','Order','2021-04-27 03:07:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ab3c34f1-5e1f-4fe6-95a7-12fee80b23c9','Admin has added room: Room 1','Create','2021-04-26 12:21:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ac192909-ce80-4db6-a942-bbca5fa2c7b3','Admin has checked out payment INV0000004','Payment','2021-04-26 13:09:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ac30ca3b-c009-4d48-a478-b35e389080a2','Admin has updated transaction Room 1, 30min','Modified','2021-04-27 03:54:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('af3f0a34-24f4-4a4d-a98b-6f438bd18503','Admin has checkout owe total: 10','Checkout','2021-04-27 04:04:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b098797c-2caf-48ca-ab03-e2e2305cbd75','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-04-26 12:20:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b173971a-ae4c-4fbc-a853-cc626dab68c1','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:11:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b65b5f1c-bf4f-486c-88cb-bec7d7ac2990','Admin has checked out payment INV0000015','Payment','2021-04-27 03:07:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ba71c120-3163-4f96-80ae-9561612cf29a','Admin has checked out payment INV0000002','Payment','2021-04-26 12:43:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bfb96db5-6dc3-448a-a85d-c97a71c9c806','Admin has added transaction: Burger Bacon','Add','2021-04-27 03:07:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bfe9c243-5c34-49d5-a424-e9851ecf021a','Admin has checked out payment INV0000016','Payment','2021-04-27 03:54:42','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c0bad2ee-f24b-4387-be54-77a5e197a892','Admin has ordered invoice: INV0000006','Order','2021-04-26 13:10:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c60f0fa9-0acd-48fd-adef-2db0d9fab66d','Admin has checkout owe total: 10','Checkout','2021-04-26 13:28:13','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c94f016a-b8f3-431c-a17b-0a416f55c85e','Admin has modified language from english','Modify','2021-04-26 15:07:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cb079552-1de5-4f70-a518-a145924177bb','Admin has logged in','Login','2021-04-27 03:06:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cdf3de79-5688-4d08-8b9f-2f87d1c09cea','Admin has checked out payment INV0000008','Payment','2021-04-26 13:23:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d94ed2d0-f8fb-493f-b1d1-297df602b856','Admin has checked out payment INV0000006','Payment','2021-04-26 13:11:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d963d1e9-35a5-4815-ba57-9197dde3dda7','Admin has checked out payment INV0000001','Payment','2021-04-26 12:23:16','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('db92ba14-0e5a-4c5f-a63b-023ef4dd6f19','Admin has added transaction: Burger Bacon','Add','2021-04-27 03:54:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('dd08cfee-884d-4630-9595-d573b9383ed3','Admin has checked in order from: 07:42 PM to 08:42 PM','Check In','2021-04-26 12:43:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('df592a04-3d18-4f74-b0d2-5e6709bbef90','Admin has added transaction: Burger Bacon','Add','2021-04-26 12:22:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('dfc9fc8f-f2b8-415e-a854-267c0b310497','Admin has added category: Beverage in category','Add','2021-04-26 12:20:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e084445a-881a-4706-b6d7-c3ad2028ee41','Admin has added brand: Shop in brand','Add','2021-04-26 12:20:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e526a315-a5d0-41c3-99e5-5efddde093cc','Admin has added transaction: Burger Bacon','Add','2021-04-26 13:28:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e93dc156-2993-42c5-aeb8-fa2b5fc37706','Admin has ordered invoice: INV0000012','Order','2021-04-26 13:59:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ea8678a2-340a-47fa-8995-41f2397a1a1b','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 13:59:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ec7c583a-534b-4a61-a1d8-291d82fd4d2a','Admin has ordered invoice: INV0000003','Order','2021-04-26 13:01:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ecb69f83-2793-4b3c-a997-290d4bc1beb5','Admin has added stock: 0.2/USD/100/4000/None/20.0 in product Coca Cola Original Taste','Add','2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ed182ab1-2fba-4779-9f43-55856c852dd6','Admin has checkout owe total: 20','Checkout','2021-04-26 13:10:21','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f1e2ad95-b360-44f0-befb-b8a02324e445','Admin has checked in order from: 08:11 PM to 09:11 PM','Check In','2021-04-26 13:11:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fb31a733-0a78-4822-85c3-022c62653684','Admin has checked out payment INV0000011','Payment','2021-04-26 13:30:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ff857940-9f88-4cbb-8024-4b8ba3d17673','Admin has ordered invoice: INV0000005','Order','2021-04-26 13:10:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_checkin` VALUES ('1e7ba77d-ba5c-45cd-a07e-fdb086a592f2','2021-04-27 03:53:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 03:53:07','f7518dea-414f-4b37-8cbe-788de9112d6a','74ba63ca-5b65-471c-b5b0-f6b31fbcad4c'),('fa9b5389-0a04-4929-af66-d90c00cd955e','2021-04-26 12:43:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 12:43:03','fd87bf93-4187-4a00-9b62-b6ab1612fb44','df5f78d9-a863-4188-97d6-1442cc5c3cc3'),('fbd7e799-75f4-48a9-97e3-7efb76e03b8a','2021-04-26 13:11:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 13:11:17','7fb46dd3-62f4-456b-a297-8edd62bebb93','e236ebcf-9bed-4712-87e1-d5ef96f78fc7');
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
INSERT INTO `tbl_checkout` VALUES ('6a4f0823-16a1-4ac9-a40f-a3508076bfe7','2021-04-26 12:43:18',30,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 12:43:18','fd87bf93-4187-4a00-9b62-b6ab1612fb44'),('a25fc00b-f5c3-4130-a79c-5b9ecfe0e652','2021-04-26 13:11:29',60,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 13:11:29','7fb46dd3-62f4-456b-a297-8edd62bebb93'),('c8ca89a6-5c55-4f57-aa41-0c0eaf54be4f','2021-04-27 03:54:17',30,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 03:54:17','f7518dea-414f-4b37-8cbe-788de9112d6a');
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
INSERT INTO `tbl_customer` VALUES ('4eb870c3-b50d-498f-8eb3-e2690c4758cc','Thong',NULL,'','','2021-04-26 12:22:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('87912c32-6d74-4e00-ae4b-d07f78da5837','Customer',NULL,'','','2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d445530e-0e81-4a47-a514-bd45845530d2','Test',NULL,'','','2021-04-26 13:59:30','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_drawer` VALUES ('2cd142f4-d919-4f0f-b9d7-ba0b9b972d31','3168bd1b-3237-4e4b-951c-f0bd207c98e0',4200.00,'Default',11100.00,'2021-04-26 13:09:35',NULL,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5','02fb2104-2e30-4afa-996b-3073e3cf87f5',4000.00,'Default',0.00,'2021-04-26 12:22:22','2021-04-26 13:09:23','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_money` VALUES ('82607cbf-484e-4b12-9482-3c0e51db6c87',10,'USD',10.00000,99,'2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('d609d86c-a2d5-4094-9ea2-48998b7bfece',100,'USD',100.00000,100,'2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('e3668b31-a62e-4b62-a1e8-1e3eee729992',1,'USD',1.00000,60,'2cd142f4-d919-4f0f-b9d7-ba0b9b972d31');
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
INSERT INTO `tbl_order` VALUES ('7fb46dd3-62f4-456b-a297-8edd62bebb93',1,1,'2021-04-26 13:11:00','2021-04-26 14:11:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 13:11:15'),('f7518dea-414f-4b37-8cbe-788de9112d6a',1,1,'2021-04-27 03:30:00','2021-04-27 03:30:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 03:30:28'),('fd87bf93-4187-4a00-9b62-b6ab1612fb44',1,1,'2021-04-26 12:42:00','2021-04-26 13:42:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-26 12:42:52');
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
INSERT INTO `tbl_owe` VALUES ('dfaa58c4-b2ed-4473-8351-61a6d9468b5f',NULL,0.0000,0.0000,0.0000,'0,0','2021-04-26 12:22:59','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e9d35315-1207-4cb5-ad89-87cd6b7c617a',NULL,0.0000,0.0000,0.0000,'0,0','2021-04-26 13:59:30','d445530e-0e81-4a47-a514-bd45845530d2','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_payment` VALUES ('1c8f7205-9d5b-40a1-a7a1-af6ecbb8777d',1,'INV0000014',4.0000,4.0000,0.0000,'2.0190,8320',4200.0000,0.0000,'2021-04-27 03:07:28','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('2de1c777-2a48-44b1-96c3-a9ab6870b966',1,'INV0000011',3.0000,3.0000,0.0000,'10,0',4200.0000,7.0000,'2021-04-26 13:29:54','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('6b13ea85-5419-4aad-926a-d789ebfad24e',1,'INV0000009',3.0000,3.0000,0.0000,'3.0000,0',4200.0000,0.0000,'2021-04-26 13:27:55','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('74ba63ca-5b65-471c-b5b0-f6b31fbcad4c',1,'INV0000016',6.6000,6.6000,0.0000,'6.6000,8320',4200.0000,0.0000,'2021-04-27 03:53:07','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('7d553e81-c9ee-43fd-8cf2-ea37b345da56',1,'INV0000003',1.0000,1.0000,0.0000,'1,0',4000.0000,0.0000,'2021-04-26 13:01:07','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('8c1b99a9-a376-4c00-b9af-ebd0a023c2cf',1,'INV0000010',3.0000,3.0000,0.0000,'10,0',4200.0000,7.0000,'2021-04-26 13:28:57','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('9d062e34-a30a-4070-bb5b-622e9c86d69e',1,'INV0000001',4.0000,4.0000,0.0000,'7,0',4000.0000,3.0000,'2021-04-26 12:23:03','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('a2cf34f5-6ac2-4aa6-8f1d-79513b1a6523',1,'INV0000012',1.0000,1.0000,0.0000,'1.0000,0',4200.0000,0.0000,'2021-04-26 13:59:34','d445530e-0e81-4a47-a514-bd45845530d2','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('c0400866-33dd-4e2b-9dbc-806509352831',1,'INV0000013',3.0000,3.0000,0.0000,'3,0',4200.0000,0.0000,'2021-04-26 13:59:48','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('c2ac8ea8-7fde-437b-acb9-15af86dd5537',1,'INV0000008',1.0000,1.0000,0.0000,'1,0',4200.0000,0.0000,'2021-04-26 13:23:40','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('df5f78d9-a863-4188-97d6-1442cc5c3cc3',1,'INV0000002',7.5000,7.5000,0.0000,'10,0',4000.0000,2.5000,'2021-04-26 12:43:03','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('e1436c72-3745-43d5-bd40-a546c720918d',1,'INV0000015',0.5000,0.5000,0.0000,'0.10,1764',4200.0000,0.0000,'2021-04-27 03:07:44','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('e236ebcf-9bed-4712-87e1-d5ef96f78fc7',1,'INV0000007',11.0000,11.0000,0.0000,'10,15800',4200.0000,2.7620,'2021-04-26 13:11:17','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('ec08023e-d5a1-41f8-8c22-5760868e4c28',1,'INV0000004',4.0000,4.0000,0.0000,'10,0',4200.0000,6.0000,'2021-04-26 13:09:40','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('ec198d0e-2054-4531-80c5-bad2d7c717fa',1,'INV0000005',3.0000,3.0000,0.0000,'3.0000,0',4200.0000,0.0000,'2021-04-26 13:10:05','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31'),('f226a26e-0a7c-4f00-be7d-864eb1f1457b',1,'INV0000006',1.0000,1.0000,0.0000,'0,1',4200.0000,0.0000,'2021-04-26 13:10:59','4eb870c3-b50d-498f-8eb3-e2690c4758cc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31');
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
INSERT INTO `tbl_quantity` VALUES ('038239be-d45d-4405-acac-8894ed5ff344',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','2d622452-1319-41b2-9902-3d7b93597653'),('192be228-a9a5-4d43-8749-33fe7347c985',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','4a7770e4-8a34-4be4-930e-f8483e7b0117'),('1a0d38f2-5fc0-4ffe-a501-27b13008da2f',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','5a034714-dc4f-4824-9bd0-3b0ca51e39f4'),('765cd6e4-9610-49c2-b040-a214a06ec63a',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','9d1ca20f-0e98-4da3-84ae-111abd5a983f'),('bda3657a-37c5-4227-a25c-61a1002324c8',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','aa0afc00-e866-433e-86d3-f9abcd4dc150'),('cc18b19d-c9fe-4429-909d-c0bf808bbcf4',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','96fb67a7-4fcd-45d9-8ffa-239d74206a71'),('cc42b211-b44c-4bb4-965a-81351e593c99',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','4deb64c8-261d-4711-92d9-3890ab46f570'),('dd05bebe-0308-430a-9316-2c4d8c360ba1',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','00b05093-3d51-4b21-8073-3715c6915e75'),('e5c92e02-21b4-495c-938c-b10ef8af238f',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','854e3593-cb28-4a70-aed5-7fa15aee939c');
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
INSERT INTO `tbl_stock` VALUES ('c2578a27-be0f-4fed-ab44-dbde9bfb2399',0.20,0.20,'USD',4000.00,84,20.00,'',NULL,'2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79');
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
INSERT INTO `tbl_transaction` VALUES ('00b05093-3d51-4b21-8073-3715c6915e75',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 12:43:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('19d1f40c-2864-4096-a859-7ee6752aad7c',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:11:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1e483351-a14f-4adc-a12d-9beaee549f98',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:29:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2d622452-1319-41b2-9902-3d7b93597653',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 13:23:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3bc957ab-108b-4b6f-bfc4-9fd92dbf1121',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:10:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4a7770e4-8a34-4be4-930e-f8483e7b0117',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 12:22:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4deb64c8-261d-4711-92d9-3890ab46f570',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 13:10:57','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('55851e30-eb44-4742-9d26-a0178941a1ad',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 03:07:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5a034714-dc4f-4824-9bd0-3b0ca51e39f4',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 13:59:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6461f6a9-70db-44e9-b387-25da2f6f910f',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 12:22:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('784fb1a9-b3ae-4f0f-b569-8d72e79c9731',1,0,'0',4.00,4.00,1,4.00,'Room 1, 30min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-26 12:43:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('854e3593-cb28-4a70-aed5-7fa15aee939c',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-27 03:07:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('87824cc4-5451-4cad-b764-6bb9c3959d5d',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:28:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8f4ae790-c375-4804-a2ce-faa6c5ee7c96',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:27:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('96fb67a7-4fcd-45d9-8ffa-239d74206a71',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 13:01:06','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9aa9239a-efb6-4476-8116-8a3150f9d08e',1,0,'10',4.00,3.60,1,3.60,'Room 1, 30min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-27 03:54:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9d1ca20f-0e98-4da3-84ae-111abd5a983f',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-27 03:07:24','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('aa0afc00-e866-433e-86d3-f9abcd4dc150',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-26 13:09:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b0700cda-38a4-4dab-a049-bbd0b3586d76',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 03:54:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b3623ed4-54c3-4a23-bb31-5f3887e20233',1,0,'0',8.00,8.00,1,8.00,'Room 1, 60min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-26 13:11:29','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c7607162-f336-4b1b-83be-3c8fe254739f',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:59:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ca92804c-cf84-4e30-9ed9-bbe9aa67f987',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 12:43:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e8b92800-2248-49e9-87aa-c8ed7a84ae59',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-26 13:09:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_user` VALUES ('e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','','','Admin','',NULL,'','$2b$12$sQ/.lVX.2wQN6wzAif9H.eBawQK1KbHIgo1m39ruhhNxAFp/EyUr2','dark','khmer','f0f6f545-0dc9-4b6a-9866-5e935b2d6ca2','e6e8c7cc-a052-4848-ac0e-1dd2968361b0','2cd142f4-d919-4f0f-b9d7-ba0b9b972d31',1,1,'2021-04-26 12:19:38');
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

-- Dump completed on 2021-04-27 11:09:52
