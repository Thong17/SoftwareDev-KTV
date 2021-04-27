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
INSERT INTO `payment` VALUES ('61ec041e-6058-4005-9fd1-4d294b13a691','3749cc6d-876b-4638-9469-f9e8f595623f'),('a396ab53-1af1-42f2-9e59-fa017449c3eb','2d270f66-4da2-4ef8-808d-a48a4547eb23'),('c99cd106-5c35-4eb5-afd4-3b7688f89356','3b0dbb20-56d2-40be-b63a-f7d98f0deb30'),('c7469c23-00ef-4fe1-85b7-f57dd1d3d9fa','6b332cf7-f64b-4472-9ae9-96285bf75f51'),('ffed8eba-29ec-41d0-a82f-65f5842e1c68','96df7419-9321-49f3-885e-681a04730084'),('390f293a-76bc-43ec-8937-92b5f31325c3','0f2323e0-3e25-4ab7-8321-1b32016e69d8'),('a67dd160-8261-4b6b-96a0-f334daa1e43c','74d9045a-2596-45f5-b335-944171929622'),('dca24ca6-aacf-4d18-b96b-42683c5f723f','3c72e49b-6b6f-4b5d-910c-03d34463da76'),('dde877ec-f60b-4bc3-9408-21e4e6fa9c74','f2df375d-40b6-481c-941b-0a2dce13497a'),('81a16ac4-b887-4d4e-a6d6-5e0bb22fa693','d9c7ba8c-99b4-4c8d-9865-9bbaf04fc7e1'),('90af062a-a8e8-4c9c-9303-87d6fafcc9d9','423a9d17-68ec-49b8-ae8d-92e82d5c7143'),('d006a919-f50f-456d-a9ff-e2457154ac5d','9fe6fb5b-2944-49eb-b9b7-f6eed7770bbd'),('c9473840-43aa-45f8-91a9-121a047c651b','999fca9f-c71f-4fc9-b0eb-a9deb2744858'),('22bbbaa2-67ec-4872-8bbe-29b5968b1047','277e43de-6096-421b-80dc-0ddf985ef70f'),('48dc4cd2-a628-49a9-a0e2-1d62bde7a5f9','80029c93-52ad-4bfc-b0ff-c2ce717c5539'),('39d502cf-4986-4a04-9334-c6921904ccb1','2ac759d1-5bae-48e6-805e-2c06a740c52d'),('1bda6a1f-b2b2-4c70-9217-cb854a3b4f81','61719352-2475-434f-a369-182f2d67847e'),('a416fc2c-4a13-4eff-a088-213069b969ff','1d7fc823-614b-43da-b923-edaf6d0beb68'),('f8f4851c-de02-4250-9279-b14917d42037','00f050f8-ba67-4aea-97a8-554dc36b55d7'),('3c1f22d3-f49e-474c-b34a-78a7f2a40f10','eb3246ea-a654-4f62-b358-3ffdf870e623'),('3c1f22d3-f49e-474c-b34a-78a7f2a40f10','4c297c19-969a-46c0-b258-8db498f0bd43');
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
INSERT INTO `tbl_activity` VALUES ('00915f21-e5f8-4383-8936-8498c943452e','Admin has checked out payment INV0000003','Payment','2021-04-21 10:21:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('0182929a-54ae-4b9a-a4a3-14027319ed19','Admin has added order from 2021-04-22 11:15 PM to 2021-04-22 12:15 PM for customer Customer','Add','2021-04-22 02:17:21','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('023dfdf6-f07d-4a6d-b26a-518ef7ba586a','Admin has checked out payment INV0000016','Payment','2021-04-21 16:12:36','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('053b4a4f-c6a9-4f55-a84e-5d82c2fb0de0','Admin has checked out payment INV0000008','Payment','2021-04-21 11:58:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('059a7a01-e4ae-4fce-92d5-debfacb11cde','Admin has added transaction: Coca Cola Original taste','Add','2021-04-22 01:57:03','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('0b0b2177-5d2d-4c00-9ac7-136106bac85f','Admin has added order from 2021-04-21 06:48 PM to 2021-04-21 07:48 PM for customer Customer','Add','2021-04-21 11:49:17','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('0da22c5c-27a4-4918-987f-ba5fd8b4441b','Admin has checked out payment INV0000004','Payment','2021-04-21 10:05:42','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('0ececf7e-a4ba-48ff-8dde-075996e86e31','Admin has ordered invoice: INV0000015','Order','2021-04-21 13:28:12','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('1a3bc1f1-5a52-4eec-8891-9a6647c6e458','Admin has added product Coca Cola Original taste','Add','2021-04-21 09:51:52','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('1e8c326a-18c5-464e-8274-606d0d4ed6a1','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 09:53:51','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('23b0b999-5c34-46a7-b8db-5cfe612419e5','Admin has checked out payment INV0000020','Payment','2021-04-22 02:23:56','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('23dfeed8-3dc9-427f-bd8e-38fbd5878392','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 16:12:29','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('265159f3-a477-4bc5-8797-fdc76f8091b8','Admin has checked out payment INV0000019','Payment','2021-04-22 01:57:05','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('26edca92-b009-4153-ba2c-b67aaf088dae','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 13:26:53','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('28eec8c3-09d8-4520-af2c-54b13c7bf76f','Admin has checked in order from: 09:07 AM to 10:07 AM','Check In','2021-04-22 02:16:40','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('2af29d94-0d2e-4bb8-b4f3-8e88c5491be7','Admin has logged in','Login','2021-04-22 01:44:21','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('2b53b0cf-8689-401d-8d56-ad45f68312a3','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 11:58:30','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('2fc677f2-9c04-4ab9-8329-ce504f28cab2','Admin has added order from 2021-04-22 09:06 AM to 2021-04-22 10:06 AM for customer Customer','Add','2021-04-22 02:07:17','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('3032c35a-bef9-41dd-b4ee-cc717403df77','Admin has added category: Beverage in category','Add','2021-04-21 09:51:38','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('315a38c2-632e-42ac-876f-11fe304d044a','Admin has added transaction: Coca Cola Original taste','Add','2021-04-22 02:23:18','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('31a93aed-6cd1-40fd-ac8e-d7259db59641','Admin has checked out payment INV0000015','Payment','2021-04-21 13:29:35','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('31e758b4-7b6e-491f-beb6-9247161caf99','Admin has ordered invoice: INV0000018','Order','2021-04-21 16:24:01','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('327d0f9e-7120-4645-b410-7c06173c7cfd','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 10:22:46','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('32bfb8d3-2970-47af-9bd2-541617811308','Admin has ordered invoice: INV0000001','Order','2021-04-21 09:52:21','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('33a9efff-6985-4f31-9a11-b29e508e6482','Admin has checked out payment INV0000001','Payment','2021-04-21 09:53:07','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('44a91f46-1ee2-4ceb-9dbe-2266e00137f3','Admin has checked out payment INV0000007','Payment','2021-04-21 11:57:13','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('44c74eb6-608a-4765-93a5-b7e9b8b0f65f','Admin has ordered invoice: INV0000016','Order','2021-04-21 16:12:31','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('488cb0b4-7403-4a7c-87b2-05e9c72ba069','Admin has upload photo for product: Coca Cola Original taste','Upload','2021-04-21 09:51:58','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('489ccc8b-86cd-4c86-ac1d-b3213b8fc3c2','Admin has checked out payment INV0000012','Payment','2021-04-21 13:22:43','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('4cb7b57e-32ea-4e09-9791-a90d89a50fe5','Admin has ordered invoice: INV0000004','Order','2021-04-21 10:00:13','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('5802e18f-bf21-4c81-98fd-403aa9dfc4ce','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 13:25:41','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('5b4995f7-3de3-4cde-b2b2-2329faf66531','Admin has added brand: Coca Cola in brand','Add','2021-04-21 09:51:44','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('5f8daf7c-80aa-43ba-ab73-a528c0ff41d1','Admin has ordered invoice: INV0000008','Order','2021-04-21 11:58:31','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6326b385-845d-4cee-80aa-73fae4ad7147','Admin has checked out payment INV0000003','Payment','2021-04-21 09:57:25','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('63e067fe-cd32-4483-811f-7ed73142ba51','Admin has checked out payment INV0000013','Payment','2021-04-21 13:26:01','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('685540fb-db8e-4896-90d5-41acb39c55e9','Admin has checked out payment INV0000005','Payment','2021-04-21 10:23:23','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('69709fe0-aeb7-4f13-9755-7e470229cad0','Admin has added room: Room 1','Create','2021-04-21 11:48:41','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6a2143de-2899-497f-a45a-30054190b179','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 16:12:56','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6a58d042-57f7-4545-8cd7-f7de9ed38901','Admin has checked out payment INV0000013','Payment','2021-04-21 13:26:38','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6c7d10af-e7a4-40b7-b069-282ffa34f717','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 12:08:48','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6cb933ea-b818-4238-b94c-d7ff2c8eda2d','Admin has added order from 2021-04-22 11:15 AM to 2021-04-22 12:15 AM for customer Customer','Add','2021-04-22 02:18:08','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6e7fdb82-9b7b-46de-aa37-a7d39fafdef1','Admin has checked out payment INV0000012','Payment','2021-04-21 13:13:23','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('7364a113-6bde-4a3f-bc33-1e1393c377d1','Admin has ordered invoice: INV0000013','Order','2021-04-21 13:25:43','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('76b2e01a-e099-4947-981e-89768c1862d6','Admin has ordered invoice: INV0000006','Order','2021-04-21 10:33:22','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('778fb95b-4bd2-4563-b787-1383d74402eb','Admin has checked out payment INV0000017','Payment','2021-04-21 16:13:04','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('77cf4e50-4f72-4735-b88e-ed9f9118583d','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 10:00:12','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('7a891ef2-a1f0-4641-acca-26e6bc28278a','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 12:06:06','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('7de83334-b404-437c-8222-ce6fdd39ae24','Admin has checked out payment INV0000010','Payment','2021-04-21 12:33:38','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('84804c07-04e1-4e50-b11b-05e69be20a43','Admin has checked out payment INV0000001','Payment','2021-04-21 09:53:24','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('85a3e8de-f23e-40cd-8139-b9f6d5980417','Admin has ordered invoice: INV0000009','Order','2021-04-21 11:58:55','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('87ea243f-07f9-4f30-8295-f454b2b6c50b','Admin has removed order from 2021-04-22 11:16 PM to 2021-04-22 12:16 PM for customer Customer','Deleted','2021-04-22 02:17:49','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('894253ee-12a9-4589-9bfa-765f321649fb','Admin has ordered invoice: INV0000005','Order','2021-04-21 10:22:48','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('91bfaa2c-9afc-498c-a1e3-5490a05e7885','Admin has modified language from english','Modify','2021-04-21 16:15:25','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('929c80d2-36bd-481b-9fc2-6da2e0b45162','Admin has checked out payment INV0000010','Payment','2021-04-22 01:44:47','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('92a69118-5917-43af-a2d8-3276c903fd83','Admin has ordered invoice: INV0000002','Order','2021-04-21 09:53:53','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('95fe2744-4183-4f6c-baba-c0eda8a463a9','Admin has checked out payment INV0000011','Payment','2021-04-21 13:25:20','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('9e62250a-7134-47c0-93b1-8d75b4ad6f19','Admin has checked out payment INV0000004','Payment','2021-04-21 10:22:24','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('9fc387f4-b16a-4987-9626-2de386efc0f8','Admin has ordered invoice: INV0000010','Order','2021-04-21 12:06:08','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('9fec4c7d-7fde-4bfc-877b-f1dbef5b4e01','Admin has checked out payment INV0000002','Payment','2021-04-21 09:56:11','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('a23bf184-75a6-4bc9-91c5-13f51124f126','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 09:52:20','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('a576ac78-59ae-4073-9af5-77893a58880b','Admin has checked out payment INV0000020','Payment','2021-04-22 02:24:11','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('ac3d6b0f-a105-4e08-ac65-4e16a611f0cb','Admin has ordered invoice: INV0000017','Order','2021-04-21 16:12:58','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('ac87fb89-262d-4692-bcdc-1fd57e56e1b2','Admin has ordered invoice: INV0000014','Order','2021-04-21 13:26:58','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('adbf2ebb-325e-4dfc-9915-5372f33499ba','Admin has checked in order from: 06:49 PM to 07:49 PM','Check In','2021-04-21 11:56:45','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('b47216cb-5c07-4144-8341-b50fbd646690','Admin has checked out payment INV0000009','Payment','2021-04-21 12:01:45','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('b8124da7-7208-46a6-8aad-5d9f62d35826','Admin has ordered invoice: INV0000003','Order','2021-04-21 09:57:19','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('b94b2883-c149-4f82-b7a3-9a5e645a104e','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 11:58:54','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('b9a2ac77-17e6-445b-822d-cd680098f901','Admin has modified theme from light','Modify','2021-04-21 09:51:32','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('ba2826e0-72c9-48ea-908c-5f72a7163a1b','Admin has updated transaction Room 1, 7min','Modified','2021-04-22 02:23:14','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('baa2e28f-1500-453e-843c-6628dd4f8076','Admin has added transaction: Coca Cola Original taste','Add','2021-04-22 02:05:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('be2abfd7-0389-47c6-b9d2-d216192fc5fc','Admin has ordered invoice: INV0000011','Order','2021-04-21 12:08:49','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('c0a1f21e-04c9-4bd0-ac35-5f34ebd15197','Admin has opened drawer','Open','2021-04-21 09:52:17','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('c3316cce-c95e-400a-a4af-a74a49901b51','Admin has checked out order from: 09:07 AM to 10:07 AM','Check Out','2021-04-22 02:23:02','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('c915ae3f-bdbe-424f-93c1-c8788c282687','Admin has checked out payment INV0000014','Payment','2021-04-21 13:27:45','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('cbd9ddbf-a1d5-4ad8-80b1-922f623c7b57','Admin has checked out payment INV0000018','Payment','2021-04-22 01:45:03','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('ccc70250-2cce-4894-bcf4-778be1d19387','Admin has added stock: 0.2/USD/100/4000/None/20.0 in product Coca Cola Original taste','Add','2021-04-21 09:52:08','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('dc987f4f-2136-432e-a48e-e659cb18fa59','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 11:56:48','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('de596a6f-90da-4ce6-8fec-cd24703dc016','Admin has checked out payment INV0000011','Payment','2021-04-21 13:04:49','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('e1715712-8b40-4dff-8650-7b5c6e8a22e6','Admin has logged in','Login','2021-04-21 09:51:24','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('e17ff20b-e97e-4d78-a3f8-837954397fbc','Admin has checked out payment INV0000011','Payment','2021-04-21 13:24:02','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('e2896c4c-1c45-4df4-8d7d-87076679149f','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 13:06:30','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('e8829a7e-38f8-4cc5-aaf7-cd73b33cc2ed','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 09:57:17','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('f027672c-7eaf-4be0-b5af-7567cd423146','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 10:33:19','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('f67a676e-2792-4978-b3fa-389ed26a4a09','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 13:28:10','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('f86e6cd1-12f5-451a-840c-1b7b3526a5da','Admin has checked out order from: 06:49 PM to 07:49 PM','Check Out','2021-04-21 11:56:55','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('fcbc494b-8541-413d-8087-a2b68e7015f3','Admin has added transaction: Coca Cola Original taste','Add','2021-04-21 16:23:59','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('fd1bb071-1564-4868-9469-ac1f4e8ac34c','Admin has checked out payment INV0000006','Payment','2021-04-21 10:35:16','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('fdc1c9e3-06a1-46c8-981b-c83fa25e430b','Admin has ordered invoice: INV0000019','Order','2021-04-22 01:57:04','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('ff087312-2a58-4a3f-8104-12a6d5d9c45a','Admin has ordered invoice: INV0000012','Order','2021-04-21 13:06:32','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_appearance` VALUES ('b99e0c7b-31d8-4265-84ed-72e011487ca8','','','','','','6323fee0-ac6f-46be-b509-e3995bf0f47b');
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
INSERT INTO `tbl_brand` VALUES ('e513a9fe-5bb9-440b-b1e7-b3be75897411','Coca Cola','','2021-04-21 09:51:44','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_category` VALUES ('0f84d930-c623-4d85-b08b-5221517a3dc0','Beverage','default.png','','2021-04-21 09:51:38','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_checkin` VALUES ('0cd69fa4-037b-43cc-8294-6d5cc164e9ff','2021-04-21 11:56:45','97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-21 11:56:45','27752096-bc47-474b-a2f2-b6f068fa8780','a67dd160-8261-4b6b-96a0-f334daa1e43c'),('352a4742-f92c-4c36-9360-9e93e225968f','2021-04-22 02:16:40','97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-22 02:16:40','f47eb7cb-e9e1-4a43-82eb-5595cb7e8121','3c1f22d3-f49e-474c-b34a-78a7f2a40f10');
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
INSERT INTO `tbl_checkout` VALUES ('a7f7cf05-cb77-40e6-ae1a-7565f9fa3aa0','2021-04-21 11:56:55',0,'97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-21 11:56:55','27752096-bc47-474b-a2f2-b6f068fa8780'),('c85e0c74-5e14-4f61-92c1-94349646ce5b','2021-04-22 02:23:02',7,'97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-22 02:23:02','f47eb7cb-e9e1-4a43-82eb-5595cb7e8121');
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
INSERT INTO `tbl_customer` VALUES ('a5a3b590-22ee-4544-aed5-fb6b956ade96','Customer',NULL,'','','2021-04-21 09:50:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_drawer` VALUES ('c1ad8315-50b8-42b6-9b1a-014810e14598','f0f42a58-e4d1-4000-9688-11b2b6aadc67',4200.00,'Default',0.00,'2021-04-21 09:52:17',NULL,'97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_floor` VALUES ('1b49e306-06cd-4708-a057-29ef35c85485','Ground Floor','2021-04-21 09:50:37','3616411c-9634-4327-a7a3-6dd979b71f08');
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
INSERT INTO `tbl_order` VALUES ('27752096-bc47-474b-a2f2-b6f068fa8780',1,1,'2021-04-21 11:49:00','2021-04-21 12:49:00','de9bb354-eb7f-4259-9d29-886dff033a83','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-21 11:49:17'),('897aefcb-3df4-449f-b236-ffebb6f45700',0,0,'2021-04-22 04:16:00','2021-04-21 17:16:00','de9bb354-eb7f-4259-9d29-886dff033a83','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-22 02:18:08'),('f47eb7cb-e9e1-4a43-82eb-5595cb7e8121',1,1,'2021-04-22 02:07:00','2021-04-22 03:07:00','de9bb354-eb7f-4259-9d29-886dff033a83','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','2021-04-22 02:07:17');
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
INSERT INTO `tbl_outcome` VALUES ('a40bc1c5-0515-48cd-bc4e-f79569c47130',1,'Coca Cola Original taste x100',20.00,'2021-04-21 09:52:08','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_payment` VALUES ('1bda6a1f-b2b2-4c70-9217-cb854a3b4f81',1,'INV0000017',0.5000,0.5000,0.0000,'0,2100',4200.0000,0.0000,'2021-04-21 16:12:58','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('22bbbaa2-67ec-4872-8bbe-29b5968b1047',1,'INV0000014',2.5000,2.5000,0.0000,'0,20000',4200.0000,2.3750,'2021-04-21 13:26:58','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('390f293a-76bc-43ec-8937-92b5f31325c3',1,'INV0000006',1.0000,1.0000,0.0000,'0.5,4000',4200.0000,0.4524,'2021-04-21 10:33:22','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('39d502cf-4986-4a04-9334-c6921904ccb1',1,'INV0000016',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-04-21 16:12:31','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('3c1f22d3-f49e-474c-b34a-78a7f2a40f10',1,'INV0000020',1.5000,1.5714,0.0000,'0,6300',4200.0000,0.0000,'2021-04-22 02:16:40','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('48dc4cd2-a628-49a9-a0e2-1d62bde7a5f9',1,'INV0000015',5.0000,5.0000,0.0000,'1,20000',4200.0000,0.8000,'2021-04-21 13:28:12','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('61ec041e-6058-4005-9fd1-4d294b13a691',1,'INV0000001',0.5000,0.5000,0.0000,'0,2100',4200.0000,-0.0012,'2021-04-21 09:52:21','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('81a16ac4-b887-4d4e-a6d6-5e0bb22fa693',1,'INV0000010',5.0000,5.2500,0.0000,'0,21100',4200.0000,0.0125,'2021-04-21 12:06:08','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('90af062a-a8e8-4c9c-9303-87d6fafcc9d9',1,'INV0000011',0.5000,0.5369,0.0000,'0.01,2100',4200.0000,-0.0020,'2021-04-21 12:08:49','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('a396ab53-1af1-42f2-9e59-fa017449c3eb',1,'INV0000002',1.0000,1.0000,0.0000,'0,4200',4200.0000,-0.0500,'2021-04-21 09:53:53','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('a416fc2c-4a13-4eff-a088-213069b969ff',1,'INV0000018',0.5000,0.5000,0.0000,'0,2100',4200.0000,0.0000,'2021-04-21 16:24:01','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('a67dd160-8261-4b6b-96a0-f334daa1e43c',1,'INV0000007',0.5000,0.5000,0.0000,'0,4000',4200.0000,0.4524,'2021-04-21 11:56:45','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('c7469c23-00ef-4fe1-85b7-f57dd1d3d9fa',1,'INV0000004',1.0000,1.0000,0.0000,'0.05,4000',4200.0000,0.0024,'2021-04-21 10:00:13','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('c9473840-43aa-45f8-91a9-121a047c651b',1,'INV0000013',5.0000,5.2381,0.0000,'0,21000',4200.0000,0.0000,'2021-04-21 13:25:43','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('c99cd106-5c35-4eb5-afd4-3b7688f89356',1,'INV0000003',1.0000,1.0000,0.0000,'0,4200',4200.0000,0.0000,'2021-04-21 09:57:19','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('d006a919-f50f-456d-a9ff-e2457154ac5d',1,'INV0000012',5.0000,5.2381,0.0000,'0,21000',4200.0000,0.0000,'2021-04-21 13:06:32','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('dca24ca6-aacf-4d18-b96b-42683c5f723f',1,'INV0000008',0.5000,0.5000,0.0000,'0,4000',4200.0000,0.4524,'2021-04-21 11:58:31','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('dde877ec-f60b-4bc3-9408-21e4e6fa9c74',1,'INV0000009',0.5000,0.5000,0.0000,'0,4000',4200.0000,0.4524,'2021-04-21 11:58:55','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('f8f4851c-de02-4250-9279-b14917d42037',0,'INV0000019',0.5000,0.0000,0.5000,'0,0',4200.0000,0.0000,'2021-04-22 01:57:04','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598'),('ffed8eba-29ec-41d0-a82f-65f5842e1c68',1,'INV0000005',0.5000,0.5000,0.0000,'0,2100',4200.0000,0.0000,'2021-04-21 10:22:48','a5a3b590-22ee-4544-aed5-fb6b956ade96','97827fc8-27ad-4807-8dcf-aa00c23ed82c','c1ad8315-50b8-42b6-9b1a-014810e14598');
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
INSERT INTO `tbl_product` VALUES ('6323fee0-ac6f-46be-b509-e3995bf0f47b','Coca Cola Original taste','',1,0.50,'USD',0.50,'',NULL,'da1a2877-44a8-4ec8-8f3a-a11b2ad568ce.jpeg','','[]','2021-04-21 09:51:52','97827fc8-27ad-4807-8dcf-aa00c23ed82c','e513a9fe-5bb9-440b-b1e7-b3be75897411','0f84d930-c623-4d85-b08b-5221517a3dc0');
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
INSERT INTO `tbl_profile` VALUES ('193c6193-4d7f-400a-bfdd-567396e1a900','default.png','Single','','','','','','2021-04-21 09:50:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_quantity` VALUES ('032c639c-ee04-4963-b4fb-6002576f0ddb',5,5,'a40bc1c5-0515-48cd-bc4e-f79569c47130','277e43de-6096-421b-80dc-0ddf985ef70f'),('12f97937-5526-4fa4-b079-3a739cea1283',2,2,'a40bc1c5-0515-48cd-bc4e-f79569c47130','6b332cf7-f64b-4472-9ae9-96285bf75f51'),('1a8d6428-e521-4c4d-b2cc-ba92ac516ac4',2,2,'a40bc1c5-0515-48cd-bc4e-f79569c47130','2d270f66-4da2-4ef8-808d-a48a4547eb23'),('257dffe5-a573-4e00-bbe7-f12e419c971c',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','61719352-2475-434f-a369-182f2d67847e'),('258cd7e0-adcb-423f-b8a3-a20cef3cf349',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','4c297c19-969a-46c0-b258-8db498f0bd43'),('28edadf6-9d1e-491e-b043-23bb941f4a4d',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','5ede8c7a-0e18-4bb7-b86d-f9b7cc0e4e5b'),('2b5ef91b-1597-4ebb-997b-083d929f9af7',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','00f050f8-ba67-4aea-97a8-554dc36b55d7'),('4fe6a92c-4ab5-42e8-bd6e-8dab101569e5',2,2,'a40bc1c5-0515-48cd-bc4e-f79569c47130','3b0dbb20-56d2-40be-b63a-f7d98f0deb30'),('509ca22c-de38-46a9-8fc1-82b109dd4b8a',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','2ac759d1-5bae-48e6-805e-2c06a740c52d'),('686fc635-30c2-4cf6-9077-70210beb9a0c',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','1d7fc823-614b-43da-b923-edaf6d0beb68'),('69e910cd-5d9e-41f0-80a0-d5951f90f087',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','f2df375d-40b6-481c-941b-0a2dce13497a'),('73fd70ed-ac4e-4989-ac67-64f8f5521259',10,10,'a40bc1c5-0515-48cd-bc4e-f79569c47130','9fe6fb5b-2944-49eb-b9b7-f6eed7770bbd'),('9321b5ee-8479-43cb-88dd-ddec565c551b',10,10,'a40bc1c5-0515-48cd-bc4e-f79569c47130','d9c7ba8c-99b4-4c8d-9865-9bbaf04fc7e1'),('9b67965a-c830-4b61-ba67-7b5652e9de7e',10,10,'a40bc1c5-0515-48cd-bc4e-f79569c47130','80029c93-52ad-4bfc-b0ff-c2ce717c5539'),('b2a0e46e-2f0a-43a6-8d09-8e909073e389',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','96df7419-9321-49f3-885e-681a04730084'),('bd2add5a-2017-4041-8e52-709c29c99590',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','3749cc6d-876b-4638-9469-f9e8f595623f'),('c07ec06f-5466-4290-b629-073db73e2840',2,2,'a40bc1c5-0515-48cd-bc4e-f79569c47130','0f2323e0-3e25-4ab7-8321-1b32016e69d8'),('c27ebcb8-fb6d-4abb-8ea2-6a99d292a25d',10,10,'a40bc1c5-0515-48cd-bc4e-f79569c47130','999fca9f-c71f-4fc9-b0eb-a9deb2744858'),('cf09f737-300c-429e-b0a8-f43462b9ec45',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','3c72e49b-6b6f-4b5d-910c-03d34463da76'),('e40cee02-cff2-42ae-afdd-4d9c5b045055',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','423a9d17-68ec-49b8-ae8d-92e82d5c7143'),('fdd74f53-8cb7-4afd-b926-0d67ef8b7e57',1,1,'a40bc1c5-0515-48cd-bc4e-f79569c47130','74d9045a-2596-45f5-b335-944171929622');
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
INSERT INTO `tbl_role` VALUES ('4c423fbe-2034-4975-9dce-a53d4565bb93','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-04-21 09:50:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_room` VALUES ('de9bb354-eb7f-4259-9d29-886dff033a83','Room 1',8.00,'1h','Open','2021-04-21 11:48:41','97827fc8-27ad-4807-8dcf-aa00c23ed82c','1b49e306-06cd-4708-a057-29ef35c85485');
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
INSERT INTO `tbl_stock` VALUES ('a40bc1c5-0515-48cd-bc4e-f79569c47130',0.20,0.20,'USD',4000.00,35,20.00,'',NULL,'2021-04-21 09:52:08','97827fc8-27ad-4807-8dcf-aa00c23ed82c','6323fee0-ac6f-46be-b509-e3995bf0f47b');
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
INSERT INTO `tbl_store` VALUES ('3616411c-9634-4327-a7a3-6dd979b71f08','Store Name','','','2021-04-21 09:50:37');
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
INSERT INTO `tbl_transaction` VALUES ('00f050f8-ba67-4aea-97a8-554dc36b55d7',0,1,'0',0.50,0.50,1,0.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-22 01:57:03','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('0f2323e0-3e25-4ab7-8321-1b32016e69d8',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 10:33:19','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('1d7fc823-614b-43da-b923-edaf6d0beb68',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 16:23:59','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('277e43de-6096-421b-80dc-0ddf985ef70f',1,1,'0',0.50,2.50,5,1.50,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 13:26:53','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('2ac759d1-5bae-48e6-805e-2c06a740c52d',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 16:12:29','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('2d270f66-4da2-4ef8-808d-a48a4547eb23',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 09:53:51','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('3749cc6d-876b-4638-9469-f9e8f595623f',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 09:52:20','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('3b0dbb20-56d2-40be-b63a-f7d98f0deb30',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 09:57:17','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('3c72e49b-6b6f-4b5d-910c-03d34463da76',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 11:58:30','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('423a9d17-68ec-49b8-ae8d-92e82d5c7143',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 12:08:48','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('4c297c19-969a-46c0-b258-8db498f0bd43',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-22 02:23:18','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('5ede8c7a-0e18-4bb7-b86d-f9b7cc0e4e5b',0,1,'0',0.50,0.50,1,0.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-22 02:05:37','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('61719352-2475-434f-a369-182f2d67847e',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 16:12:56','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('6b332cf7-f64b-4472-9ae9-96285bf75f51',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 10:00:12','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('74d9045a-2596-45f5-b335-944171929622',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 11:56:48','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('80029c93-52ad-4bfc-b0ff-c2ce717c5539',1,1,'0',0.50,5.00,10,3.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 13:28:10','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('96df7419-9321-49f3-885e-681a04730084',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 10:22:46','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('999fca9f-c71f-4fc9-b0eb-a9deb2744858',1,1,'0',0.50,5.00,10,3.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 13:25:41','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('9fe6fb5b-2944-49eb-b9b7-f6eed7770bbd',1,1,'0',0.50,5.00,10,3.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 13:06:30','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('d9c7ba8c-99b4-4c8d-9865-9bbaf04fc7e1',1,1,'0',0.50,5.00,10,3.00,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 12:06:06','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('eb3246ea-a654-4f62-b358-3ffdf870e623',1,0,'0',1.00,1.00,1,1.00,'Room 1, 7min','de9bb354-eb7f-4259-9d29-886dff033a83','2021-04-22 02:23:02','97827fc8-27ad-4807-8dcf-aa00c23ed82c'),('f2df375d-40b6-481c-941b-0a2dce13497a',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original taste','6323fee0-ac6f-46be-b509-e3995bf0f47b','2021-04-21 11:58:54','97827fc8-27ad-4807-8dcf-aa00c23ed82c');
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
INSERT INTO `tbl_user` VALUES ('97827fc8-27ad-4807-8dcf-aa00c23ed82c','','','Admin','',NULL,'','$2b$12$5rj3JqKQavd.If5kpRw9y.GW.41sK8gAx7XrdYQL1UDipXGbwLQbq','dark','khmer','067c6cda-8053-4656-819b-fc3a2b0403dd','5505d6f7-e805-46d6-81f4-3d0a7f568f88','c1ad8315-50b8-42b6-9b1a-014810e14598',1,1,'2021-04-21 09:50:37');
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
INSERT INTO `user_role` VALUES ('97827fc8-27ad-4807-8dcf-aa00c23ed82c','4c423fbe-2034-4975-9dce-a53d4565bb93');
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

-- Dump completed on 2021-04-22 10:51:33
