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
INSERT INTO `owe` VALUES ('314a6359-3bd1-4af2-bd08-276bf6506251','086615a9-13ec-4586-94fb-578a3a23ab8e'),('2201089d-24e0-4df2-af47-ec8bf9be69bd','086615a9-13ec-4586-94fb-578a3a23ab8e'),('85230c6e-973f-49fa-9898-e6636a9190f5','086615a9-13ec-4586-94fb-578a3a23ab8e'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c','086615a9-13ec-4586-94fb-578a3a23ab8e');
/*!40000 ALTER TABLE `owe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owe_inv`
--

DROP TABLE IF EXISTS `owe_inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owe_inv` (
  `payment_id` varchar(36) DEFAULT NULL,
  `invoice_id` varchar(36) DEFAULT NULL,
  KEY `payment_id` (`payment_id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `owe_inv_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`id`),
  CONSTRAINT `owe_inv_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `tbl_invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owe_inv`
--

LOCK TABLES `owe_inv` WRITE;
/*!40000 ALTER TABLE `owe_inv` DISABLE KEYS */;
INSERT INTO `owe_inv` VALUES ('314a6359-3bd1-4af2-bd08-276bf6506251','8e65be4f-f688-443a-882b-d361a8bf382a'),('2201089d-24e0-4df2-af47-ec8bf9be69bd','2337dd55-318f-4f67-94ce-896ef23325d9'),('85230c6e-973f-49fa-9898-e6636a9190f5','acbaa915-e319-4cd9-990d-5a444375c0ea'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c','62d96df1-1dea-4c23-9d1a-ab32345ab60c'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c','099b9916-a72b-49fa-879d-5e988d9072e9'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c','6278f775-c985-4125-ab32-8e96d0c40d89');
/*!40000 ALTER TABLE `owe_inv` ENABLE KEYS */;
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
INSERT INTO `payment` VALUES ('22cd3c33-5eef-4e1b-920d-7c0d57729063','d9a5222b-0a28-41f2-a300-1ae6b31980d8'),('b6aa397c-c5db-4427-b464-3c902dd8022f','559f2a4c-3921-447b-af84-bc24905d6f61'),('b6aa397c-c5db-4427-b464-3c902dd8022f','8a39c7d5-06e2-4b98-9116-c732aefdbccb'),('314a6359-3bd1-4af2-bd08-276bf6506251','e76e17f5-6c9f-4239-814a-7d16be46b9af'),('2201089d-24e0-4df2-af47-ec8bf9be69bd','a0b4779d-13dd-4893-842b-2a143f518149'),('85230c6e-973f-49fa-9898-e6636a9190f5','01f24485-88c1-4132-a9d5-542dc270d320'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c','02cdd133-6085-49e2-97e0-9837cac5e321');
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
INSERT INTO `tbl_activity` VALUES ('02abc535-b308-4219-aba2-901320e6ee12','Admin has upload photo for product: asdfasdf','Upload','2021-04-30 04:35:54','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('033a6665-a5bb-4cb2-884e-e988e4347652','Admin has added transaction: asdfasdf','Add','2021-04-30 04:36:13','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('0614b139-7390-4c78-854a-3e111384be8b','Admin has checked out payment INV0000002','Payment','2021-04-30 04:36:21','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('132b2a5e-b3f7-4f5d-8ff4-0d712d0fd051','Admin has checked in order from: 11:14 AM to 11:14 AM','Check In','2021-04-30 04:15:02','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('14258607-f242-43c1-9da7-8512782e1a64','Admin has deleted floor: Ground Floor','Deleted','2021-04-30 04:14:31','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('16e14679-a7d1-46d1-81e6-f0b1f75e51e4','Admin has ordered invoice: INV0000002','Order','2021-04-30 04:36:15','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('1b17ec90-f379-4d16-9ff1-29c728f57e85','Admin has deleted product asdfasdf','Delete','2021-04-30 04:38:21','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('1b2fe8bf-1e80-4f1c-b575-5d32f0e317ce','Admin has added brand: test in brand','Add','2021-04-30 04:35:37','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('229cc1a1-e506-451c-847c-6e4982962308','Admin has added floor: Ground Floor','Create','2021-04-30 04:14:37','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('23658e6b-16b0-4020-8f61-9b4b7de4b60a','Admin has delete room: Room 1','Delete','2021-04-30 04:13:42','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('27eeee04-c489-40b0-9654-2f85239ce856','Admin has added transaction: asdfasdf','Add','2021-04-30 04:36:33','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('2a0b01b1-29a6-48ed-a49c-5bf1ce794278','Admin has added room: Room 1','Create','2021-04-30 04:14:41','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('2e934800-c2e4-460f-aebc-6cf1763d41fc','Admin has checked out order from: 11:36 AM to 11:36 AM','Check Out','2021-04-30 04:38:38','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('2ffccbf1-f681-42da-adf3-86ca21218166','Admin has added category: Food in category','Add','2021-04-30 05:46:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('34717729-28c4-4b1e-8c69-d304ebeec272','Admin has delete room: Room 2','Delete','2021-04-30 04:13:51','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('35ce1a90-f523-43fa-a559-78e44508753b','Admin has deleted expense: asdfasdf x1000','Delete','2021-04-30 04:39:25','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('36893768-9615-4710-a19f-86793865e1ef','Admin has deleted brand: test','Delete','2021-04-30 04:38:25','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('3f5f686d-2db3-487d-a65c-3fdbabfc2c5e','Admin has added floor: 1F','Create','2021-04-30 03:58:42','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('480438dd-3442-40f3-9a51-2fab7ea27a1f','Admin has added transaction: Burger Bacon','Add','2021-04-30 05:49:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('49852520-c7db-4ff2-ba30-4fb4a10425a8','Admin has checkout owe total: 1','Checkout','2021-04-30 06:10:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('4c754869-4cb5-4316-85e2-0b8dde36a799','Admin has modified product from Burger Bacon//True/USD/3.00///None/Food','Modify','2021-04-30 05:48:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('4f62dde9-4cab-4168-bdd3-b2c5ce3e2caf','Admin has deleted floor: 1F','Deleted','2021-04-30 03:58:38','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('5391f815-1ab8-4285-bdd1-9a3d26569379','Admin has checkout owe total: 5','Checkout','2021-04-30 05:56:08','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('549fbb1a-332a-4cf2-9c56-be3ad848f91b','Admin has upload photo for product: Burger Bacon','Upload','2021-04-30 05:47:32','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('55193c6e-9ed6-4d29-909a-949d54f0600d','Admin has checkout owe total: 3','Checkout','2021-04-30 06:00:16','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('5c3d4a78-46ff-4279-9738-621b1381013f','Admin has checked in order from: 11:36 AM to 11:36 AM','Check In','2021-04-30 04:36:31','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('5c576587-e8d7-41ce-a5cc-2d3439634db2','Admin has ordered invoice: INV0000005','Order','2021-04-30 05:55:51','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('5e1d6a74-ce8e-4b91-ab02-8e78a25c1437','Admin has modified store from: Store Name//','Deleted','2021-04-30 05:30:58','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('5edc849b-6373-4a41-9399-ef1596ed0bfa','Admin has added order from 2021-04-30 11:13 AM to 2021-04-30 11:13 AM for customer Customer','Add','2021-04-30 04:14:56','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('61550f06-4a12-40ca-b726-f402a29835b7','Admin has added transaction: Burger Bacon','Add','2021-04-30 05:55:49','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('6411a242-d6ff-4cee-822b-dc7091eb5ec8','Admin has added room: Room 1','Create','2021-04-30 03:58:03','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('65dbfcdb-8433-4039-967f-f54724fd739b','Admin has checkout owe total: 0','Checkout','2021-04-30 06:00:26','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('6c36c05e-e019-4e5d-bea3-eb74893446d3','Admin has logged in','Login','2021-04-30 03:42:20','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('6ea29091-43f5-4936-8e86-b31b80b824bc','Admin has added transaction: Burger Bacon','Add','2021-04-30 05:59:54','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('6ecbf3b6-fb6f-4df6-ad5f-6d4bcd874000','Admin has added product Burger Bacon','Add','2021-04-30 05:47:25','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('70b13ae5-382c-4645-9a5c-81a952fce1ed','Admin has checkout owe total: 0','Checkout','2021-04-30 05:56:29','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('74bbc662-72ed-48f9-b951-7c19a96eaaf2','Admin has delete room: Room 1','Delete','2021-04-30 04:14:43','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('7800b083-19fa-4393-a004-65faff6aae4d','Admin has added category: test in category','Add','2021-04-30 04:35:41','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('8352db0a-0472-4192-801d-916bf7e8684e','Admin has checked out order from: 11:14 AM to 11:14 AM','Check Out','2021-04-30 04:15:23','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('891a94f6-0a3f-4aca-8b39-70a43db5bff2','Admin has added brand: Shop in brand','Add','2021-04-30 05:47:14','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('92fa6af9-5502-4cb9-94e9-5f0cd2e84f5a','Admin has checkout owe total: 1','Checkout','2021-04-30 06:08:45','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('95110d72-6f25-4f15-a9b0-ca8b614aa132','Admin has updated transaction Room 1, 3min','Modified','2021-04-30 04:38:40','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('955c3d79-789b-4a21-a6ad-1c5eef830695','Admin has ordered invoice: INV0000006','Order','2021-04-30 05:59:59','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('9a00cc6f-1caf-4d31-b5c7-37272bae15c1','Admin has checkout owe total: 1','Checkout','2021-04-30 06:08:56','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('9a58f8b2-969b-4089-858f-01d4545d8f48','Admin has added room: Room 1','Create','2021-04-30 04:14:45','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('9fba12ad-ae0b-4f4d-96bc-dc8b5af79df6','Admin has toggle room: Room 2 from Open','Toggle','2021-04-30 03:58:24','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('a1814914-e12b-4a89-86eb-52f9a1b516c8','Admin has checked out payment INV0000006','Payment','2021-04-30 06:00:00','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('a91e2255-f5b2-4168-90ce-b6d4f8f0b901','Admin has added stock: 0.2/USD/1000/4000/None/200.0 in product asdfasdf','Add','2021-04-30 04:36:07','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('a9372180-1308-47df-9dde-5c4cabf448f8','Admin has logged in','Login','2021-04-29 17:28:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ae2346dd-0b54-493e-aac0-756375bbc73a','Admin has checked out payment INV0000004','Payment','2021-04-30 05:50:34','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('b3579ec4-6d06-4298-ab0e-ddd6d3f35dbd','Admin has ordered invoice: INV0000004','Order','2021-04-30 05:49:06','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('bcd9f9ea-cc0a-4eb0-9b9a-61661689ac3a','Admin has checked out payment INV0000004','Payment','2021-04-30 05:49:16','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('c485b8c2-f2b6-45a0-8995-598aba8a4e87','Admin has deleted floor: 1F','Deleted','2021-04-30 03:58:47','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ca9173db-1762-4042-9c33-50438c3d4824','Admin has ordered invoice: INV0000007','Order','2021-04-30 06:06:00','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('cc4ed070-4edc-4425-b299-4a433bcfcb6c','Admin has modified profile from Single/////','Modify','2021-04-29 17:28:19','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ce8fb140-588e-4306-8f39-845eaa92f5d5','Admin has checked out payment INV0000003','Payment','2021-04-30 04:38:45','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d0ed48ef-767e-468b-b252-38cea63d62e7','Admin has opened drawer','Open','2021-04-30 04:15:01','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d1a8c656-16e1-4d5c-87d5-438a86b3d7ec','Admin has checkout owe total: 5','Checkout','2021-04-30 06:00:07','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d35ac5d3-1d60-40a3-90a5-e94aebfd7a75','Admin has modified language from english','Modify','2021-04-30 03:52:37','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d37aae27-02ad-486f-8b07-031f45dbdbc3','Admin has deleted category: test','Delete','2021-04-30 04:38:28','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d5367c1b-70ff-40c9-aeb9-99c392455cc5','Admin has delete room: room 10','Delete','2021-04-30 03:59:29','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d8eeaa72-dbc5-46ee-8015-e23baf48fd30','Admin has modified language from khmer','Modify','2021-04-30 03:47:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('dbc789ff-33d5-412e-ac76-04034784d56d','Admin has checkout owe total: 0','Checkout','2021-04-30 05:56:16','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('df75636b-1697-4265-9436-ce8cea31e2bc','Admin has added customer: Thong','Add','2021-04-30 05:46:40','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('e1817c19-49ec-4d43-bf40-f6b29900ceb8','Admin has checkout owe total: 0','Checkout','2021-04-30 05:56:22','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('e3de441d-5c60-4ce7-bdbb-dcd5587fcd55','Admin has added room: Room 2','Create','2021-04-30 03:58:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('e49b3a30-4db7-4db0-9edc-496cc79d02e7','Admin has added product asdfasdf','Add','2021-04-30 04:35:49','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('e70fc412-9b5b-416d-bc9b-e998f6314833','Admin has checked out payment INV0000005','Payment','2021-04-30 05:55:59','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ebe18408-abe0-4d72-9a75-40517f9ae49c','Admin has added floor: 1F','Create','2021-04-30 03:58:50','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ec9dbf09-85cc-40ca-885b-cca3ae6ee17e','Admin has added order from 2021-04-30 11:35 AM to 2021-04-30 11:35 AM for customer Customer','Add','2021-04-30 04:36:29','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('efbc7413-46ea-40aa-9659-4e4523d4b93d','Admin has checked out payment INV0000001','Payment','2021-04-30 04:15:25','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f07c257f-e540-4588-ad25-215ac8533aee','Admin has logged in','Login','2021-04-30 13:36:27','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f3883c93-e7ca-4693-9e5d-334e515ba3b2','Admin has modified language from english','Modify','2021-04-30 03:43:08','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f4a80850-53c3-4b17-abbd-a5301ce7c003','Admin has toggle room: Room 1 from Open','Toggle','2021-04-30 03:58:22','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f4e0667a-d471-4832-9aa3-865159b6f708','Admin has checkout owe total: 1','Checkout','2021-04-30 05:49:48','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f5fe7007-c6da-4a30-9af9-c91dd3d93566','Admin has modified info from Admin////None/','Modify','2021-04-29 17:28:34','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f819754d-dd78-472f-be79-43c740d13f22','Admin has added floor: 1F','Create','2021-04-30 03:58:33','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f995589e-e9c2-4e29-a803-2ccd0b90808a','Admin has checked out payment INV0000007','Payment','2021-04-30 06:06:01','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('f9b24d34-875d-4c14-b01f-23d6e1536e32','Admin has added room: room 10','Create','2021-04-30 03:59:22','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('fae2079c-fbb6-4af5-9983-24908ba39bf3','Admin has added transaction: Burger Bacon','Add','2021-04-30 06:05:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('fbda99d2-161b-41bc-8364-9004775b52ed','Admin has deleted floor: 1F','Deleted','2021-04-30 03:59:33','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('fde2209c-ff16-4e05-89ca-d344e9454e17','Admin has added category: Beverage in category','Add','2021-04-30 05:46:54','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_appearance` VALUES ('d076c595-64c9-4da3-bd3e-0bed58cffe79','','','','','','b43c836b-1657-4be4-b25b-a325fa2d574f');
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
INSERT INTO `tbl_brand` VALUES ('a42e14e4-5b86-4db2-9a73-e5679fb030b7','Shop','','2021-04-30 05:47:14','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_category` VALUES ('4e875bee-28d5-4bee-b913-fe2f3d1dfb97','Food','default.png','','2021-04-30 05:46:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('ed55f9a5-c200-419c-9032-0b616b7ad5d0','Beverage','default.png','','2021-04-30 05:46:54','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_checkin` VALUES ('830a2bd8-e2d4-409c-a74f-bd8891ab0ecb','2021-04-30 04:15:02','a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:15:02','9ad86fd8-da40-4771-b501-4e71361320d2','13dd0f33-8110-4786-a82f-e9e1acb5160d'),('c2a15d00-166e-493e-ba90-03cc90f9629e','2021-04-30 04:36:31','a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:36:31','dc9b8e81-0ab3-4c66-88bc-f51b0d5b1355','b6aa397c-c5db-4427-b464-3c902dd8022f');
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
INSERT INTO `tbl_checkout` VALUES ('5ba96d52-c5c3-4f09-8c5e-3b5a11512d4c','2021-04-30 04:15:23',0,'a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:15:23','9ad86fd8-da40-4771-b501-4e71361320d2'),('e1370ea6-cf07-4c1f-a330-8ed448372e48','2021-04-30 04:38:38',3,'a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:38:38','dc9b8e81-0ab3-4c66-88bc-f51b0d5b1355');
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
INSERT INTO `tbl_customer` VALUES ('3644d5bd-a958-449b-9837-b431b47c5fad','Customer',NULL,'','','2021-04-29 17:27:53','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('9169d2af-9378-457a-bc90-57f3078fa970','Thong',NULL,'','','2021-04-30 05:46:40','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_drawer` VALUES ('c6c1a156-d17e-435e-8b7c-efee8ec433ec','',4000.00,'Default',0.00,'2021-04-30 04:15:01',NULL,'a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_floor` VALUES ('258a01b0-1068-4d55-b668-20425a26c99e','Ground Floor','2021-04-30 04:14:37','5de0b346-abd7-4092-92bf-6b1d9a8c7246');
/*!40000 ALTER TABLE `tbl_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoice`
--

DROP TABLE IF EXISTS `tbl_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_invoice` (
  `id` varchar(36) NOT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `receive` varchar(20) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `change` decimal(10,4) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  `orderedBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  KEY `orderedBy` (`orderedBy`),
  CONSTRAINT `tbl_invoice_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `tbl_invoice_ibfk_2` FOREIGN KEY (`orderedBy`) REFERENCES `tbl_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoice`
--

LOCK TABLES `tbl_invoice` WRITE;
/*!40000 ALTER TABLE `tbl_invoice` DISABLE KEYS */;
INSERT INTO `tbl_invoice` VALUES ('03646766-a4e2-4e34-b57f-b7f8120c0253',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-04-30 06:00:26','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('099b9916-a72b-49fa-879d-5e988d9072e9',3.0000,2.0000,1.0000,'2,0',4000.0000,0.0000,'2021-04-30 06:08:56','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('2337dd55-318f-4f67-94ce-896ef23325d9',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-04-30 05:56:08','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('555a5db7-d22c-4168-a169-fd3adcc710ee',0.0000,0.0000,0.0000,'3,0',4000.0000,3.0000,'2021-04-30 06:00:16','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('6278f775-c985-4125-ab32-8e96d0c40d89',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-04-30 06:10:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('62d96df1-1dea-4c23-9d1a-ab32345ab60c',3.0000,1.0000,2.0000,'1,0',4000.0000,0.0000,'2021-04-30 06:08:45','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('6bfc9297-43da-4505-862a-2ee3758d5064',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-04-30 05:56:22','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('8e65be4f-f688-443a-882b-d361a8bf382a',3.0000,2.0000,1.0000,'2,0',4000.0000,0.0000,'2021-04-30 05:49:48','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('acbaa915-e319-4cd9-990d-5a444375c0ea',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-04-30 06:00:07','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('edea903b-2a59-4ad3-bd2c-2370e3a03885',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-04-30 05:56:16','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970'),('fd016622-35a9-46ee-9870-92cd6f1a74be',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-04-30 05:56:29','a2e620ee-8fc6-4547-9420-a15d60e44f9a','9169d2af-9378-457a-bc90-57f3078fa970');
/*!40000 ALTER TABLE `tbl_invoice` ENABLE KEYS */;
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
INSERT INTO `tbl_order` VALUES ('9ad86fd8-da40-4771-b501-4e71361320d2',1,1,'2021-04-30 04:14:00','2021-04-30 04:14:00','c8a1ecd1-75d2-4033-9236-f653f66b29ab','3644d5bd-a958-449b-9837-b431b47c5fad','a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:14:56'),('dc9b8e81-0ab3-4c66-88bc-f51b0d5b1355',1,1,'2021-04-30 04:36:00','2021-04-30 04:36:00','c8a1ecd1-75d2-4033-9236-f653f66b29ab','3644d5bd-a958-449b-9837-b431b47c5fad','a2e620ee-8fc6-4547-9420-a15d60e44f9a','2021-04-30 04:36:29');
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
  `rate` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_owe` VALUES ('086615a9-13ec-4586-94fb-578a3a23ab8e','OWE_Thong',0.0000,4000.0000,0.0000,0.0000,'0,0','2021-04-30 05:46:40','9169d2af-9378-457a-bc90-57f3078fa970','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_payment` VALUES ('13dd0f33-8110-4786-a82f-e9e1acb5160d',1,'INV0000001',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-04-30 04:15:02','3644d5bd-a958-449b-9837-b431b47c5fad','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('2201089d-24e0-4df2-af47-ec8bf9be69bd',1,'INV0000005',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-30 05:55:51','9169d2af-9378-457a-bc90-57f3078fa970','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('22cd3c33-5eef-4e1b-920d-7c0d57729063',1,'INV0000002',1.0000,1.0000,0.0000,'3,0',4000.0000,2.0000,'2021-04-30 04:36:15','3644d5bd-a958-449b-9837-b431b47c5fad','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('314a6359-3bd1-4af2-bd08-276bf6506251',1,'INV0000004',3.0000,3.0000,0.0000,'2,5000',4000.0000,0.2500,'2021-04-30 05:49:06','9169d2af-9378-457a-bc90-57f3078fa970','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('6074e062-bf9a-48a5-80b1-3c7b1f6f7a2c',1,'INV0000007',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-30 06:06:00','9169d2af-9378-457a-bc90-57f3078fa970','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('85230c6e-973f-49fa-9898-e6636a9190f5',1,'INV0000006',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-30 05:59:59','9169d2af-9378-457a-bc90-57f3078fa970','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec'),('b6aa397c-c5db-4427-b464-3c902dd8022f',1,'INV0000003',1.0500,1.0500,0.0000,'2,0',4000.0000,0.9500,'2021-04-30 04:36:31','3644d5bd-a958-449b-9837-b431b47c5fad','a2e620ee-8fc6-4547-9420-a15d60e44f9a','c6c1a156-d17e-435e-8b7c-efee8ec433ec');
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
INSERT INTO `tbl_product` VALUES ('b43c836b-1657-4be4-b25b-a325fa2d574f','Burger Bacon','',0,3.00,'USD',3.00,'',NULL,'ab1eb9e7-d2d4-44fe-9b2c-e50c1b18dc30.png','','[]','2021-04-30 05:47:25','a2e620ee-8fc6-4547-9420-a15d60e44f9a','a42e14e4-5b86-4db2-9a73-e5679fb030b7','4e875bee-28d5-4bee-b913-fe2f3d1dfb97');
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
INSERT INTO `tbl_profile` VALUES ('b24f78a8-7f7d-48d6-ae64-bd4644ad2b13','default.png','Single','12098123','ABA Bank','Phnom Penh','Phnom Penh, Cambodia','fasdfasdf','2021-04-29 17:27:53','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_role` VALUES ('d969aa6a-c1ab-41d5-9883-f0f891aac2ca','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-04-29 17:27:53','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_room` VALUES ('c8a1ecd1-75d2-4033-9236-f653f66b29ab','Room 1',1.00,'1h','Open','2021-04-30 04:14:45','a2e620ee-8fc6-4547-9420-a15d60e44f9a','258a01b0-1068-4d55-b668-20425a26c99e');
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
INSERT INTO `tbl_store` VALUES ('5de0b346-abd7-4092-92bf-6b1d9a8c7246','Store Name','017 467 718','','2021-04-29 17:27:53');
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
INSERT INTO `tbl_transaction` VALUES ('01f24485-88c1-4132-a9d5-542dc270d320',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','b43c836b-1657-4be4-b25b-a325fa2d574f','2021-04-30 05:59:54','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('02cdd133-6085-49e2-97e0-9837cac5e321',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','b43c836b-1657-4be4-b25b-a325fa2d574f','2021-04-30 06:05:57','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('559f2a4c-3921-447b-af84-bc24905d6f61',1,1,'0',1.00,1.00,1,1.00,'asdfasdf','a18ad1d9-b6f4-43f5-b1b3-07608acceb4e','2021-04-30 04:36:33','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('8a39c7d5-06e2-4b98-9116-c732aefdbccb',1,0,'0',0.05,0.05,1,0.05,'Room 1, 3min','c8a1ecd1-75d2-4033-9236-f653f66b29ab','2021-04-30 04:38:38','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('a0b4779d-13dd-4893-842b-2a143f518149',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','b43c836b-1657-4be4-b25b-a325fa2d574f','2021-04-30 05:55:49','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('d9a5222b-0a28-41f2-a300-1ae6b31980d8',1,1,'0',1.00,1.00,1,0.80,'asdfasdf','a18ad1d9-b6f4-43f5-b1b3-07608acceb4e','2021-04-30 04:36:13','a2e620ee-8fc6-4547-9420-a15d60e44f9a'),('e76e17f5-6c9f-4239-814a-7d16be46b9af',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','b43c836b-1657-4be4-b25b-a325fa2d574f','2021-04-30 05:49:05','a2e620ee-8fc6-4547-9420-a15d60e44f9a');
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
INSERT INTO `tbl_user` VALUES ('a2e620ee-8fc6-4547-9420-a15d60e44f9a','','casdcasdc','Admin','F','2021-04-29','cadca@fadfa','$2b$12$EbGYVhXzjjnuiNwLniEShOYbdUAdZAfYW5PomHPVbpu0guphxHZwa','light','khmer','9403eac1-c9da-437e-8516-eed2f1c5a2f8','b81e241d-7355-4edb-9560-9b6a9b45f7a9','c6c1a156-d17e-435e-8b7c-efee8ec433ec',1,1,'2021-04-29 17:27:53');
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
INSERT INTO `user_role` VALUES ('a2e620ee-8fc6-4547-9420-a15d60e44f9a','d969aa6a-c1ab-41d5-9883-f0f891aac2ca');
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

-- Dump completed on 2021-04-30 20:37:33
