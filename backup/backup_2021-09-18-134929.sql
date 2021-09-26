-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: camping_cave
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
INSERT INTO `owe` VALUES ('d5fb320a-d8e1-423d-afe2-8637f5777af0','da9deea4-a154-4655-809f-175377758a66');
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
INSERT INTO `owe_inv` VALUES ('d5fb320a-d8e1-423d-afe2-8637f5777af0','a7cc2068-2a74-4f7e-b3c6-4040a1c0d593');
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
INSERT INTO `payment` VALUES ('d1ff5691-f197-4d26-ab59-dfa883735d39','18100ad8-6a35-4bce-957f-e7855a066ec1'),('d1ff5691-f197-4d26-ab59-dfa883735d39','e11f672d-0726-43d9-baf7-968ad74a5360'),('1c11b761-1cd4-4665-a7c2-caaecd93de19','51598886-2a6c-4976-868f-8a3d7d84a4f1'),('1c11b761-1cd4-4665-a7c2-caaecd93de19','f9e2d767-faa1-47ac-ac7c-994678403fa5'),('9acc33ab-6bde-4eca-aa37-fd500c8e339e','01827131-898a-4311-b399-762861073470'),('9acc33ab-6bde-4eca-aa37-fd500c8e339e','c1807329-2a66-4ffd-b581-694506994dff'),('df19974c-af78-4149-90cd-875de6f44e2c','7f5c21ad-b77b-4719-a230-d2a3c5b84cd3'),('df19974c-af78-4149-90cd-875de6f44e2c','d3081b1b-7b9d-4057-b6c2-fbe9c3d4f607'),('5adb9e82-e523-45e8-a27b-7a1e5ffeabb2','1e2f4c4d-02aa-48c4-884a-1d5e317840eb'),('fa3ee755-a82d-4fff-87da-6950c6a5a860','4841eb37-7731-487e-8c44-6e8980cd3233'),('b0326279-8425-448f-8c92-3e6099625971','30c3f70d-5298-4f91-b1cd-3db2983cad48'),('574a9ef4-4f16-487a-bc92-cb52792efa80','867eefae-f9a0-498c-8806-624a6e77f29f'),('c7236e79-6838-45c9-9d9d-c74fe8ef8fe2','045614b0-8a30-4b06-9cd3-e0fbf443f6b5'),('cb3fac45-8bba-4a91-9595-ceff420e2ec3','c109e350-4e5c-4769-8907-743ad0b1bc3d'),('e9116c89-e989-4035-a019-7e4ffbd19084','570fa933-34a2-4ce6-a704-c62dce4fb961'),('ba555c16-a080-4e15-ae8c-68504cd1765c','10ca4f13-8893-4112-b04e-3d6ea719b9fd'),('89d51cf0-15a5-4db7-bcda-b81d307d7dab','1bc221a6-4e90-4346-b387-73f99d3bddfb'),('3f02ae22-2bd1-4272-9b3d-ebfa20c2b8a1','6a57e9b4-4c65-4486-b875-56806fd77d3c'),('7e3e37d8-805f-47e0-ae03-959cae6d2073','3bd8c581-f541-47e3-ba2a-c17eb772bfc3'),('fba1d71d-15d5-4f3e-9fe5-6de5c17bdb18','c4ea6569-93e2-487a-bc95-e6bbc40b5139'),('4bac4b7a-6633-41e8-8dad-91bb4a7922fe','5d517307-2f41-4e3f-b096-0c1e9f8ab6f6'),('d4fb2791-bd51-45f4-95ed-709855511e6e','6170bb6e-7f2a-4ba5-98b3-fd66542d6a53'),('66df6818-5aa2-43e1-a4a5-3df03ffce7d6','ca89bf91-0649-4e1b-a0b6-1d80ae5c02b4'),('9a983c09-6ab5-4c39-9c6d-4048372a8e09','4f7302fa-839c-4078-9752-0dd2d93a6dbd'),('35c60810-9648-4e3c-8686-55c1b36d7fe5','27924718-c9fe-4bca-9133-4b5249e59119'),('6c9f9bbc-b7a5-4ec0-b2e1-233183f48fd9','413e6661-1ae9-4933-a29e-8252475ab27e'),('dc75a4c2-e2b1-4056-9354-12d5d6413143','b1fe6a89-38a5-4b2c-9eb7-a6023f9e5d86'),('c2b834bf-0a06-472e-8a47-0c3ed3686718','27972ce3-9805-4c48-a05c-dbae943bb605'),('1a99335d-72f5-474c-8247-6c52c4373b00','4ee6ac91-3eb4-446d-99b0-63f5d113d0d5'),('f0d6bf24-b233-4be9-9e6c-e52141e9b77b','1d4a4907-1d8a-4dab-8943-cb591df31b9b'),('f6f15d22-933a-43f4-bb57-8726f5e47bf3','66b75149-bcba-4fcb-8979-ad3670043c12'),('776eb1cd-8693-40cd-8ad9-03205846e85e','5a0c6cbd-9e90-4a82-a032-4722a9371211'),('776eb1cd-8693-40cd-8ad9-03205846e85e','ee19b315-6eb8-46a3-bd98-e0c25a31d5d2'),('e9297dc6-f970-4ef6-9ed6-6a9eca320f00','98d5198e-f4e7-442a-9c15-9c1fd229516d'),('d9b414ce-9b5a-4df6-9cc6-952abb0ca42f','f1f4899e-2e05-4b0f-bf68-cc61cd8c9d81'),('0b902f8c-d439-47bd-9164-d53c983e87c0','4e003fd6-2494-4d79-a7a0-ac7c1a8020dd'),('d5fb320a-d8e1-423d-afe2-8637f5777af0','f07f33e6-051b-42d1-820c-e0ef772c7f61'),('9bed6561-efca-4b79-9da0-a8b22fa14a7c','74cfb3fc-de5f-473d-827a-960619e8737f'),('9e4b1204-c56c-453b-8026-cf18816c4564','7c329797-6c4a-45a1-8706-d487313d17e8'),('6a180ee5-541e-4cad-b4a3-3ce77e1a0535','953b4451-00ab-41f9-8148-88f4471632b8'),('6a180ee5-541e-4cad-b4a3-3ce77e1a0535','907e9177-ac5a-4018-9c11-a897f239429a'),('1baed0d6-4c01-4099-add1-318245d0729e','84c03cca-c719-4e12-b689-dbcd19d67821'),('1baed0d6-4c01-4099-add1-318245d0729e','9f9cc803-a52d-45b4-b687-804d7824c9b5'),('b7d15d15-6fe7-4e02-bd6a-23fd28d70837','6972de99-1dd5-4dfc-9e3b-ad7ea96badf0'),('e788a9e9-a4bb-4687-9ed3-1c55fa9d46b1','146191ca-fa2a-40f9-ae3d-c99d6fd3d03c'),('149ec992-d0cb-43c6-9ec8-0c23cd221434','5480b725-2be1-485d-a278-7565707be98d'),('6218cd90-e838-465f-8d1a-dbf60fe24331','00ec1aac-6aa7-4824-a5bf-7ee8bafa541f'),('a03b08a5-5db2-474e-b6db-d3886c0837d3','53be22a8-b4e9-458b-9193-e89896deacd4'),('c58d687c-d711-44fe-91f8-3f415c78ec77','d001f4e6-7dcb-4582-bf66-e9314fd8ba40'),('f82cabd5-d378-40ab-921e-2a6d3ad8a2c1','0f6b016e-cd18-4148-9e9d-95b0bd05c5bf'),('7108ab99-d2db-498e-8347-9c16d88e5e32','ee6e4b06-3bbb-40ff-8d68-8fd9f72af194'),('134e8522-0113-46da-8aa8-e73f6c589f6d','27525345-e4e8-4966-bb42-e0b2a069961f'),('134e8522-0113-46da-8aa8-e73f6c589f6d','478f5ad4-a2b6-4aee-8e66-df53fd37679b'),('134e8522-0113-46da-8aa8-e73f6c589f6d','c7caf2c4-3bb7-48f0-aef8-a8f3f9a34f5f'),('f3d38e50-78ca-44a0-b5d7-042edaf3fe97','f1d5feb0-94dc-41d4-acd3-fd2090db577d'),('f3d38e50-78ca-44a0-b5d7-042edaf3fe97','9301230e-c01f-42d5-9c96-9064522ad552'),('5b9ef23c-e315-4018-80ef-901dc2469da8','e4cc77ea-daca-486d-b840-739d0c0edd7f'),('5b9ef23c-e315-4018-80ef-901dc2469da8','b91488da-15e7-42ba-b1b6-d2864349d055'),('5b9ef23c-e315-4018-80ef-901dc2469da8','03c65430-62f2-4e36-ad00-4c700953bff0'),('d5a9ef14-5f99-485e-ace4-4764730332bb','75035186-a8bf-4a63-8d57-810fbbaad48b'),('d5a9ef14-5f99-485e-ace4-4764730332bb','18afab04-b3ee-446d-bba2-32cf6002a7ef'),('d5a9ef14-5f99-485e-ace4-4764730332bb','050ba3d1-ce03-46f8-842b-501a46cbd2c9');
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
INSERT INTO `tbl_activity` VALUES ('00fc7675-9603-4608-be3d-e416d671bf99','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:14:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('01657cbe-236b-4819-907f-0f2eef97b23b','Admin has ordered invoice: INV0000015','Order','2021-09-07 04:26:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('035c892a-c6b5-4ef4-bf2c-e30525dfe58c','Admin has ordered invoice: INV0000034','Order','2021-09-15 03:20:05','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('03f7b9c9-6fe7-4f78-89df-518d677deb0f','Admin has logged in','Login','2021-09-13 11:58:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0463d98a-c8f9-4a0b-a6fa-cabb73342878','Admin has added transaction: Multi Function Spoon','Add','2021-09-18 04:40:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('05d2e60a-7a14-4f82-88b1-871a2b8ee2c6','Admin has modified theme from dark','Modify','2021-09-09 03:00:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0683b0ad-175e-438b-86cb-b673e709189d','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 05:08:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('07ca5766-f08f-4a7c-8d30-0a4576be4e0d','Admin has modified theme from blue','Modify','2021-09-07 13:38:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0879da10-78b8-40d7-a457-9acf53235fee','Admin has toggle room: Room 10 from Open','Toggle','2021-09-17 14:13:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('08eff632-44d4-4558-9e5c-a0f74a58c776','Admin has removed order from 2021-09-18 12:00 AM to 2021-09-18 01:00 PM for customer Geese','Deleted','2021-09-18 03:17:10','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('097ca088-fabc-4770-a848-69032f7cf40c','Admin has ordered invoice: INV0000030','Order','2021-09-09 03:24:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('09b96a09-6ad6-48c3-b215-dada02594370','Admin has added stock: 4.6/USD/100/4000/None/459.99999999999994 in product Camping Chair','Add','2021-09-05 14:12:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0acef523-740f-407b-8a8d-f8eb74525558','Admin has modified theme from light','Modify','2021-08-26 02:19:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0b6424ac-2bac-49fc-a995-430265a8b4f0','Admin has added brand: Camping Cave in brand','Add','2021-08-26 02:22:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0e02b730-50a9-4bd0-93d8-4d65414e653f','Admin has ordered invoice: INV0000011','Order','2021-09-07 04:22:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0f14e843-9b21-4cc5-99c9-4dbd49cec0eb','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:19:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('11a621ef-4139-45e9-a440-01a24c6075b7','Admin has logged in','Login','2021-09-13 01:23:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('11dae382-9125-4748-954e-bd066c3258fe','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:15:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('12679234-5170-4a5d-9512-7fc829e377b5','Admin has added order from 2021-09-18 10:13 AM to 2021-09-18 10:13 AM for customer Thong','Add','2021-09-18 03:14:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('12ba502f-883d-43de-bef6-f374154c7abb','Admin has updated transaction Room 02, 60min','Modified','2021-09-18 04:14:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('145601e7-0649-4342-81f3-b763930f34b7','Admin has checked out payment INV0000047','Payment','2021-09-18 04:41:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('150cb6bc-20b6-4f12-be73-2d3a357c5a6f','Admin has added floor: 2F','Create','2021-09-17 14:12:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1568e94a-efc9-4fc6-983d-96f8c47c0efd','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 04:32:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('15f7df85-3595-4074-8c15-972612b73fad','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 04:24:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('16403f80-fc4a-4426-b8be-05c44d8e2deb','Admin has added transaction: LED Headlight','Add','2021-09-12 13:45:02','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('16fcd813-dd15-4006-9967-1112e5c2506a','Admin has checked out order from: 12:00 PM to 01:00 PM','Check Out','2021-09-18 04:22:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('17505ade-f23f-48c9-b492-848ba7c32750','Admin has checked in order from: 12:00 PM to 01:00 PM','Check In','2021-09-18 04:22:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('17d8f389-ca89-4f31-a13d-e39aa50b06f4','Admin has ordered invoice: INV0000027','Order','2021-09-08 01:31:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('18176ff0-4261-499e-bbd6-a1bcc05b5f05','Admin has modified theme from blue','Modify','2021-09-07 13:35:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('182bb148-b468-4a43-9e0e-c0214f8377d1','Admin has updated transaction Room 01, 60min','Modified','2021-09-18 04:28:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('193ab882-86c2-430e-b1ba-597c4d427e95','Admin has checked in order from: 11:02 AM to 11:02 AM','Check In','2021-09-18 04:27:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1963cde8-3ddb-4f7e-a916-14e2092d212c','Admin has added order from 2021-09-18 11:31 AM to 2021-09-18 11:31 AM for customer Customer','Add','2021-09-18 04:32:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1bef2cef-4b96-4d4c-b1f8-daaa729e812b','Admin has added stock: 4.6/USD/30/4000/None/138.0 in product Camping Chair','Add','2021-09-06 04:02:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1c2f7be9-7cfd-4411-968a-c7e852e89543','Admin has checked out payment INV0000009','Payment','2021-09-05 13:40:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1d3519b5-82fb-42cc-a2b1-33fa1558a2a6','Admin has ordered invoice: INV0000012','Order','2021-09-07 04:22:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1e866642-d7f2-4e59-8ee9-5dfb951d2749','Admin has toggle room: Room 10 from Close','Toggle','2021-09-17 14:13:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1ec14130-383a-4d4f-b2a1-bfcb2c0bad7d','Admin has added order from 2021-09-18 11:01 AM to 2021-09-18 11:01 AM for customer Sem','Add','2021-09-18 04:02:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2066f6bb-1a7b-4c8f-8ee7-4f35b05585e7','Admin has added property: Size in category Air Pillow','Add','2021-09-12 14:22:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2147c789-f5ce-49a6-bd0e-c36042036afa','Admin has checked out payment INV0000032','Payment','2021-09-13 04:01:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('22456261-9995-4240-99af-698eafeff21e','Admin has upload photo for product: LED Headlight','Upload','2021-08-26 02:24:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('22c2bdce-037e-4a2f-8502-b3682485a440','Admin has ordered invoice: INV0000025','Order','2021-09-07 05:08:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('24405268-c0b1-48c3-9f3d-79e08ff199ee','Admin has logged in','Login','2021-08-28 11:32:15','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('24b6beb7-fd30-4e00-9a6f-532dd53faf9e','Admin has added category: Pocket Knife in category','Add','2021-08-26 02:20:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('24e9420b-7fab-4f43-b61d-59fcf62fdeae','Admin has checked out payment INV0000039','Payment','2021-09-18 04:27:15','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('24f4e6cf-2ac4-4e11-ae4d-4e90a1a422b8','Admin has toggle room: Room 10 from Open','Toggle','2021-09-17 14:13:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('25434299-6a95-4895-869b-a261c25bfb8d','Admin has added order from 2021-09-17 08:18 PM to 2021-09-17 08:18 PM for customer Customer','Add','2021-09-17 13:19:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('261235dc-c4c9-4464-9c88-610ab0f147de','Admin has modified language from english','Modify','2021-08-26 12:36:56','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('26206b20-d64f-4721-9c23-d3affaa3e434','Admin has checked out payment INV0000006','Payment','2021-09-05 13:17:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('27ba7847-10bc-4e29-b9ca-5fac5c883d78','Admin has deleted floor: 1F','Deleted','2021-09-17 14:13:02','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('280cb090-f91c-47e7-8d6f-4f512a777cac','Admin has modified theme from red','Modify','2021-09-07 13:38:20','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('28a7afd3-be21-48d5-9163-724ab42a931b','Admin has added transaction: LED Headlight','Add','2021-09-14 13:25:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2babaf19-e689-4ddf-b228-818572f2aca3','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:03:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2c74f507-030f-499d-b4b1-8d0a2ad3c00e','Admin has added transaction: Air Pillow','Add','2021-08-26 02:44:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2d4c1e6e-f75e-4dd8-ba9f-14d675df3bfa','Admin has logged in','Login','2021-08-26 02:18:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2d4ef16e-e197-4a4d-9ace-84476948200a','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:03:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2df28612-1ad0-4e35-adda-fe6d3730e1b7','Admin has modified language from khmer','Modify','2021-08-26 02:48:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2f2599f3-867e-4120-be60-c9e70cafcdbe','Admin has modified theme from green','Modify','2021-09-07 13:35:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('302bc38d-9a6a-4169-9a12-98dc7619ed41','Admin has added transaction: BBQ Grill','Add','2021-09-05 13:40:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('31915c61-ad65-4b9d-9e97-6c61821627ba','Admin has added transaction: Camping Chair-Red','Add','2021-09-07 04:23:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('31da6fa0-550b-46cb-a15a-7c4e0890a845','Admin has added stock: 4.6/USD/30/4000/None/138.0 in product Camping Chair','Add','2021-09-06 04:03:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3237839b-fe55-45c2-ac0a-226277fd28ed','Admin has added transaction: Air Pillow','Add','2021-09-18 04:42:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('344fa407-7f32-4391-9368-b5cc865764ef','Admin has added order from 2021-09-18 11:36 AM to 2021-09-18 11:36 AM for customer Customer','Add','2021-09-18 04:37:33','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('34b627dd-c872-480b-984b-ff390ae59880','Admin has logged in','Login','2021-09-07 04:19:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('373a19d0-be7b-416f-9465-31d0922cd867','Admin has added order from 2021-09-18 11:41 AM to 2021-09-18 11:41 AM for customer Customer','Add','2021-09-18 04:42:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('37b9d4c4-3630-45c9-b834-a116a71a42e9','Admin has modified theme from dark','Modify','2021-08-26 02:46:05','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('387739a0-ccd6-4dd5-8749-caf42a5f71eb','Admin has updated transaction Room 02, 60min','Modified','2021-09-18 04:39:01','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3a583f55-ac6e-4ec0-808c-f61e58cc53a6','Admin has added transaction: Air Pillow','Add','2021-09-15 03:19:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3a6f795d-9d9f-476b-a938-02b9bc038623','Admin has logged in','Login','2021-09-17 13:19:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3a897872-67ad-433d-9b18-6ed921e1409c','Admin has added stock: 1/USD/50/4000/None/50.0 in product Multi Function Spoon','Add','2021-08-26 02:29:05','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3a966ac8-1706-4978-922d-50b9788dcec8','Admin has checked in order from: 10:14 AM to 10:14 AM','Check In','2021-09-18 03:14:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3aab3961-d968-4373-889c-32d7f3a9eae4','Admin has added stock: 0.3/USD/300/4000/None/90.0 in product Air Pillow','Add','2021-08-26 02:29:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3abff138-2bc8-44d5-99b6-4a6ef84267bc','Admin has added stock: 4.6/USD/10/4000/None/46.0 in product Camping Chair','Add','2021-09-06 04:14:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3d504f4d-f7d5-463d-9d53-ec685c10e1d4','Admin has checked in order from: 11:37 AM to 11:37 AM','Check In','2021-09-18 04:37:35','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3e8587fd-324e-457f-bbe0-e8c033419fa5','Admin has logged in','Login','2021-09-06 03:59:10','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3ec60c72-3ee3-477d-b894-8959cd04d007','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:09:16','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4038332f-e1b9-4b1d-8098-5701fc09528e','Admin has added category: Bottle in category','Add','2021-08-26 02:26:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('408401a8-727c-4f88-ac80-87cad971ebb4','Admin has upload photo for product: Camping Chair','Upload','2021-09-05 13:59:08','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('40a5b38b-eb21-4ae8-82a9-9b685f686658','Admin has checked out payment INV0000046','Payment','2021-09-18 04:40:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('417aca8d-886e-4073-a6da-c8ad1816b48e','Admin has checked out payment INV0000001','Payment','2021-08-26 02:43:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('42a85d51-807f-4811-849a-5e6064026e9d','Admin has modified theme from light','Modify','2021-08-26 02:48:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('42ace6a7-a450-45c5-8ac5-d67b1e56ed54','Admin has added category: Grill in category','Add','2021-08-26 02:20:43','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('42e1bc15-8079-482e-bcb6-7bea94234119','Admin has modified theme from pink','Modify','2021-08-26 02:48:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('446b87ed-cb94-4262-88e6-775cee789d42','Admin has added product BBQ Grill','Add','2021-08-26 02:25:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('452066b9-6b59-4fb0-942e-968b3c81786b','Admin has modified theme from dark','Modify','2021-08-26 02:48:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('456656fe-bca3-43c1-85fc-aa8ba03a0656','Admin has logged in','Login','2021-09-05 12:58:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('45732794-3a03-4fde-8048-8e67e4320930','Admin has checked out order from: 11:40 AM to 11:40 AM','Check Out','2021-09-18 04:40:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('471fa83f-8df1-494d-a65b-0a1f8b2a6cdf','Admin has logged in','Login','2021-08-26 12:36:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('47472694-8f48-47a8-a3cf-bd7389a9da68','Admin has ordered invoice: INV0000014','Order','2021-09-07 04:24:41','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('48aaded6-d9a5-4f72-8d56-b3c779d3cea0','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:11:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('48af8317-032b-4e73-befc-94e65fb8b1af','Admin has added transaction: Air Pillow','Add','2021-09-18 04:40:20','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('48e96ed4-d18f-4eb2-9557-29c4e1bc1896','Admin has checked out payment INV0000028','Payment','2021-09-08 03:35:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('492d894c-cf9e-413b-907b-6b36bcabf636','Admin has checked out order from: 10:14 AM to 10:14 AM','Check Out','2021-09-18 04:14:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4980af08-5597-4916-bb25-11e881caac32','Admin has modified language from english','Modify','2021-09-06 04:00:01','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4a02ab28-9760-4e2b-8d2b-d3448ff77e1a','Admin has added room: Room 02','Create','2021-09-07 07:58:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4abb68de-0ea4-481c-a996-4575c74cd77a','Admin has added transaction: BBQ Grill','Add','2021-09-13 04:00:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4c03cd85-84cb-4c78-81d7-59a4a58d2198','Admin has checked out payment INV0000040','Payment','2021-09-18 04:28:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4cbc72a4-9824-4376-bba9-1af692ebd0de','Admin has added transaction: Collapsible Water Bottle','Add','2021-09-05 13:01:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4d570a94-94d7-49bf-a269-e41a65e1def1','Admin has ordered invoice: INV0000033','Order','2021-09-14 13:25:16','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4d8db89a-0fb5-4bda-9c46-d4effaf8d67c','Admin has modified theme from dark','Modify','2021-09-07 13:35:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4fc1ed67-47f7-4013-b461-64ae5f8e15a6','Admin has added transaction: Multi Function Spoon','Add','2021-09-05 13:20:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4fdaba00-3d2c-42cf-9b13-379f7ed9b917','Admin has modified theme from blue','Modify','2021-08-26 02:48:26','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('501accbb-7807-4d84-9e0d-0ad893ea5d32','Admin has checked in order from: 11:42 AM to 11:42 AM','Check In','2021-09-18 04:42:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5181d2ce-db4b-4d36-805f-be625b7d7e1a','Admin has ordered invoice: INV0000005','Order','2021-09-05 13:09:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('51d829dd-1d42-427d-bace-11bb7cc374cb','Admin has ordered invoice: INV0000047','Order','2021-09-18 04:41:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('549c2e9c-8899-4514-9bb5-134e639c8fa3','Admin has upload photo for product: Multi Function Spoon','Upload','2021-08-26 02:25:15','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('55a20f83-c26e-48e2-824e-4a161de1d5b1','Admin has added stock: 10/USD/30/4000/None/300.0 in product BBQ Grill','Add','2021-08-26 02:29:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('55d97702-f0d1-43b5-b6f8-38d68abf9123','Admin has modified language from indonesia','Modify','2021-08-26 02:48:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('56163831-4841-475d-989b-3e2c87a790bc','Admin has checked out payment INV0000025','Payment','2021-09-07 05:09:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('567a6139-18be-4b6b-a7c4-9f3bcd37d3e6','Admin has modified language from khmer','Modify','2021-09-05 14:10:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('575d0a1d-47f4-42f1-85f4-b308652ce4ed','Admin has ordered invoice: INV0000020','Order','2021-09-07 04:34:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('57a7db1a-cf8a-4f12-81b4-32253d96fa35','Admin has checked out payment INV0000027','Payment','2021-09-08 01:31:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('57ba786f-3303-4c6f-9e12-ab54955be335','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:19:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('580d3ae6-d880-4f0b-b76c-747956f55172','Admin has added transaction: BBQ Grill','Add','2021-09-07 04:21:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('59338a40-6532-48e3-8c0f-71d47f7cb467','Admin has added transaction: Multi Function Spoon','Add','2021-09-18 04:40:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('59784f13-803b-4126-a4f6-211845bd2b6a','Admin has checkout owe total: 20','Checkout','2021-09-17 13:58:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5a2d1110-411f-4d09-b7a5-f2d1a8cb03af','Admin has ordered invoice: INV0000017','Order','2021-09-07 04:30:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5b4b24b6-fe18-4874-96aa-35f59d6152dd','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:09:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5d813463-a40e-4e71-aa85-7cfcf3d6a2b7','Admin has ordered invoice: INV0000032','Order','2021-09-13 04:00:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5d9bf581-0e2d-46de-ab09-cd1c66b50531','Admin has ordered invoice: INV0000002','Order','2021-08-26 02:44:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5e82abbd-16ef-41fa-a43d-8fc7e8e88054','Admin has updated transaction Room 01, 30min','Modified','2021-09-18 04:25:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5ed9a1a3-c9fa-44d8-b456-6bcb986d5c0e','Admin has checked out order from: 10:59 AM to 10:59 AM','Check Out','2021-09-18 04:25:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5ff09507-98d4-4952-ad14-5d28df0d4993','Admin has added order from 2021-09-08 09:24 AM to 2021-09-08 09:24 AM for customer Thong','Add','2021-09-08 02:25:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5ff89ac0-f740-494b-91e2-b47ff1b9eba0','Admin has ordered invoice: INV0000010','Order','2021-09-07 04:21:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6066ace3-2611-4750-a1b6-c6a45036fd74','Admin has checked in order from: 09:25 AM to 09:25 AM','Check In','2021-09-08 02:25:51','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('60e60083-2dc8-45bf-a723-2952bdd830a0','Admin has checked in order from: 11:35 AM to 11:35 AM','Check In','2021-09-18 04:35:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('61077fb3-742f-48ce-934f-85a5e6085edc','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:10:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('611539ee-7a7d-4145-b1cc-97f780926866','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 04:29:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('63a23ce8-0f17-4770-81e0-b001256a7932','Admin has updated transaction Room 02, 2min','Modified','2021-09-18 04:34:15','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('645b761d-e4f9-4861-8946-0036fd04d4d8','Admin has added transaction: Camping Chair-Red','Add','2021-09-07 04:42:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('64d5540a-8cba-44ee-af07-a06bf8189669','Admin has ordered invoice: INV0000022','Order','2021-09-07 04:38:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('689135d5-f8c7-497b-942e-c3ce98f23a77','Admin has upload photo for color: Black','Upload','2021-09-06 04:20:56','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('694f564b-a2a5-48e5-a327-05f258e4677b','Admin has modified theme from blue','Modify','2021-08-26 12:36:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('69f5f7dc-62fc-4ef1-8632-5d8cf4f11cf8','Admin has logged in','Login','2021-09-14 13:20:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6cb938b3-be17-48cc-b181-5bb278d9a844','Admin has added transaction: Collapsible Water Bottle','Add','2021-09-07 04:34:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6d0f0e36-ea0f-407a-b01c-b0076c042d9a','Admin has added transaction: Multi Function Spoon','Add','2021-09-05 13:01:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6d315a44-7ece-465e-8b5e-2cb3d34a76a8','Admin has ordered invoice: INV0000026','Order','2021-09-07 13:33:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6da30079-8f2e-481c-baeb-25cbb1c314ac','Admin has ordered invoice: INV0000016','Order','2021-09-07 04:29:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6e1c7015-da62-4e4e-913d-0cd095248572','Admin has added product Collapsible Water Bottle','Add','2021-08-26 02:27:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6e256bdd-7525-47f8-a2bd-b69b26b2dbcb','Admin has logged in','Login','2021-09-09 02:01:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6e9cb472-f65b-4089-9a4a-2e9941ecb7cb','Admin has checked out payment INV0000005','Payment','2021-09-05 13:09:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6ec9748d-9806-462b-a4fd-cf4eb89ccac9','Admin has checked out payment INV0000030','Payment','2021-09-09 03:24:45','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6f719ec5-5f5f-4c30-966c-bb3dff531a82','Admin has added transaction: Air Pillow','Add','2021-09-18 04:40:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6ff5f794-3fa7-4d47-92e2-9698423b7201','Admin has logged in','Login','2021-09-15 02:04:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('70ec2022-3bd7-4418-a4dc-8072d6aa883e','Admin has added transaction: Camping Chair-Blue','Add','2021-09-07 04:22:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('72077d0e-422a-4dcf-8e5f-5393f17a7d24','Admin has deleted stock: 4.6000/USD/10/4000.0000/None/46.0000 in product Camping Chair','Delete','2021-09-06 04:14:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('739db1d6-8fb8-45b4-abcc-d9282142e199','Admin has added transaction: Air Pillow','Add','2021-08-26 02:43:40','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('73e6ec9e-276c-4360-9a52-8d95ee364a56','Admin has checked out payment INV0000041','Payment','2021-09-18 04:32:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('74a3a94f-b2ef-46ec-af38-e265ed9883bf','Admin has modified theme from dark','Modify','2021-08-26 12:36:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('74c1c5e0-9fcf-487c-8c75-aac3906467f0','Admin has added order from 2021-09-18 10:58 AM to 2021-09-18 10:58 AM for customer Customer','Add','2021-09-18 03:59:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7506361c-3686-4f40-82cd-902b73d2969d','Admin has modified theme from green','Modify','2021-08-26 12:36:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7580c0ac-9259-42c8-8487-0a297e05c296','Admin has checked out payment INV0000034','Payment','2021-09-15 03:20:16','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('75e0e531-0546-4f9e-af2c-2b078fc7b6e9','Admin has opened drawer','Open','2021-09-08 01:31:03','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('75e8e6cd-806b-4ce8-9870-ddb63333a6ad','Admin has checked in order from: 11:40 AM to 11:40 AM','Check In','2021-09-18 04:40:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('75ea2f53-4974-4055-b8f5-5f6211829d3d','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:03:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('75ef63b7-f456-4dab-a2e5-796600f5a5ef','Admin has added color Blue in product','Add','2021-09-06 04:01:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('760cb671-084c-4515-af4c-bbc9be0c4247','Admin has added transaction: Multi Function Spoon','Add','2021-09-17 13:54:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('777c9c22-4bb3-44a7-bfc3-ebf1e9bbda91','Admin has added order from 2021-09-18 11:29 AM to 2021-09-18 11:29 AM for customer Customer','Add','2021-09-18 04:30:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('785ec2b3-3497-4a24-b963-0a5ede99940f','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:19:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('79098e5c-b821-431f-904c-0e1e14f19c47','Admin has modified theme from green','Modify','2021-09-07 13:35:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7950392d-8e56-4022-ad64-5e98777616ec','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:10:26','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7cd28013-e04a-4e6e-a02c-24831f1823b7','Admin has checked out order from: 11:32 AM to 11:32 AM','Check Out','2021-09-18 04:34:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7cf3a129-3f6b-416b-96bf-e82e10601163','Admin has added transaction: BBQ Grill','Add','2021-09-07 04:30:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7d40d090-c4de-4a0b-8e1f-b5e44800e111','Admin has modified language from vietnam','Modify','2021-08-26 12:37:01','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7d85a23b-bc2d-4566-849d-63d9793d8aa5','Admin has modified theme from light','Modify','2021-09-07 13:35:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7eaa09ce-7128-4d1e-8419-a57275151068','Admin has ordered invoice: INV0000009','Order','2021-09-05 13:40:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7ecd1d1c-eda9-45be-b3b3-3f93883db0b3','Admin has added order from 2021-09-18 11:37 AM to 2021-09-18 11:37 AM for customer Customer','Add','2021-09-18 04:38:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7ed23306-359c-42f4-b280-ba4195237c81','Admin has added transaction: BBQ Grill','Add','2021-09-05 13:09:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7f53ee14-909f-454b-9b36-215ceb9e6542','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:17:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('80759b40-4986-4245-8276-26e094b560bd','Admin has upload photo for product: Multi Function Spoon','Upload','2021-08-26 02:25:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('811ac611-9d9b-4b65-89d2-88a6f5c693bf','Admin has added transaction: LED Headlight','Add','2021-09-05 13:17:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('830ddbd5-f053-4e84-8039-348cadc3a2e2','Admin has added stock: 3/USD/100/4000/None/300.0 in product LED Headlight','Add','2021-08-26 02:29:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('83ac8aeb-908b-4ed2-8f15-e512ea8565b5','Admin has modified theme from blue','Modify','2021-09-07 13:36:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('84c33223-1c00-4d8c-bfbe-f36fc3e2282d','Admin has added product Multi Function Spoon','Add','2021-08-26 02:25:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('85620c4b-c591-4222-8e13-701635e7fd54','Admin has modified language from vietnam','Modify','2021-08-26 02:48:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('87fb6d2b-390f-4524-8915-3a06837f4126','Admin has checked in order from: 11:32 AM to 11:32 AM','Check In','2021-09-18 04:32:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('88532981-138f-45cc-8ee2-331a89676e51','Admin has modified theme from light','Modify','2021-09-09 08:23:43','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8857f887-ffe7-4d90-84f9-7909d239f848','Admin has added room: Room 10','Create','2021-09-17 14:13:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('89016b35-4376-4260-8ac4-8f5fb857e265','Admin has ordered invoice: INV0000023','Order','2021-09-07 04:42:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('894e8a7a-0bd4-459a-a178-163291185710','Admin has checked out payment INV0000048','Payment','2021-09-18 04:43:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('896c1bb4-2588-45d1-acef-7f8380e803a4','Admin has checked out order from: 08:19 PM to 08:19 PM','Check Out','2021-09-17 13:53:45','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('89ac64fa-7750-4a73-b1d6-fc8aa7767f48','Admin has checked out payment INV0000044','Payment','2021-09-18 04:38:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8ac7aa4c-4f80-4175-bdac-3ed529a06e01','Admin has modified theme from pink','Modify','2021-08-26 12:36:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8c6df29c-b332-4122-adf0-ddc590eacd44','Admin has checked out payment INV0000007','Payment','2021-09-09 03:25:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8ca688b4-3d1e-4eb5-ad17-16a8050af811','Admin has ordered invoice: INV0000001','Order','2021-08-26 02:43:43','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8cd38736-2e2a-404f-b718-38ed79bd0926','Admin has checked out payment INV0000043','Payment','2021-09-18 04:37:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8cec2654-734b-46ed-8f15-0e578b4b767c','Admin has added order from 2021-09-18 11:39 AM to 2021-09-18 11:39 AM for customer Customer','Add','2021-09-18 04:40:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8e2600d2-deab-4f6b-9935-f93740ce0c1d','Admin has modified stock from: 4.6000/USD/4000.0000/100/None/460.0000 in product Camping Chair','Modify','2021-09-06 04:01:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8e4b3c3b-c2d9-4e35-83f8-1cb0746e1bd1','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:13:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8f622054-6e36-433c-819b-de125b845e9c','Admin has modified theme from green','Modify','2021-08-26 02:48:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8f6aa82d-1fb3-4018-bdf1-b8dbfc7e1144','Admin has checked out payment INV0000024','Payment','2021-09-07 05:08:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8fc183ad-f83d-4c01-a2e6-35742219d5b3','Admin has checked out order from: 11:35 AM to 11:35 AM','Check Out','2021-09-18 04:35:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('902a46f6-c0f2-4f70-b10c-3fbeaa4170fc','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:19:46','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9138f918-0250-4403-8ed4-3ec6e0de6517','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:03:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('913ea3d8-7260-42f1-bfa1-6c508b4c163a','Admin has checked out order from: 11:02 AM to 11:02 AM','Check Out','2021-09-18 04:27:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('92b7c7d7-4d7c-4b9b-9f6e-1b6642477d78','Admin has added transaction: Multi Function Spoon','Add','2021-09-05 13:39:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('95f94d42-8215-4569-b234-f972da6ac555','Admin has modified theme from light','Modify','2021-09-07 13:38:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9629fc46-8b47-4e4e-8e77-79be976f825d','Admin has added transaction: Multi Function Spoon','Add','2021-09-18 04:39:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9784a716-10ea-4772-a26d-850f5c8cf1c2','Admin has modified theme from light','Modify','2021-08-26 02:48:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('97dc0ebe-f59a-4f03-8b2b-f14f5ff3e239','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:18:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9811ca8e-454d-43e1-966c-c7bc61b8c54f','Admin has added floor: 1F','Create','2021-09-17 14:12:21','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('986130cb-19fd-49ce-9f2f-8021c795e228','Admin has upload photo for product: Air Pillow','Upload','2021-08-26 02:23:15','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('98968bcd-5072-4add-86c5-c74b09e72231','Admin has added transaction: LED Headlight','Add','2021-08-26 02:43:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9a2998b0-9dc2-4067-8805-25921bff1131','Admin has checked out payment INV0000045','Payment','2021-09-18 04:39:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9a790818-230d-4588-b03d-31f806245507','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:03:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9ba64308-4e89-4d1d-929d-fb8f8f72c565','Admin has added category: Headlight in category','Add','2021-08-26 02:21:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9beefdc5-fdb6-419e-9569-874049ea2003','Admin has updated transaction Room 02, 30min','Modified','2021-09-18 04:42:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9e2d7ae5-f86e-4286-8b9f-32ef2b7996ff','Admin has ordered invoice: INV0000003','Order','2021-08-26 02:46:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9e7e2bc1-c343-4f9a-a42f-d64fd454f091','Admin has modified language from english','Modify','2021-08-26 02:48:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9f7735f1-f178-481e-8fc9-4de5563efe92','Admin has checked out payment INV0000026','Payment','2021-09-07 13:33:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9f7a3a46-078c-4f0c-b39d-7c525e19d20a','Admin has added color Red in product','Add','2021-09-06 04:01:41','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a079bf38-9dd4-4d9f-ba0a-e013cb84ceb2','Admin has deleted floor: 2F','Deleted','2021-09-17 14:12:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a2504135-da2f-4be5-90b1-da3a484dacd3','Admin has deleted category: Grill','Delete','2021-08-26 02:20:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a30eed8d-264e-4ce4-ad64-9d9596959ba3','Admin has added floor: 1F','Create','2021-09-17 14:12:41','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a3c8c67c-b8ed-4020-8c76-1abef833f696','Admin has added stock: 3/USD/20/4000/None/60.0 in product Collapsible Water Bottle','Add','2021-08-26 02:28:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a53a08cd-ae4b-4881-95d6-bc80f7fa7358','Admin has checked out payment INV0000037','Payment','2021-09-18 04:23:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a5e56f5b-be68-44ee-823a-f9e48da57bec','Admin has ordered invoice: INV0000029','Order','2021-09-08 04:05:33','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a6f795f6-9e14-4e72-be54-0b7d9e134719','Admin has checked out payment INV0000022','Payment','2021-09-07 04:38:33','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a807f39b-228e-4369-92b9-1c293f97104a','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:13:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a99f20fb-0cbc-41eb-abe3-b643e8efb957','Admin has updated transaction Room 02, 60min','Modified','2021-09-18 04:36:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('aa882a2c-801c-4941-a30c-98a5b0c434cf','Admin has added order from 2021-09-18 11:34 AM to 2021-09-18 11:34 AM for customer Customer','Add','2021-09-18 04:35:43','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('aaab3632-5d5b-4786-8384-35d84ff83575','Admin has checked out order from: 11:30 AM to 11:30 AM','Check Out','2021-09-18 04:30:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ab483c11-a325-4a4a-8770-50d51fdbf904','Admin has ordered invoice: INV0000018','Order','2021-09-07 04:32:26','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ab97aade-d0b1-4e20-be17-e184cef03f72','Admin has checked in order from: 02:00 PM to 03:00 PM','Check In','2021-09-18 04:26:10','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('abfa46e7-0375-425c-8bdc-fd047305ff7b','Admin has checked out payment INV0000036','Payment','2021-09-18 04:22:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('acb7b6ec-424b-4050-8ee7-20c4ff12dd0c','Admin has logged in','Login','2021-09-07 13:16:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('acd60663-5037-40d0-ae0c-f91811d3c2cb','Admin has upload photo for product: Collapsible Water Bottle','Upload','2021-08-26 02:27:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('add726a0-8dc0-4168-aa1b-b826fdda9eca','Admin has logged in','Login','2021-09-08 01:17:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ae4619bf-5fb5-4b02-81b4-e055af8cb2a0','Admin has modified language from khmer','Modify','2021-09-06 04:00:23','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('af2e46f1-0e64-4650-bb11-3070285e9c6b','Admin has checked out order from: 11:42 AM to 11:42 AM','Check Out','2021-09-18 04:42:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('af5f4a19-42f6-4aba-bf13-f21a3f97afda','Admin has modified theme from light','Modify','2021-08-26 12:36:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('af769a89-b0a4-425d-9726-2d28774ff5cd','Admin has modified language from english','Modify','2021-09-05 13:17:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('afdd56cd-b5c0-45e9-969c-79cf0e2182ec','Admin has added category: Chair in category','Add','2021-09-05 13:58:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b2635d96-188c-4d3f-b24b-334c9df10456','Admin has ordered invoice: INV0000013','Order','2021-09-07 04:23:51','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b2c8de18-4108-4888-b310-85cd9bf87d5b','Admin has opened drawer','Open','2021-08-26 02:42:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b786381b-9f9e-484e-af19-fc67da45e56d','Admin has added product LED Headlight','Add','2021-08-26 02:23:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b7bfb863-131d-4bf4-8a9a-c2fa82af352f','Admin has upload photo for product: Air Pillow','Upload','2021-08-26 02:22:35','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b7dc6acc-078b-4c62-a25f-aa2244f528b8','Admin has added transaction: LED Headlight','Add','2021-09-18 04:39:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b843854c-c006-457a-9a09-d225ad9fac01','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 04:37:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ba533871-986d-488e-8d0f-e7e5e91596db','Admin has modified theme from pink','Modify','2021-09-07 13:35:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ba77de33-0c72-40d5-8c94-8361efe33401','Admin has added room: Room 10','Create','2021-09-17 14:13:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bb208412-b69f-433a-9de9-edbf86892c4f','Admin has ordered invoice: INV0000008','Order','2021-09-05 13:39:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bc24de30-b15f-4da8-991b-627b79c6ea38','Admin has added transaction: Camping Chair-Blue','Add','2021-09-08 04:05:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bcda521e-7e98-4ed9-bdb5-834cda71f200','Admin has checked out order from: 02:00 PM to 03:00 PM','Check Out','2021-09-18 04:26:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bd3d5f71-e962-460e-8d86-ee06f5c80e08','Admin has modified theme from green','Modify','2021-09-07 13:37:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bdfcb957-f675-4313-b16e-09e1af57771e','Admin has added transaction: Collapsible Water Bottle','Add','2021-08-26 02:46:35','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('be6e16c6-cda7-4e1d-87f8-9157b5dac9fa','Admin has delete room: Room 10','Delete','2021-09-17 14:13:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('beed9ba6-6972-4e19-88ce-bed1f998f8fe','Admin has ordered invoice: INV0000019','Order','2021-09-07 04:33:51','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bf04e5c8-54a4-40b1-add5-52c2b0579b51','Admin has ordered invoice: INV0000021','Order','2021-09-07 04:37:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('bf314ce0-309f-4c4b-9c2f-5f45e6e2e930','Admin has added product Air Pillow','Add','2021-08-26 02:22:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c1d38db3-0678-459e-9f65-7951cb1e1154','Admin has checked out payment INV0000038','Payment','2021-09-18 04:26:03','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c1fafe1f-6ac4-4a0d-a896-5435f820547c','Admin has added product Camping Chair','Add','2021-09-05 13:59:02','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c2c36413-65e5-484d-a147-37b6d4287f90','Admin has added order from 2021-09-18 01:59 PM to 2021-09-18 02:59 PM for customer Customer','Add','2021-09-18 04:00:16','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c2f3fc1a-5aa4-4aec-a0e7-dbdf25283b3c','Admin has added property: Size in category Chair','Add','2021-09-12 13:51:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c30d7f5e-d003-4525-93f2-ebb2833179b4','Admin has ordered invoice: INV0000031','Order','2021-09-12 13:45:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c33353e5-d8dd-4ff5-b723-17c8ddba95d9','Admin has modified theme from red','Modify','2021-09-08 01:18:05','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c34c1b13-bf06-4454-a2fa-7c230639bd9d','Admin has added color Black in product','Add','2021-09-06 04:01:20','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c3f282be-fec2-48c1-bc73-7b3eb721c5a2','Admin has checked out payment INV0000035','Payment','2021-09-17 13:54:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c60cd256-8f35-4f3d-8f86-35ca875fe46b','Admin has checked out payment INV0000008','Payment','2021-09-05 13:39:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c7087aad-207e-4337-ab59-2d0dd9e23031','Admin has added category: Air Pillow in category','Add','2021-08-26 02:20:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c7a54f45-0145-498c-8edb-b101e8569b68','Admin has upload photo for product: BBQ Grill','Upload','2021-08-26 02:25:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c7a87329-6988-42b8-b630-e3eaace98697','Admin has ordered invoice: INV0000004','Order','2021-09-05 13:01:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c8b9d449-c3ca-45c5-97c3-491484567438','Admin has added transaction: Collapsible Water Bottle','Add','2021-09-07 04:38:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c921cb7c-65c4-401d-92b4-1a565bc4bfee','Admin has deleted stock: 4.6000/USD/50/4000.0000/None/230.0000 in product Camping Chair','Delete','2021-09-06 04:11:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c9ba44ea-2553-4604-b845-249053b05ca6','Admin has added order from 2021-09-17 11:59 PM to 2021-09-18 12:59 PM for customer Geese','Add','2021-09-18 03:16:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c9ddc9ba-7e54-47cd-b16b-7b694f0866ce','Admin has added transaction: LED Headlight','Add','2021-08-26 02:46:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c9fbe139-f879-4a50-b6c7-bff0da7eb84e','Admin has added order from 2021-09-18 11:59 AM to 2021-09-18 12:59 PM for customer Geese','Add','2021-09-18 03:17:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ca3c3889-4268-445b-b60f-da3842a64220','Admin has added property: Size in category Bottle','Add','2021-09-13 03:57:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ca92f4be-dd8a-40c9-91a5-297312474cd2','Admin has checked out order from: 09:25 AM to 09:25 AM','Check Out','2021-09-08 03:35:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cacba064-296b-4d5c-bb4b-a8adbc7ef636','Admin has checked out payment INV0000029','Payment','2021-09-08 04:05:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cb415639-4de8-4779-9a0b-ac4e32fe1f1b','Admin has added LED Headlight to favorite','Add','2021-08-26 02:30:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cd24f55c-c8b7-421b-b28f-757e47b37d62','Admin has updated transaction Room 01, 60min','Modified','2021-09-18 04:40:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cd67b92e-ff9b-49a8-96d7-342ab33b5aca','Admin has checked out payment INV0000031','Payment','2021-09-12 13:45:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cf4cf882-0e81-4887-b5a6-46e944c98ac3','Admin has ordered invoice: INV0000024','Order','2021-09-07 05:08:16','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d1897dd2-3896-47e5-a198-e537856dd3a3','Admin has modified theme from red','Modify','2021-09-07 13:38:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d22a435c-fbfc-46a4-822a-c5e605305385','Admin has added transaction: Camping Chair-Red','Add','2021-09-09 03:24:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d3cdaa75-0169-4160-a8fd-eafd4020eebe','Admin has added product Multi Function Spoon','Add','2021-08-26 02:24:51','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d61b07fa-8b42-4e2d-8e25-f1611901efa0','Admin has modified theme from blue','Modify','2021-08-26 12:36:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d61cf792-2090-4165-9586-e2a8a509b391','Admin has checked in order from: 11:38 AM to 11:38 AM','Check In','2021-09-18 04:38:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d6250889-0450-42a3-be23-c8b044b1c59b','Admin has ordered invoice: INV0000007','Order','2021-09-05 13:20:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d837a38a-f21b-47fc-a86b-8093c54efc55','Admin has added customer: Geese','Add','2021-09-13 13:37:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d8c410f0-c6a4-4ebe-820b-dad7885ec726','Admin has checked out order from: 11:37 AM to 11:37 AM','Check Out','2021-09-18 04:37:40','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d9ad1cd3-c029-4028-9fbf-27d730f13ded','Admin has added category: Cookware in category','Add','2021-08-26 02:20:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('da5ad9db-86ff-4dd0-9c4b-263d80836a87','Admin has checked in order from: 11:30 AM to 11:30 AM','Check In','2021-09-18 04:30:33','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('da79d205-0cda-4b76-8466-94dc1388693b','Admin has checked out payment INV0000033','Payment','2021-09-14 13:25:20','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('daecf243-46d0-421f-bb3c-4920e757da0f','Admin has added floor: 1F','Create','2021-09-17 14:13:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('db2554fa-cdcb-427f-84a1-9dcf68732fbd','Admin has modified language from khmer','Modify','2021-08-26 12:36:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('dc940142-68c3-40c3-9685-cbae70cf3e1d','Admin has modified language from english','Modify','2021-09-08 02:26:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('dfba36fc-3eec-43ba-8b7e-6c67167c0048','Admin has added customer: Thong','Add','2021-09-08 02:25:03','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('dfe9db37-2336-4bdf-98f7-b919f59d2fd6','Admin has added transaction: Camping Chair-Blue','Add','2021-09-07 05:08:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e0434209-ff64-4fc2-aa1a-61bd7cb74996','Admin has added transaction: LED Headlight','Add','2021-08-26 02:44:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e0da30e3-8863-4e56-8a4a-96346c78be9c','Admin has added transaction: Air Pillow','Add','2021-09-18 04:22:10','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e1ac66cf-bc73-4228-aabd-f75001b8c4c8','Admin has logged in','Login','2021-09-12 13:44:03','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e24b8262-f711-4384-bcfb-3acd00fe235f','Admin has modified theme from dark','Modify','2021-09-07 13:35:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e24e82d2-aa95-4b90-a60b-bd6e48448f3b','Admin has added transaction: Camping Chair-Black','Add','2021-09-07 04:22:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e2d30e7c-534c-405e-86fe-86486e4ff830','Admin has added transaction: LED Headlight','Add','2021-09-08 01:30:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e41967b1-8751-4157-91d7-dcc19236e5bd','Admin has checked out payment INV0000003','Payment','2021-08-26 02:46:43','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e42431aa-a70e-480a-b59c-7afa5fa48929','Admin has added transaction: Multi Function Spoon','Add','2021-09-07 04:26:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e4c8e6e7-9a0f-4a25-9082-b4913f1838d6','Admin has added transaction: Air Pillow','Add','2021-09-07 13:33:26','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ea6f537c-ff79-402c-bc65-4e98f78b51ce','Admin has added stock: 1/USD/70/4000/None/70.0 in product Multi Function Spoon','Add','2021-08-26 02:29:38','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ead75eb6-8be2-4678-b40a-5f42b32854b0','Admin has added transaction: Multi Function Spoon','Add','2021-09-08 02:25:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ec8a67dd-e7af-487f-856c-a3b03c70a667','Admin has checked out payment INV0000002','Payment','2021-08-26 02:44:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ecbbd296-a5c8-4ee3-9202-a819e63923db','Admin has checked out payment INV0000023','Payment','2021-09-07 04:43:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ecdd396b-f1fe-412c-be4d-ce65a9f906a2','Admin has deleted floor: 1F','Deleted','2021-09-17 14:12:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ed26110f-7b45-4344-b4cf-fc8672bfef2b','Admin has added transaction: BBQ Grill','Add','2021-09-07 04:33:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ed8c097e-eeb6-4aec-9bb8-1a60f2f93773','Admin has added transaction: BBQ Grill','Add','2021-09-18 04:42:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('eeaad6ba-cb58-454c-911d-a2ef758d2b2f','Admin has checked in order from: 10:59 AM to 10:59 AM','Check In','2021-09-18 04:25:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('eeef185c-0836-45f3-8f80-bcafa64e280b','Admin has ordered invoice: INV0000006','Order','2021-09-05 13:17:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ef120bbc-8802-4235-ab84-3ca4ef7daa70','Admin has added customer: Sem','Add','2021-09-18 04:02:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('efc546ce-944c-471c-bbf8-a9c2ccc9c1b8','Admin has checked in order from: 08:19 PM to 08:19 PM','Check In','2021-09-17 13:19:40','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f0f8e3a7-13ef-46cd-8f01-4379e14381b0','Admin has checked out order from: 11:38 AM to 11:38 AM','Check Out','2021-09-18 04:38:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f1bb5f9e-afdb-4e71-a2cf-4a90baff9787','Admin has checked out payment INV0000042','Payment','2021-09-18 04:35:35','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f2d93c2b-94bc-4213-814d-e1352552f444','Admin has checked out payment INV0000004','Payment','2021-09-05 13:01:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f3119423-7527-45df-a531-874e415d71fc','Admin has added Multi Function Spoon to favorite','Add','2021-08-26 02:30:06','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f49f7505-d921-44e0-9300-880093b73737','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:08:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f4fbd2de-925b-451e-a385-bf3d7bc11540','Admin has modified language from indonesia','Modify','2021-08-26 12:37:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f7aa3a6b-9605-4bfe-b878-7c6902372ac6','Admin has updated transaction Room 02, 60min','Modified','2021-09-17 13:54:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f7c18ff6-4330-4bcd-953e-dd286c54ade0','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:02:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f8401d1c-036b-4e2c-b39e-d0e8bae2a18e','Admin has closed drawer','Close','2021-09-07 13:41:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('fa77c123-4ff6-4340-9506-0934fa45f6ed','Admin has added room: Room 01','Create','2021-09-07 07:58:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('fb27bf1c-1733-4153-9b5a-600a38c58efa','Admin has upload photo for color: Black','Upload','2021-09-06 04:20:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('fb387e9a-cbab-46e5-b3e9-27982b9f5a35','Admin has updated transaction Room 02, 1h 10min','Modified','2021-09-08 03:35:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('fc8ced47-e946-4835-88d3-61250a74e7c4','Admin has modified theme from light','Modify','2021-09-07 13:35:45','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ff1e5da7-4afc-4949-bc51-bb71685ac58d','Admin has added stock: 4.6/USD/50/4000/None/229.99999999999997 in product Camping Chair','Add','2021-09-06 04:18:03','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
INSERT INTO `tbl_appearance` VALUES ('0c823b80-8f45-41a1-b622-04d35200d8f7','','','','','','1b002a00-2b2c-41cf-a804-787a39b9b2a9'),('2744a2fa-a5e4-4837-ae6d-77810d14f0da','','','','','','1b6e6e44-0dd6-4a38-aa58-b77565bc303d'),('54c56199-4cb8-4827-b2b5-db87c5eae1c7','','','','','','2c5b12a5-8078-486d-8639-ff4dae7a3c2e'),('8cda8393-f138-43f2-895b-bfcee80fdc13','','','','','','1690b042-d786-41d1-a05e-11ea7765e920'),('ac58b490-23ac-450c-86a6-9e306f9c6cab','','','','','','9ef8777c-7b9a-40fb-b234-8150f516489b'),('b615f4a3-34d3-4ed1-98a9-bcdca4e53540','','','','','','0d57dd34-0be6-430b-a853-36af4602075f'),('fa01c306-4ec9-441f-9e62-c615827edcc3','','','','','','84a06e66-a538-43ca-a94b-230346cbc485');
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
  `brand` varchar(100) NOT NULL,
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
INSERT INTO `tbl_brand` VALUES ('28cb3c7c-d003-4b41-a3ad-14f2e57d56df','Camping Cave','','2021-08-26 02:22:06','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
INSERT INTO `tbl_category` VALUES ('0989e039-aec5-41dc-a3fc-a1d7a35059f1','Cookware','default.png','','2021-08-26 02:20:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('17e762be-e62c-46bf-891f-c00b2086d647','Pocket Knife','default.png','','2021-08-26 02:20:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('29ba32d3-9021-4f1c-af45-1f076710edae','Headlight','default.png','','2021-08-26 02:21:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('8bd49335-959d-47af-83bd-2d56fff3a00a','Chair','default.png','','2021-09-05 13:58:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c52f2372-b50f-4c37-aff0-09c4096ead50','Air Pillow','default.png','','2021-08-26 02:20:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e3ab999d-9a6b-421b-9c75-9c0b907fc006','Bottle','default.png','','2021-08-26 02:26:29','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
INSERT INTO `tbl_checkin` VALUES ('03e5993e-12a6-41cb-bb01-0c9b753662f2','2021-09-08 02:25:51','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-08 02:25:51','68d7eeb9-1053-49b8-a062-4b5026df3de2','776eb1cd-8693-40cd-8ad9-03205846e85e'),('102ada8b-1e10-45d1-b0df-dfd775411f09','2021-09-18 04:37:35','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:37:35','bcb571bb-6f61-4f85-8b77-b208f6df1fe1','7108ab99-d2db-498e-8347-9c16d88e5e32'),('48e7a826-5069-421b-878a-6e65890c1fa0','2021-09-18 04:38:55','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:38:55','53def757-1744-4456-87e9-a21384a12148','134e8522-0113-46da-8aa8-e73f6c589f6d'),('564a8330-4ea2-45c4-bdaa-c01d7cb328c2','2021-09-18 04:35:46','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:35:46','d9c2cac9-b002-4509-86c2-3864f71bac66','f82cabd5-d378-40ab-921e-2a6d3ad8a2c1'),('805560d5-8147-48b0-a796-0ed8872e961f','2021-09-18 04:40:06','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:40:06','480ea865-48a1-45d3-b541-18e8a2cc3222','f3d38e50-78ca-44a0-b5d7-042edaf3fe97'),('8950d46f-4696-4db3-90cc-b76bdbc7389c','2021-09-18 03:14:22','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 03:14:22','93be3476-5b7d-4dc8-aae4-dafd52267e5e','1baed0d6-4c01-4099-add1-318245d0729e'),('952bdb17-c7f7-42d0-bd29-eb42d7f8f7dd','2021-09-17 13:19:40','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-17 13:19:40','81ceb696-fe4a-4464-8ade-5c2ff68a85b5','6a180ee5-541e-4cad-b4a3-3ce77e1a0535'),('a417bc1c-da63-4c0e-baef-11efabbed8c8','2021-09-18 04:25:22','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:25:22','0e74dfdb-328d-4159-9cb9-fcebe17679d2','e788a9e9-a4bb-4687-9ed3-1c55fa9d46b1'),('bd2a887a-0436-457f-860d-d96e2ffacb50','2021-09-18 04:42:32','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:42:32','e3c78a83-9fb0-4ecc-b738-280b511e2991','d5a9ef14-5f99-485e-ace4-4764730332bb'),('c97cf741-adef-4038-b440-cf1b893477a8','2021-09-18 04:30:33','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:30:33','1317b091-acbf-4461-84aa-8f4f79740bcb','a03b08a5-5db2-474e-b6db-d3886c0837d3'),('d1b5a4c6-ba9c-4c7d-a7c9-927f8d317bfd','2021-09-18 04:22:24','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:22:24','b0a999c3-e8e5-48c9-b062-659590f3ed16','b7d15d15-6fe7-4e02-bd6a-23fd28d70837'),('e94041f5-3f44-470a-83c0-77488332528d','2021-09-18 04:27:19','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:27:19','5ce18bfd-642b-425c-bf68-7970dc0a90ac','6218cd90-e838-465f-8d1a-dbf60fe24331'),('f65fade6-1bae-4875-91be-b1ce61612ece','2021-09-18 04:32:13','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:32:13','2effda86-5c81-49f9-bded-387902340667','c58d687c-d711-44fe-91f8-3f415c78ec77'),('ffc09aef-6149-4895-a13a-56cd8f349444','2021-09-18 04:26:10','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:26:10','775be8ba-0550-4cc1-b73c-10bf6fe756e1','149ec992-d0cb-43c6-9ec8-0c23cd221434');
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
INSERT INTO `tbl_checkout` VALUES ('12cb3c63-06d4-401f-842a-e5e3112d109e','2021-09-18 04:27:24',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:27:24','5ce18bfd-642b-425c-bf68-7970dc0a90ac'),('21650ac6-0318-4b7e-b028-e099f2a673b0','2021-09-17 13:53:45',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-17 13:53:45','81ceb696-fe4a-4464-8ade-5c2ff68a85b5'),('21a12d67-46f4-4672-a24a-5b9ca1276bdc','2021-09-18 04:22:30',30,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:22:30','b0a999c3-e8e5-48c9-b062-659590f3ed16'),('3145410a-bcc2-4fe9-bbe1-cc77544907e2','2021-09-18 04:30:37',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:30:37','1317b091-acbf-4461-84aa-8f4f79740bcb'),('542e075a-38c7-4710-8275-88f28acbfbf6','2021-09-18 04:25:27',30,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:25:27','0e74dfdb-328d-4159-9cb9-fcebe17679d2'),('591575ff-3f4d-4f7d-8c56-df69ee1d7b7c','2021-09-18 04:38:59',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:38:59','53def757-1744-4456-87e9-a21384a12148'),('6c26d6ed-afbe-430f-8e39-3654016d11db','2021-09-08 03:35:42',70,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-08 03:35:42','68d7eeb9-1053-49b8-a062-4b5026df3de2'),('7127f31e-d522-4b13-b2d9-b74d0befab64','2021-09-18 04:14:13',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:14:13','93be3476-5b7d-4dc8-aae4-dafd52267e5e'),('769d043e-9677-45ca-bed7-3a22e9d78582','2021-09-18 04:42:36',30,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:42:36','e3c78a83-9fb0-4ecc-b738-280b511e2991'),('ae47140c-5f27-4c2a-99f5-cf02152c7f39','2021-09-18 04:40:11',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:40:11','480ea865-48a1-45d3-b541-18e8a2cc3222'),('af1d2b72-509d-4207-ba51-5241e9022af2','2021-09-18 04:26:18',30,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:26:18','775be8ba-0550-4cc1-b73c-10bf6fe756e1'),('ce80c753-7c72-4e3b-a5d6-84eb9eea1516','2021-09-18 04:35:52',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:35:52','d9c2cac9-b002-4509-86c2-3864f71bac66'),('db8efb2f-e684-4357-b5ec-77660ff913c5','2021-09-18 04:37:40',60,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:37:40','bcb571bb-6f61-4f85-8b77-b208f6df1fe1'),('ea852c89-ecb4-479d-931c-82952aae0276','2021-09-18 04:34:12',2,'21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:34:12','2effda86-5c81-49f9-bded-387902340667');
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
  `color` varchar(100) NOT NULL,
  `hex` varchar(100) DEFAULT NULL,
  `price` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_color` VALUES ('45ddc065-d97c-4c32-bdb8-f6a4ab256d20','Red','#C33434',0.0000,'2021-09-06 04:01:41','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b'),('5cc0fc4b-71b6-4f9f-bbe5-3034a6fcb568','Blue','#1595F1',0.0000,'2021-09-06 04:01:32','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b'),('9d88f8c0-ed75-4fe7-8c07-d59ba81095db','Black','#3C3C3C',0.0000,'2021-09-06 04:01:20','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b');
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
  `name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_customer` VALUES ('64908373-dbc9-4637-adb8-c1296c44ff91','Geese','2021-09-01','077777777','','2021-09-13 13:37:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b5efbf6c-f0f7-493e-8af2-201ca3639eb9','Customer',NULL,'','','2021-08-26 02:18:45','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ba031d28-ab82-4077-83f6-e5629b33ecca','Thong','2021-09-17','017467617','','2021-09-08 02:25:03','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('df28d6d8-8591-4e0c-a35c-96facf757f1e','Sem',NULL,'098767878','','2021-09-18 04:02:52','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `rate` decimal(10,4) DEFAULT NULL,
  `counter` varchar(50) DEFAULT NULL,
  `startCost` decimal(16,4) DEFAULT NULL,
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
INSERT INTO `tbl_drawer` VALUES ('99b6805f-681e-4713-a966-555bb82ae166','',4000.0000,'Default',20002000.0000,'2021-08-26 02:42:13','2021-09-07 13:41:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97','',4000.0000,'Default',0.0000,'2021-09-08 01:31:03',NULL,'21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `floor` varchar(100) NOT NULL,
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
INSERT INTO `tbl_floor` VALUES ('5808b3a5-d3bb-4a0f-99df-55a996020526','1F','2021-09-17 14:13:09','7513083c-6226-4db3-8eb8-aece4bfbdb1c'),('ab8f8a93-41e5-490a-a501-5182a9188c1a','GF','2021-08-26 02:18:45','7513083c-6226-4db3-8eb8-aece4bfbdb1c');
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
  `receive` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_invoice` VALUES ('a7cc2068-2a74-4f7e-b3c6-4040a1c0d593',15.0000,15.0000,0.0000,'28,0',4000.0000,13.0000,'2021-09-17 13:58:12','21f6f1bc-270d-482f-8af6-c76eff111ebe','ba031d28-ab82-4077-83f6-e5629b33ecca');
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
  `currency` varchar(100) NOT NULL,
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
INSERT INTO `tbl_money` VALUES ('116ae613-dc75-41a4-82ce-8cdb03eb40c9',10000,'KHR',2.50000,986,'99b6805f-681e-4713-a966-555bb82ae166'),('1f9a5800-c9f9-44fe-ad2e-05908ae5975a',1000,'KHR',0.25000,9990,'99b6805f-681e-4713-a966-555bb82ae166'),('2ec05946-3445-439e-89c2-bf40b81c1d38',1,'USD',1.00000,994,'99b6805f-681e-4713-a966-555bb82ae166'),('5355bf25-b39d-45e1-bf12-1871562df293',10,'USD',10.00000,100,'99b6805f-681e-4713-a966-555bb82ae166');
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
INSERT INTO `tbl_order` VALUES ('0e74dfdb-328d-4159-9cb9-fcebe17679d2',1,1,'2021-09-18 03:59:00','2021-09-18 03:59:00','dac2ec9a-0893-4179-9d6f-67f341494248','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 03:59:39'),('1317b091-acbf-4461-84aa-8f4f79740bcb',1,1,'2021-09-18 04:30:00','2021-09-18 04:30:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:30:31'),('2effda86-5c81-49f9-bded-387902340667',1,1,'2021-09-18 04:32:00','2021-09-18 04:32:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:32:11'),('480ea865-48a1-45d3-b541-18e8a2cc3222',1,1,'2021-09-18 04:40:00','2021-09-18 04:40:00','dac2ec9a-0893-4179-9d6f-67f341494248','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:40:04'),('53def757-1744-4456-87e9-a21384a12148',1,1,'2021-09-18 04:38:00','2021-09-18 04:38:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:38:53'),('5ce18bfd-642b-425c-bf68-7970dc0a90ac',1,1,'2021-09-18 04:02:00','2021-09-18 04:02:00','dac2ec9a-0893-4179-9d6f-67f341494248','df28d6d8-8591-4e0c-a35c-96facf757f1e','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:02:58'),('68d7eeb9-1053-49b8-a062-4b5026df3de2',1,1,'2021-09-08 02:25:00','2021-09-08 02:25:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-08 02:25:46'),('775be8ba-0550-4cc1-b73c-10bf6fe756e1',1,1,'2021-09-18 07:00:00','2021-09-18 08:00:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:00:16'),('81ceb696-fe4a-4464-8ade-5c2ff68a85b5',1,1,'2021-09-17 13:19:00','2021-09-17 13:19:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-17 13:19:37'),('93be3476-5b7d-4dc8-aae4-dafd52267e5e',1,1,'2021-09-18 03:14:00','2021-09-18 03:14:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 03:14:19'),('b0a999c3-e8e5-48c9-b062-659590f3ed16',1,1,'2021-09-18 05:00:00','2021-09-18 06:00:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','64908373-dbc9-4637-adb8-c1296c44ff91','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 03:17:34'),('bcb571bb-6f61-4f85-8b77-b208f6df1fe1',1,1,'2021-09-18 04:37:00','2021-09-18 04:37:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:37:33'),('d9c2cac9-b002-4509-86c2-3864f71bac66',1,1,'2021-09-18 04:35:00','2021-09-18 04:35:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:35:43'),('e3c78a83-9fb0-4ecc-b738-280b511e2991',1,1,'2021-09-18 04:42:00','2021-09-18 04:42:00','d1eec252-5476-41cf-bb7c-5072ccdf24e2','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','2021-09-18 04:42:30');
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
  `amount` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_outcome` VALUES ('2c803f4c-9b29-4bf6-8c98-31eb701f41e7',1,'Multi Function Spoon x50',50.0000,'2021-08-26 02:29:05','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('2cd50143-17c8-4a09-88bd-794b7de6c201',1,'LED Headlight x100',300.0000,'2021-08-26 02:29:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('59508f4b-0975-4ad8-a51f-afa58007e724',1,'Camping Chair x100',92.0000,'2021-09-05 14:12:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6d55c909-c548-44c7-a7b7-5b6a741330c4',1,'Air Pillow x300',90.0000,'2021-08-26 02:29:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7',1,'BBQ Grill x30',300.0000,'2021-08-26 02:29:17','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('a950b9d4-e2fc-4748-b92d-fe374a5f7bcd',1,'Camping Chair x30',138.0000,'2021-09-06 04:03:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c6626c0e-464b-43ed-ae67-018f5f03671b',1,'Collapsible Water Bottle x20',60.0000,'2021-08-26 02:28:54','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('cb466e9f-0c3f-41a3-beb6-b40511003eb2',1,'Camping Chair x30',138.0000,'2021-09-06 04:02:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e3a10a06-4982-463f-8dee-94e56126ad8a',1,'Multi Function Spoon x70',70.0000,'2021-08-26 02:29:38','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `invoice` varchar(100) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `receive` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_owe` VALUES ('7708cf9d-0be6-4b81-b859-c4f3ab151921','OWE_Geese',0.0000,NULL,0.0000,0.0000,'0,0','2021-09-13 13:37:18','64908373-dbc9-4637-adb8-c1296c44ff91','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('da9deea4-a154-4655-809f-175377758a66','OWE_Thong',0.0000,4000.0000,0.0000,0.0000,'0,0','2021-09-08 02:25:03','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f349cc06-202f-449b-9acc-a800b6a8cdf5','OWE_Sem',0.0000,NULL,0.0000,0.0000,'0,0','2021-09-18 04:02:52','df28d6d8-8591-4e0c-a35c-96facf757f1e','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `invoice` varchar(100) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `paid` decimal(10,4) DEFAULT NULL,
  `remain` decimal(10,4) DEFAULT NULL,
  `receive` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_payment` VALUES ('0b902f8c-d439-47bd-9164-d53c983e87c0',1,'INV0000031',7.0000,7.0000,0.0000,'10,0',4000.0000,3.0000,'2021-09-12 13:45:04','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('134e8522-0113-46da-8aa8-e73f6c589f6d',1,'INV0000045',18.0000,18.0000,0.0000,'18,0',4000.0000,0.0000,'2021-09-18 04:38:55','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('149ec992-d0cb-43c6-9ec8-0c23cd221434',1,'INV0000039',4.0000,4.0000,0.0000,'5,0',4000.0000,1.0000,'2021-09-18 04:26:10','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('1a99335d-72f5-474c-8247-6c52c4373b00',1,'INV0000025',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-09-07 05:08:59','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('1baed0d6-4c01-4099-add1-318245d0729e',1,'INV0000036',10.5000,10.5000,0.0000,'12,0',4000.0000,1.5000,'2021-09-18 03:14:22','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('1c11b761-1cd4-4665-a7c2-caaecd93de19',1,'INV0000002',16.2000,16.2000,0.0000,'20,0',4000.0000,3.8000,'2021-08-26 02:44:30','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('35c60810-9648-4e3c-8686-55c1b36d7fe5',0,'INV0000021',3.0000,0.0000,3.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:37:44','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('3f02ae22-2bd1-4272-9b3d-ebfa20c2b8a1',0,'INV0000014',3.0000,0.0000,3.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:24:41','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('4bac4b7a-6633-41e8-8dad-91bb4a7922fe',0,'INV0000017',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:30:12','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('574a9ef4-4f16-487a-bc92-cb52792efa80',1,'INV0000008',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-09-05 13:39:30','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('5adb9e82-e523-45e8-a27b-7a1e5ffeabb2',1,'INV0000005',15.0000,15.0000,0.0000,'20,0',4000.0000,5.0000,'2021-09-05 13:09:54','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('5b9ef23c-e315-4018-80ef-901dc2469da8',1,'INV0000047',7.4000,7.4000,0.0000,'10,0',4000.0000,2.6000,'2021-09-18 04:41:06','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('6218cd90-e838-465f-8d1a-dbf60fe24331',1,'INV0000040',8.0000,8.0000,0.0000,'10,0',4000.0000,2.0000,'2021-09-18 04:27:18','df28d6d8-8591-4e0c-a35c-96facf757f1e','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('66df6818-5aa2-43e1-a4a5-3df03ffce7d6',0,'INV0000019',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:33:51','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('6a180ee5-541e-4cad-b4a3-3ce77e1a0535',1,'INV0000035',9.4000,9.4000,0.0000,'10,0',4000.0000,0.6000,'2021-09-17 13:19:40','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('6c9f9bbc-b7a5-4ec0-b2e1-233183f48fd9',1,'INV0000022',7.0000,7.0000,0.0000,'10,0',4000.0000,3.0000,'2021-09-07 04:38:19','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('7108ab99-d2db-498e-8347-9c16d88e5e32',1,'INV0000044',8.0000,8.0000,0.0000,'10,0',4000.0000,2.0000,'2021-09-18 04:37:35','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('776eb1cd-8693-40cd-8ad9-03205846e85e',1,'INV0000028',12.3330,12.3330,0.0000,'15,0',4000.0000,2.6670,'2021-09-08 02:25:51','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('7e3e37d8-805f-47e0-ae03-959cae6d2073',0,'INV0000015',3.0000,0.0000,3.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:26:11','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('89d51cf0-15a5-4db7-bcda-b81d307d7dab',0,'INV0000013',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:23:51','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('9a983c09-6ab5-4c39-9c6d-4048372a8e09',0,'INV0000020',7.0000,0.0000,7.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:34:49','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('9acc33ab-6bde-4eca-aa37-fd500c8e339e',1,'INV0000003',25.2000,25.2000,0.0000,'30,0',4000.0000,4.8000,'2021-08-26 02:46:37','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('9bed6561-efca-4b79-9da0-a8b22fa14a7c',1,'INV0000033',14.0000,14.0000,0.0000,'15,0',4000.0000,1.0000,'2021-09-14 13:25:16','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('9e4b1204-c56c-453b-8026-cf18816c4564',1,'INV0000034',5.0000,5.0000,0.0000,'10,0',4000.0000,5.0000,'2021-09-15 03:20:05','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('a03b08a5-5db2-474e-b6db-d3886c0837d3',1,'INV0000041',8.0000,8.0000,0.0000,'10,0',4000.0000,2.0000,'2021-09-18 04:30:33','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('b0326279-8425-448f-8c92-3e6099625971',1,'INV0000007',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-09-05 13:20:11','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('b7d15d15-6fe7-4e02-bd6a-23fd28d70837',1,'INV0000037',4.0000,4.0000,0.0000,'5,0',4000.0000,1.0000,'2021-09-18 04:22:24','64908373-dbc9-4637-adb8-c1296c44ff91','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('ba555c16-a080-4e15-ae8c-68504cd1765c',0,'INV0000012',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:22:44','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('c2b834bf-0a06-472e-8a47-0c3ed3686718',1,'INV0000024',15.0000,15.0000,0.0000,'20,0',4000.0000,5.0000,'2021-09-07 05:08:16','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('c58d687c-d711-44fe-91f8-3f415c78ec77',1,'INV0000042',0.2670,0.2670,0.0000,'1,0',4000.0000,0.7330,'2021-09-18 04:32:13','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('c7236e79-6838-45c9-9d9d-c74fe8ef8fe2',1,'INV0000009',15.0000,15.0000,0.0000,'20,0',4000.0000,5.0000,'2021-09-05 13:40:46','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('cb3fac45-8bba-4a91-9595-ceff420e2ec3',0,'INV0000010',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:21:29','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('d1ff5691-f197-4d26-ab59-dfa883735d39',1,'INV0000001',26.0000,26.0000,0.0000,'30,0',4000.0000,4.0000,'2021-08-26 02:43:43','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('d4fb2791-bd51-45f4-95ed-709855511e6e',0,'INV0000018',3.0000,0.0000,3.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:32:26','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('d5a9ef14-5f99-485e-ace4-4764730332bb',1,'INV0000048',36.5000,36.5000,0.0000,'40,0',4000.0000,3.5000,'2021-09-18 04:42:32','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('d5fb320a-d8e1-423d-afe2-8637f5777af0',1,'INV0000032',15.0000,15.0000,0.0000,'15.0000,0',4000.0000,0.0000,'2021-09-13 04:00:52','ba031d28-ab82-4077-83f6-e5629b33ecca','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('d9b414ce-9b5a-4df6-9cc6-952abb0ca42f',1,'INV0000030',30.0000,30.0000,0.0000,'30,0',4000.0000,0.0000,'2021-09-09 03:24:39','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('dc75a4c2-e2b1-4056-9354-12d5d6413143',1,'INV0000023',30.0000,30.0000,0.0000,'30,0',4000.0000,0.0000,'2021-09-07 04:42:54','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('df19974c-af78-4149-90cd-875de6f44e2c',1,'INV0000004',12.4000,12.4000,0.0000,'20,0',4000.0000,7.6000,'2021-09-05 13:01:29','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('e788a9e9-a4bb-4687-9ed3-1c55fa9d46b1',1,'INV0000038',4.0000,4.0000,0.0000,'5,0',4000.0000,1.0000,'2021-09-18 04:25:22','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('e9116c89-e989-4035-a019-7e4ffbd19084',0,'INV0000011',15.0000,0.0000,15.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:22:14','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('e9297dc6-f970-4ef6-9ed6-6a9eca320f00',1,'INV0000029',15.0000,15.0000,0.0000,'20,0',4000.0000,5.0000,'2021-09-08 04:05:33','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('f0d6bf24-b233-4be9-9e6c-e52141e9b77b',1,'INV0000026',2.5000,2.5000,0.0000,'3,0',4000.0000,0.5000,'2021-09-07 13:33:27','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('f3d38e50-78ca-44a0-b5d7-042edaf3fe97',1,'INV0000046',10.5000,10.5000,0.0000,'12,0',4000.0000,1.5000,'2021-09-18 04:40:06','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('f6f15d22-933a-43f4-bb57-8726f5e47bf3',1,'INV0000027',7.0000,7.0000,0.0000,'10,0',4000.0000,3.0000,'2021-09-08 01:31:04','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('f82cabd5-d378-40ab-921e-2a6d3ad8a2c1',1,'INV0000043',8.0000,8.0000,0.0000,'10,0',4000.0000,2.0000,'2021-09-18 04:35:46','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97'),('fa3ee755-a82d-4fff-87da-6950c6a5a860',1,'INV0000006',7.0000,7.0000,0.0000,'10,0',4000.0000,3.0000,'2021-09-05 13:17:32','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166'),('fba1d71d-15d5-4f3e-9fe5-6de5c17bdb18',0,'INV0000016',3.0000,0.0000,3.0000,'0,0',4000.0000,0.0000,'2021-09-07 04:29:06','b5efbf6c-f0f7-493e-8af2-201ca3639eb9','21f6f1bc-270d-482f-8af6-c76eff111ebe','99b6805f-681e-4713-a966-555bb82ae166');
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
INSERT INTO `tbl_photo` VALUES ('172184d0-8d8c-4903-8ea6-ae26233bf3bc','80a7fbf6-ec1d-4dc4-bf73-e4b29020656e.jpeg','Camping Chair','2021-09-06 04:20:56','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b','9d88f8c0-ed75-4fe7-8c07-d59ba81095db'),('ca19fc84-abf8-4efb-93f6-c5d74e26de72','c96c96bc-78ea-427a-954f-3adea36c9d68.jpeg','Camping Chair','2021-09-06 04:20:55','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b','9d88f8c0-ed75-4fe7-8c07-d59ba81095db');
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
  `price` decimal(10,4) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `priceCurrency` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_product` VALUES ('0d57dd34-0be6-430b-a853-36af4602075f','Collapsible Water Bottle','',1,7.0000,'USD',7.0000,'',NULL,'8aebc256-2cc2-4f2a-af38-7e04980733d7.JPG','','[]','2021-08-26 02:27:07','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','e3ab999d-9a6b-421b-9c75-9c0b907fc006'),('1690b042-d786-41d1-a05e-11ea7765e920','Multi Function Spoon','',1,3.0000,'USD',3.0000,'',NULL,'94fdf59c-e5c1-4d9a-9e06-5fb2b49d5d21.JPG','','[\"21f6f1bc-270d-482f-8af6-c76eff111ebe\"]','2021-08-26 02:25:30','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','0989e039-aec5-41dc-a3fc-a1d7a35059f1'),('1b002a00-2b2c-41cf-a804-787a39b9b2a9','BBQ Grill','',1,15.0000,'USD',15.0000,'',NULL,'afb83941-ff60-44c6-bb4a-080c821901fc.JPG','','[]','2021-08-26 02:25:52','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','0989e039-aec5-41dc-a3fc-a1d7a35059f1'),('1b6e6e44-0dd6-4a38-aa58-b77565bc303d','Air Pillow','',1,2.5000,'USD',2.5000,'',NULL,'ce4dc12d-2fc8-4424-b1ce-08811d957ff6.JPG','','[]','2021-08-26 02:22:25','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','c52f2372-b50f-4c37-aff0-09c4096ead50'),('2c5b12a5-8078-486d-8639-ff4dae7a3c2e','Multi Function Spoon','',1,3.0000,'USD',3.0000,'',NULL,'282eae3e-e081-44f9-9a67-219b1758a793.JPG','','[]','2021-08-26 02:24:51','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','0989e039-aec5-41dc-a3fc-a1d7a35059f1'),('84a06e66-a538-43ca-a94b-230346cbc485','LED Headlight','',1,7.0000,'USD',7.0000,'',NULL,'ca193c27-b982-420c-8cd7-bdedcc6d64af.JPG','','[\"21f6f1bc-270d-482f-8af6-c76eff111ebe\"]','2021-08-26 02:23:36','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','29ba32d3-9021-4f1c-af45-1f076710edae'),('9ef8777c-7b9a-40fb-b234-8150f516489b','Camping Chair','',1,15.0000,'USD',15.0000,'',NULL,'850157d2-e414-4d88-a5b5-cb43eb261fdf.jpeg','','[]','2021-09-05 13:59:02','21f6f1bc-270d-482f-8af6-c76eff111ebe','28cb3c7c-d003-4b41-a3ad-14f2e57d56df','8bd49335-959d-47af-83bd-2d56fff3a00a');
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
  `status` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_profile` VALUES ('9fc74791-9922-4988-a5ee-415c27a37d38','default.png','Single','','','','','','2021-08-26 02:18:45','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
INSERT INTO `tbl_property` VALUES ('0894a702-6f11-4a0a-8607-fef27b591a2c','Size','text','','2021-09-13 03:57:27','21f6f1bc-270d-482f-8af6-c76eff111ebe','e3ab999d-9a6b-421b-9c75-9c0b907fc006'),('4773c878-53ba-4687-95e7-d3fdd3e21abd','Size','text','','2021-09-12 14:22:49','21f6f1bc-270d-482f-8af6-c76eff111ebe','c52f2372-b50f-4c37-aff0-09c4096ead50'),('addf2f7c-9650-45c6-af67-a825c8061577','Size','text','','2021-09-12 13:51:34','21f6f1bc-270d-482f-8af6-c76eff111ebe','8bd49335-959d-47af-83bd-2d56fff3a00a');
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
INSERT INTO `tbl_quantity` VALUES ('0fd38a0a-2756-4420-9279-81b2404274ea',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','5d517307-2f41-4e3f-b096-0c1e9f8ab6f6'),('1425b243-f9c4-484a-b990-094f8a65b3d9',1,1,'6d55c909-c548-44c7-a7b7-5b6a741330c4','1d4a4907-1d8a-4dab-8943-cb591df31b9b'),('1540cdcc-d1de-4435-915a-9eab12da6172',2,2,'2cd50143-17c8-4a09-88bd-794b7de6c201','01827131-898a-4311-b399-762861073470'),('1569959a-41cd-4924-8c3c-e348b7d8741b',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','c109e350-4e5c-4769-8907-743ad0b1bc3d'),('187bcc5c-55bf-4137-a6c9-b517e4229b6b',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','c4ea6569-93e2-487a-bc95-e6bbc40b5139'),('19eb81ac-c980-410e-85dc-1f09c5ec82ea',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','1e2f4c4d-02aa-48c4-884a-1d5e317840eb'),('1ad5f964-b498-4d1a-95ed-7e471150a3ec',2,2,'2cd50143-17c8-4a09-88bd-794b7de6c201','74cfb3fc-de5f-473d-827a-960619e8737f'),('1ed8d1a9-a600-4238-a3e4-af8410e40cb1',1,1,'59508f4b-0975-4ad8-a51f-afa58007e724','98d5198e-f4e7-442a-9c15-9c1fd229516d'),('2334f3b7-c78e-42fa-9148-3ac5c0870e69',1,1,'2cd50143-17c8-4a09-88bd-794b7de6c201','4841eb37-7731-487e-8c44-6e8980cd3233'),('28b6f73c-74c0-4188-b58b-1517e29da9db',1,1,'2cd50143-17c8-4a09-88bd-794b7de6c201','4e003fd6-2494-4d79-a7a0-ac7c1a8020dd'),('320ba2ac-f292-4f5b-8ebb-2a6374d4b14e',3,3,'2cd50143-17c8-4a09-88bd-794b7de6c201','18100ad8-6a35-4bce-957f-e7855a066ec1'),('3499d7e8-bf09-4d91-98db-062869f62dd2',1,1,'e3a10a06-4982-463f-8dee-94e56126ad8a','907e9177-ac5a-4018-9c11-a897f239429a'),('37ecaa53-55b2-44be-8079-aa1521711bcc',2,2,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','050ba3d1-ce03-46f8-842b-501a46cbd2c9'),('3c70055c-61f2-4d76-b344-e9974dcd132b',1,1,'e3a10a06-4982-463f-8dee-94e56126ad8a','c7caf2c4-3bb7-48f0-aef8-a8f3f9a34f5f'),('4e216870-76af-481e-91d3-a64ad685423b',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','27924718-c9fe-4bca-9133-4b5249e59119'),('59cbf6a1-32a1-4955-9234-d66b0fe99013',2,2,'6d55c909-c548-44c7-a7b7-5b6a741330c4','f9e2d767-faa1-47ac-ac7c-994678403fa5'),('5d47a682-f7d0-46f5-8b5a-1a79bc626c65',1,1,'59508f4b-0975-4ad8-a51f-afa58007e724','10ca4f13-8893-4112-b04e-3d6ea719b9fd'),('5eca709c-bed3-4f18-bdd1-5e8aef08a0ae',2,2,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','d3081b1b-7b9d-4057-b6c2-fbe9c3d4f607'),('64af0430-c7e0-428a-9914-fe5765bb9cf0',2,2,'cb466e9f-0c3f-41a3-beb6-b40511003eb2','b1fe6a89-38a5-4b2c-9eb7-a6023f9e5d86'),('7d07f9b3-dd58-480f-b962-ab439dc3c378',1,1,'a950b9d4-e2fc-4748-b92d-fe374a5f7bcd','570fa933-34a2-4ce6-a704-c62dce4fb961'),('805e8b2c-30c9-4e88-8ba7-2a7e51cbf3d9',2,2,'6d55c909-c548-44c7-a7b7-5b6a741330c4','7c329797-6c4a-45a1-8706-d487313d17e8'),('83fb6c75-6806-474c-a947-97f03ad8e877',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','ca89bf91-0649-4e1b-a0b6-1d80ae5c02b4'),('8b49b239-a28c-4753-acbe-47663f52dc40',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','4ee6ac91-3eb4-446d-99b0-63f5d113d0d5'),('91644e2a-6057-4842-8647-fddcf92d4021',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','f07f33e6-051b-42d1-820c-e0ef772c7f61'),('9235b26c-f5bb-40ee-a372-fe911534e6fd',1,1,'6d55c909-c548-44c7-a7b7-5b6a741330c4','18afab04-b3ee-446d-bba2-32cf6002a7ef'),('951508d1-9f84-4618-bec4-f499f004f964',1,1,'6d55c909-c548-44c7-a7b7-5b6a741330c4','9f9cc803-a52d-45b4-b687-804d7824c9b5'),('9632439c-e76d-4443-9b9f-6e0468673c2b',2,2,'c6626c0e-464b-43ed-ae67-018f5f03671b','c1807329-2a66-4ffd-b581-694506994dff'),('9dbb98c1-a6d0-4089-a5db-c944f5588bf9',1,1,'c6626c0e-464b-43ed-ae67-018f5f03671b','4f7302fa-839c-4078-9752-0dd2d93a6dbd'),('a2edc118-4778-4e17-9b17-31e9507466c6',1,1,'59508f4b-0975-4ad8-a51f-afa58007e724','27972ce3-9805-4c48-a05c-dbae943bb605'),('a4d36365-c0ea-4081-b438-f74f98233d5e',1,1,'6d55c909-c548-44c7-a7b7-5b6a741330c4','b91488da-15e7-42ba-b1b6-d2864349d055'),('adeb5d03-6769-472b-9aff-1c7632d9276a',2,2,'cb466e9f-0c3f-41a3-beb6-b40511003eb2','f1f4899e-2e05-4b0f-bf68-cc61cd8c9d81'),('b2ee0468-73eb-45de-a54b-a14098a6e757',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','3bd8c581-f541-47e3-ba2a-c17eb772bfc3'),('b92b16ed-0ead-41d5-8704-e3f2eaaa7e89',2,2,'6d55c909-c548-44c7-a7b7-5b6a741330c4','e11f672d-0726-43d9-baf7-968ad74a5360'),('bc5e5e8d-7d58-4514-8f2c-b74402a7b129',1,1,'e3a10a06-4982-463f-8dee-94e56126ad8a','867eefae-f9a0-498c-8806-624a6e77f29f'),('be98c77f-38dd-4c9b-bbe0-d35d6a67e7e1',1,1,'cb466e9f-0c3f-41a3-beb6-b40511003eb2','1bc221a6-4e90-4346-b387-73f99d3bddfb'),('bfd1211b-af26-4e97-931e-e5086df98454',1,1,'2cd50143-17c8-4a09-88bd-794b7de6c201','66b75149-bcba-4fcb-8979-ad3670043c12'),('d57ab2fd-4616-4544-8d7f-4e070553f9d3',1,1,'e3a10a06-4982-463f-8dee-94e56126ad8a','e4cc77ea-daca-486d-b840-739d0c0edd7f'),('d73a4cb8-fc2e-4f63-8030-bddcbb4eefa8',1,1,'6d55c909-c548-44c7-a7b7-5b6a741330c4','9301230e-c01f-42d5-9c96-9064522ad552'),('d755b4a7-55ea-4e9c-a1ef-8e6bbf9c8d0f',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','6170bb6e-7f2a-4ba5-98b3-fd66542d6a53'),('d93e8f53-fba7-4fb1-95e2-6af242c703d2',2,2,'2cd50143-17c8-4a09-88bd-794b7de6c201','51598886-2a6c-4976-868f-8a3d7d84a4f1'),('d9ad680f-577a-46e4-832b-a21b16271af5',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','6a57e9b4-4c65-4486-b875-56806fd77d3c'),('de994241-9a52-47f4-b0c3-c3cd68c0af27',1,1,'c6626c0e-464b-43ed-ae67-018f5f03671b','7f5c21ad-b77b-4719-a230-d2a3c5b84cd3'),('e3953ca0-1414-4754-b7d2-fc028459d09c',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','30c3f70d-5298-4f91-b1cd-3db2983cad48'),('f020b332-52c3-4513-bbf0-275c85878c00',1,1,'2c803f4c-9b29-4bf6-8c98-31eb701f41e7','5a0c6cbd-9e90-4a82-a032-4722a9371211'),('f081a98e-c63e-4f9b-9142-fa57bc978f9b',1,1,'2cd50143-17c8-4a09-88bd-794b7de6c201','478f5ad4-a2b6-4aee-8e66-df53fd37679b'),('f5fb54b4-fd2b-4bdc-a2bd-2f89fd4db877',1,1,'6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7','045614b0-8a30-4b06-9cd3-e0fbf443f6b5'),('f7636b76-b9e8-4f71-b77a-9e879810b00b',1,1,'c6626c0e-464b-43ed-ae67-018f5f03671b','413e6661-1ae9-4933-a29e-8252475ab27e'),('fd508328-7678-4b73-9471-2ee5f63e2683',1,1,'e3a10a06-4982-463f-8dee-94e56126ad8a','03c65430-62f2-4e36-ad00-4c700953bff0');
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
  `role` varchar(100) NOT NULL,
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
INSERT INTO `tbl_role` VALUES ('92ee7a08-0519-4484-ad6e-fccc4b42d32e','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-08-26 02:18:45','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `room` varchar(100) NOT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `hour` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_room` VALUES ('d1eec252-5476-41cf-bb7c-5072ccdf24e2','Room 02',8.0000,'1h','Open','2021-09-07 07:58:58','21f6f1bc-270d-482f-8af6-c76eff111ebe','ab8f8a93-41e5-490a-a501-5182a9188c1a'),('dac2ec9a-0893-4179-9d6f-67f341494248','Room 01',8.0000,'1h','Open','2021-09-07 07:58:53','21f6f1bc-270d-482f-8af6-c76eff111ebe','ab8f8a93-41e5-490a-a501-5182a9188c1a'),('f12beca4-f19a-42f1-8519-f8a91deda9a7','Room 10',10.0000,'1h','Close','2021-09-17 14:13:39','21f6f1bc-270d-482f-8af6-c76eff111ebe','5808b3a5-d3bb-4a0f-99df-55a996020526');
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
  `cost` decimal(10,4) DEFAULT NULL,
  `costCurrency` decimal(16,4) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_stock` VALUES ('2c803f4c-9b29-4bf6-8c98-31eb701f41e7',1.0000,1.0000,'USD',4000.0000,40,50.0000,'',NULL,'2021-08-26 02:29:05','21f6f1bc-270d-482f-8af6-c76eff111ebe','1690b042-d786-41d1-a05e-11ea7765e920'),('2cd50143-17c8-4a09-88bd-794b7de6c201',3.0000,3.0000,'USD',4000.0000,87,300.0000,'',NULL,'2021-08-26 02:29:49','21f6f1bc-270d-482f-8af6-c76eff111ebe','84a06e66-a538-43ca-a94b-230346cbc485'),('59508f4b-0975-4ad8-a51f-afa58007e724',4.6000,4.6000,'USD',4000.0000,17,92.0000,'5cc0fc4b-71b6-4f9f-bbe5-3034a6fcb568',NULL,'2021-09-05 14:12:17','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b'),('6d55c909-c548-44c7-a7b7-5b6a741330c4',0.3000,0.3000,'USD',4000.0000,289,90.0000,'',NULL,'2021-08-26 02:29:28','21f6f1bc-270d-482f-8af6-c76eff111ebe','1b6e6e44-0dd6-4a38-aa58-b77565bc303d'),('6e0223b6-ae9f-4ba0-b0fb-c97fd33e42b7',10.0000,10.0000,'USD',4000.0000,22,300.0000,'',NULL,'2021-08-26 02:29:17','21f6f1bc-270d-482f-8af6-c76eff111ebe','1b002a00-2b2c-41cf-a804-787a39b9b2a9'),('a950b9d4-e2fc-4748-b92d-fe374a5f7bcd',4.6000,4.6000,'USD',4000.0000,29,138.0000,'9d88f8c0-ed75-4fe7-8c07-d59ba81095db',NULL,'2021-09-06 04:03:54','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b'),('c6626c0e-464b-43ed-ae67-018f5f03671b',3.0000,3.0000,'USD',4000.0000,15,60.0000,'',NULL,'2021-08-26 02:28:54','21f6f1bc-270d-482f-8af6-c76eff111ebe','0d57dd34-0be6-430b-a853-36af4602075f'),('cb466e9f-0c3f-41a3-beb6-b40511003eb2',4.6000,4.6000,'USD',4000.0000,25,138.0000,'45ddc065-d97c-4c32-bdb8-f6a4ab256d20',NULL,'2021-09-06 04:02:19','21f6f1bc-270d-482f-8af6-c76eff111ebe','9ef8777c-7b9a-40fb-b234-8150f516489b'),('e3a10a06-4982-463f-8dee-94e56126ad8a',1.0000,1.0000,'USD',4000.0000,65,70.0000,'',NULL,'2021-08-26 02:29:38','21f6f1bc-270d-482f-8af6-c76eff111ebe','2c5b12a5-8078-486d-8639-ff4dae7a3c2e');
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
  `store` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_store` VALUES ('7513083c-6226-4db3-8eb8-aece4bfbdb1c','Store Name','','','2021-08-26 02:18:45');
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
  `price` decimal(10,4) DEFAULT NULL,
  `amount` decimal(10,4) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `profit` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_transaction` VALUES ('00ec1aac-6aa7-4824-a5bf-7ee8bafa541f',1,0,'0',8.0000,8.0000,1,8.0000,'Room 01, 60min','dac2ec9a-0893-4179-9d6f-67f341494248','2021-09-18 04:27:24','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('01827131-898a-4311-b399-762861073470',1,1,'20',7.0000,11.2000,2,5.2000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-08-26 02:46:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('03c65430-62f2-4e36-ad00-4c700953bff0',1,1,'20',3.0000,2.4000,1,1.4000,'Multi Function Spoon','2c5b12a5-8078-486d-8639-ff4dae7a3c2e','2021-09-18 04:40:58','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('045614b0-8a30-4b06-9cd3-e0fbf443f6b5',1,1,'0',15.0000,15.0000,1,5.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-05 13:40:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('050ba3d1-ce03-46f8-842b-501a46cbd2c9',1,1,'0',15.0000,30.0000,2,10.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-18 04:42:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('0f6b016e-cd18-4148-9e9d-95b0bd05c5bf',1,0,'0',8.0000,8.0000,1,8.0000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:35:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('10ca4f13-8893-4112-b04e-3d6ea719b9fd',0,1,'0',15.0000,15.0000,1,0.0000,'Camping Chair-Blue','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-07 04:22:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('146191ca-fa2a-40f9-ae3d-c99d6fd3d03c',1,0,'0',4.0000,4.0000,1,4.0000,'Room 01, 30min','dac2ec9a-0893-4179-9d6f-67f341494248','2021-09-18 04:25:27','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('18100ad8-6a35-4bce-957f-e7855a066ec1',1,1,'0',7.0000,21.0000,3,12.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-08-26 02:43:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('18afab04-b3ee-446d-bba2-32cf6002a7ef',1,1,'0',2.5000,2.5000,1,2.2000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-18 04:42:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1bc221a6-4e90-4346-b387-73f99d3bddfb',0,1,'0',15.0000,15.0000,1,0.0000,'Camping Chair-Red','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-07 04:23:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1d4a4907-1d8a-4dab-8943-cb591df31b9b',1,1,'0',2.5000,2.5000,1,2.2000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-07 13:33:26','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('1e2f4c4d-02aa-48c4-884a-1d5e317840eb',1,1,'0',15.0000,15.0000,1,5.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-05 13:09:52','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('27525345-e4e8-4966-bb42-e0b2a069961f',1,0,'0',8.0000,8.0000,1,8.0000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:38:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('27924718-c9fe-4bca-9133-4b5249e59119',0,1,'0',3.0000,3.0000,1,0.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 04:37:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('27972ce3-9805-4c48-a05c-dbae943bb605',1,1,'0',15.0000,15.0000,1,10.4000,'Camping Chair-Blue','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-07 05:08:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('30c3f70d-5298-4f91-b1cd-3db2983cad48',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-05 13:20:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('3bd8c581-f541-47e3-ba2a-c17eb772bfc3',0,1,'0',3.0000,3.0000,1,0.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 04:26:09','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('413e6661-1ae9-4933-a29e-8252475ab27e',1,1,'0',7.0000,7.0000,1,4.0000,'Collapsible Water Bottle','0d57dd34-0be6-430b-a853-36af4602075f','2021-09-07 04:38:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('478f5ad4-a2b6-4aee-8e66-df53fd37679b',1,1,'0',7.0000,7.0000,1,4.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-09-18 04:39:07','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4841eb37-7731-487e-8c44-6e8980cd3233',1,1,'0',7.0000,7.0000,1,4.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-09-05 13:17:31','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4e003fd6-2494-4d79-a7a0-ac7c1a8020dd',1,1,'0',7.0000,7.0000,1,4.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-09-12 13:45:02','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4ee6ac91-3eb4-446d-99b0-63f5d113d0d5',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 05:08:57','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('4f7302fa-839c-4078-9752-0dd2d93a6dbd',0,1,'0',7.0000,7.0000,1,0.0000,'Collapsible Water Bottle','0d57dd34-0be6-430b-a853-36af4602075f','2021-09-07 04:34:48','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('51598886-2a6c-4976-868f-8a3d7d84a4f1',1,1,'20',7.0000,11.2000,2,5.2000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-08-26 02:44:22','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('53be22a8-b4e9-458b-9193-e89896deacd4',1,0,'0',8.0000,8.0000,1,8.0000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:30:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5480b725-2be1-485d-a278-7565707be98d',1,0,'0',4.0000,4.0000,1,4.0000,'Room 02, 30min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:26:18','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('570fa933-34a2-4ce6-a704-c62dce4fb961',0,1,'0',15.0000,15.0000,1,0.0000,'Camping Chair-Black','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-07 04:22:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5a0c6cbd-9e90-4a82-a032-4722a9371211',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-08 02:25:55','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('5d517307-2f41-4e3f-b096-0c1e9f8ab6f6',0,1,'0',15.0000,15.0000,1,0.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-07 04:30:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6170bb6e-7f2a-4ba5-98b3-fd66542d6a53',0,1,'0',3.0000,3.0000,1,0.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 04:32:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('66b75149-bcba-4fcb-8979-ad3670043c12',1,1,'0',7.0000,7.0000,1,4.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-09-08 01:30:59','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6972de99-1dd5-4dfc-9e3b-ad7ea96badf0',1,0,'0',4.0000,4.0000,1,4.0000,'Room 02, 30min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:22:30','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('6a57e9b4-4c65-4486-b875-56806fd77d3c',0,1,'0',3.0000,3.0000,1,0.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 04:24:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('74cfb3fc-de5f-473d-827a-960619e8737f',1,1,'0',7.0000,14.0000,2,8.0000,'LED Headlight','84a06e66-a538-43ca-a94b-230346cbc485','2021-09-14 13:25:14','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('75035186-a8bf-4a63-8d57-810fbbaad48b',1,0,'0',4.0000,4.0000,1,4.0000,'Room 02, 30min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:42:36','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7c329797-6c4a-45a1-8706-d487313d17e8',1,1,'0',2.5000,5.0000,2,4.4000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-15 03:19:47','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('7f5c21ad-b77b-4719-a230-d2a3c5b84cd3',1,1,'0',7.0000,7.0000,1,4.0000,'Collapsible Water Bottle','0d57dd34-0be6-430b-a853-36af4602075f','2021-09-05 13:01:19','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('84c03cca-c719-4e12-b689-dbcd19d67821',1,0,'0',8.0000,8.0000,1,8.0000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:14:13','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('867eefae-f9a0-498c-8806-624a6e77f29f',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','2c5b12a5-8078-486d-8639-ff4dae7a3c2e','2021-09-05 13:39:29','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('907e9177-ac5a-4018-9c11-a897f239429a',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','2c5b12a5-8078-486d-8639-ff4dae7a3c2e','2021-09-17 13:54:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9301230e-c01f-42d5-9c96-9064522ad552',1,1,'0',2.5000,2.5000,1,2.2000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-18 04:40:20','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('953b4451-00ab-41f9-8148-88f4471632b8',1,0,'20',8.0000,6.4000,1,6.4000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-17 13:53:45','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('98d5198e-f4e7-442a-9c15-9c1fd229516d',1,1,'0',15.0000,15.0000,1,10.4000,'Camping Chair-Blue','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-08 04:05:32','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('9f9cc803-a52d-45b4-b687-804d7824c9b5',1,1,'0',2.5000,2.5000,1,2.2000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-18 04:22:10','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b1fe6a89-38a5-4b2c-9eb7-a6023f9e5d86',1,1,'0',15.0000,30.0000,2,20.8000,'Camping Chair-Red','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-07 04:42:53','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('b91488da-15e7-42ba-b1b6-d2864349d055',1,1,'20',2.5000,2.0000,1,1.7000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-09-18 04:40:39','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c109e350-4e5c-4769-8907-743ad0b1bc3d',0,1,'0',15.0000,15.0000,1,0.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-07 04:21:25','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c1807329-2a66-4ffd-b581-694506994dff',1,1,'0',7.0000,14.0000,2,8.0000,'Collapsible Water Bottle','0d57dd34-0be6-430b-a853-36af4602075f','2021-08-26 02:46:35','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c4ea6569-93e2-487a-bc95-e6bbc40b5139',0,1,'0',3.0000,3.0000,1,0.0000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-07 04:29:04','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('c7caf2c4-3bb7-48f0-aef8-a8f3f9a34f5f',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','2c5b12a5-8078-486d-8639-ff4dae7a3c2e','2021-09-18 04:39:44','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ca89bf91-0649-4e1b-a0b6-1d80ae5c02b4',0,1,'0',15.0000,15.0000,1,0.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-07 04:33:49','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d001f4e6-7dcb-4582-bf66-e9314fd8ba40',1,0,'0',0.2667,0.2670,1,0.2670,'Room 02, 2min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:34:12','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('d3081b1b-7b9d-4057-b6c2-fbe9c3d4f607',1,1,'10',3.0000,5.4000,2,3.4000,'Multi Function Spoon','1690b042-d786-41d1-a05e-11ea7765e920','2021-09-05 13:01:28','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e11f672d-0726-43d9-baf7-968ad74a5360',1,1,'0',2.5000,5.0000,2,4.4000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-08-26 02:43:40','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('e4cc77ea-daca-486d-b840-739d0c0edd7f',1,1,'0',3.0000,3.0000,1,2.0000,'Multi Function Spoon','2c5b12a5-8078-486d-8639-ff4dae7a3c2e','2021-09-18 04:40:34','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ee19b315-6eb8-46a3-bd98-e0c25a31d5d2',1,0,'0',9.3333,9.3330,1,9.3330,'Room 02, 1h 10min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-08 03:35:42','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('ee6e4b06-3bbb-40ff-8d68-8fd9f72af194',1,0,'0',8.0000,8.0000,1,8.0000,'Room 02, 60min','d1eec252-5476-41cf-bb7c-5072ccdf24e2','2021-09-18 04:37:40','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f07f33e6-051b-42d1-820c-e0ef772c7f61',1,1,'0',15.0000,15.0000,1,5.0000,'BBQ Grill','1b002a00-2b2c-41cf-a804-787a39b9b2a9','2021-09-13 04:00:50','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f1d5feb0-94dc-41d4-acd3-fd2090db577d',1,0,'0',8.0000,8.0000,1,8.0000,'Room 01, 60min','dac2ec9a-0893-4179-9d6f-67f341494248','2021-09-18 04:40:11','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f1f4899e-2e05-4b0f-bf68-cc61cd8c9d81',1,1,'0',15.0000,30.0000,2,20.8000,'Camping Chair-Red','9ef8777c-7b9a-40fb-b234-8150f516489b','2021-09-09 03:24:37','21f6f1bc-270d-482f-8af6-c76eff111ebe'),('f9e2d767-faa1-47ac-ac7c-994678403fa5',1,1,'0',2.5000,5.0000,2,4.4000,'Air Pillow','1b6e6e44-0dd6-4a38-aa58-b77565bc303d','2021-08-26 02:44:28','21f6f1bc-270d-482f-8af6-c76eff111ebe');
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
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
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
INSERT INTO `tbl_user` VALUES ('21f6f1bc-270d-482f-8af6-c76eff111ebe','','','Admin','',NULL,'','$2b$12$EVxp4lRcAexWrS9iC8/ydO3nssYrB8yxfZ40DOzc76u3V/O60I5iC','dark','khmer','46728b34-aef6-4266-beac-ffb3f1ed94cf','','d38a0f41-c50b-4fc8-a9e8-76eaef2f6f97',1,1,'2021-08-26 02:18:45');
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
  `price` decimal(10,4) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `priceCurrency` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `user_role` VALUES ('21f6f1bc-270d-482f-8af6-c76eff111ebe','92ee7a08-0519-4484-ad6e-fccc4b42d32e');
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

-- Dump completed on 2021-09-18 13:49:30
