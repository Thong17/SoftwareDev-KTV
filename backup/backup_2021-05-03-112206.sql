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
INSERT INTO `owe` VALUES ('c55dd5b5-7a35-4490-bd43-b3a3eb80baf7','8c9c60ba-1eb0-46a0-9787-0e77455cc010'),('45662b32-f530-4740-ae43-ac6f1a281b69','8c9c60ba-1eb0-46a0-9787-0e77455cc010'),('822cfb29-08aa-40e4-8b5b-0c44a698982c','8c9c60ba-1eb0-46a0-9787-0e77455cc010');
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
INSERT INTO `owe_inv` VALUES ('c55dd5b5-7a35-4490-bd43-b3a3eb80baf7','8527a047-458a-4317-8c5e-f9572834e41f'),('45662b32-f530-4740-ae43-ac6f1a281b69','30526b8d-72fa-4d4d-b853-b3660bad7f31'),('822cfb29-08aa-40e4-8b5b-0c44a698982c','4ccdfabf-69d4-48f4-af86-7663f3270030'),('822cfb29-08aa-40e4-8b5b-0c44a698982c','e0b9013f-bc69-499b-ab06-17a9d1532d0b');
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
INSERT INTO `payment` VALUES ('14221c44-78b5-4518-924a-2386f9d8542e','84ae840f-4983-400e-868d-a1e450e21768'),('117da903-720c-4278-95c8-572435b9b98e','15f7d366-44d3-43cb-b675-017e9fa6f604'),('f08375a2-6a9f-4506-af1c-e7c9f38ed9a6','233cb77d-47aa-4f5e-acf1-b32b83c41541'),('b628b6ab-cacd-4a0b-8751-4a2e1ab29161','8076478b-ef81-46a7-885f-324b82ff9a82'),('49e4c53e-5aa7-47d0-897a-1ba0ebbe0929','9f0662d8-7032-4588-9649-4e58ab4ae95b'),('49e4c53e-5aa7-47d0-897a-1ba0ebbe0929','0dfcdb44-b0a0-4ecb-a46d-1bcab61c0b66'),('cdd49a78-ddd2-41b9-b759-3d1258e7dce7','d3032262-24df-417d-a295-7de1b81db137'),('18c0d99f-603a-4d81-b683-68078dbde28e','dabdddc7-73f4-4962-b41e-7cd35e280415'),('c55dd5b5-7a35-4490-bd43-b3a3eb80baf7','2afb6099-8ebc-4b39-b999-10e6b84eaaaf'),('71562966-9409-42be-abaa-6af9b5f8bd31','d02665f2-ba76-4606-9a28-b31fd8581dfa'),('e93580e9-6f5a-4c48-b6ab-6a8d3ab7e269','1e72de80-fd7b-4b66-925a-496e187565c9'),('6b9e6c35-bc8c-4b3d-8b30-1020496d8ef2','b4cc0e5d-c690-4645-bc24-1bbc0fc07577'),('6b9e6c35-bc8c-4b3d-8b30-1020496d8ef2','50b231d9-f838-42c8-a37f-2b0708339f13'),('45662b32-f530-4740-ae43-ac6f1a281b69','aabb447b-b789-434d-901c-30a07e5e0bf1'),('822cfb29-08aa-40e4-8b5b-0c44a698982c','6308806e-1d09-4d58-b88e-eb3e333a3cc3');
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
INSERT INTO `tbl_activity` VALUES ('054ff39a-7eac-4624-bd65-2fdf9d6348be','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 04:13:35','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('05e03fdf-e8d4-4a48-a228-f45fdcd7f2cb','Admin has updated transaction Room 1, 10min','Modified','2021-05-03 04:14:24','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('063b2f33-4e55-4b10-b40a-4e713cec3bd6','Admin has added room: Room 1','Create','2021-05-03 02:11:16','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('0679ba45-664d-46ac-8188-b8749a9b00cb','Admin has logged in','Login','2021-05-03 01:34:05','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('0740a7b2-3e8f-4713-9b7d-b7b10659ccb9','Admin has checked out payment INV0000002','Payment','2021-05-03 04:16:42','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('0cf7b98d-6b88-4ecb-b1a1-3fb57add53f9','Admin has opened drawer','Open','2021-05-03 01:35:19','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('1091e646-8b6a-4132-81ad-400c37c72c36','Admin has checked out payment INV0000011','Payment','2021-05-03 04:13:26','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('1bf5c4ed-9c99-47f9-93bd-238ba1b356e0','Admin has ordered invoice: INV0000012','Order','2021-05-03 04:13:37','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('265da5e5-3922-4041-bee1-dc5b14ec4adc','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 02:11:40','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('270c55bc-6e50-4fff-a77d-fa619abe8560','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-05-03 04:16:29','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('31d7ee47-f91c-4c6f-b277-de93d17b4872','Admin has checked out payment INV0000005','Payment','2021-05-03 01:58:41','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('35c19b95-95ad-47e2-9bc7-03737d8b1c91','Admin has checkout owe total: 1','Checkout','2021-05-03 04:18:34','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('35f59468-512e-4289-9886-d63883778962','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 04:18:08','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('3621b67b-b8c1-46dc-a22a-c296ae56933d','Admin has ordered invoice: INV0000006','Order','2021-05-03 02:06:10','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('374e493f-7670-4739-9faf-878ffed62d29','Admin has added category: Beverage in category','Add','2021-05-03 01:34:16','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('377e56e6-d2c6-4cb3-b554-2e4fe77265a2','Admin has ordered invoice: INV0000011','Order','2021-05-03 04:11:03','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('3ab5c059-95a8-4d99-b2af-f36ef041228e','Admin has added order from 2021-05-03 11:13 AM to 2021-05-03 11:13 AM for customer Thong','Add','2021-05-03 04:14:00','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('3b0f3456-dc8f-4539-9e50-9cbb84d4e4f2','Admin has checked out payment INV0000012','Payment','2021-05-03 04:13:43','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('3cd80bfb-9e1c-4e53-a3e1-54dbef5686ef','Admin has modified user: Admin','Modify','2021-05-03 02:29:05','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('3e3bec58-a3d0-4f41-a3d8-4787a260f02e','Admin has ordered invoice: INV0000014','Order','2021-05-03 04:18:10','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('42b14c34-21d4-403e-939d-f4a110e18be3','Admin has modified product from Coca Cola Original Taste//True/KHR/0.6250///None/Beverage','Modify','2021-05-03 04:21:19','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('44a3237b-fabc-4b24-b7e5-450d330d6948','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-05-03 04:15:21','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('44eb1a43-c3a6-405c-8e40-db21b692c003','Admin has added customer: Thong','Add','2021-05-03 03:02:36','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('49938c3d-2f71-4bfb-90d3-fd22dad43e79','Admin has added stock: 0.2/KHR/100/4000/None/20.0 in product Coca Cola Original Taste','Add','2021-05-03 01:35:06','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('49a3c4fe-d61c-4be9-9b7f-e8c8286aba53','Admin has ordered invoice: INV0000015','Order','2021-05-03 04:18:44','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('4c8d45ac-3f3f-470c-99ea-248de4e4e6bb','Admin has ordered invoice: INV0000004','Order','2021-05-03 01:56:07','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('4e7b0c0e-799d-4955-aa26-9b1a4de577ae','Admin has modified language from english','Modify','2021-05-03 02:12:09','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('54ec55bf-2022-4950-b735-82348aa0f753','Admin has updated transaction Room 1, 30min','Modified','2021-05-03 02:11:48','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('56721064-23d1-40bd-a0aa-4ebfe7c104b6','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 01:36:19','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('5b705f11-50f0-45ad-a49d-35579cafa2ec','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-05-03 01:34:46','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('5da8cfbf-fba2-4ab0-b8ed-cbcd19285f17','Admin has ordered invoice: INV0000002','Order','2021-05-03 01:36:02','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('60ebc0c7-45bf-48d5-857f-e58f4c637664','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 03:02:29','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('616a839d-d85d-434f-aafc-d74626199348','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 04:10:43','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('642f3e1b-8b86-41cf-8707-25fd26cfa23c','Admin has checkout owe total: 1','Checkout','2021-05-03 03:03:32','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('66ccf604-7029-475c-a39d-6cf434be7ea2','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 01:56:05','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('6c75d4a1-dc55-445b-ab15-630961f21c6f','Admin has checked out payment INV0000007','Payment','2021-05-03 02:12:00','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('70640319-7ca4-4583-b52b-ec66b27e7ff8','Admin has ordered invoice: INV0000001','Order','2021-05-03 01:35:21','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('767789a3-5b9c-4da8-9acd-d07e70da9a01','Admin has added Coca Cola Original Taste to favorite','Add','2021-05-03 03:09:35','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('7a943861-42f1-455f-b6f4-525e5c99ba67','Admin has checked out payment INV0000006','Payment','2021-05-03 02:06:14','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('7f0035a4-1498-4767-957a-c3660a242456','Admin has added category: Food in category','Add','2021-05-03 01:34:19','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('8009a164-a1f1-4178-af31-09a66f861823','Admin has added order from 2021-05-03 09:10 AM to 2021-05-03 09:10 AM for customer Customer','Add','2021-05-03 02:11:30','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('83ef83c9-a557-4571-9de5-8b22ceddb642','Admin has checked in order from: 11:14 AM to 11:14 AM','Check In','2021-05-03 04:14:11','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('85b5c9b6-2be4-4fc7-9b45-67938ad8cdaf','Admin has checked out payment INV0000008','Payment','2021-05-03 03:01:18','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('86eda03c-c326-4090-8d62-459644b13857','Admin has checked out payment INV0000009','Payment','2021-05-03 03:02:24','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('89181113-db42-4ca4-a9db-51052df9e337','Admin has checkout owe total: 1','Checkout','2021-05-03 04:18:56','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('89d404e1-f07e-41b1-a501-a64b8c2866c0','Admin has checked in order from: 09:11 AM to 09:11 AM','Check In','2021-05-03 02:11:38','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('8ab5717e-a4da-4973-9415-258fe385ee37','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 02:06:09','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('8e3ed738-18e7-4f4c-b243-0b44f7db4044','Admin has ordered invoice: INV0000003','Order','2021-05-03 01:36:20','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('90bdad85-49b1-4abf-9e76-e681413f698e','Admin has checked out payment INV0000014','Payment','2021-05-03 04:18:18','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('9260f5d2-37d6-4a93-8fef-7363d1a15b1f','Admin has ordered invoice: INV0000008','Order','2021-05-03 03:01:13','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('92be0cbd-9168-4923-96f8-febd01518998','Admin has modified expense from: Coca Cola Original Taste x100/25','Modify','2021-05-03 04:19:33','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('96653fd1-cbec-46cd-8dce-defc930efa4d','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 03:02:17','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('97095a81-6b44-456c-8426-1ccd7b27d58a','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 01:35:14','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('9a966cf5-2ba5-4ecf-90b0-cf98d37c46cc','Admin has ordered invoice: INV0000009','Order','2021-05-03 03:02:18','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('9dd83440-7aa5-466a-9958-500c150c2399','Admin has checked out payment INV0000001','Payment','2021-05-03 04:16:11','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('a38539a2-2c26-428d-a572-719980ef037e','Admin has added expense: test','Create','2021-05-03 03:09:12','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('a421aa6c-ddf8-4c41-ab16-4802df14ce8a','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 03:01:12','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('acbd6a97-9829-4d9d-a5e9-aec4e84ea97c','Admin has modified user: Thong','Modify','2021-05-03 02:31:08','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('b378510e-1860-486f-af1a-5bd29cab4216','Admin has checked out order from: 09:11 AM to 09:11 AM','Check Out','2021-05-03 02:11:47','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('ba614b1b-4a59-4895-a07c-2fe67d6ae1c8','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 01:36:00','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('bd8f50f6-1519-4726-bb82-56d711ee0b9a','Admin has checked out payment INV0000002','Payment','2021-05-03 01:36:13','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('c08e0294-e8c4-493d-8d64-cccb0683a76b','Admin has ordered invoice: INV0000005','Order','2021-05-03 01:58:35','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('c7b7b240-d7a7-4bec-9a7b-48f7193be89e','Admin has added product Coca Cola Original Taste','Add','2021-05-03 01:34:37','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('cf219527-b96c-4427-9289-7e2594236d91','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 04:14:12','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d109ffcf-1454-43e6-8ec7-6f402989acc2','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 01:58:32','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d2bb58a3-25fc-492c-a2b8-0b62c534dd42','Admin has added brand: Coca  in brand','Add','2021-05-03 01:34:25','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d5b7af14-81a7-4f25-a578-db725dbd4e55','Admin has checked out payment INV0000010','Payment','2021-05-03 03:02:44','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d6a166e3-2953-482c-8418-81a39167df84','Admin has checked out payment INV0000013','Payment','2021-05-03 04:14:39','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('e06aa1b7-7ba0-45fe-82e6-7e8e362de92a','Admin has checkout owe total: 1','Checkout','2021-05-03 04:19:05','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('e11583a2-4118-4049-9ae2-028443e87575','Admin has checked out payment INV0000003','Payment','2021-05-03 01:36:34','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('e3d6156f-601d-49aa-b8f4-5fe1990ade89','Admin has created user: THong','Created','2021-05-03 02:30:43','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('e838c60e-1116-41e6-91ff-762296db1a01','Admin has deleted expense: test','Delete','2021-05-03 03:09:18','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('ea4fe041-a46a-4033-aafd-5cd051eac04e','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 04:18:41','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('ecb4ae9f-2e06-4247-b84b-af5f1f393899','Admin has ordered invoice: INV0000010','Order','2021-05-03 03:02:39','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('f0f729ca-8b5b-4c24-9fec-4d98991e2713','Admin has checked out payment INV0000004','Payment','2021-05-03 01:56:14','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('f885eda4-baf9-4632-99a2-b505fea87498','Admin has checked out payment INV0000015','Payment','2021-05-03 04:18:45','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('fa683d56-22a1-4850-b0f5-f81467a1f887','Admin has checked out payment INV0000010','Payment','2021-05-03 03:03:14','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('fcb05fab-d5c8-44b2-b754-fd3c32f8667c','Admin has checked out payment INV0000001','Payment','2021-05-03 01:35:28','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('fcc813ca-5d97-4ecd-a9d5-cc025a072b86','Admin has checked out order from: 11:14 AM to 11:14 AM','Check Out','2021-05-03 04:14:23','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_appearance` VALUES ('ef9e0328-28fb-4fed-afe3-271aaca8e7d8','','','','','','6099db24-e081-486b-a9a1-afaba6c07312');
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
INSERT INTO `tbl_brand` VALUES ('54a711af-a453-40ea-ba12-9091d0147872','Coca ','','2021-05-03 01:34:25','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_category` VALUES ('21dce46f-ab44-4f9a-9825-88358136b466','Beverage','default.png','','2021-05-03 01:34:16','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d612f626-e6eb-48d8-8bb8-c4ac8f1a2de4','Food','default.png','','2021-05-03 01:34:19','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_checkin` VALUES ('10fbef93-0ff2-4d11-8af4-7861b2bb6a5d','2021-05-03 04:14:11','ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 04:14:11','f789f1be-e6c2-4bdf-850b-5394b264fe49','6b9e6c35-bc8c-4b3d-8b30-1020496d8ef2'),('26b0e707-7d48-4da9-94b6-76ada02373d5','2021-05-03 02:11:38','ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 02:11:38','cc479b13-66bb-491a-9cca-8c44e0e62623','49e4c53e-5aa7-47d0-897a-1ba0ebbe0929');
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
INSERT INTO `tbl_checkout` VALUES ('1d19a746-0313-4358-9c8f-e856898cfbed','2021-05-03 04:14:23',10,'ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 04:14:23','f789f1be-e6c2-4bdf-850b-5394b264fe49'),('e0633b03-d918-4e3e-af68-805ef666f9d2','2021-05-03 02:11:47',30,'ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 02:11:47','cc479b13-66bb-491a-9cca-8c44e0e62623');
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
INSERT INTO `tbl_customer` VALUES ('37d81f47-8fba-45b3-81d7-c01bc7446545','Customer',NULL,'','','2021-05-03 01:33:54','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('86962b37-7996-4028-b70a-9d957b5d7ac1','Thong',NULL,'','','2021-05-03 03:02:36','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_drawer` VALUES ('bdfa4c7f-1d84-4338-85af-4416ac1fd9f5','',4000.0000,'Default',0.0000,'2021-05-03 01:35:19',NULL,'ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_floor` VALUES ('3b4a7534-8c70-4be2-a2c9-b6f189959e9e','GF','2021-05-03 01:33:54','1ca8c832-e290-45d1-9018-2cf995111688');
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
INSERT INTO `tbl_invoice` VALUES ('30526b8d-72fa-4d4d-b853-b3660bad7f31',1.8750,1.8750,0.0000,'2,0',4000.0000,0.1250,'2021-05-03 04:18:34','ef45f6ab-9e27-44ed-b551-9befb6efe970','86962b37-7996-4028-b70a-9d957b5d7ac1'),('4ccdfabf-69d4-48f4-af86-7663f3270030',1.8750,1.0000,0.8750,'1,0',4000.0000,0.0000,'2021-05-03 04:18:56','ef45f6ab-9e27-44ed-b551-9befb6efe970','86962b37-7996-4028-b70a-9d957b5d7ac1'),('8527a047-458a-4317-8c5e-f9572834e41f',3.1250,3.1250,0.0000,'4,0',4000.0000,0.8750,'2021-05-03 03:03:32','ef45f6ab-9e27-44ed-b551-9befb6efe970','86962b37-7996-4028-b70a-9d957b5d7ac1'),('e0b9013f-bc69-499b-ab06-17a9d1532d0b',1.8750,1.8750,0.0000,'2,0',4000.0000,0.1250,'2021-05-03 04:19:05','ef45f6ab-9e27-44ed-b551-9befb6efe970','86962b37-7996-4028-b70a-9d957b5d7ac1');
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
INSERT INTO `tbl_order` VALUES ('cc479b13-66bb-491a-9cca-8c44e0e62623',1,1,'2021-05-03 02:11:00','2021-05-03 02:11:00','837df4d5-c410-44d5-a656-65893ed04119','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 02:11:30'),('f789f1be-e6c2-4bdf-850b-5394b264fe49',1,1,'2021-05-03 04:14:00','2021-05-03 04:14:00','837df4d5-c410-44d5-a656-65893ed04119','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970','2021-05-03 04:14:00');
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
INSERT INTO `tbl_outcome` VALUES ('ecebfb60-a2dc-4e16-8a24-705d496e7c9a',1,'Coca Cola Original Taste x100',25.0000,'2021-05-03 01:35:06','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_owe` VALUES ('8c9c60ba-1eb0-46a0-9787-0e77455cc010','OWE_Thong',0.0000,4000.0000,0.0000,0.0000,'0,0','2021-05-03 03:02:36','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_payment` VALUES ('117da903-720c-4278-95c8-572435b9b98e',1,'INV0000004',1.2500,1.2500,0.0000,'2,0',4000.0000,0.7500,'2021-05-03 01:56:07','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('14221c44-78b5-4518-924a-2386f9d8542e',1,'INV0000003',1.2500,1.2500,0.0000,'1,1000',4000.0000,0.0000,'2021-05-03 01:36:20','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('18c0d99f-603a-4d81-b683-68078dbde28e',1,'INV0000009',1.8750,1.8750,0.0000,'2,0',4000.0000,0.1250,'2021-05-03 03:02:18','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('2bb6990b-b5a9-4b48-af63-d2c7be51d5b9',1,'INV0000001',1.8750,1.8750,0.0000,'2,0',4000.0000,0.0000,'2021-05-03 01:35:21','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('389fc710-be1f-42ed-8a29-881581be9505',1,'INV0000002',0.6250,0.6250,0.0000,'1,0',4000.0000,0.0000,'2021-05-03 01:36:02','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('45662b32-f530-4740-ae43-ac6f1a281b69',1,'INV0000014',1.8750,1.8750,0.0000,'1.8750,0',4000.0000,0.0000,'2021-05-03 04:18:10','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('49e4c53e-5aa7-47d0-897a-1ba0ebbe0929',1,'INV0000007',5.2500,5.2500,0.0000,'10,0',4000.0000,4.7500,'2021-05-03 02:11:38','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('6b9e6c35-bc8c-4b3d-8b30-1020496d8ef2',1,'INV0000013',4.4580,4.4580,0.0000,'5,0',4000.0000,0.5420,'2021-05-03 04:14:11','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('71562966-9409-42be-abaa-6af9b5f8bd31',1,'INV0000011',2.5000,2.5000,0.0000,'3,0',4000.0000,0.5000,'2021-05-03 04:11:03','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('822cfb29-08aa-40e4-8b5b-0c44a698982c',1,'INV0000015',1.8750,1.8750,0.0000,'1.8750,0',4000.0000,0.0000,'2021-05-03 04:18:44','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('b628b6ab-cacd-4a0b-8751-4a2e1ab29161',1,'INV0000006',1.2500,1.2500,0.0000,'2,0',4000.0000,0.7500,'2021-05-03 02:06:10','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('c55dd5b5-7a35-4490-bd43-b3a3eb80baf7',1,'INV0000010',3.1250,3.1250,0.0000,'3.1250,0',4000.0000,0.0000,'2021-05-03 03:02:39','86962b37-7996-4028-b70a-9d957b5d7ac1','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('cdd49a78-ddd2-41b9-b759-3d1258e7dce7',1,'INV0000008',0.6250,0.6250,0.0000,'1,0',4000.0000,0.3750,'2021-05-03 03:01:13','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('e93580e9-6f5a-4c48-b6ab-6a8d3ab7e269',1,'INV0000012',3.7500,3.7500,0.0000,'4,0',4000.0000,0.2500,'2021-05-03 04:13:37','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5'),('f08375a2-6a9f-4506-af1c-e7c9f38ed9a6',1,'INV0000005',1.2500,1.2500,0.0000,'2,0',4000.0000,0.7500,'2021-05-03 01:58:35','37d81f47-8fba-45b3-81d7-c01bc7446545','ef45f6ab-9e27-44ed-b551-9befb6efe970','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5');
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
INSERT INTO `tbl_product` VALUES ('6099db24-e081-486b-a9a1-afaba6c07312','Coca Cola Original Taste','',1,1.0000,'USD',1.0000,'',NULL,'2c2cd5ad-e08f-4baf-8367-5804942d903d.jpeg','','[\"ef45f6ab-9e27-44ed-b551-9befb6efe970\"]','2021-05-03 01:34:37','ef45f6ab-9e27-44ed-b551-9befb6efe970','54a711af-a453-40ea-ba12-9091d0147872','21dce46f-ab44-4f9a-9825-88358136b466');
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
INSERT INTO `tbl_profile` VALUES ('7ce63f82-1c87-4f57-a4ad-b0fda3f48dff','default.png','','','','','','','2021-05-03 02:30:43','54e062af-fb1d-4354-bfee-6e1a8f9ebb3f'),('9aa9a9e6-51a1-45f1-8af4-16a6e57ea5b9','default.png','Single','','','','','','2021-05-03 01:33:54','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_quantity` VALUES ('2447b446-7a43-4713-9034-d9f68d776a76',2,2,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','8076478b-ef81-46a7-885f-324b82ff9a82'),('57da698b-8778-4777-9335-58c1b67eda98',2,2,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','84ae840f-4983-400e-868d-a1e450e21768'),('60e106eb-fe04-458d-b122-715b1f6679fb',2,2,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','15f7d366-44d3-43cb-b675-017e9fa6f604'),('71465032-11ad-4a82-be90-7dc66d793fef',3,3,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','dabdddc7-73f4-4962-b41e-7cd35e280415'),('78a46e3e-6321-4567-a88f-f063b80b0740',4,4,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','d02665f2-ba76-4606-9a28-b31fd8581dfa'),('85617cc7-5cd0-4546-abf9-59d0ecc25fd4',3,3,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','6308806e-1d09-4d58-b88e-eb3e333a3cc3'),('98834f35-036b-47ce-bc08-843b565aa349',5,5,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','2afb6099-8ebc-4b39-b999-10e6b84eaaaf'),('9af086c9-b809-4e04-b448-e06f8298f2f7',3,3,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','aabb447b-b789-434d-901c-30a07e5e0bf1'),('a56eb13b-e3c4-4e38-aa85-e1c13a161948',5,5,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','b4cc0e5d-c690-4645-bc24-1bbc0fc07577'),('b7660253-8984-474e-b977-d6b50016ccc6',2,2,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','9f0662d8-7032-4588-9649-4e58ab4ae95b'),('c2dcad3a-55fe-4d6d-93b2-5ae25abb906e',2,2,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','233cb77d-47aa-4f5e-acf1-b32b83c41541'),('ca8774b1-949f-4daf-9fd2-dc58860d2802',1,1,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','d3032262-24df-417d-a295-7de1b81db137'),('e725a13f-2e4a-41dd-b172-afa5b001dfd9',6,6,'ecebfb60-a2dc-4e16-8a24-705d496e7c9a','1e72de80-fd7b-4b66-925a-496e187565c9');
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
INSERT INTO `tbl_role` VALUES ('bc08aa1c-da73-4a35-b4c8-e63d08f2bd88','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-05-03 01:33:54','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_room` VALUES ('837df4d5-c410-44d5-a656-65893ed04119','Room 1',8.0000,'1h','Open','2021-05-03 02:11:16','ef45f6ab-9e27-44ed-b551-9befb6efe970','3b4a7534-8c70-4be2-a2c9-b6f189959e9e');
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
INSERT INTO `tbl_stock` VALUES ('ecebfb60-a2dc-4e16-8a24-705d496e7c9a',0.2000,800.0000,'KHR',4000.0000,60,20.0000,'',NULL,'2021-05-03 01:35:06','ef45f6ab-9e27-44ed-b551-9befb6efe970','6099db24-e081-486b-a9a1-afaba6c07312');
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
INSERT INTO `tbl_store` VALUES ('1ca8c832-e290-45d1-9018-2cf995111688','Store Name','','','2021-05-03 01:33:54');
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
INSERT INTO `tbl_transaction` VALUES ('0dfcdb44-b0a0-4ecb-a46d-1bcab61c0b66',1,0,'0',4.0000,4.0000,1,4.0000,'Room 1, 30min','837df4d5-c410-44d5-a656-65893ed04119','2021-05-03 02:11:47','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('15f7d366-44d3-43cb-b675-017e9fa6f604',1,1,'0',0.6250,1.2500,2,0.8500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 01:56:05','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('1e72de80-fd7b-4b66-925a-496e187565c9',1,1,'0',0.6250,3.7500,6,2.5500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 04:13:35','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('233cb77d-47aa-4f5e-acf1-b32b83c41541',1,1,'0',0.6250,1.2500,2,0.8500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 01:58:32','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('2afb6099-8ebc-4b39-b999-10e6b84eaaaf',1,1,'0',0.6250,3.1250,5,2.1250,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 03:02:29','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('50b231d9-f838-42c8-a37f-2b0708339f13',1,0,'0',1.3333,1.3330,1,1.3330,'Room 1, 10min','837df4d5-c410-44d5-a656-65893ed04119','2021-05-03 04:14:23','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('6308806e-1d09-4d58-b88e-eb3e333a3cc3',1,1,'0',0.6250,1.8750,3,1.2750,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 04:18:41','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('8076478b-ef81-46a7-885f-324b82ff9a82',1,1,'0',0.6250,1.2500,2,0.8500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 02:06:09','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('84ae840f-4983-400e-868d-a1e450e21768',1,1,'0',0.6250,1.2500,2,0.8500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 01:36:19','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('9f0662d8-7032-4588-9649-4e58ab4ae95b',1,1,'0',0.6250,1.2500,2,0.8500,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 02:11:40','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('aabb447b-b789-434d-901c-30a07e5e0bf1',1,1,'0',0.6250,1.8750,3,1.2750,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 04:18:08','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('b4cc0e5d-c690-4645-bc24-1bbc0fc07577',1,1,'0',0.6250,3.1250,5,2.1250,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 04:14:12','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d02665f2-ba76-4606-9a28-b31fd8581dfa',1,1,'0',0.6250,2.5000,4,1.7000,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 04:10:43','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('d3032262-24df-417d-a295-7de1b81db137',1,1,'0',0.6250,0.6250,1,0.4250,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 03:01:12','ef45f6ab-9e27-44ed-b551-9befb6efe970'),('dabdddc7-73f4-4962-b41e-7cd35e280415',1,1,'0',0.6250,1.8750,3,1.2750,'Coca Cola Original Taste','6099db24-e081-486b-a9a1-afaba6c07312','2021-05-03 03:02:17','ef45f6ab-9e27-44ed-b551-9befb6efe970');
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
INSERT INTO `tbl_user` VALUES ('54e062af-fb1d-4354-bfee-6e1a8f9ebb3f','','','Thong','M',NULL,'','$2b$12$/TIxBtVQ/rOywy4invejYukJcVgitrSOorlN1LrPqfTLTo4fNqBxC','light','english','8e2eded3-26b3-48b2-bed8-431fe4a6a529','','',1,0,'2021-05-03 02:30:43'),('ef45f6ab-9e27-44ed-b551-9befb6efe970','','','Admin','M',NULL,'','$2b$12$JVtLVoyU6VmiS/Fh8IezH.g.n0XxljSsdG1l6s3dhLhlfzyuUwQAO','light','khmer','f8d75aee-fa61-479d-b0ad-5fd5a0880dfd','','bdfa4c7f-1d84-4338-85af-4416ac1fd9f5',1,1,'2021-05-03 01:33:54');
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
INSERT INTO `user_role` VALUES ('ef45f6ab-9e27-44ed-b551-9befb6efe970','bc08aa1c-da73-4a35-b4c8-e63d08f2bd88');
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

-- Dump completed on 2021-05-03 11:22:07
