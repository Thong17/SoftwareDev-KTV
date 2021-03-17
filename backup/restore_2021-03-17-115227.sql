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
INSERT INTO `payment` VALUES ('01508950-53b6-4e20-95ce-989eb63fe723','78836e70-e4d3-4cb2-b5d3-f8c80b4ddf5a'),('01508950-53b6-4e20-95ce-989eb63fe723','6f0cd2bd-1754-4d3a-8b39-48d1b5afd831'),('1e8aba46-4ea7-4f05-9a0d-d43e997b3803','74aa7fba-2731-497f-89e9-31b6c2f74fc0'),('1e8aba46-4ea7-4f05-9a0d-d43e997b3803','c8b9522f-57f2-4eb9-b4f3-1c0535f2d872'),('1e8aba46-4ea7-4f05-9a0d-d43e997b3803','5a5d4c42-dd24-4848-8dc8-2b07255e7ce1'),('c0fa5a7b-e452-495f-a889-0b97b29ac442','b8f3944d-4cd2-4cb8-a56a-f94a4a6f46a2'),('31b47cc1-14cd-4aaa-be04-b0f6875bdbdd','2e97f1ff-5701-4169-8c6d-734f211761fe'),('2ae322c2-4085-47b4-939f-519fc5320981','964fb4dd-37a8-4294-9444-53985d6334a7'),('2ae322c2-4085-47b4-939f-519fc5320981','c5d96185-56a9-4e07-a118-b0c6da223e9e'),('af3508a5-ce17-44a1-ae91-cadc684b6a63','e46b81d7-d6fe-4e3a-bec0-b6fc0a27fd66'),('ba26ba5b-a417-45f2-869f-88a43d7f0cba','834f2cbb-6652-4e82-862c-de526d2c8557'),('ba26ba5b-a417-45f2-869f-88a43d7f0cba','48f88faf-8e86-4dde-8382-f8af8f19c4af'),('ba26ba5b-a417-45f2-869f-88a43d7f0cba','d0643ce7-ee98-485e-9774-871b4162b98c'),('5656a019-bdeb-4665-a494-ccc4aa4eb2b9','839177fa-98c7-445c-97b9-209543a89b0b'),('4d0b0b47-1afb-4104-a20a-c6d75253b5d0','32e21ea8-8cbe-490c-aa21-885fa7172b8a'),('ae41d860-a928-43ca-9894-473dc42d8905','2dfe0e20-f0b2-47bf-9e8a-e07700452a78'),('95ff193d-d1d9-46cc-8a65-b750cda6001c','c0b8eeb6-e3a7-4c61-ab29-fc813f93b8fe'),('599a6113-efd6-4d78-938f-4a5fe0c34bcf','36a9248e-fd91-4ff9-87b8-83879e6dd2ca'),('41768897-6469-4bd4-8f71-c8563a3f22a8','5d10cf94-7192-4001-afbe-660d2663b4a2'),('41768897-6469-4bd4-8f71-c8563a3f22a8','0ea9a0d5-d3b7-4822-aa70-ad4367569d40'),('41768897-6469-4bd4-8f71-c8563a3f22a8','e8bb0a21-f3b5-434c-944e-f157b6d2d87d');
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
INSERT INTO `tbl_activity` VALUES ('002de5b4-24ca-4f3b-b024-e56071ad571e','Admin has modified user: សាកល្បង','Modify','2021-03-16 14:41:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('00994763-1b78-4fe2-828f-482f2658c6ec','Admin has added value Large in product','Add','2021-03-17 04:39:39','174084d3-74e4-495b-8e00-cb44eadcbf15'),('030a5703-6cac-4cdf-ba2d-59612813ab70','Admin has added room: Room 11','Create','2021-03-16 14:40:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0405bc56-905b-4958-885b-0ec84ca4b6d0','Admin has checked in order from: 11:13 AM to 12:13 AM','Check In','2021-03-17 04:14:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('041356be-b617-4f62-9085-8410d9d380db','Admin has delete room: Test','Delete','2021-03-16 15:00:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('048d165d-1da7-4d0b-a560-f6bc7a3ad4ac','Admin has added role: Editor','Add','2021-03-16 14:42:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('07f4dd99-a76d-4329-9226-e26e71a9c0b1','Admin has updated transaction Room 2, 60min','Modified','2021-03-16 14:46:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('08d62069-7c5c-4e5c-beb4-bb2077fb1633','Admin has added color Red in product','Add','2021-03-16 14:37:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0c96ebc1-0abc-4c32-a85c-57f0fcbfe075','Admin has added order from: 11:12 AM to 12:12 AM','Add','2021-03-17 04:14:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0dd9a657-cd3a-4a31-81f6-3d97277ac383','Admin has updated transaction Room 10, 60min','Modified','2021-03-17 02:27:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('10831d4c-bc76-472e-95ad-47b94e74195d','Admin has added Spaghetti Italy to favorite','Add','2021-03-17 01:23:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1255b778-1ad2-435b-b8da-9df892335498','Admin has added money to drawer','Add','2021-03-16 14:43:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('12634644-93e0-460f-bb6b-4e5b9cd25dad','Admin has added expense: Packaging','Create','2021-03-16 14:47:42','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1975cdb3-1966-4bff-956d-28ac5ae9054d','Admin has added value Double in product','Add','2021-03-16 14:39:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1ae321ee-71a7-4e7a-88d9-7644966e44ee','Admin has added brand: My Shop in brand','Add','2021-03-16 14:38:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1b085429-ebf4-445b-a439-2de9f92474f7','Admin has removed order from: 10:34 AM to 11:34 AM','Deleted','2021-03-17 02:05:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1d3c4c92-30d9-4234-93ec-1fc669e810af','Admin has ordered invoice: INV0000012','Order','2021-03-17 04:38:35','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1d3c9449-10c2-46b1-8897-11d95c07020c','Admin has logged in','Login','2021-03-16 14:33:35','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1e4d45eb-8ca8-4a1a-b7bd-65f90f52bdf0','Admin has upload photo for color: Red','Upload','2021-03-16 14:37:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1edac910-3f12-4a5c-9e9c-ecb410ce2d35','Admin has added customer: General','Add','2021-03-16 14:45:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('21437dfe-a28d-4bf4-936f-be16d6a5cbc4','Admin has added order from: 09:31 AM to 10:31 AM','Add','2021-03-17 02:32:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('231e5293-d21e-4428-bcff-ba99b7f469e8','Admin has added value Normal in product','Add','2021-03-16 14:38:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('24756c0e-fdea-4b19-8924-22d4afdf5531','Admin has added transaction: Spaghetti Italy-Normal','Add','2021-03-16 14:45:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2614f7e4-386e-4d21-8f32-912fc3579c78','Admin has added category: Food in category','Add','2021-03-16 14:35:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2925e876-7ba7-4b29-8ed1-c5f52eef3ca9','Admin has modified language from english','Modify','2021-03-16 14:35:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('297e3e9a-4e66-4460-8dd7-3cf9c4b03cf4','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:35:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('29fdd9ac-f56d-4d28-bbce-f8a197b12dc0','Admin has modified language from khmer','Modify','2021-03-16 14:49:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2ba5e903-0325-4ade-909c-f7717324301d','Admin has checked out payment INV0000014','Payment','2021-03-17 04:48:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2c4fe396-7235-473e-8fe2-2485c62fe8a4','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:11:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('31ed8368-68a8-493a-9abb-8fa867c25c8c','Admin has added order from: 08:33 AM to 09:33 AM','Add','2021-03-17 01:34:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3700ea07-995e-4d31-b1db-80a46440ae68','Admin has modified language from english','Modify','2021-03-17 01:22:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('376d22b5-1f55-43cb-8704-d13c27c7ef5a','Admin has updated transaction Room 2, 30min','Modified','2021-03-17 04:14:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('39c3163a-f622-4846-b6b7-086a8d6e5b49','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:30:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3e196304-99e5-419e-bd1e-b3474bc72d43','Admin has checked out order from: 08:34 AM to 09:34 AM','Check Out','2021-03-17 02:27:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3ffecbd8-b023-430d-b6d5-45859a089eb5','Admin has checked out payment INV0000009','Payment','2021-03-17 04:34:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('405752bf-62ed-4d99-bcb9-ad17ee0ff00a','Admin has modified user: សាកល្បង','Modify','2021-03-16 14:42:07','174084d3-74e4-495b-8e00-cb44eadcbf15'),('41b4039a-0470-4421-a0e9-668747fd6ad0','Admin has added product Collapsible Water Bottle','Add','2021-03-17 04:39:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('43920174-501a-438d-b44b-6402e046de9a','Admin has added order from: 09:44 PM to 10:44 PM','Add','2021-03-16 14:45:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4730ccb7-bb8f-4912-a8f7-cbb37518e7a4','Admin has updated transaction Room 10, 60min','Modified','2021-03-17 04:45:52','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4a60ccaa-4407-47c3-886e-52f4383eefe9','Admin has created user: Test','Created','2021-03-16 14:41:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4d0d4845-880b-424c-9d0c-50fe2044b02c','Admin has modified store from: Store Name//','Deleted','2021-03-16 14:39:39','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4f2fc19e-8170-48f7-98ed-5c5403ac5d96','Admin has logged in','Login','2021-03-17 01:31:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4f8acce7-1358-4ccd-8a3f-7012d8f7cc36','Admin has added money to drawer','Add','2021-03-16 14:43:45','174084d3-74e4-495b-8e00-cb44eadcbf15'),('52386de3-7396-4b91-8c85-9eb8c148d7d1','Admin has checked out payment INV0000011','Payment','2021-03-17 04:37:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('529244ea-c657-474a-a4ce-1610f41decba','Admin has added transaction: Spaghetti Italy-Normal','Add','2021-03-17 02:38:15','174084d3-74e4-495b-8e00-cb44eadcbf15'),('54d91a13-5d47-4476-9cc5-b330ffee8398','Admin has checked in order from: 08:34 AM to 09:34 AM','Check In','2021-03-17 02:12:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('54f89d7e-1125-46d2-9230-c5fd0a8e1f35','Admin has upload photo for product: Coca Cola Original taste','Upload','2021-03-16 14:37:12','174084d3-74e4-495b-8e00-cb44eadcbf15'),('582b82bb-bbd5-4dca-8e38-41c1aa170b86','Admin has checked in order from: 08:34 AM to 09:34 AM','Check In','2021-03-17 02:26:12','174084d3-74e4-495b-8e00-cb44eadcbf15'),('58c7aebf-2038-4721-bb2e-9aa9989a3db8','Admin has checked out payment INV0000007','Payment','2021-03-17 04:16:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5a191003-bce6-4f45-827c-995598acd6a7','Admin has checked out order from: 09:32 AM to 10:32 AM','Check Out','2021-03-17 02:49:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5ac0a1f2-21ff-45e8-a065-4ba44a87f382','Admin has checked out payment INV0000012','Payment','2021-03-17 04:38:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5ad0c210-213c-4b9d-9d00-ec6c2cc2b0c0','Admin has updated transaction Room 2, 10min','Modified','2021-03-17 02:22:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5b4ede76-9904-4d1c-8cb4-57552e595d46','Admin has deleted color: Red in product','Delete','2021-03-16 14:37:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5bae9bfe-9702-4fec-9a09-73bb90890a34','Admin has checked out payment INV0000003','Payment','2021-03-17 02:22:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5bb69645-1427-4054-abb8-1b930fe89155','Admin has updated transaction Room 2, 30min','Modified','2021-03-17 02:49:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5bc22dae-02e5-49e4-815f-a5f3617f5826','Admin has added brand: Coca Cola in brand','Add','2021-03-16 14:36:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('64932dfc-28e5-4b75-9e0d-d39ee8752fa9','Admin has modified room: Room 2 from Room 2/0','Modify','2021-03-16 14:40:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6a3354ee-3249-4ce8-9dfc-90c97eea41a4','Admin has added product Coca Cola Original taste','Add','2021-03-16 14:37:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6b8ae906-7e21-4d20-99d2-e1b63847cdd4','Admin has checked out payment INV0000013','Payment','2021-03-17 04:43:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6bb5016a-2e28-4b59-b77e-a2a601e4f4e4','Admin has added room: Test','Create','2021-03-16 15:00:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7128a62c-6b9c-49e2-babf-86817baaf481','Admin has modified theme from dark','Modify','2021-03-16 14:35:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7301458a-4f7d-4952-84c2-406707d1199a','Admin has checked out payment INV0000006','Payment','2021-03-17 04:11:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('79eb5b4f-ef47-4afd-86cd-e89876a067e2','Admin has checked in order from: 09:45 PM to 10:45 PM','Check In','2021-03-16 14:45:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7d030517-bcf2-4c5a-9d45-bf56362eda61','Admin has checked out payment INV0000001','Payment','2021-03-16 14:44:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7e57fd8d-708e-4b76-9649-c6b8515e0747','Admin has modified expense from: Packaging x 100/10','Modify','2021-03-16 14:47:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('857250b1-e589-4f39-989a-333188a2f3b3','Admin has added floor: 1F','Create','2021-03-16 14:39:54','174084d3-74e4-495b-8e00-cb44eadcbf15'),('89147694-ada9-4e3c-b37e-d5835616a57b','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:16:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8d1e75ff-5afe-4121-8285-97530fc50578','Admin has deleted expense: Packaging x 100','Delete','2021-03-16 14:53:52','174084d3-74e4-495b-8e00-cb44eadcbf15'),('90e3b96c-ff8f-4f01-8be8-e239f361277e','Admin has checked out payment INV0000005','Payment','2021-03-17 02:49:45','174084d3-74e4-495b-8e00-cb44eadcbf15'),('960e7dee-e7dd-4143-bd37-f9e6e1686bad','Admin has added room: Room 1','Create','2021-03-16 14:39:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9711f42c-83a0-4ff5-a85e-375e732d6366','Admin has upload photo for color: Red','Upload','2021-03-16 14:37:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('998f4e03-a53f-461e-b316-dc4d758a4c66','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:34:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9a04acba-5190-4f9a-a0b5-877a9739bbd6','Admin has added category: Bottle in category','Add','2021-03-17 04:38:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9de78977-de89-4bc5-b614-07f2fbfa1d5d','Admin has added order from: 08:33 AM to 09:33 AM','Add','2021-03-17 01:34:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9e64e786-53ab-4e7d-8f65-cedd1e69cd43','Admin has checked out order from: 08:34 AM to 09:34 AM','Check Out','2021-03-17 02:22:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9f84ef10-6a26-4620-ad15-41362e0057e9','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:22:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9fd84a3e-424d-4abb-b7f4-a13e300c2db7','Admin has added property: Size in category មុខម្អូប','Add','2021-03-16 14:36:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a0f9d0a1-2bb1-4405-9ea0-001932c7dd5b','Admin has ordered invoice: INV0000006','Order','2021-03-17 04:11:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a2d94e65-4851-4257-8823-6cf372c51909','Admin has modified category from Food','Modify','2021-03-16 14:36:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a4a52f0c-82da-4ef6-a4c0-3b8aeb2631e5','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:23:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a50977f7-2d37-4acd-8959-eb48495a08cf','Admin has added category: Beverage in category','Add','2021-03-16 14:35:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a972c39b-e658-43a8-97ea-91c2210c9e07','Admin has checked in order from: 09:32 AM to 10:32 AM','Check In','2021-03-17 02:38:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a9db27b1-827d-47b8-87f9-9ea3ee615acb','Admin has logged in','Login','2021-03-14 15:20:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('af59d5cb-167d-43ea-a5ea-d67f9633aab2','Admin has opened drawer','Open','2021-03-16 14:43:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b474130d-7c0f-456e-b026-e24731b21817','Admin has checked out order from: 11:13 AM to 12:13 AM','Check Out','2021-03-17 04:14:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b9b1bb0d-8b9f-4b6b-9178-7091b8504689','Admin has added room: Room 10','Create','2021-03-16 14:40:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba92d544-98cc-4b03-a18e-b1372f7639b8','Admin has added order from: 11:44 AM to 12:44 AM','Add','2021-03-17 04:45:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bafa3b64-a8f1-4d99-8663-328f59360f42','Admin has checked out payment INV0000002','Payment','2021-03-16 14:47:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bd1e9eea-18f8-46cb-9b3d-4f52211f0c15','Admin has checked in order from: 11:45 AM to 12:45 AM','Check In','2021-03-17 04:45:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bf279fd6-0d3f-4554-98e9-87c0ab3b19fe','Admin has checked out payment INV0000004','Payment','2021-03-17 02:27:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bf85187d-42ca-40ee-b8c7-06862ca20fa7','Admin has added stock: 8/dollar/10/4000/0.0 in product Collapsible Water Bottle','Add','2021-03-17 04:40:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c27ea8ce-b98d-4384-a2ab-30c45a9c28d6','Admin has added value Small in product','Add','2021-03-17 04:39:34','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c3a1348f-efeb-4d3d-96bb-fc6822690b72','Admin has added stock: 0.5/dollar/100/4000/0.0 in product Coca Cola Original taste','Add','2021-03-16 14:43:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c5eb3cf6-e809-4361-ba65-3fef3f4cfae7','Admin has delete room: Room 11','Delete','2021-03-16 14:40:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c6edb999-85a8-4d93-b3a4-fb3e84c3addf','Admin has added room: Room 11','Create','2021-03-16 14:40:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c74c5564-0d5e-481c-aa1b-5e8739509b25','Admin has added transaction: Coca Cola Original taste','Add','2021-03-16 14:46:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ca6d3d3f-b4c6-4d3c-9f06-107b4c43be9e','Admin has logged in','Login','2021-03-17 01:21:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cabfc433-fb0d-46d6-b481-1f6510847d6b','Admin has upload photo for product: Collapsible Water Bottle','Upload','2021-03-17 04:39:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cccd8160-542a-4147-92e8-e7670ba50e2c','Admin has modified profile from Single/////','Modify','2021-03-16 14:34:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ce0daf9a-aad8-4269-9a36-31ac6a0b8f86','Admin has added product Spaghetti Italy','Add','2021-03-16 14:38:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cf3f7101-21b4-4f93-b6a3-0a57b5e00bc8','Admin has ordered invoice: INV0000008','Order','2021-03-17 04:22:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d0eb5647-5f0d-45b5-b56a-69314706be27','Admin has toggle room: Room 1from Open','Toggle','2021-03-16 14:40:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d1772fa1-cd02-445b-8137-151b1dab2f6a','Admin has added order from: 10:33 AM to 11:33 AM','Add','2021-03-17 01:35:07','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d393c6d9-56d9-4160-801e-f473433e8245','Admin has added transaction: Coca Cola Original taste','Add','2021-03-16 14:43:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d5064152-27be-46f3-a808-6d463fc07a1b','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:14:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d6ddf8fc-a1e0-4eea-80f4-b02756d1d040','Admin has added transaction: Collapsible Water Bottle-Large','Add','2021-03-17 04:47:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d7c6ebb6-01eb-4c76-a240-76f9e2ae4803','Admin has ordered invoice: INV0000010','Order','2021-03-17 04:34:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d7f72764-52ed-44e0-ab7f-16cee41740c5','Admin has added transaction: Spaghetti Italy-Double','Add','2021-03-16 14:43:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('da551df7-eafe-4320-a48f-c57dd2e09b3b','Admin has modified room: Room 2 from Room 2/10','Modify','2021-03-16 14:40:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('dcbae59b-a974-4014-996d-d3ef11f2b859','Admin has added transaction: Coca Cola Original taste','Add','2021-03-17 04:38:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e1f765b9-7ca6-4c12-8de9-c3c818d29fc8','Admin has ordered invoice: INV0000011','Order','2021-03-17 04:37:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e21d3f45-5c18-4c35-b20f-21d545b9ebe0','Admin has added transaction: Collapsible Water Bottle-Large','Add','2021-03-17 04:45:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e36e383e-f272-40bd-b621-d6bb337d0e7a','Admin has ordered invoice: INV0000001','Order','2021-03-16 14:44:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e6a8ff5f-3e1a-4161-8cd6-8d047e070372','Admin has added transaction: Collapsible Water Bottle-Large','Add','2021-03-17 04:42:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e6c8c6ec-69c3-4260-9772-c45112447b35','Admin has added transaction: Coca Cola Original taste','Add','2021-03-16 14:46:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e70bb05e-cb2c-49db-a411-b7eb2904a442','Admin has ordered invoice: INV0000013','Order','2021-03-17 04:43:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e7133102-2eb9-4c70-921b-410f97c8a627','Admin has added property: Size in category Bottle','Add','2021-03-17 04:39:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e88ebde5-ca56-4eaa-9c14-e1582f3eec6d','Admin has modified product from Spaghetti Italy//False/dollar/3.00///None/មុខម្អូប','Modify','2021-03-16 14:38:52','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e91fa16c-e629-41b6-8379-96957b7e86c9','Admin has modified theme from light','Modify','2021-03-16 14:35:09','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ed56f570-f3f0-4417-82f7-2f9192e721f5','Admin has upload photo for product: Spaghetti Italy','Upload','2021-03-16 14:38:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('eecaaa17-f10d-4338-97cb-2341c16cc2a3','Admin has checked out order from: 11:45 AM to 12:45 AM','Check Out','2021-03-17 04:45:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f61b86c4-3f17-4f9a-9581-c4bef72e1798','Admin has checked out order from: 09:45 PM to 10:45 PM','Check Out','2021-03-16 14:46:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fa2d2e86-b32d-4111-ac27-fd9b421dfbd9','Admin has ordered invoice: INV0000009','Order','2021-03-17 04:23:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fd937dde-21da-4034-9e2d-65de58fa26a6','Admin has uploaded his profile picture ','Modify','2021-03-16 14:34:58','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_appearance` VALUES ('65f5f79a-4af3-404f-bc62-a1f7fe35dc94','','','','','','9110984e-9165-4814-b76f-9b9ac995f8be'),('b7d5c440-5938-4c0f-9727-bf601c3f8582','','','','','','61889423-11fc-4a71-8f74-956385dfe148'),('bf857f72-d73f-4c7d-aac5-8cd1ddd1dbe0','','','','','','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44');
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
INSERT INTO `tbl_brand` VALUES ('b32f6f46-2465-4797-9a0c-5d61e899fbbb','My Shop','','2021-03-16 14:38:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('df5aefd8-ad60-43f7-8998-999afc685739','Coca Cola','','2021-03-16 14:36:30','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_category` VALUES ('36da4fff-c844-423e-a8a8-bc70c3e2d2c7','Bottle','default.png','','2021-03-17 04:38:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6a5e8dfb-8d3d-42a3-8d7e-34344c979627','មុខម្អូប','default.png','','2021-03-16 14:35:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c2aa2b63-ef9b-4526-8204-f280c527c5d2','Beverage','default.png','','2021-03-16 14:35:53','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_checkin` VALUES ('11899ff6-2499-46c4-b422-fd24e74aa8c8','2021-03-17 04:45:21','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:45:21','945baed0-9d35-4a5e-9c6d-cdf42227c6e3','41768897-6469-4bd4-8f71-c8563a3f22a8'),('226393f0-3de7-4383-9070-72bd1191ca5f','2021-03-16 14:45:28','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 14:45:28','f78749ca-1da9-424a-bb1c-8a666a38f278','1e8aba46-4ea7-4f05-9a0d-d43e997b3803'),('3bf2cd85-32fe-43a8-b3bb-971278c2e022','2021-03-17 02:38:09','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:38:09','c1b70ad5-56ec-4421-8a01-83af9feb8fba','2ae322c2-4085-47b4-939f-519fc5320981'),('41ced185-2865-483e-a805-3b6b2ddeecf3','2021-03-17 02:12:31','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:12:31','8694d3e9-ac0f-4ed6-9365-728d11719893','c0fa5a7b-e452-495f-a889-0b97b29ac442'),('5f304040-c2fd-4fe9-b23d-abc1e78c50f5','2021-03-17 04:14:03','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:14:03','deee816e-128a-4210-87f1-abf74f6aa148','ba26ba5b-a417-45f2-869f-88a43d7f0cba'),('7582d4da-10a9-4093-bc67-f2782bfd9e4b','2021-03-17 02:26:12','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:26:12','5ad0a1f4-c79b-46d9-9b96-38967e94b109','31b47cc1-14cd-4aaa-be04-b0f6875bdbdd');
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
INSERT INTO `tbl_checkout` VALUES ('5c74925f-4e13-4453-8c92-fbc444128472','2021-03-17 02:49:32',30,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:49:32','c1b70ad5-56ec-4421-8a01-83af9feb8fba'),('96d4604f-2755-4866-8d71-6f2a1b32d0fd','2021-03-17 04:14:26',30,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:14:26','deee816e-128a-4210-87f1-abf74f6aa148'),('b9717868-193d-43c6-a944-ed4383b155df','2021-03-17 02:22:24',10,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:22:24','8694d3e9-ac0f-4ed6-9365-728d11719893'),('d6766b85-8e92-43ef-be50-deac44127f95','2021-03-17 02:27:03',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:27:03','5ad0a1f4-c79b-46d9-9b96-38967e94b109'),('f73e2a97-74f0-4aaf-bdc6-e42490015887','2021-03-16 14:46:44',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 14:46:44','f78749ca-1da9-424a-bb1c-8a666a38f278'),('f861314d-47f4-448b-8ae0-e064b538113f','2021-03-17 04:45:50',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:45:50','945baed0-9d35-4a5e-9c6d-cdf42227c6e3');
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
INSERT INTO `tbl_customer` VALUES ('e73feaed-f923-417a-8363-6cee25da0aeb','General',NULL,'None','2021-03-16 14:45:08','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_drawer` VALUES ('8dc2025c-fffb-4ed2-b979-8ad039beb931','7f762b6f-066e-4e55-aebe-3df101bb70d0',4000.00,'Default',0.00,'2021-03-16 14:43:31',NULL,'174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_floor` VALUES ('436f239c-9d00-46ef-bb8d-b39ffb7944ee','Ground Floor','2021-03-14 15:20:10','c3cb5134-a51e-450a-835f-dd59c9d42cfe'),('46dbf3eb-34ca-48fb-bdd0-6d53360bcdbd','1F','2021-03-16 14:39:54','c3cb5134-a51e-450a-835f-dd59c9d42cfe');
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
INSERT INTO `tbl_money` VALUES ('23a9f471-37a0-41ae-af47-e5562cdf33f4',1,'USD',1.00000,72,'8dc2025c-fffb-4ed2-b979-8ad039beb931'),('2509f6fb-1e88-42ea-99c0-32c5535f9765',10,'USD',10.00000,99,'8dc2025c-fffb-4ed2-b979-8ad039beb931');
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
INSERT INTO `tbl_order` VALUES ('5ad0a1f4-c79b-46d9-9b96-38967e94b109',1,1,'2021-03-17 01:34:00','2021-03-17 02:34:00','f5229a79-da5b-4909-bb73-c19150dbc970','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 01:34:58'),('8694d3e9-ac0f-4ed6-9365-728d11719893',1,1,'2021-03-17 01:34:00','2021-03-17 02:34:00','406b6934-5bb0-4ca3-9188-0cde9a269d4f','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 01:34:48'),('945baed0-9d35-4a5e-9c6d-cdf42227c6e3',1,1,'2021-03-17 04:45:00','2021-03-16 17:45:00','f5229a79-da5b-4909-bb73-c19150dbc970','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:45:08'),('c1b70ad5-56ec-4421-8a01-83af9feb8fba',1,1,'2021-03-17 02:32:00','2021-03-17 03:32:00','406b6934-5bb0-4ca3-9188-0cde9a269d4f','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 02:32:40'),('deee816e-128a-4210-87f1-abf74f6aa148',1,1,'2021-03-17 04:13:00','2021-03-16 17:13:00','406b6934-5bb0-4ca3-9188-0cde9a269d4f','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-17 04:14:00'),('f78749ca-1da9-424a-bb1c-8a666a38f278',1,1,'2021-03-16 14:45:00','2021-03-16 15:45:00','406b6934-5bb0-4ca3-9188-0cde9a269d4f','e73feaed-f923-417a-8363-6cee25da0aeb','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-16 14:45:18');
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
INSERT INTO `tbl_outcome` VALUES ('47f28860-5f44-4fae-aa41-bf1ac1ff5b40',1,'Collapsible Water Bottle x10',80.00,'2021-03-17 04:40:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fc39a817-9ae2-4c0b-99bf-d49386484f00',1,'Coca Cola Original taste x100',50.00,'2021-03-16 14:43:01','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_payment` VALUES ('01508950-53b6-4e20-95ce-989eb63fe723',1,'INV0000001',5.00,10.00,4000.00,5.00,'2021-03-16 14:44:00','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('1e8aba46-4ea7-4f05-9a0d-d43e997b3803',1,'INV0000002',15.00,20.00,4000.00,5.00,'2021-03-16 14:45:28','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('2ae322c2-4085-47b4-939f-519fc5320981',1,'INV0000005',7.50,10.00,4000.00,2.50,'2021-03-17 02:38:09','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('31b47cc1-14cd-4aaa-be04-b0f6875bdbdd',1,'INV0000004',10.00,20.00,4000.00,10.00,'2021-03-17 02:26:12','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('41768897-6469-4bd4-8f71-c8563a3f22a8',1,'INV0000014',42.00,50.00,4000.00,8.00,'2021-03-17 04:45:21','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('4ab2c51e-3c3c-4b43-b281-83efd7e0195f',0,'INV0000008',0.00,0.00,0.00,0.00,'2021-03-17 04:22:25','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('4d0b0b47-1afb-4104-a20a-c6d75253b5d0',0,'INV0000010',2.00,0.00,0.00,0.00,'2021-03-17 04:34:13','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('5656a019-bdeb-4665-a494-ccc4aa4eb2b9',1,'INV0000009',1.00,2.00,4000.00,1.00,'2021-03-17 04:23:27','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('599a6113-efd6-4d78-938f-4a5fe0c34bcf',1,'INV0000013',16.00,20.00,4000.00,4.00,'2021-03-17 04:43:14','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('95ff193d-d1d9-46cc-8a65-b750cda6001c',1,'INV0000012',1.00,1.00,4000.00,0.00,'2021-03-17 04:38:27','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('ae41d860-a928-43ca-9894-473dc42d8905',1,'INV0000011',1.00,1.00,4000.00,0.00,'2021-03-17 04:37:42','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('af3508a5-ce17-44a1-ae91-cadc684b6a63',1,'INV0000006',1.00,2.00,4000.00,1.00,'2021-03-17 04:11:32','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('ba26ba5b-a417-45f2-869f-88a43d7f0cba',1,'INV0000007',9.00,10.00,4000.00,1.00,'2021-03-17 04:14:03','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931'),('c0fa5a7b-e452-495f-a889-0b97b29ac442',1,'INV0000003',1.67,3.00,4000.00,1.33,'2021-03-17 02:12:31','174084d3-74e4-495b-8e00-cb44eadcbf15','8dc2025c-fffb-4ed2-b979-8ad039beb931');
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
INSERT INTO `tbl_product` VALUES ('61889423-11fc-4a71-8f74-956385dfe148','Coca Cola Original taste','',1,1.00,'dollar','',NULL,'f6f21ba3-c4a8-4662-8b86-4ead6c942122.jpeg','','[]','2021-03-16 14:37:03','174084d3-74e4-495b-8e00-cb44eadcbf15','df5aefd8-ad60-43f7-8998-999afc685739','c2aa2b63-ef9b-4526-8204-f280c527c5d2'),('9110984e-9165-4814-b76f-9b9ac995f8be','Collapsible Water Bottle','',1,13.00,'dollar','',NULL,'b432f03f-3e5c-415b-9a80-41d89ab7f926.png','','[]','2021-03-17 04:39:13','174084d3-74e4-495b-8e00-cb44eadcbf15','b32f6f46-2465-4797-9a0c-5d61e899fbbb','36da4fff-c844-423e-a8a8-bc70c3e2d2c7'),('ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','Spaghetti Italy','',0,3.00,'dollar','10',NULL,'17b11d0c-c8b5-4df8-8fc5-960e76157ba6.png','','[\"174084d3-74e4-495b-8e00-cb44eadcbf15\"]','2021-03-16 14:38:38','174084d3-74e4-495b-8e00-cb44eadcbf15','b32f6f46-2465-4797-9a0c-5d61e899fbbb','6a5e8dfb-8d3d-42a3-8d7e-34344c979627');
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
INSERT INTO `tbl_profile` VALUES ('96ad051c-71b8-41c0-bda6-b74c578eaede','ac143906-bbea-4b5a-b048-66aa1d245b5d.jpg','Single','017 467 617','','','','','2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('aa77f58f-5032-4af4-b2a3-88825d57e4ff','default.png','','','','','','','2021-03-16 14:41:11','a6c7f888-9065-4b76-8feb-35e3f2296f22');
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
INSERT INTO `tbl_property` VALUES ('7af37d16-4ade-479d-9a4a-159ebad5915f','Size','text','','2021-03-16 14:36:17','174084d3-74e4-495b-8e00-cb44eadcbf15','6a5e8dfb-8d3d-42a3-8d7e-34344c979627'),('9ded7901-7b79-488b-9699-21305a77e6c7','Size','text','','2021-03-17 04:39:25','174084d3-74e4-495b-8e00-cb44eadcbf15','36da4fff-c844-423e-a8a8-bc70c3e2d2c7');
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
INSERT INTO `tbl_quantity` VALUES ('19dd738a-74f8-45e4-83da-50baf93a529b',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','d0643ce7-ee98-485e-9774-871b4162b98c'),('24c3f73d-beb3-4e17-8314-a151fe3e383e',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','78836e70-e4d3-4cb2-b5d3-f8c80b4ddf5a'),('4138572b-647d-497b-b35d-0ba98484f262',2,2,'47f28860-5f44-4fae-aa41-bf1ac1ff5b40','36a9248e-fd91-4ff9-87b8-83879e6dd2ca'),('4ce2dfa4-6fd6-4b7a-94a0-d4143485572b',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','839177fa-98c7-445c-97b9-209543a89b0b'),('72e317c0-68dc-4635-b9b8-49b5b236b426',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','2dfe0e20-f0b2-47bf-9e8a-e07700452a78'),('74a51a29-9f95-41b7-b3fb-1d96ba2b8609',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','c0b8eeb6-e3a7-4c61-ab29-fc813f93b8fe'),('ad53db69-dadf-43c2-90e3-970c57bcc202',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','e46b81d7-d6fe-4e3a-bec0-b6fc0a27fd66'),('b7d8f858-a37a-4fa4-933f-e50d5304e79e',2,2,'47f28860-5f44-4fae-aa41-bf1ac1ff5b40','e8bb0a21-f3b5-434c-944e-f157b6d2d87d'),('c66ecc25-318a-4695-8336-5d837ae29003',2,2,'47f28860-5f44-4fae-aa41-bf1ac1ff5b40','5d10cf94-7192-4001-afbe-660d2663b4a2'),('d9321cbb-45d6-4ceb-9738-5e36251871b3',4,4,'fc39a817-9ae2-4c0b-99bf-d49386484f00','834f2cbb-6652-4e82-862c-de526d2c8557'),('f0752dfa-b0bc-46df-888e-07c5da08f39d',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','c8b9522f-57f2-4eb9-b4f3-1c0535f2d872'),('fb452698-41d8-40d8-9948-3a6bf53551f1',2,2,'fc39a817-9ae2-4c0b-99bf-d49386484f00','32e21ea8-8cbe-490c-aa21-885fa7172b8a');
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
INSERT INTO `tbl_role` VALUES ('a9dfdb1d-a8d4-4a00-a13e-a2bfa3e4ce94','Editor','Editor, Report',0,'2021-03-16 14:42:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ff681de8-3d05-450c-8d35-1b7f47326182','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_room` VALUES ('406b6934-5bb0-4ca3-9188-0cde9a269d4f','Room 2',10.00,'1h','Open','2021-03-16 14:40:32','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('4bfbc03b-aacf-4d09-906f-653290020874','Room 1',8.00,'1h','Close','2021-03-16 14:39:48','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('f5229a79-da5b-4909-bb73-c19150dbc970','Room 10',10.00,'1h','Open','2021-03-16 14:40:02','174084d3-74e4-495b-8e00-cb44eadcbf15','46dbf3eb-34ca-48fb-bdd0-6d53360bcdbd');
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
INSERT INTO `tbl_stock` VALUES ('47f28860-5f44-4fae-aa41-bf1ac1ff5b40',8.00,'dollar',4000.00,4,'',0.00,'2021-03-17 04:40:08','174084d3-74e4-495b-8e00-cb44eadcbf15','9110984e-9165-4814-b76f-9b9ac995f8be'),('fc39a817-9ae2-4c0b-99bf-d49386484f00',0.50,'dollar',4000.00,80,'',0.00,'2021-03-16 14:43:01','174084d3-74e4-495b-8e00-cb44eadcbf15','61889423-11fc-4a71-8f74-956385dfe148');
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
INSERT INTO `tbl_store` VALUES ('c3cb5134-a51e-450a-835f-dd59c9d42cfe','ឈ្មោះហាង','012 345 678','','2021-03-14 15:20:10');
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
INSERT INTO `tbl_transaction` VALUES ('0ea9a0d5-d3b7-4822-aa70-ad4367569d40',1,0,'0',10.00,10.00,1,10.00,'Room 10, 60min','f5229a79-da5b-4909-bb73-c19150dbc970','2021-03-17 04:45:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2dfe0e20-f0b2-47bf-9e8a-e07700452a78',1,1,'50',1.00,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:35:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2e97f1ff-5701-4169-8c6d-734f211761fe',1,0,'0',10.00,10.00,1,10.00,'Room 10, 60min','f5229a79-da5b-4909-bb73-c19150dbc970','2021-03-17 02:27:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('32e21ea8-8cbe-490c-aa21-885fa7172b8a',0,1,'50',1.00,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:34:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('36a9248e-fd91-4ff9-87b8-83879e6dd2ca',1,1,'50',16.00,16.00,2,0.00,'Collapsible Water Bottle-Large','9110984e-9165-4814-b76f-9b9ac995f8be','2021-03-17 04:42:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('48f88faf-8e86-4dde-8382-f8af8f19c4af',1,0,'0',5.00,5.00,1,5.00,'Room 2, 30min','406b6934-5bb0-4ca3-9188-0cde9a269d4f','2021-03-17 04:14:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5a5d4c42-dd24-4848-8dc8-2b07255e7ce1',1,0,'20',10.00,8.00,1,8.00,'Room 2, 60min','406b6934-5bb0-4ca3-9188-0cde9a269d4f','2021-03-16 14:46:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5d10cf94-7192-4001-afbe-660d2663b4a2',1,1,'50',5.00,16.00,2,0.00,'Collapsible Water Bottle-Large','9110984e-9165-4814-b76f-9b9ac995f8be','2021-03-17 04:45:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6f0cd2bd-1754-4d3a-8b39-48d1b5afd831',1,1,'0',3.00,3.00,1,3.00,'Spaghetti Italy-Double','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','2021-03-16 14:43:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('74aa7fba-2731-497f-89e9-31b6c2f74fc0',1,1,'0',3.00,6.00,2,6.00,'Spaghetti Italy-Normal','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','2021-03-16 14:45:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('78836e70-e4d3-4cb2-b5d3-f8c80b4ddf5a',1,1,'0',1.00,2.00,2,1.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-16 14:43:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('834f2cbb-6652-4e82-862c-de526d2c8557',1,1,'50',0.50,2.00,4,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:14:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('839177fa-98c7-445c-97b9-209543a89b0b',1,1,'50',1.00,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:30:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('964fb4dd-37a8-4294-9444-53985d6334a7',1,1,'0',3.00,3.00,1,3.00,'Spaghetti Italy-Normal','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','2021-03-17 02:38:15','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b8f3944d-4cd2-4cb8-a56a-f94a4a6f46a2',1,0,'0',1.67,1.67,1,1.67,'Room 2, 10min','406b6934-5bb0-4ca3-9188-0cde9a269d4f','2021-03-17 02:22:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c0b8eeb6-e3a7-4c61-ab29-fc813f93b8fe',1,1,'50',1.00,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:38:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c5d96185-56a9-4e07-a118-b0c6da223e9e',1,0,'10',5.00,4.50,1,4.50,'Room 2, 30min','406b6934-5bb0-4ca3-9188-0cde9a269d4f','2021-03-17 02:49:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c8b9522f-57f2-4eb9-b4f3-1c0535f2d872',1,1,'50',0.50,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-16 14:46:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d0643ce7-ee98-485e-9774-871b4162b98c',1,1,'0',1.00,2.00,2,1.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:16:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e46b81d7-d6fe-4e3a-bec0-b6fc0a27fd66',1,1,'50',0.50,1.00,2,0.00,'Coca Cola Original taste','61889423-11fc-4a71-8f74-956385dfe148','2021-03-17 04:11:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e8bb0a21-f3b5-434c-944e-f157b6d2d87d',1,1,'50',16.00,16.00,2,0.00,'Collapsible Water Bottle-Large','9110984e-9165-4814-b76f-9b9ac995f8be','2021-03-17 04:47:46','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_user` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','','','Admin','',NULL,'','$2b$12$B212Iy7eHShZmr2IRiTb7.K.9a3.PSDXq5JmKiO5UAKuRnL8mAqVK','light','khmer','e4769719-e2a2-4a1b-9685-09d045a4a20e','0d99c0a5-ed76-49b1-ab63-f9b501012a79','8dc2025c-fffb-4ed2-b979-8ad039beb931',1,1,'2021-03-14 15:20:10'),('a6c7f888-9065-4b76-8feb-35e3f2296f22','','','សាកល្បង','M',NULL,'','$2b$12$5BeKKHjf82vpiCMNh.GkJu8Hn77nZWB1G1DCPBzwUwPPFhlnHbcAa','light','english','f6fd197f-a5a1-4a82-893d-bd9ac40ffa25','','',1,0,'2021-03-16 14:41:11');
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
INSERT INTO `tbl_value` VALUES ('031784fa-c1f7-4198-acc8-1d7682001de7','Small',0.00,'dollar','','9110984e-9165-4814-b76f-9b9ac995f8be','9ded7901-7b79-488b-9699-21305a77e6c7','2021-03-17 04:39:34','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7c5a88ad-79b6-4a3d-a046-877125c35685','Double',2.00,'dollar','','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','7af37d16-4ade-479d-9a4a-159ebad5915f','2021-03-16 14:39:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('93658a0c-826b-4ef7-a72b-539a6f77f899','Normal',0.00,'dollar','','ee5d7de4-6592-416a-9a56-6b0bf8bb5a44','7af37d16-4ade-479d-9a4a-159ebad5915f','2021-03-16 14:38:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e5eaf2e1-55b9-46fd-b039-2f5cfcafd060','Large',3.00,'dollar','','9110984e-9165-4814-b76f-9b9ac995f8be','9ded7901-7b79-488b-9699-21305a77e6c7','2021-03-17 04:39:39','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `user_role` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','ff681de8-3d05-450c-8d35-1b7f47326182'),('a6c7f888-9065-4b76-8feb-35e3f2296f22','a9dfdb1d-a8d4-4a00-a13e-a2bfa3e4ce94');
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

-- Dump completed on 2021-03-17 11:52:27
