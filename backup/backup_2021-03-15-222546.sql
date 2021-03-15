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
INSERT INTO `payment` VALUES ('00d5251b-bd3f-4401-af30-f09090d9ecbe','fd6ee661-2f14-45c1-bb21-d945e10ec415'),('00d5251b-bd3f-4401-af30-f09090d9ecbe','0f24a088-7e90-4de8-8b78-69487f41bf6c'),('00d5251b-bd3f-4401-af30-f09090d9ecbe','3c7e9bf7-724c-4625-9fd6-4a99ba9720f2'),('ef1f16b5-9882-4222-9f20-fbe1f2c9e243','abab370d-ef01-4cda-90b2-81a9ec5ef527'),('ef1f16b5-9882-4222-9f20-fbe1f2c9e243','a07715ab-f910-458c-9d87-7c8ae18cdd92'),('ef1f16b5-9882-4222-9f20-fbe1f2c9e243','83b7db90-dd97-434d-9c38-cc727c90d96e'),('ef1f16b5-9882-4222-9f20-fbe1f2c9e243','d1c9d457-715c-4c95-8401-1ac7cd65c363'),('2f6a7a39-0229-42c9-a992-f74e82e21f8f','5a2e02fd-e682-4ae6-8606-fb8f47df45de'),('fd072a9e-9d58-4f40-8228-eb50bee10694','c14193f7-917e-484f-ae6d-a06e210f2fce'),('d4ade18d-33c1-4d23-938c-cdd487670d0d','df8f107c-e1db-4906-b47f-56512f3631b3'),('a2c3a23c-4266-4f1c-bfd0-642a17c1f554','df136860-b0b9-4db2-b051-14383a18e088'),('480b5e47-fa03-462a-b346-853a6de3f4b8','6ac42d34-5799-42b9-a2ba-c56c62b8b9c9'),('74d234f2-da12-48c7-954a-5fc6a6190e21','9af2db29-df4b-4be9-8ecb-a9edd5f573a4'),('493c4257-8443-4427-9111-6d6727c4c585','5677dce8-af4f-4baa-8c84-9b6c9dab6015'),('18a715af-1e99-4596-aac3-7bb23f4f0294','14554563-78a1-4bb6-8e35-796cda8e335c'),('a9e8210e-be1a-4aac-a1e2-b5cfbe55bc46','d5822b58-ecff-4189-96eb-b1fbf7d40f2b'),('61ce1e41-b1eb-4099-b4ea-f1396a911fe4','ba16ea4d-dc9d-403c-84bc-ef10ac816d35'),('cb62f8b3-0d8a-4cda-ac90-96ff19e5281d','0a004d66-9285-4c05-8007-60a4e2efd80f'),('94b62676-82df-4931-9f54-792109d187b6','c790810b-0111-4e0b-93e2-8d2a117ebcfb'),('7e08bdfb-0f7d-4454-a850-4189cae9e666','612dd65d-1c57-42d5-a47b-931a967da5f4'),('7e08bdfb-0f7d-4454-a850-4189cae9e666','25693556-9ed7-44e5-a9ff-559495d0d0ea'),('79366e0a-8cd2-4fa6-8296-5e63f86d6abd','78f49008-6bf1-4e2b-a97c-095aff8eebc8');
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
INSERT INTO `tbl_activity` VALUES ('048d5484-524f-4593-859a-6dd07136ebee','Admin has toggle room: Room 1from Open','Toggle','2021-03-15 03:22:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0515d82f-6691-4759-828a-aaa77d115000','Admin has ordered invoice: INV0000010','Order','2021-03-15 10:01:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('073cd87c-2e43-46c3-94d3-9bf3ebb249c8','Admin has modified language from english','Modify','2021-03-15 13:39:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('07512528-a0be-4cca-bf7a-4798976233d1','Admin has added transaction: Coca Cola Original Taste','Add','2021-03-15 04:19:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('08769fca-3542-45bb-8884-1e45dc9c4771','Admin has added property: Size in category មុខម្អូប','Add','2021-03-15 03:17:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('09c5e292-d887-4fed-ad95-4b4d4fb79637','Admin has ordered invoice: INV0000012','Order','2021-03-15 10:17:04','174084d3-74e4-495b-8e00-cb44eadcbf15'),('10bd1cd1-66dd-48f5-8f53-708463c4aae3','Admin has added transaction: Bacon Burger','Add','2021-03-15 10:16:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('15dba2a1-0f4d-4a41-a600-0d561eb5adf2','Admin has checked out payment INV0000002','Payment','2021-03-15 04:41:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1acf9d82-961a-4eed-a93e-edca88ccee15','Admin has modified theme from light','Modify','2021-03-15 04:19:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1c50d978-1c86-404e-a6b3-30d6fec49a8f','Admin has created user: សាកល្បង','Created','2021-03-15 03:22:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1ed92796-bf68-4cd8-85ab-5b668c2dfa03','Admin has added transaction: Bacon Burger','Add','2021-03-15 09:54:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1eebf3f4-f527-40b1-9ab5-a554d315f9d2','Admin has checked in order from: 11:42 AM to 12:42 AM','Check In','2021-03-15 04:42:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('21806d1d-3e8c-41a1-9e57-3411a978f24a','Admin has checked in order from: 07:02 PM to 08:02 PM','Check In','2021-03-15 12:05:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('21a00216-beae-452e-9ba2-ad27075f8ca7','Admin has checked in order from: 01:37 PM to 02:37 PM','Check In','2021-03-15 06:37:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('250e02ce-562e-4aeb-98c5-fc6db64ead49','Admin has added room: Room 2','Create','2021-03-15 03:22:15','174084d3-74e4-495b-8e00-cb44eadcbf15'),('260d8df2-6c02-457f-a6c6-d593a151cd52','Admin has ordered invoice: INV0000013','Order','2021-03-15 11:37:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('27382e5a-3d24-47a9-b9e4-b23a24f34254','Admin has modified language from english','Modify','2021-03-15 08:28:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('27b90ad7-9fe6-4db4-be01-3bcedde2f40f','Admin has modified theme from dark','Modify','2021-03-15 03:15:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2af6afda-6f9f-41e7-bb2a-4d203b6baa1e','Admin has checked out order from: 01:26 PM to 02:26 PM','Check Out','2021-03-15 06:36:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2bddae33-2f11-4f72-9e42-1609692e3ddf','Admin has updated transaction Table 1, 2h 13min','Modified','2021-03-15 14:38:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2cc227e4-bd08-4280-ac47-0455f2c64533','Admin has added transaction: Bacon Burger','Add','2021-03-15 10:04:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2d70f4c6-2d2d-4521-bbda-c51886255cfc','Admin has modified language from khmer','Modify','2021-03-15 08:28:42','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2f63f4b0-2e3e-4441-b95b-3ce6c040dcd7','Admin has added order from: 11:40 AM to 12:40 AM','Add','2021-03-15 04:41:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2fe01cc0-494c-475d-bf4e-61c6af740aa7','Admin has checked out payment INV0000007','Payment','2021-03-15 06:38:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('30064ea0-ac36-4091-a4e8-d49bb032b218','Admin has deleted color: Red in product','Delete','2021-03-15 03:19:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3136ab0c-858c-4f95-a208-42f0625f8dd9','Admin has added transaction: Italy Spaghetti-Normal','Add','2021-03-15 04:21:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('381b1f4c-4687-4f21-8bb1-1e5a94df13b3','Admin has checked in order from: 07:26 PM to 08:26 PM','Check In','2021-03-15 12:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('38e29d7f-a934-4b9c-806c-648d2de79ecf','Admin has checked out payment INV0000013','Payment','2021-03-15 11:37:35','174084d3-74e4-495b-8e00-cb44eadcbf15'),('39b2dfe2-98a3-4657-b827-c0762d0f7576','Admin has added color Red in product','Add','2021-03-15 03:18:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3a4645c5-4b50-438a-8b06-d62ce7bf1547','Admin has created user: Sasuke','Created','2021-03-15 14:49:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3a758374-a4b6-490c-a897-23ce62b202bf','Admin has added order from: 01:25 PM to 02:25 PM','Add','2021-03-15 06:26:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3f105118-a3b2-44a1-8005-602a28166c12','Admin has added customer: Test','Add','2021-03-15 12:01:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('405b0607-6fbe-4d2b-a3df-982c26c3524e','Admin has checked out order from: 11:42 AM to 12:42 AM','Check Out','2021-03-15 04:42:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4224275d-b959-466c-ae77-dcd2d51ac510','Admin has added customer: Thong','Add','2021-03-15 04:20:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('44004ba2-57ef-4e41-a835-9722e8f7cd3b','Admin has checked out order from: 07:26 PM to 08:26 PM','Check Out','2021-03-15 14:38:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('48619dbf-7043-4bac-8b98-57b2b19a8337','Admin has added order from: 11:19 AM to 12:19 AM','Add','2021-03-15 04:20:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('48aba072-93c3-4839-abcf-b4ad2dd5eb80','Admin has modified user: សាកល្បង','Modify','2021-03-15 03:23:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4a1c80d1-d6ed-4bc2-ac89-ea12172b9862','Admin has checked out order from: 07:02 PM to 08:02 PM','Check Out','2021-03-15 12:23:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4d8f86c2-2eef-4719-8c09-43d34952221e','Admin has added order from: 07:01 PM to 08:01 PM','Add','2021-03-15 12:02:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('527e5036-963d-4435-b8ad-78ba4b83c4ce','Admin has modified language from khmer','Modify','2021-03-15 08:26:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('52930620-384e-4604-8796-664c3df1faec','Admin has checked out order from: 01:37 PM to 02:37 PM','Check Out','2021-03-15 06:38:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('54566395-f0df-4fd4-bdfb-245bc0a78e15','Admin has added product Coca Cola Original Taste','Add','2021-03-15 03:18:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('55386b29-4fee-46f8-94c5-2dacf3526df1','Admin has added brand: Coca Cola in brand','Add','2021-03-15 03:17:49','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5676db1c-3bd6-451e-9f46-162e7e626e44','Admin has added transaction: Coca Cola Original Taste','Add','2021-03-15 04:21:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5a24dcfd-38c9-434d-96fb-25c167fb4920','Admin has checked in order from: 11:44 AM to 12:44 AM','Check In','2021-03-15 04:44:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5b3bc811-18c0-4ddb-bd6c-249da53c6dab','Admin has added order from: 07:25 PM to 08:25 PM','Add','2021-03-15 12:26:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5e99e7ee-ca0b-41be-a555-5c29fa78d735','Admin has modified product from Italy Spaghetti//False/dollar/3.00///None/មុខម្អូប','Modify','2021-03-15 03:21:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5ecfa0a8-d6b1-4bbb-a5e4-8ae6ccf2de53','Admin has added product Bacon Burger','Add','2021-03-15 03:21:16','174084d3-74e4-495b-8e00-cb44eadcbf15'),('60261bfa-6bfd-4b57-b77b-e6665db792cf','Admin has added order from: 11:43 AM to 12:43 AM','Add','2021-03-15 04:44:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('616fdc89-5598-46f2-b2d6-9356caea6610','Admin has added transaction: Coca Cola Original Taste','Add','2021-03-15 11:37:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('62829019-b4d9-4d8e-8bae-153e29566628','Admin has added value Double in product','Add','2021-03-15 03:20:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('62d3fcdc-8340-41fb-aa86-715c275aa5a0','Admin has modified language from khmer','Modify','2021-03-15 13:39:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('69b8cfba-94d5-4d79-addb-0268deff6eb2','Admin has updated transaction Room 2, 19min','Modified','2021-03-15 04:41:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6f1a25af-193a-4b15-a0dd-0fbf6d74e0dd','Admin has added transaction: Bacon Burger','Add','2021-03-15 12:23:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('748a3e05-94e1-4856-8472-1241f2dce856','Admin has upload photo for product: សាកល្បង','Upload','2021-03-15 14:22:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('79cd5c62-fa14-4068-acd8-727c6a273bfb','Admin has checked out order from: 11:44 AM to 12:44 AM','Check Out','2021-03-15 06:25:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7aa5cea6-2368-4cc5-98e0-b2b8e8292bb1','Admin has modified store from: Store Name//','Deleted','2021-03-15 03:21:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7c7d28ee-c137-4952-a2fe-f1eead4b2911','Admin has checked out order from: 01:38 PM to 02:38 PM','Check Out','2021-03-15 06:48:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7d0dbd19-3da8-49d8-91af-4af6998c5761','Admin has checked in order from: 01:38 PM to 02:38 PM','Check In','2021-03-15 06:39:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7d5fbdd6-e0a5-4744-ab48-cc146f5ab1ad','Admin has updated transaction Table 1, 18min','Modified','2021-03-15 12:23:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7ea8c0cd-4f03-43c6-9871-2a584f010f7a','Admin has checked out payment INV0000015','Payment','2021-03-15 12:23:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7f5bfc60-d1bd-42dd-ad44-279543b2e379','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-03-15 03:18:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('82adb6de-940f-4e88-a074-fc5c367a748d','Admin has added category: Food in category','Add','2021-03-15 03:16:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('82b68eee-9e3b-4ad8-8ec0-06e1d2e74c76','Admin has checked in order from: 11:20 AM to 12:20 AM','Check In','2021-03-15 04:20:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('83a50bab-395d-4d9f-b6b7-e85f07310c03','Admin has ordered invoice: INV0000001','Order','2021-03-15 04:20:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8449154c-5f54-4ab4-a2f9-d6081bc301de','Admin has added product Italy Spaghetti','Add','2021-03-15 03:20:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8589ae56-05dc-4da3-90fa-c5137fffc455','Admin has checked out payment INV0000008','Payment','2021-03-15 06:50:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8bd980ee-ded2-46b1-a580-47cdc5fccea6','Admin has added value Normal in product','Add','2021-03-15 03:20:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8cc7233c-1608-4839-93d7-6af39ebd22c0','Admin has deleted property: សាកល្បង in category','Delete','2021-03-15 03:17:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8d19a05d-4f43-4758-8b90-f6ed2ec7ada0','Admin has upload photo for color: Red','Upload','2021-03-15 03:18:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8ffb5ec2-d00c-49dc-8b16-52555c8a9814','Admin has logged in','Login','2021-03-15 11:33:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('933cf6d8-4cda-4c3b-a420-7a9296ace983','Admin has added room: table 1','Create','2021-03-15 03:22:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9406b528-e686-442b-b2a9-745f16e8fac6','Admin has added transaction: Bacon Burger','Add','2021-03-15 04:19:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('95f7a552-bae9-4783-9f06-a716fe2ec9ce','Admin has modified room: Table 1 from Table 1/0','Modify','2021-03-15 03:22:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('96f40653-0e82-4111-bde8-8251f3ebc649','Admin has added transaction: Bacon Burger','Add','2021-03-15 04:20:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9707486e-8ead-4312-8dfe-39e51f965cfc','Admin has logged in','Login','2021-03-15 03:14:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('988130cb-0a32-440f-8c10-fafdd1743d90','Admin has upload photo for product: Italy Spaghetti','Upload','2021-03-15 03:20:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('99158846-83b4-49d1-86d0-9f7d6731a5ae','Admin has modified category from Food','Modify','2021-03-15 03:16:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('993e49f1-ef54-4451-b5a6-12e5c49fe777','Admin has added order from: 11:41 AM to 12:41 AM','Add','2021-03-15 04:42:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9aed2094-30b8-4fbc-bec3-2bd4db95a4d8','Admin has ordered invoice: INV0000014','Order','2021-03-15 11:40:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9cf4361d-b0a6-4d62-a502-9a3012dd5464','Admin has checked out payment INV0000014','Payment','2021-03-15 11:40:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9eebfe7e-b424-4e26-b26e-89a178fba8af','Admin has checked in order from: 01:26 PM to 02:26 PM','Check In','2021-03-15 06:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a1ef0b95-82a4-4a3a-a533-c0d880320d21','Admin has modified theme from light','Modify','2021-03-15 03:15:16','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a4b33345-f3ff-44c2-9a62-ffbf7b0644c3','Admin has added product សាកល្បង','Add','2021-03-15 14:22:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a9db27b1-827d-47b8-87f9-9ea3ee615acb','Admin has logged in','Login','2021-03-14 15:20:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b006c8b6-4503-45fd-a5bb-3bc4e6f05020','Admin has checked out payment INV0000003','Payment','2021-03-15 04:42:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b0c5c5be-f210-4f36-a82f-581955895ba6','Admin has added room: Room 1','Create','2021-03-15 03:22:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b29a076f-2bfb-48c5-8956-afaea07ab12b','Admin has checked in order from: 11:41 AM to 12:41 AM','Check In','2021-03-15 04:41:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b53aa97a-09af-4daf-b392-8db3b6b906fb','Admin has modified language from english','Modify','2021-03-15 08:28:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b7903974-d91d-4caa-a6bd-54eb248dcba2','Admin has ordered invoice: INV0000011','Order','2021-03-15 10:04:04','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b7bbc99b-b7d5-4808-b955-370839688704','Admin has modified language from khmer','Modify','2021-03-15 08:27:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b9bea6d7-2012-459e-bc89-a57658b72703','Admin has modified language from english','Modify','2021-03-15 08:29:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba5651b3-dd86-4809-b462-02ae6b352304','Admin has checked out payment INV0000005','Payment','2021-03-15 06:25:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba8bbaf4-d07c-4bf8-887d-825443cb7bf9','Admin has checked out order from: 11:20 AM to 12:20 AM','Check Out','2021-03-15 04:38:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bad2eba9-c7ea-4410-82a7-d91e4dab9efa','Admin has added transaction: Bacon Burger','Add','2021-03-15 11:40:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bcf02d1e-8ba5-4dcc-9feb-f1d61b9b5133','Admin has modified language from khmer','Modify','2021-03-15 08:29:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bd376b05-6d40-4abc-b3de-ade5a9ac4277','Admin has added order from: 01:37 PM to 02:37 PM','Add','2021-03-15 06:38:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c1f01c15-f980-47de-9940-3c04ad3b9e5c','Admin has checked out payment INV0000011','Payment','2021-03-15 10:05:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c37db986-f92b-4276-a648-ea554f2cf7d2','Admin has upload photo for product: Bacon Burger','Upload','2021-03-15 03:21:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c389b1b5-31bd-4c88-a6be-15ff59f91e97','Admin has checked out payment INV0000001','Payment','2021-03-15 04:20:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c56eb4b6-a7d7-44d1-a575-45e987e55112','Admin has added transaction: Italy Spaghetti-Normal','Add','2021-03-15 04:19:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c78857e9-f74e-4d0c-91d8-1ed3ea79a801','Admin has toggle room: Room 1from Close','Toggle','2021-03-15 07:29:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cc112202-9a9a-46c3-8ff8-6ff86df5ee1e','Admin has added transaction: Bacon Burger','Add','2021-03-15 10:01:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cf75c07d-53b6-46b8-94a4-b691d291ff2e','Admin has updated transaction Room 2, 1h 41min','Modified','2021-03-15 06:25:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d0ec7e32-b6a2-4859-9e89-9a06baeef0d0','Admin has added property: សាកល្បង in category មុខម្អូប','Add','2021-03-15 03:17:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d58f3eda-e27e-411d-85bc-c5750f66adbb','Admin has checked out payment INV0000016','Payment','2021-03-15 14:39:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d70828ce-17ff-4052-8e13-798b397a035c','Admin has uploaded his profile picture ','Modify','2021-03-15 03:15:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d88d6e19-84a9-46f0-bb79-02e785e3a7f5','Admin has logged in','Login','2021-03-15 03:12:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d8cf5835-dc5d-4b72-ac1a-45c13399bca0','Admin has ordered invoice: INV0000009','Order','2021-03-15 09:54:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('db53351b-da61-4c8c-8d82-362277e2c6b5','Admin has checked out order from: 11:41 AM to 12:41 AM','Check Out','2021-03-15 04:41:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('de4482cf-937d-43fb-ad36-d962e900f4ca','Admin has added stock: 0.2/dollar/100/4000/0.0 in product Coca Cola Original Taste','Add','2021-03-15 04:19:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('de8f2012-465c-4db4-9057-f2da752e8dbc','Admin has updated transaction Table 1, 60min','Modified','2021-03-15 06:50:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('df3a1bcc-2cfc-4eeb-a6e1-a9d2339c9939','Admin has added brand: Restaurant in brand','Add','2021-03-15 03:19:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('dfec6cb4-e70d-44f6-937d-41069acba53f','Admin has added category: Beverage in category','Add','2021-03-15 03:16:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e2055298-fda8-479f-b1ea-7722a3af1528','Admin has opened drawer','Open','2021-03-15 04:19:34','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e2b50755-4073-44bd-8652-366024bc9d1f','Admin has checked out payment INV0000004','Payment','2021-03-15 04:42:49','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e2d78d57-20dc-4cd8-aa8c-cf93494ff150','Admin has added order from: 01:36 PM to 02:36 PM','Add','2021-03-15 06:37:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e355b58f-77ee-4156-8c66-4f577cc8c954','Admin has upload photo for color: Red','Upload','2021-03-15 03:18:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f10029f1-900d-43f2-a7e2-348fc3cac4eb','Admin has added role: Editor','Add','2021-03-15 03:23:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f769949f-2146-43a5-8f64-e03c7f0c7e0b','Admin has modified language from english','Modify','2021-03-15 08:18:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fa1a5c0c-47cf-4ad9-95e9-2e39d972520a','Admin has modified product from Bacon Burger//True/dollar/3.00///None/មុខម្អូប','Modify','2021-03-15 03:21:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fe460356-1266-486c-95f6-35d433dc2e0f','Admin has checked out payment INV0000006','Payment','2021-03-15 06:37:16','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_appearance` VALUES ('1a21c1ad-abe6-4b71-84a2-e706ff81fcbb','','','','','','d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842'),('1b919be4-b54f-4f2e-b61c-e0c785d22099','','','','','','dbfa7b76-8ad3-44fc-8746-b9aa384160ca'),('92052f06-1301-4264-9ae7-b8526b54076c','','','','','','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df'),('f30cc37d-8e24-4296-80ed-e46732c64791','','','','','','cfcf3424-eb64-4c3d-a63b-23c23dd791e4');
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
INSERT INTO `tbl_brand` VALUES ('8b4260cf-9ee5-4a46-a3ef-ed5d8fb3a433','Restaurant','','2021-03-15 03:19:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fe86e4da-6f6c-4beb-a992-751964565890','Coca Cola','','2021-03-15 03:17:49','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_category` VALUES ('84de8182-2176-4b3e-ac05-b498b481cfa8','មុខម្អូប','default.png','','2021-03-15 03:16:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bc4b17c9-b371-4779-bcf0-6445b26ee3d8','Beverage','default.png','','2021-03-15 03:16:26','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_checkin` VALUES ('21bf88be-6527-4678-8b6a-5be98db1236c','2021-03-15 12:05:55','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 12:05:55','45379e40-08eb-4450-975c-c9e47625c634','7e08bdfb-0f7d-4454-a850-4189cae9e666'),('3ee9f13b-6859-4319-998d-e0c61e6f4cfd','2021-03-15 06:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:26:58','f467e02c-958f-4bb4-92f2-7b7027d88662','a2c3a23c-4266-4f1c-bfd0-642a17c1f554'),('62755723-d45b-49d3-b3d0-9a44c58ecfbc','2021-03-15 04:42:33','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:42:33','4753618e-58e0-4772-9280-5639bf33ce54','fd072a9e-9d58-4f40-8228-eb50bee10694'),('75f21bfe-e032-440d-b57f-02c2d9055877','2021-03-15 04:44:47','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:44:47','8e8ca2a1-a012-4ab3-9a25-17553a4d8e62','d4ade18d-33c1-4d23-938c-cdd487670d0d'),('8120bc4f-37d9-4274-9b3b-db0520970f22','2021-03-15 06:37:31','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:37:31','719c9ebb-fe22-4cec-848e-54cc86907c32','480b5e47-fa03-462a-b346-853a6de3f4b8'),('88946e38-28ce-4957-b91e-aa4308632624','2021-03-15 12:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 12:26:58','50a05795-a04c-47a2-8f91-210d77934d8c','79366e0a-8cd2-4fa6-8296-5e63f86d6abd'),('93731d0d-3e87-435f-a5dc-25e85298ec58','2021-03-15 04:20:53','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:20:53','718ce91b-a086-49fb-9b4f-e6007a8c07d0','ef1f16b5-9882-4222-9f20-fbe1f2c9e243'),('9b931cd4-49b4-45db-9d1e-9769107d5aa8','2021-03-15 06:39:00','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:39:00','7a08943b-44db-46c3-b137-4435c357b9e1','74d234f2-da12-48c7-954a-5fc6a6190e21'),('9c282616-d670-4f42-917d-3850e5e4623c','2021-03-15 04:41:46','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:41:46','8c28ebee-eaab-4ed7-a803-e41fdbaef257','2f6a7a39-0229-42c9-a992-f74e82e21f8f');
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
INSERT INTO `tbl_checkout` VALUES ('521e763b-d81a-49b1-a818-cb8052912b09','2021-03-15 06:38:22',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:38:22','719c9ebb-fe22-4cec-848e-54cc86907c32'),('6613ce6e-6c65-461f-9a0e-811c8b31243b','2021-03-15 04:38:59',19,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:38:59','718ce91b-a086-49fb-9b4f-e6007a8c07d0'),('827ac27e-b6fc-49e8-8112-c66122dc877e','2021-03-15 14:38:54',133,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 14:38:54','50a05795-a04c-47a2-8f91-210d77934d8c'),('82a0a2a0-3fc5-41ff-83f5-cc564c4c057c','2021-03-15 04:42:38',19,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:42:38','4753618e-58e0-4772-9280-5639bf33ce54'),('9555f46d-2f28-44a4-a330-ca17380f3c9d','2021-03-15 06:25:29',101,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:25:29','8e8ca2a1-a012-4ab3-9a25-17553a4d8e62'),('b9202957-1aeb-4894-9db8-dfe99cf2072e','2021-03-15 06:36:46',11,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:36:46','f467e02c-958f-4bb4-92f2-7b7027d88662'),('ba1404f2-eced-4820-ad57-4421206ac177','2021-03-15 04:41:51',19,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:41:51','8c28ebee-eaab-4ed7-a803-e41fdbaef257'),('d5cf41aa-fbba-4c22-abcb-0d236d65de85','2021-03-15 12:23:03',18,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 12:23:03','45379e40-08eb-4450-975c-c9e47625c634'),('fe29e7d4-cfa4-48da-80f2-4eb8c5f4b490','2021-03-15 06:48:47',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:48:47','7a08943b-44db-46c3-b137-4435c357b9e1');
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
INSERT INTO `tbl_customer` VALUES ('87eae845-8b95-48b6-a343-986c6925e746','Test',NULL,'012 345 678','2021-03-15 12:01:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9528f488-f1c7-4702-beb1-43aa801303f7','Thong',NULL,'','2021-03-15 04:20:43','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_drawer` VALUES ('8dff24d7-3c99-41de-9869-31881bcac341','f8f8a9b9-d1a6-4245-bb6e-870f1dda70ae',4000.00,'Default',0.00,'2021-03-15 04:19:34',NULL,'174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_order` VALUES ('45379e40-08eb-4450-975c-c9e47625c634',1,1,'2021-03-15 12:02:00','2021-03-15 13:02:00','71ea5d37-f075-4e86-9c82-496b2453a0ec','87eae845-8b95-48b6-a343-986c6925e746','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 12:02:05'),('4753618e-58e0-4772-9280-5639bf33ce54',1,1,'2021-03-15 04:42:00','2021-03-14 17:42:00','53a41f7d-9b9b-4011-ba07-23f7910e1434','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:42:31'),('50a05795-a04c-47a2-8f91-210d77934d8c',1,1,'2021-03-15 12:26:00','2021-03-15 13:26:00','71ea5d37-f075-4e86-9c82-496b2453a0ec','87eae845-8b95-48b6-a343-986c6925e746','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 12:26:55'),('718ce91b-a086-49fb-9b4f-e6007a8c07d0',1,1,'2021-03-15 04:20:00','2021-03-14 17:20:00','53a41f7d-9b9b-4011-ba07-23f7910e1434','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:20:51'),('719c9ebb-fe22-4cec-848e-54cc86907c32',1,1,'2021-03-15 06:37:00','2021-03-15 07:37:00','71ea5d37-f075-4e86-9c82-496b2453a0ec','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:37:26'),('7a08943b-44db-46c3-b137-4435c357b9e1',1,1,'2021-03-15 06:38:00','2021-03-15 07:38:00','71ea5d37-f075-4e86-9c82-496b2453a0ec','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:38:58'),('8c28ebee-eaab-4ed7-a803-e41fdbaef257',1,1,'2021-03-15 04:41:00','2021-03-14 17:41:00','53a41f7d-9b9b-4011-ba07-23f7910e1434','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:41:43'),('8e8ca2a1-a012-4ab3-9a25-17553a4d8e62',1,1,'2021-03-15 04:44:00','2021-03-14 17:44:00','53a41f7d-9b9b-4011-ba07-23f7910e1434','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 04:44:44'),('f467e02c-958f-4bb4-92f2-7b7027d88662',1,1,'2021-03-15 06:26:00','2021-03-15 07:26:00','53a41f7d-9b9b-4011-ba07-23f7910e1434','9528f488-f1c7-4702-beb1-43aa801303f7','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-15 06:26:54');
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
INSERT INTO `tbl_outcome` VALUES ('82942e23-d694-40de-ba7f-3ddbcad7bf7d',1,'Coca Cola Original Taste x100',20.00,'2021-03-15 04:19:24','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_payment` VALUES ('00d5251b-bd3f-4401-af30-f09090d9ecbe',1,'INV0000001',7.20,10.00,4000.00,2.80,'2021-03-15 04:20:06','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('18a715af-1e99-4596-aac3-7bb23f4f0294',0,'INV0000010',3.00,0.00,0.00,0.00,'2021-03-15 10:01:47','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('2f6a7a39-0229-42c9-a992-f74e82e21f8f',1,'INV0000003',2.53,5.00,4000.00,2.47,'2021-03-15 04:41:46','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('480b5e47-fa03-462a-b346-853a6de3f4b8',1,'INV0000007',0.00,0.00,4000.00,0.00,'2021-03-15 06:37:31','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('493c4257-8443-4427-9111-6d6727c4c585',0,'INV0000009',6.00,0.00,0.00,0.00,'2021-03-15 09:54:38','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('61ce1e41-b1eb-4099-b4ea-f1396a911fe4',0,'INV0000012',6.00,0.00,0.00,0.00,'2021-03-15 10:17:04','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('74d234f2-da12-48c7-954a-5fc6a6190e21',1,'INV0000008',10.00,20.00,4000.00,10.00,'2021-03-15 06:39:00','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('79366e0a-8cd2-4fa6-8296-5e63f86d6abd',1,'INV0000016',0.00,0.00,4000.00,0.00,'2021-03-15 12:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('7e08bdfb-0f7d-4454-a850-4189cae9e666',1,'INV0000015',3.00,5.00,4000.00,2.00,'2021-03-15 12:05:55','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('94b62676-82df-4931-9f54-792109d187b6',1,'INV0000014',3.00,10.00,4000.00,7.00,'2021-03-15 11:40:11','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('a2c3a23c-4266-4f1c-bfd0-642a17c1f554',1,'INV0000006',1.47,5.00,4000.00,3.53,'2021-03-15 06:26:58','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('a9e8210e-be1a-4aac-a1e2-b5cfbe55bc46',1,'INV0000011',6.00,10.00,4000.00,4.00,'2021-03-15 10:04:04','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('cb62f8b3-0d8a-4cda-ac90-96ff19e5281d',1,'INV0000013',0.50,1.00,4000.00,0.50,'2021-03-15 11:37:31','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('d4ade18d-33c1-4d23-938c-cdd487670d0d',1,'INV0000005',13.47,15.00,4000.00,1.53,'2021-03-15 04:44:47','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('ef1f16b5-9882-4222-9f20-fbe1f2c9e243',1,'INV0000002',12.03,20.00,4000.00,7.97,'2021-03-15 04:20:53','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341'),('fd072a9e-9d58-4f40-8228-eb50bee10694',1,'INV0000004',2.53,5.00,4000.00,2.47,'2021-03-15 04:42:33','174084d3-74e4-495b-8e00-cb44eadcbf15','8dff24d7-3c99-41de-9869-31881bcac341');
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
INSERT INTO `tbl_product` VALUES ('cfcf3424-eb64-4c3d-a63b-23c23dd791e4','សាកល្បង','',1,12.00,'dollar','',NULL,'0e834256-c4ad-4d93-aa2e-3cda7f16efea.png','','[]','2021-03-15 14:22:32','174084d3-74e4-495b-8e00-cb44eadcbf15','8b4260cf-9ee5-4a46-a3ef-ed5d8fb3a433','bc4b17c9-b371-4779-bcf0-6445b26ee3d8'),('d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842','Coca Cola Original Taste','',1,0.50,'dollar','',NULL,'f9b26b1f-eff7-4741-a5ac-344be1823923.jpeg','','[]','2021-03-15 03:18:33','174084d3-74e4-495b-8e00-cb44eadcbf15','fe86e4da-6f6c-4beb-a992-751964565890','bc4b17c9-b371-4779-bcf0-6445b26ee3d8'),('dbfa7b76-8ad3-44fc-8746-b9aa384160ca','Italy Spaghetti','',0,3.00,'dollar','10',NULL,'9c7c1022-7876-4bd9-9641-e4f3bb6e3ac6.png','','[]','2021-03-15 03:20:25','174084d3-74e4-495b-8e00-cb44eadcbf15','8b4260cf-9ee5-4a46-a3ef-ed5d8fb3a433','84de8182-2176-4b3e-ac05-b498b481cfa8'),('fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','Bacon Burger','',0,3.00,'dollar','',NULL,'d7b6b6d9-e141-4c42-8982-8fb97d47e135.png','','[]','2021-03-15 03:21:16','174084d3-74e4-495b-8e00-cb44eadcbf15','8b4260cf-9ee5-4a46-a3ef-ed5d8fb3a433','84de8182-2176-4b3e-ac05-b498b481cfa8');
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
INSERT INTO `tbl_profile` VALUES ('5dc0e429-b906-4ac1-9e82-a0ad18a09acf','default.png','','0123456789','Tonle Basac','','','','2021-03-15 14:49:59','56d6a8ab-575a-4eb6-919f-a6f2b41f3a85'),('96ad051c-71b8-41c0-bda6-b74c578eaede','c22ed977-94eb-4213-a5ef-c66a0c43945b.jpg','Single','','','','','','2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9b9a1e5f-a257-4ba3-ba3a-ecd20c361e0a','default.png','','','','','','','2021-03-15 03:22:53','58405c11-ec9d-4658-8f2d-a76b6ba69950');
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
INSERT INTO `tbl_property` VALUES ('b54746b3-701a-4b78-b852-7f6dd1939fc9','Size','text','','2021-03-15 03:17:11','174084d3-74e4-495b-8e00-cb44eadcbf15','84de8182-2176-4b3e-ac05-b498b481cfa8');
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
INSERT INTO `tbl_quantity` VALUES ('5628e618-4579-4f4e-b108-ec31ca3b472e',3,3,'82942e23-d694-40de-ba7f-3ddbcad7bf7d','fd6ee661-2f14-45c1-bb21-d945e10ec415'),('61625574-7f74-47cc-a7c3-23bd6a005ca9',1,1,'82942e23-d694-40de-ba7f-3ddbcad7bf7d','83b7db90-dd97-434d-9c38-cc727c90d96e'),('bb38001a-adef-461a-858a-fba6eb32b1e2',1,1,'82942e23-d694-40de-ba7f-3ddbcad7bf7d','0a004d66-9285-4c05-8007-60a4e2efd80f');
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
INSERT INTO `tbl_role` VALUES ('1891761b-4f2b-40db-a560-f6f39fb85a6d','Editor','Editor, Report',0,'2021-03-15 03:23:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ff681de8-3d05-450c-8d35-1b7f47326182','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_room` VALUES ('53a41f7d-9b9b-4011-ba07-23f7910e1434','Room 2',8.00,'1h','Open','2021-03-15 03:22:15','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('71ea5d37-f075-4e86-9c82-496b2453a0ec','Table 1',0.00,'1h','Open','2021-03-15 03:22:26','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('a93a58a8-e22f-4e6e-a9c9-d7e38a443a02','Room 1',8.00,'1h','Open','2021-03-15 03:22:11','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee');
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
INSERT INTO `tbl_stock` VALUES ('82942e23-d694-40de-ba7f-3ddbcad7bf7d',0.20,'dollar',4000.00,95,'',0.00,'2021-03-15 04:19:24','174084d3-74e4-495b-8e00-cb44eadcbf15','d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842');
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
INSERT INTO `tbl_store` VALUES ('c3cb5134-a51e-450a-835f-dd59c9d42cfe','Demo Store','012 345 678','Phnom Penh, Cambodia','2021-03-14 15:20:10');
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
INSERT INTO `tbl_transaction` VALUES ('0a004d66-9285-4c05-8007-60a4e2efd80f',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842','2021-03-15 11:37:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0f24a088-7e90-4de8-8b78-69487f41bf6c',1,1,'0',3.00,3.00,1,3.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 04:19:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('14554563-78a1-4bb6-8e35-796cda8e335c',0,1,'0',3.00,3.00,1,0.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 10:01:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('25693556-9ed7-44e5-a9ff-559495d0d0ea',1,1,'0',3.00,3.00,1,3.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 12:23:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3c7e9bf7-724c-4625-9fd6-4a99ba9720f2',1,1,'10',2.70,2.70,1,2.70,'Italy Spaghetti-Normal','dbfa7b76-8ad3-44fc-8746-b9aa384160ca','2021-03-15 04:19:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5677dce8-af4f-4baa-8c84-9b6c9dab6015',0,1,'0',3.00,6.00,2,0.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 09:54:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5a2e02fd-e682-4ae6-8606-fb8f47df45de',1,0,'0',2.53,2.53,1,2.53,'Room 2, 19min','53a41f7d-9b9b-4011-ba07-23f7910e1434','2021-03-15 04:41:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('612dd65d-1c57-42d5-a47b-931a967da5f4',1,0,'0',0.00,0.00,1,0.00,'Table 1, 18min','71ea5d37-f075-4e86-9c82-496b2453a0ec','2021-03-15 12:23:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6ac42d34-5799-42b9-a2ba-c56c62b8b9c9',1,0,'0',0.00,0.00,1,0.00,'Table 1, 60min','71ea5d37-f075-4e86-9c82-496b2453a0ec','2021-03-15 06:38:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('78f49008-6bf1-4e2b-a97c-095aff8eebc8',1,0,'0',0.00,0.00,1,0.00,'Table 1, 2h 13min','71ea5d37-f075-4e86-9c82-496b2453a0ec','2021-03-15 14:38:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('83b7db90-dd97-434d-9c38-cc727c90d96e',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842','2021-03-15 04:21:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9af2db29-df4b-4be9-8ecb-a9edd5f573a4',1,0,'0',10.00,10.00,1,10.00,'Table 1, 60min','71ea5d37-f075-4e86-9c82-496b2453a0ec','2021-03-15 06:48:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a07715ab-f910-458c-9d87-7c8ae18cdd92',1,1,'0',3.00,6.00,2,6.00,'Italy Spaghetti-Normal','dbfa7b76-8ad3-44fc-8746-b9aa384160ca','2021-03-15 04:21:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('abab370d-ef01-4cda-90b2-81a9ec5ef527',1,1,'0',3.00,3.00,1,3.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 04:20:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba16ea4d-dc9d-403c-84bc-ef10ac816d35',0,1,'0',3.00,6.00,2,0.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 10:16:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c14193f7-917e-484f-ae6d-a06e210f2fce',1,0,'0',2.53,2.53,1,2.53,'Room 2, 19min','53a41f7d-9b9b-4011-ba07-23f7910e1434','2021-03-15 04:42:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c790810b-0111-4e0b-93e2-8d2a117ebcfb',1,1,'0',3.00,3.00,1,3.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 11:40:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d1c9d457-715c-4c95-8401-1ac7cd65c363',1,0,'0',8.00,2.53,1,2.53,'Room 2, 19min','53a41f7d-9b9b-4011-ba07-23f7910e1434','2021-03-15 04:38:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d5822b58-ecff-4189-96eb-b1fbf7d40f2b',1,1,'0',3.00,6.00,2,6.00,'Bacon Burger','fd2c636d-6bc8-4e58-a0f5-60feb7ca89df','2021-03-15 10:04:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('df136860-b0b9-4db2-b051-14383a18e088',1,0,'0',1.47,1.47,1,1.47,'Room 2, 11min','53a41f7d-9b9b-4011-ba07-23f7910e1434','2021-03-15 06:36:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('df8f107c-e1db-4906-b47f-56512f3631b3',1,0,'0',13.47,13.47,1,13.47,'Room 2, 1h 41min','53a41f7d-9b9b-4011-ba07-23f7910e1434','2021-03-15 06:25:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fd6ee661-2f14-45c1-bb21-d945e10ec415',1,1,'0',0.50,1.50,3,0.90,'Coca Cola Original Taste','d27db0fb-3ad4-4dbc-8187-2bc7b3dfd842','2021-03-15 04:19:44','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_user` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','','','Admin','',NULL,'','$2b$12$B212Iy7eHShZmr2IRiTb7.K.9a3.PSDXq5JmKiO5UAKuRnL8mAqVK','dark','khmer','e4769719-e2a2-4a1b-9685-09d045a4a20e','b268fb8b-9ec6-40f5-a7fb-02d740b59cd4','8dff24d7-3c99-41de-9869-31881bcac341',1,1,'2021-03-14 15:20:10'),('56d6a8ab-575a-4eb6-919f-a6f2b41f3a85','Sasuke','Uchiha','Sasuke','M',NULL,'sasuke@example.com','$2b$12$V0fpQweZPCB0yA2B4qE6CO/zSPae4VEppYskq1Jc22AUcIUUcgqsO','light','english','c587a91d-1a08-426d-9520-212057470aa2','','',0,0,'2021-03-15 14:49:59'),('58405c11-ec9d-4658-8f2d-a76b6ba69950','','','សាកល្បង','M',NULL,'','$2b$12$LwQNL7WAO2BalO/ilLI9ee7SU9qBkaPtgCVCk4j4/FqqCaShe4TKi','light','english','285c1ff4-67f7-4f05-813b-6821f22901da','','',1,0,'2021-03-15 03:22:53');
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
INSERT INTO `tbl_value` VALUES ('9b197179-bf22-4be5-8fae-08a028c9e449','Double',2.00,'dollar','','dbfa7b76-8ad3-44fc-8746-b9aa384160ca','b54746b3-701a-4b78-b852-7f6dd1939fc9','2021-03-15 03:20:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c820b95e-e287-4f0e-8ffd-bad1b2d75b60','Normal',0.00,'dollar','','dbfa7b76-8ad3-44fc-8746-b9aa384160ca','b54746b3-701a-4b78-b852-7f6dd1939fc9','2021-03-15 03:20:40','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `user_role` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','ff681de8-3d05-450c-8d35-1b7f47326182'),('58405c11-ec9d-4658-8f2d-a76b6ba69950','1891761b-4f2b-40db-a560-f6f39fb85a6d');
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

-- Dump completed on 2021-03-15 22:25:46
