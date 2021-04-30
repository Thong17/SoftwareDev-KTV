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
INSERT INTO `owe` VALUES ('740d834e-dbd3-4f62-a7b4-0a9c244a130b','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('55782b87-de47-4dfd-bc1e-960cbcef3973','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('356676db-306a-4349-bf49-649a04e21c9e','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('f4c8b624-3a1a-4745-b89e-e8093077ff66','d2e87b41-2ff6-4897-93ac-78ffbd0382ea'),('09fc69b7-8762-46e3-9374-798fed6fa4ff','d2e87b41-2ff6-4897-93ac-78ffbd0382ea'),('4735195c-d7a2-4b24-b36a-ec28edd18e2f','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('ff243680-4dca-43df-afa0-3726351a89e1','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('db9aab8c-9d38-4920-a08b-d2f42d254d10','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('882f6615-c1a7-4c12-8991-8bf96c2ae620','d2e87b41-2ff6-4897-93ac-78ffbd0382ea'),('165d090e-0153-4d31-9ff4-3cd2d58a515f','da956f46-d5a5-4e48-b5eb-a3b669b94c7d'),('8c5a3227-fdf4-4fa2-a9df-3e2c5b90f3eb','d2e87b41-2ff6-4897-93ac-78ffbd0382ea'),('21faf7b3-5cb4-460e-871a-69fa2a4e8b11','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('fd3ca621-b4f8-47ab-bfa9-78d9254c2885','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('1e114e61-c2e7-4cf6-be3d-2ab72f484f8a','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('450d8a5c-ee60-4912-a3c7-48d6894e309b','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('bce0f27f-683b-458d-9eae-501db0b12511','4d128b25-0b1a-4eeb-839d-104d947f88e1'),('1884d903-b369-4e90-a36b-7fa453ddf606','4d128b25-0b1a-4eeb-839d-104d947f88e1');
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
INSERT INTO `payment` VALUES ('740d834e-dbd3-4f62-a7b4-0a9c244a130b','aa23664a-4775-4114-a5b6-642ebd4d0897'),('55782b87-de47-4dfd-bc1e-960cbcef3973','d2a48582-6c85-489b-9953-524252aaaa68'),('356676db-306a-4349-bf49-649a04e21c9e','a90ced9f-c69e-47f4-b342-3e6a7c63be45'),('356676db-306a-4349-bf49-649a04e21c9e','f8043955-4c82-433b-8c0d-0212184f2539'),('f4c8b624-3a1a-4745-b89e-e8093077ff66','244dd67b-d3a4-40ce-991e-de1c5f7d8e9f'),('f4c8b624-3a1a-4745-b89e-e8093077ff66','695cb9f0-61f7-4a7d-acac-77b1a097f992'),('09fc69b7-8762-46e3-9374-798fed6fa4ff','aa2e7ce7-bca7-4d14-bcaf-fe8d88e3d4c5'),('8d7ced17-b96e-44e7-b9b6-28cf71c5d4a4','1c3fab33-f271-42f6-b240-ae7c7cd622fc'),('8d7ced17-b96e-44e7-b9b6-28cf71c5d4a4','24833b64-f993-4bb0-86d2-bfee0962e6eb'),('c595e46a-5621-4416-bcf9-c6f3c5170d5d','94a59171-9af0-46b2-b5d5-e45c1254d374'),('e6b45447-4935-4827-812e-400189f730f7','b542b4cb-9ce5-410d-995a-87e0bfedf135'),('4bb6b9f6-45b6-42ca-9f0e-6fb24516563a','9c413331-c4db-469a-b1fc-4d34a4b02c14'),('4bb6b9f6-45b6-42ca-9f0e-6fb24516563a','38f1291a-df19-493d-b320-b24667083c1b'),('e8780a33-9ae0-466c-931b-917974a4f38d','3d625536-2435-4c13-9f56-9763aa623b29'),('e8780a33-9ae0-466c-931b-917974a4f38d','42f40c7f-b9a7-4c57-ab43-f5d360cac1af'),('f42c0760-4cab-43ec-9c11-40aa37f766ac','c8f8a0ec-0c42-4857-b74f-0259296942dd'),('4735195c-d7a2-4b24-b36a-ec28edd18e2f','6c6cb949-f16d-4e7c-b96b-c6dd43d748a7'),('ff243680-4dca-43df-afa0-3726351a89e1','7b13feeb-2bb4-46fc-8fd4-7f41e763e466'),('db9aab8c-9d38-4920-a08b-d2f42d254d10','60f98a0b-8cd7-4c0e-a33c-148ced90c935'),('882f6615-c1a7-4c12-8991-8bf96c2ae620','d7ee92d3-a22c-4b87-ba1b-793c182a96eb'),('58721360-f63c-4a1e-a10f-edbb0f9faf4a','6194f8aa-fae9-4ae2-9d8b-9235fcf429c5'),('165d090e-0153-4d31-9ff4-3cd2d58a515f','35253aa1-5923-4f42-86b5-7e8edbf246dc'),('21faf7b3-5cb4-460e-871a-69fa2a4e8b11','4cdc430e-346f-40da-a38c-a3c7e25f00ea'),('fd3ca621-b4f8-47ab-bfa9-78d9254c2885','f6858800-570a-49b2-8d55-77b7342a94a9'),('fd3ca621-b4f8-47ab-bfa9-78d9254c2885','21b95da9-e18c-47aa-b839-d2126ea13c4e'),('1e114e61-c2e7-4cf6-be3d-2ab72f484f8a','57888364-7833-4838-8a5f-e6031580988b'),('4c897971-9fd5-49aa-863f-ecef47e0a8ab','cd0b899e-f13b-4b98-8ebc-af04d6220eab'),('db4c5676-4e03-45aa-a637-9151f31a5e5b','301d4ba7-e751-4cf8-96e0-95e1a93c66c5'),('db4c5676-4e03-45aa-a637-9151f31a5e5b','258ffb37-d8f0-4f01-999c-b789f06dba36'),('450d8a5c-ee60-4912-a3c7-48d6894e309b','af2055b0-e4c4-451f-acff-925720cfb211'),('7d4f6936-273f-41fb-9b62-172ac471e0d2','3c8e21c6-6028-4c1b-8991-f3dd904522f1'),('7d4f6936-273f-41fb-9b62-172ac471e0d2','8fed48a0-1658-4742-8927-4785c729e383'),('4f8aff8e-9dd6-4a08-b844-757c01188c3b','3e846dd1-8826-4b55-b606-2de10dd34bfb'),('4f8aff8e-9dd6-4a08-b844-757c01188c3b','ca48acb4-7bd9-4271-a343-37062a74b6de'),('bce0f27f-683b-458d-9eae-501db0b12511','4c10ddbe-ffff-46a5-b19c-6c0a0ecb22bf'),('2ef17fe6-6c9f-4661-b385-541846179375','73d820cc-821a-46b6-83f2-70117fdac659'),('4d91d95d-8c5f-41b9-9cf3-216f02d85d51','0573215b-2efc-41ba-99b5-671031779c05'),('1884d903-b369-4e90-a36b-7fa453ddf606','164a9622-3cac-4ecb-ad67-668462e0acbc');
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
INSERT INTO `tbl_activity` VALUES ('00aa6774-944c-4236-a0d4-08ddb0816ab8','Admin has checked out payment INV0000006','Payment','2021-04-27 07:39:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('00e9549b-87f8-4c95-b5c9-fe46a75aefdc','Admin has logged in','Login','2021-04-28 13:44:23','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('010bceec-4624-450a-b6d8-725053e55b32','Admin has checked out payment INV0000015','Payment','2021-04-27 13:52:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0206c4a2-f9a8-4d08-a489-683377ffcbc5','Admin has added expense: tes','Create','2021-04-28 02:32:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('043439bd-4a47-4b5f-8fad-afae6cc88553','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:58:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('064ca99f-ff19-4d0b-a869-e63be7ce7319','Admin has added transaction: Burger Bacon','Add','2021-04-27 05:11:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('06e64d3c-0658-478c-83fa-9faed46b5e28','Admin has added expense: 54324','Create','2021-04-28 02:33:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('071c55b7-2ef5-482b-8705-1ad5530e2678','Admin has checked out payment INV0000002','Payment','2021-04-27 04:10:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0840045f-26e0-4f5c-9033-a0575630b52b','Admin has checked out payment INV0000011','Payment','2021-04-27 09:54:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('09733b38-19da-4e06-bb1a-4c3dadddad91','Admin has added expense: fsfsd','Create','2021-04-28 02:32:52','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('099deefc-2dc3-4193-b9f7-0b4b07feb371','Admin has checked out payment INV0000016','Payment','2021-04-28 02:38:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0a06b636-3ef3-423e-8566-aa089143ffff','Admin has added customer: test3','Add','2021-04-28 02:09:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0ca3f906-4d98-4822-a3f1-8314d37ed6ca','Admin has deleted expense: 1231','Delete','2021-04-28 03:02:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0df3fecf-bac3-4f1c-9bc3-e21df9379d9d','Admin has modified user: Thong','Modify','2021-04-28 08:12:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0e013328-beaf-4110-8790-abedf63d3711','Admin has ordered invoice: INV0000031','Order','2021-04-29 05:51:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('0f1e1fb8-3c36-4474-b6f9-8d9b95f7f524','Admin has ordered invoice: INV0000009','Order','2021-04-27 09:29:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('104e4e20-bf68-4bcd-870f-3573414371d9','Admin has ordered invoice: INV0000017','Order','2021-04-28 02:20:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1052839c-49ac-477f-b3d4-74a148dc8d2b','Admin has checked out payment INV0000007','Payment','2021-04-27 09:25:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('107e21ac-d8a1-4c6a-a320-3c6a3c47f748','Admin has checked out payment INV0000005','Payment','2021-04-27 05:11:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('120c3ba9-6532-4abe-8390-9112ebd91639','Admin has ordered invoice: INV0000007','Order','2021-04-27 09:25:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('12eb006c-ee28-4141-919e-79ad9bc20512','Admin has checked out payment INV0000019','Payment','2021-04-28 02:21:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('14d79c55-3150-404b-a02b-598df2afff5b','Admin has added money to drawer','Add','2021-04-27 09:28:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('14fd0abf-3ac9-409c-b8f4-8c846404d7dd','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-28 07:56:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('16223d54-c092-4f20-ae62-2f5ac6947f62','Admin has added order from 2021-04-27 04:54 PM to 2021-04-27 04:54 PM for customer Thong','Add','2021-04-27 09:55:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1821d0a0-0116-4f87-838c-ce048c320408','Admin has checked out payment INV0000016','Payment','2021-04-28 04:11:31','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1895a234-2caf-433a-aba6-c33c67c6b691','Admin has added product Coca Cola Original Taste','Add','2021-04-26 12:20:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('18b180f8-960d-4dc9-b96e-18bcbc9a77a2','Admin has logged in','Login','2021-04-27 13:50:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('18ed5fcc-3d68-4058-bc3f-9390bc0c58eb','Admin has logged in','Login','2021-04-27 10:04:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('18f2013e-fb3b-4fb1-85aa-9973f5ea278c','Admin has checked in order from: 04:53 PM to 04:53 PM','Check In','2021-04-27 09:54:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('19d86b9a-3461-4bbd-bdfa-32ee2544874e','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-27 05:11:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1b66c83e-6a90-4412-8417-0ff6b3c07c10','Admin has ordered invoice: INV0000008','Order','2021-04-27 09:28:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1bbb8563-cb2e-4510-876c-f5c0177453f6','Admin has modified product from Burger Bacon//True/USD/3.00///None/Food','Modify','2021-04-26 12:22:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1bd9a588-8158-425c-ab50-00d2e5a658c7','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:29:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1ca9a37e-85a0-4a5e-a7c6-1c95c4e77767','Admin has added expense: fdasfd','Create','2021-04-28 02:33:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1dcaec30-f736-4f83-8268-dc8e8c7af18b','Admin has updated transaction Room 1, 10min','Modified','2021-04-28 07:10:35','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1f72aee5-d7d8-4725-8ae0-a17c3ff50ef8','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:29:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('23198db2-af19-4b90-8541-c61ffd226e50','Admin has added expense: adsfsad','Create','2021-04-28 02:33:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('23bd10e4-1517-43a2-8526-74d971a7ab87','Admin has checked out payment INV0000031','Payment','2021-04-29 05:51:06','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('251b9a7c-c2b0-4c60-8992-d83341721a4c','Admin has checked out order from: 04:58 PM to 04:58 PM','Check Out','2021-04-27 09:59:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('260b6ee2-2959-4f7b-b3ad-218872b2b177','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-04-26 12:22:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2663dcb5-50a5-4c79-958d-b4767152d014','Admin has ordered invoice: INV0000005','Order','2021-04-27 05:11:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('27325633-9aa9-45ad-a4fd-3f07292660c0','Admin has added order from 2021-04-27 04:52 PM to 2021-04-27 04:52 PM for customer Thong','Add','2021-04-27 09:53:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2752de86-366d-4748-8f3a-1b77904ac541','Admin has checked out payment INV0000008','Payment','2021-04-27 09:28:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2833eded-7c52-4646-b699-a93c724965d7','Admin has added customer: Thong','Add','2021-04-27 04:10:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('29ee7cb9-d46c-4373-a6d1-760d2dfd262b','Admin has logged in','Login','2021-04-28 01:40:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2cf7c336-7cf6-4352-93e9-3c4844bebeca','Admin has checked out payment INV0000015','Payment','2021-04-27 13:51:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2dd16b27-3b94-4d89-9081-447a506b81c8','Admin has checkout owe total: 0','Checkout','2021-04-27 06:47:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('326bbdfb-ba5e-485f-ab67-412cfb700314','Admin has checked out payment INV0000017','Payment','2021-04-28 04:15:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('33813763-f001-4686-b861-cafdd5db76cf','Admin has opened drawer','Open','2021-04-26 12:22:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('341f3fd7-a26a-4e12-93d5-e0e270153209','Admin has checkout owe total: 1','Checkout','2021-04-28 16:05:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('36363545-d001-4abf-a159-6ea3936ddbd6','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:59:42','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3754bfc6-b07c-4ff9-a025-dcd9f6e2bac7','Admin has deleted expense: 54324','Delete','2021-04-29 06:13:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('37a8fea4-a0ae-49ed-8c7f-61a01690334c','Admin has upload photo for product: Burger Bacon','Upload','2021-04-26 12:21:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3982c323-8bc7-4293-ab0b-06563f5e7f9f','Admin has checked out payment INV0000014','Payment','2021-04-27 10:00:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3a7e588d-e6d5-42ec-8f2e-0b1995c9fdb7','Admin has checked in order from: 04:58 PM to 04:58 PM','Check In','2021-04-27 09:58:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3d2968c5-f91b-41b2-a339-ce6d8089a696','Admin has ordered invoice: INV0000027','Order','2021-04-28 07:56:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3def389a-d4df-43db-bbc3-5849a648f9fd','Admin has modified user: Thong','Modify','2021-04-27 10:03:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3ee45158-c0a4-4288-972e-38ec63df78fa','Admin has checked out payment INV0000021','Payment','2021-04-28 04:18:58','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3fa81298-75f7-4c49-ba79-2eac0ca01261','Admin has added transaction: Burger Bacon','Add','2021-04-28 02:21:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('42729efa-96c2-46a6-aab9-896e8ed1a362','Admin has checked out order from: 09:09 AM to 09:09 AM','Check Out','2021-04-28 02:37:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('44dbdbec-65bd-4c23-8f3f-990cfbdbc331','Admin has checked out order from: 02:11 PM to 02:11 PM','Check Out','2021-04-28 07:11:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('45c0c8e6-5d8c-4829-a9dc-f7012cd54453','Admin has checked out payment INV0000012','Payment','2021-04-27 09:58:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('45da279c-1574-4e32-84da-43b7330c26ba','Admin has checked out payment INV0000014','Payment','2021-04-27 10:00:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('48e416fe-044a-4288-a85e-952e45547080','Admin has added transaction: Burger Bacon','Add','2021-04-28 07:22:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('48fe70d5-af77-4416-92eb-d1a9a8cce56f','Admin has logged in','Login','2021-04-28 16:05:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('495dc3a9-a5c3-4743-8aed-93bbfc4c6a3d','Admin has checked out payment INV0000028','Payment','2021-04-28 13:44:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4c31e354-bd53-49c9-a6d9-135bb7596bdf','Admin has checked out payment INV0000020','Payment','2021-04-28 04:17:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4edfae70-793c-4594-ba73-f6a9b9134178','Admin has checked in order from: 04:59 PM to 04:59 PM','Check In','2021-04-27 09:59:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('50246c10-fce4-4c69-bb0c-3a75700e0bdc','Admin has checked out payment INV0000028','Payment','2021-04-28 16:06:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5025df18-97b0-4aa3-844b-69ad4bda2467','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-27 09:29:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('51194c18-1991-4fa9-a6b9-6f5ce05edb3e','Admin has checkout owe total: 0.25','Checkout','2021-04-28 14:12:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('55443297-9bc2-4bb0-9299-580e030e42e0','Admin has added category: Food in category','Add','2021-04-26 12:20:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5556be06-bbcd-477d-82a9-ada2875cd17f','Admin has added customer: Test6','Add','2021-04-29 03:52:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('57ccd0fb-53df-496e-b8db-07050527ff92','Admin has added expense: adfasdf','Create','2021-04-28 02:33:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5ab55298-87e2-4155-80d8-dc71ffe7660e','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:31:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5b98d1d3-9c7a-4d7e-9d83-7ce135d20719','Admin has updated transaction Room 1, 30min','Modified','2021-04-28 02:37:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5e704ca4-6bbe-4e61-a729-95330fe19c31','Admin has added brand: Coca Cola in brand','Add','2021-04-26 12:20:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5ec7a2db-8654-41bf-b748-8e8b7aa42bf1','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-28 02:20:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5ee6ef5b-3d27-4568-b421-4268a3a9de81','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-26 12:22:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5f2e4e2c-f1cd-48d1-90b2-2e6b7caae1d3','Admin has checked out payment INV0000030','Payment','2021-04-29 03:36:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5f7e551c-92b1-48d8-96ed-d6076d677345','Admin has logged in','Login','2021-04-28 14:08:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5f99429c-729a-4b14-b563-830261bdd1ec','Admin has checked out payment INV0000027','Payment','2021-04-28 07:56:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('610686a0-9f6f-4548-bfd1-1ae7372caf40','Admin has added money to drawer','Add','2021-04-27 09:28:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('614184bc-ecfa-4b9a-9bc0-686675534bc8','Admin has checkout owe total: 0','Checkout','2021-04-28 02:01:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('61da9e6d-6ac9-4cb8-8d19-f762dfea12e2','Admin has checked out payment INV0000015','Payment','2021-04-27 13:53:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6305a10d-d205-458d-a04c-986fc33a4ff4','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-29 05:51:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('640ebc62-c5f1-42b3-8b0a-b0888088e772','Admin has checked out order from: 11:10 AM to 11:10 AM','Check Out','2021-04-27 04:10:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('64975133-cd99-4fed-8d5a-3d0baf6c4730','Admin has created user: Test','Created','2021-04-28 08:15:41','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('64a77e65-b378-4d09-a921-232dd4a5bc06','Admin has checked out payment INV0000019','Payment','2021-04-28 04:11:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('672af4d5-c912-4acb-9a76-a9aa4138b883','Admin has added money to drawer','Add','2021-04-27 09:28:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('69084727-b7a3-4581-84c9-7ced9af80f5b','Admin has modified theme from light','Modify','2021-04-26 12:21:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6912d101-6812-4eae-a4b8-fa1c067cf60c','Admin has added customer: test4','Add','2021-04-28 02:09:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6a1da97f-e961-48e9-a756-28c52d7805d3','Admin has checked in order from: 09:09 AM to 09:09 AM','Check In','2021-04-28 02:09:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6ad551d8-e252-4e7e-9655-e20f0cb2a6a4','Admin has ordered invoice: INV0000028','Order','2021-04-28 13:44:58','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6c271316-ae41-49f1-b79c-fc11bb91db2e','Admin has added order from 2021-04-27 04:58 PM to 2021-04-27 04:58 PM for customer Thong','Add','2021-04-27 09:59:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6d36571f-3c7a-4d4c-b095-fc1d3c7b3c9f','Admin has checked out order from: 02:38 PM to 02:38 PM','Check Out','2021-04-27 07:38:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6d5e5015-8b37-46cc-8f2d-d2df74904ef7','Admin has added product Burger Bacon','Add','2021-04-26 12:21:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6de40bb8-9159-4168-83d0-644abf9a81ef','Admin has checkout owe total: 3','Checkout','2021-04-28 04:21:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6e847dd0-23d6-4997-9e46-0f12965f68b8','Admin has added transaction: Burger Bacon','Add','2021-04-28 07:11:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7058b888-67e2-46fb-8547-5c472feb2926','Admin has added customer: test2','Add','2021-04-28 02:09:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('70bccca0-4889-4ada-aac7-93eccb2547a0','Admin has checked in order from: 04:55 PM to 04:55 PM','Check In','2021-04-27 09:56:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('71a2b579-9562-46d5-9ca1-e73660eddfd2','Admin has checked out payment INV0000029','Payment','2021-04-29 03:08:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('72d2f04c-587c-4fc8-94ab-cd6899ac3c46','Admin has logged in','Login','2021-04-27 10:04:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('73464a6d-5056-485e-a6b0-4c9e7bbcec14','Admin has added order from 2021-04-27 06:49 PM to 2021-04-27 06:49 PM for customer Thong','Add','2021-04-27 11:50:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('74f20584-98f9-456f-9650-2ea7cfeb1d23','Admin has deleted expense: dfasfdas','Delete','2021-04-28 07:56:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('75b42e9c-de0a-4e4a-bb50-9b53a43755af','Admin has added transaction: Burger Bacon','Add','2021-04-28 13:44:57','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('75b6357c-a66e-4f7d-aee0-6fd08394bb51','Admin has checked in order from: 02:38 PM to 02:38 PM','Check In','2021-04-27 07:38:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('76708be9-2b2e-433f-8e9b-477b1c5de361','Admin has checked out payment INV0000013','Payment','2021-04-27 09:59:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('76ed9b20-71f0-4b94-9dbf-f5146aebc451','Admin has added customer: Sok','Add','2021-04-27 05:11:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77644a28-07d6-4a0e-bddb-7ae55b792359','Admin has logged in','Login','2021-04-26 12:20:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77c3c2b8-5d71-43d0-b7ef-7b9303a1afda','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('77fe6650-c2e5-425a-88c6-0245abe3de70','Admin has checkout owe total: 2.5','Checkout','2021-04-27 06:47:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('78557d9d-cd27-4ded-a3f5-fe9e67758e14','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-28 04:18:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('78eac73e-ff27-4147-bac0-da0c25d45bca','Admin has ordered invoice: INV0000030','Order','2021-04-29 03:36:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('793ebfc3-e6de-47d4-aca8-33f0b9c6d6d2','Admin has deleted expense: Coca Cola Original Taste x100','Delete','2021-04-28 07:56:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('795fcc1d-3a6d-4d24-8780-2b3d19962478','Admin has checkout owe total: 0','Checkout','2021-04-28 02:02:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('79715d32-5246-42bc-9020-75940c944bb3','Admin has added transaction: Burger Bacon','Add','2021-04-28 07:56:42','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7acb5279-3714-4090-bc3c-65832c00de2b','Admin has checkout owe total: 0','Checkout','2021-04-28 01:56:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7afaded8-082f-4396-9a6a-2cdac13a3354','Thong has logged in','Login','2021-04-27 10:03:17','7217e35b-c507-442e-b43a-c7d5b48590ed'),('7b887292-7e9e-44dd-b3fd-d09d4d185a7e','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-29 03:36:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7baf758d-f893-47e1-842c-ed3bb50387f6','Admin has logged in','Login','2021-04-28 14:08:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7ec7e506-e340-4e7e-a108-21582dacad6c','Admin has updated transaction Room 1, 20min','Modified','2021-04-28 07:41:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7fa79405-c50a-4ff4-8c42-9f67aeb0674d','Admin has ordered invoice: INV0000029','Order','2021-04-29 03:08:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('80f24aa0-e5c9-4aea-b386-6190e14e54ae','Admin has checked in order from: 02:11 PM to 02:11 PM','Check In','2021-04-28 07:11:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('80fb9b33-dbdc-4a2e-a698-eadc44a48de7','Admin has checked in order from: 02:22 PM to 02:22 PM','Check In','2021-04-28 07:22:21','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('81a24b30-9e36-4548-ada0-443c4f783a52','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:54:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('83a27c04-dbb5-4872-8ce4-c1a9892717a1','Admin has checked out payment INV0000013','Payment','2021-04-27 09:59:21','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('84f9d448-0f82-4eda-80b4-036494a14a25','Admin has deleted advertise photo: 39f77bf2-e91b-4e3b-97cd-a5034e4c8b4c.png','Delete','2021-04-29 02:14:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('85afb62e-e186-4cb3-abd9-edf742fa0c40','Admin has ordered invoice: INV0000019','Order','2021-04-28 02:21:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('85d99ac6-137b-4038-aa2b-8f1f352cfa9c','Admin has added order from 2021-04-28 02:21 PM to 2021-04-28 02:21 PM for customer Thong','Add','2021-04-28 07:22:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('878674c2-67d8-4e5d-9613-8baecfd9f430','Admin has added order from 2021-04-27 04:57 PM to 2021-04-27 04:57 PM for customer Thong','Add','2021-04-27 09:58:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('87c2127e-5e9a-4ce0-86f2-fe212ade6735','Admin has added transaction: Burger Bacon','Add','2021-04-28 04:18:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8aa198d7-c4b1-476a-9661-c15552edb56c','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:32:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8c144a4b-a85b-480e-acd5-599f5a58624e','Admin has added order from 2021-04-27 11:09 AM to 2021-04-27 11:09 AM for customer Thong','Add','2021-04-27 04:10:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8efb86e5-9799-4ff0-b1af-a78048bfcbf9','Admin has ordered invoice: INV0000020','Order','2021-04-28 04:16:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('93eae999-ea8b-4651-90d7-ccc9731dd9c9','Admin has checkout owe total: 5','Checkout','2021-04-27 05:09:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('947213cd-e135-48f0-8eb1-935da389f859','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-29 03:35:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9484cfd9-e23a-4a33-9477-0be3ec3ad666','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-28 04:16:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9486e41b-92c3-4914-874d-4c84ff4dbd8a','Admin has closed drawer','Close','2021-04-27 09:28:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9921799f-0596-4e45-959f-24dc36a86e62','Admin has added expense: dfasfdas','Create','2021-04-28 02:33:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('99c09872-8365-4d14-96a9-a961a83618c4','Admin has ordered invoice: INV0000001','Order','2021-04-27 04:10:16','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9adde88b-e51f-4d85-9fde-0c4ea51acdcc','Admin has uploaded advertise photo: 840d8c52-3eba-4029-b11c-e78bd1083f28.jpg','Upload','2021-04-27 06:59:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9be864ad-df99-4710-a98f-5ea597e68893','Admin has added transaction: Burger Bacon','Add','2021-04-27 07:38:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9c4fbfda-d34a-47fe-87a3-33deb3da4576','Admin has deleted advertise photo: 840d8c52-3eba-4029-b11c-e78bd1083f28.jpg','Delete','2021-04-29 01:18:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9dc92eb3-25cc-4815-aa0f-876ab2894fe9','Admin has checked out payment INV0000020','Payment','2021-04-28 04:16:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a0246f82-a520-4a7d-979d-c17076efcec9','Admin has updated transaction Room 1, 10min','Modified','2021-04-28 07:11:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a03f39d6-2528-40e5-a7af-1bfc34b4a29f','Admin has checkout owe total: 5','Checkout','2021-04-28 07:44:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a30fb7bc-1a09-40b1-aacd-327b71b77672','Admin has ordered invoice: INV0000018','Order','2021-04-28 02:21:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a3363b3b-3fe2-4651-b495-5b5c593a8a12','Admin has checked in order from: 02:10 PM to 02:10 PM','Check In','2021-04-28 07:10:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a4b73b0d-4547-43c1-958d-e7d479d69315','Thong has modified theme from light','Modify','2021-04-27 10:03:50','7217e35b-c507-442e-b43a-c7d5b48590ed'),('ab3c34f1-5e1f-4fe6-95a7-12fee80b23c9','Admin has added room: Room 1','Create','2021-04-26 12:21:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ab86cdd9-5067-4fa8-a76a-e57cfd71f481','Admin has checked out payment INV0000025','Payment','2021-04-28 07:42:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ac2ba5ba-654f-40b6-8096-f65fa8393ede','Admin has reversed transaction Coca Cola Original Taste','Delete','2021-04-29 03:36:11','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ad1802bd-b2b8-4eb8-9096-ce7d34f53859','Admin has modified user: Thong','Modify','2021-04-28 08:14:16','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ad23dbbe-678f-47e5-9775-d4109b075750','Admin has checkout owe total: 5','Checkout','2021-04-27 05:11:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ae82a3cd-564a-4fa5-b129-aedf40539ffb','Admin has checked out payment INV0000009','Payment','2021-04-27 09:29:15','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('aec1e102-235c-4902-b862-4276ff6043de','Admin has checked out payment INV0000017','Payment','2021-04-28 02:20:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b098797c-2caf-48ca-ab03-e2e2305cbd75','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-04-26 12:20:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b3b3c7d6-25a6-4107-8ef2-803ccfd984ac','Admin has checked in order from: 06:50 PM to 06:50 PM','Check In','2021-04-27 11:50:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b576dc71-0c1d-4066-a77e-119e0fbb4f2d','Admin has checkout owe total: 10','Checkout','2021-04-27 06:46:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b6b58f45-1c97-4212-8366-f26b69e07a60','Admin has ordered invoice: INV0000026','Order','2021-04-28 07:22:31','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b75976af-edb4-44ab-8b78-53bc840b47aa','Admin has checked out payment INV0000001','Payment','2021-04-27 04:10:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b8a39ad3-a161-43e4-b195-8b4e18f8e618','Admin has added order from 2021-04-28 02:09 PM to 2021-04-28 02:09 PM for customer Thong','Add','2021-04-28 07:10:23','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b9680c72-8e2c-4db2-a5a0-b0745c7a3ffe','Admin has checkout owe total: 1','Checkout','2021-04-28 04:21:21','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ba568cf8-5d39-45ac-9eb7-aab6391bfcbe','Admin has checked in order from: 11:10 AM to 11:10 AM','Check In','2021-04-27 04:10:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('baf32b00-91e6-491d-be43-770022691fea','Admin has added transaction: Burger Bacon','Add','2021-04-28 07:41:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bb67db66-0609-4a11-983e-9a006c21deaf','Admin has added expense: tes','Create','2021-04-28 02:32:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bb70aff0-9279-4ca9-860d-ff3ec3ec40eb','Admin has checked out payment INV0000026','Payment','2021-04-28 07:22:35','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bbc6d841-8cf1-462c-9a61-47abb75d054e','Admin has added transaction: Burger Bacon','Add','2021-04-28 02:20:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bc8b19fa-b22c-45c4-99a4-f45f350f1e3d','Admin has uploaded advertise photo: 39f77bf2-e91b-4e3b-97cd-a5034e4c8b4c.png','Upload','2021-04-29 02:13:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('bf14f8ff-a937-4fdc-9b02-69936b0bfc11','Admin has updated transaction Room 1, 2h 1min','Modified','2021-04-27 13:51:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c04970de-6112-4ee9-b641-ce45131a3c1a','Admin has checked out order from: 06:50 PM to 06:50 PM','Check Out','2021-04-27 13:51:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c299ec72-db8e-411b-a510-82efe5ab6fab','Admin has added expense: asdf','Create','2021-04-28 02:32:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c553f35b-0748-43f2-9a6d-8676ef404ddd','Admin has ordered invoice: INV0000021','Order','2021-04-28 04:18:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c5607460-da17-415c-a87e-59610b4145c5','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:28:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c5864587-7d7d-4194-9225-ba814dff4808','Admin has checked out order from: 04:59 PM to 04:59 PM','Check Out','2021-04-27 09:59:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c5c9f2b0-6654-4e9c-bb5c-fa8ff823f0f8','Admin has checkout owe total: 1','Checkout','2021-04-29 06:03:36','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c9268673-9693-4753-95a0-22b3f4a664fa','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-29 03:08:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cc24aacb-1437-42b6-b6e2-f927d953113e','Admin has added transaction: Burger Bacon','Add','2021-04-27 05:11:25','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cca19509-4c90-481b-a856-13525a51dceb','Admin has checked out order from: 02:10 PM to 02:10 PM','Check Out','2021-04-28 07:10:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cd1879e7-5d25-4c00-acf8-0a1c27b971c3','Admin has reversed transaction Room 1, 30min','Delete','2021-04-28 02:40:30','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cd38575e-59ec-4bb1-bd54-20ed80f69b1b','Admin has added expense: test','Create','2021-04-28 02:32:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d0ac5ec2-9a35-486d-9ac9-6946061cb125','Admin has added customer: test1','Add','2021-04-28 02:09:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d1809fea-3f98-4330-9ade-f554cccc7cf1','Admin has ordered invoice: INV0000004','Order','2021-04-27 05:11:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d2d67e29-0f98-4056-b440-fcd403021428','Admin has checked out payment INV0000004','Payment','2021-04-27 05:11:23','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d2db5f15-6065-4aa0-a3ef-d2f65db427b6','Admin has checked out payment INV0000024','Payment','2021-04-28 07:12:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d6d44f64-aa2f-47a5-b5ef-d8b86858763f','Admin has updated transaction Room 1, 60min','Modified','2021-04-27 07:38:35','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d8423829-4f79-401d-ba17-1a712dee8b0a','Admin has added expense: fsds','Create','2021-04-28 02:32:58','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d924d15f-07ff-4718-a464-c0950f1d9698','Admin has created user: Thong','Created','2021-04-27 10:03:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d9a88e7f-d1c7-481c-a0b7-353d9277bfc5','Admin has added customer: Test','Add','2021-04-28 02:08:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('da11b092-abbd-4039-a40d-1009771d069f','Admin has checked out payment INV0000016','Payment','2021-04-28 02:37:52','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('da209bfa-bd9c-487b-a108-f766f43ef4cb','Admin has checked out order from: 02:22 PM to 02:22 PM','Check Out','2021-04-28 07:41:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('da8631d4-7b05-4af2-ba75-107ba0bfbd8b','Admin has checked out payment INV0000003','Payment','2021-04-27 04:10:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('dd69da56-584d-4906-b2b8-714898341bb0','Admin has ordered invoice: INV0000010','Order','2021-04-27 09:29:34','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('de7f8b22-2760-4882-896c-f52a12821ba1','Admin has added order from 2021-04-28 02:10 PM to 2021-04-28 02:10 PM for customer Customer','Add','2021-04-28 07:11:36','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('df2f003e-dba8-41a7-bd81-4bb6c730a8f8','Admin has updated transaction Room 1, 60min','Modified','2021-04-27 04:10:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('dfc9fc8f-f2b8-415e-a854-267c0b310497','Admin has added category: Beverage in category','Add','2021-04-26 12:20:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e05e9254-39d4-40df-982f-55ac520087e3','Admin has checked out payment INV0000018','Payment','2021-04-28 02:21:04','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e084445a-881a-4706-b6d7-c3ad2028ee41','Admin has added brand: Shop in brand','Add','2021-04-26 12:20:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e179e919-7caf-47d9-b1a4-36dd840c8bc5','Admin has checked out payment INV0000010','Payment','2021-04-27 09:29:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e2541898-c119-4858-8960-f13c68fa96b6','Admin has added expense: 1231','Create','2021-04-28 02:33:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e2806f6c-3e86-4fd3-85f8-b57750e2e1b3','Thong has cleared role from user:Thong','Delete','2021-04-27 10:03:36','7217e35b-c507-442e-b43a-c7d5b48590ed'),('e2d5400f-9683-44ad-8015-2dddb356b840','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-27 09:29:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e505187c-af64-4380-bda2-fd0ca0d2aef1','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e8c1e890-7c09-473d-a38b-85e44d454bbb','Admin has modified language from english','Modify','2021-04-27 06:50:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ebabe473-dec1-4109-9dde-94e1fbcac163','Admin has added money to drawer','Add','2021-04-27 09:28:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ecb69f83-2793-4b3c-a997-290d4bc1beb5','Admin has added stock: 0.2/USD/100/4000/None/20.0 in product Coca Cola Original Taste','Add','2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ed89dfee-1964-436e-a5be-ed9dd13f84a1','Admin has reversed transaction Burger Bacon','Delete','2021-04-27 09:31:53','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ee3b5f70-fd49-4349-8c10-34642ac61021','Admin has checkout owe total: 10','Checkout','2021-04-27 06:46:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ee4fd18e-a305-43b6-a833-cf38d1834be2','Admin has added transaction: Burger Bacon','Add','2021-04-28 04:22:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('eea074b0-fe3b-410b-a858-797d2004e94e','Admin has added order from 2021-04-27 02:37 PM to 2021-04-27 02:37 PM for customer Customer','Add','2021-04-27 07:38:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('eef76abf-a86e-4b8b-a172-1f785be9d225','Admin has logged in','Login','2021-04-29 00:58:09','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f0f5bad9-4e9b-4aae-b63d-407275539841','Admin has added transaction: Burger Bacon','Add','2021-04-27 04:10:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f2a6018a-7812-4304-ad31-375bf2f4dc91','Admin has checkout owe total: 0.25','Checkout','2021-04-28 13:45:13','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f2f69cb0-7765-4d2b-82c8-a7236c95ad6f','Admin has added transaction: Burger Bacon','Add','2021-04-27 09:25:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f402867a-f9c3-47fc-a904-8d08dd3d6675','Admin has opened drawer','Open','2021-04-27 09:28:06','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f4b107aa-cd25-44ee-b613-cd311913d753','Admin has checkout owe total: 5','Checkout','2021-04-28 06:49:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f4c647a2-f0c3-4163-95a3-ce41616d46d4','Admin has checked out payment INV0000022','Payment','2021-04-28 04:23:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f6a1aae3-7747-4044-baf4-c8c145a3ccc8','Admin has added customer: test5','Add','2021-04-28 02:09:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f704796b-0325-42ae-a376-d3120d861004','Admin has reversed transaction Burger Bacon','Delete','2021-04-27 11:01:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f78f1cc3-3b2c-4638-8d81-34f9a14e0b5e','Admin has checked out payment INV0000023','Payment','2021-04-28 07:11:25','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f80f004b-788a-41ed-96fb-5425e79c72b1','Admin has added order from 2021-04-28 09:08 AM to 2021-04-28 09:08 AM for customer Sok','Add','2021-04-28 02:09:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f858a784-5526-40ef-9574-93908f6195f9','Admin has checkout owe total: 1','Checkout','2021-04-28 16:06:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fcce84f6-7a6a-4cfd-af61-da0044d3adf9','Admin has modified user: Gee','Modify','2021-04-29 02:07:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fdf3644f-c6ff-475d-8f86-094a2e5a1eb3','Admin has ordered invoice: INV0000022','Order','2021-04-28 04:23:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fe5c4133-de42-42b5-b528-84c13737f426','Admin has added expense: test','Create','2021-04-28 02:32:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fff6b6e5-d200-44e0-931f-73a03af638f7','Admin has ordered invoice: INV0000002','Order','2021-04-27 04:10:25','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_checkin` VALUES ('0e5ee194-187f-4fa0-bc92-e10fa163cea4','2021-04-28 02:09:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 02:09:51','ec330421-f957-4f3d-a10c-5c23e275299b','8c5a3227-fdf4-4fa2-a9df-3e2c5b90f3eb'),('3b74f77e-ac24-4a25-a9cd-542d07b35289','2021-04-27 07:38:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 07:38:17','9e46aa7b-52bc-4ad0-b9c2-c620c7361a45','8d7ced17-b96e-44e7-b9b6-28cf71c5d4a4'),('4f68eac1-d86c-4597-8d74-bbe300319472','2021-04-27 11:50:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 11:50:45','b23c5fa7-1b51-47ca-bf62-96581bd2a383','db9aab8c-9d38-4920-a08b-d2f42d254d10'),('7db2a3e2-5f61-4b10-bef4-3559afc1b7a8','2021-04-27 09:59:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:59:39','99dd045b-e3d3-4ea8-a9d8-5dc69e679a6a','ff243680-4dca-43df-afa0-3726351a89e1'),('92b89401-30ae-4d08-ac2b-89be70c574ab','2021-04-27 09:56:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:56:05','d35b35d0-e8fc-4b21-9d89-44ef3f481f90','b99748e0-92e6-47ab-bd61-4fa85bcb4313'),('9d479b97-b646-4b74-9c33-1992d3c79269','2021-04-28 07:10:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:10:26','6a9c5227-6285-4cdd-8d78-f4f0f52c492f','4c897971-9fd5-49aa-863f-ecef47e0a8ab'),('9f93cf4b-f39d-4bc2-91d2-e45aceec2b54','2021-04-28 07:22:21','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:22:21','b3a397dc-ceca-4cda-b0fb-21e95cf31e75','7d4f6936-273f-41fb-9b62-172ac471e0d2'),('a13ada36-cd46-4a66-bbe9-9ccd234935e5','2021-04-27 09:58:37','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:58:37','9f240807-a187-444e-b3a4-404d3ecc97fd','4735195c-d7a2-4b24-b36a-ec28edd18e2f'),('d8f2e506-7766-4148-b962-69f533625fe2','2021-04-27 09:54:17','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:54:17','57f45851-18df-45ba-9561-bd4a054cf0a2','f42c0760-4cab-43ec-9c11-40aa37f766ac'),('dc1eaf09-178b-43fc-b706-554e215edef6','2021-04-27 04:10:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:39','96e1c94f-34f5-4583-b833-b27b9a210d42','356676db-306a-4349-bf49-649a04e21c9e'),('e628d08b-ba02-4a5e-bceb-c19ec5174749','2021-04-28 07:11:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:11:38','d3290a43-66a3-4dce-93e1-1c3f951bee5e','db4c5676-4e03-45aa-a637-9151f31a5e5b');
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
INSERT INTO `tbl_checkout` VALUES ('26bde442-a3d5-4606-af20-1b7b6b498843','2021-04-27 13:51:00',121,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 13:51:00','b23c5fa7-1b51-47ca-bf62-96581bd2a383'),('3a6c6bc5-69ab-46ae-9386-bedca6b74f47','2021-04-28 07:41:54',20,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:41:54','b3a397dc-ceca-4cda-b0fb-21e95cf31e75'),('3b9a7a23-b9f6-41a1-854d-8fbcf334d62b','2021-04-27 04:10:44',60,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:44','96e1c94f-34f5-4583-b833-b27b9a210d42'),('4bc096ba-c368-4d19-a0fb-c16bde48ca0b','2021-04-27 07:38:32',60,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 07:38:32','9e46aa7b-52bc-4ad0-b9c2-c620c7361a45'),('66b7e1c9-959a-40fc-bca4-a565c6462d5e','2021-04-27 09:59:08',0,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:59:08','9f240807-a187-444e-b3a4-404d3ecc97fd'),('677f9529-85fc-4ec6-a3d2-752f82cdadc4','2021-04-27 09:59:47',0,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:59:47','99dd045b-e3d3-4ea8-a9d8-5dc69e679a6a'),('806ba1b2-edf6-41c9-b0a2-ccc5dc19c3e1','2021-04-28 02:37:46',30,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 02:37:46','ec330421-f957-4f3d-a10c-5c23e275299b'),('97d6407c-47eb-48ac-80e2-6ba130d098d2','2021-04-28 07:10:33',10,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:10:33','6a9c5227-6285-4cdd-8d78-f4f0f52c492f'),('c64ee47a-07da-496b-b882-6e222e4b8974','2021-04-28 07:11:45',10,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:11:45','d3290a43-66a3-4dce-93e1-1c3f951bee5e');
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
INSERT INTO `tbl_customer` VALUES ('02725d1f-c08f-410d-8a68-939e43ae3b63','Sok',NULL,'','','2021-04-27 05:11:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4feb3818-dfbf-4979-8159-414c635e2033','Thong',NULL,'','','2021-04-27 04:10:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('5f2973f3-8686-478a-9e1d-81870ce2f6bc','test2',NULL,'','','2021-04-28 02:09:05','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('65b4c882-0794-40d0-9920-04e1b15cccd3','test4',NULL,'','','2021-04-28 02:09:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7815d18a-b986-4251-af28-8f1e54ee66ad','Test',NULL,'','','2021-04-28 02:08:56','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('87912c32-6d74-4e00-ae4b-d07f78da5837','Customer',NULL,'','','2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('89a70117-ccf3-4b11-b759-5b7460e8153f','test1',NULL,'','','2021-04-28 02:09:02','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('91730a9b-e9a1-48e3-a672-023b1d6bdb7a','test3',NULL,'','','2021-04-28 02:09:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d8d62997-8b85-48dd-830b-97c0aaf6883f','test5',NULL,'','','2021-04-28 02:09:20','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f8847ab4-bc65-4dd0-9821-c1b5adfbaacc','Test6',NULL,'','','2021-04-29 03:52:48','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_drawer` VALUES ('04f8e4a7-2674-48c4-a0e6-560e40f48a18','aa2244a6-bbd9-451b-a83f-9209506276f8',4200.00,'Default',0.00,'2021-04-27 09:28:06',NULL,'e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5','02fb2104-2e30-4afa-996b-3073e3cf87f5',4000.00,'Default',0.00,'2021-04-26 12:22:22','2021-04-27 09:28:03','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `tbl_invoice_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoice`
--

LOCK TABLES `tbl_invoice` WRITE;
/*!40000 ALTER TABLE `tbl_invoice` DISABLE KEYS */;
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
INSERT INTO `tbl_money` VALUES ('1336df5c-3ec1-4334-aa8a-7f5d361fd7cf',1000,'KHR',0.23810,974,'04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('189ee45b-b11e-4397-b413-270bdf037cfd',1,'USD',1.00000,65,'04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('b88c1d52-da77-46bc-94e6-2244f5cdb8d7',10,'USD',10.00000,100,'04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('e003eb77-5118-458b-ac90-326f46cf6d74',100,'USD',100.00000,100,'04f8e4a7-2674-48c4-a0e6-560e40f48a18');
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
INSERT INTO `tbl_order` VALUES ('57f45851-18df-45ba-9561-bd4a054cf0a2',1,1,'2021-04-27 09:53:00','2021-04-27 09:53:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:53:53'),('6a9c5227-6285-4cdd-8d78-f4f0f52c492f',1,1,'2021-04-28 07:10:00','2021-04-28 07:10:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:10:23'),('96e1c94f-34f5-4583-b833-b27b9a210d42',1,1,'2021-04-27 04:10:00','2021-04-27 04:10:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 04:10:37'),('99dd045b-e3d3-4ea8-a9d8-5dc69e679a6a',1,1,'2021-04-27 09:59:00','2021-04-27 09:59:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:59:37'),('9e46aa7b-52bc-4ad0-b9c2-c620c7361a45',1,1,'2021-04-27 07:38:00','2021-04-27 07:38:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 07:38:14'),('9f240807-a187-444e-b3a4-404d3ecc97fd',1,1,'2021-04-27 09:58:00','2021-04-27 09:58:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:58:32'),('b23c5fa7-1b51-47ca-bf62-96581bd2a383',1,1,'2021-04-27 11:50:00','2021-04-27 11:50:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 11:50:43'),('b3a397dc-ceca-4cda-b0fb-21e95cf31e75',1,1,'2021-04-28 07:22:00','2021-04-28 07:22:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:22:19'),('d3290a43-66a3-4dce-93e1-1c3f951bee5e',1,1,'2021-04-28 07:11:00','2021-04-28 07:11:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 07:11:36'),('d35b35d0-e8fc-4b21-9d89-44ef3f481f90',1,1,'2021-04-27 09:55:00','2021-04-27 09:55:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-27 09:55:56'),('ec330421-f957-4f3d-a10c-5c23e275299b',1,1,'2021-04-28 02:09:00','2021-04-28 02:09:00','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','2021-04-28 02:09:47');
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
INSERT INTO `tbl_outcome` VALUES ('173b1df9-be71-4d2d-a4bf-8eceff8959ba',0,'adsfsad',2.00,'2021-04-28 02:33:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('318e6f3e-df8f-4ddd-953b-9e80578ac396',0,'fdasfd',1.00,'2021-04-28 02:33:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6a6c424a-bab5-4e13-acc0-fb607b571f79',0,'fsfsd',1.00,'2021-04-28 02:32:52','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('995350e0-3d2e-4e63-95bf-20f7f877e424',0,'adfasdf',12.00,'2021-04-28 02:33:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a6d1eef3-f0d8-41b2-ae6d-7cb72c420cd8',0,'asdf',1.00,'2021-04-28 02:32:55','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a812972b-8d01-4bfc-bc51-9a5dafcbf5f9',0,'test',5.00,'2021-04-28 02:32:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b16524df-fbf5-4fa1-a381-001396c2c2a4',0,'tes',12.00,'2021-04-28 02:32:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b643b2f0-4391-4156-a98d-9df063db5a00',0,'tes',1.00,'2021-04-28 02:32:43','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f8086628-2dd2-4cf9-a1ca-bf77842d4153',0,'fsds',1.00,'2021-04-28 02:32:58','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('fe3dd4f3-44b4-4cd9-a0a8-450992d1f36b',0,'test',3.00,'2021-04-28 02:32:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_owe` VALUES ('1e620d78-5190-47ab-9e7e-48d21be19365','OWE_Test',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-28 02:08:56','7815d18a-b986-4251-af28-8f1e54ee66ad','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('2b1b9c94-bf4e-4191-93e4-d8239c7df819','OWE_test4',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-28 02:09:14','65b4c882-0794-40d0-9920-04e1b15cccd3','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4d128b25-0b1a-4eeb-839d-104d947f88e1',NULL,0.0000,4200.0000,0.0000,0.0000,'0,0','2021-04-27 04:10:12','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('53f525a2-42ca-4299-a086-5c0ad3ee4ac2','OWE_test3',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-28 02:09:10','91730a9b-e9a1-48e3-a672-023b1d6bdb7a','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('55870aba-d102-45a2-ac84-ef147498ec0d','OWE_Test6',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-29 03:52:48','f8847ab4-bc65-4dd0-9821-c1b5adfbaacc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9e84543a-7b7c-4207-8251-8ebcce05d30f','OWE_test5',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-28 02:09:20','d8d62997-8b85-48dd-830b-97c0aaf6883f','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c81aa364-0384-44c9-8c11-b93177d2e884','OWE_test1',0.0000,NULL,0.0000,0.0000,'0,0','2021-04-28 02:09:02','89a70117-ccf3-4b11-b759-5b7460e8153f','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d2e87b41-2ff6-4897-93ac-78ffbd0382ea','OWE_Sok',0.0000,4200.0000,4.5000,0.0000,'0,0','2021-04-27 05:11:19','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('da956f46-d5a5-4e48-b5eb-a3b669b94c7d','OWE_test2',0.0000,NULL,3.0000,0.0000,'0,0','2021-04-28 02:09:05','5f2973f3-8686-478a-9e1d-81870ce2f6bc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_payment` VALUES ('09fc69b7-8762-46e3-9374-798fed6fa4ff',1,'INV0000005',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-27 05:11:27','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('165d090e-0153-4d31-9ff4-3cd2d58a515f',1,'INV0000019',3.0000,3.0000,0.0000,'3,0',4200.0000,0.0000,'2021-04-28 02:21:10','5f2973f3-8686-478a-9e1d-81870ce2f6bc','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('1884d903-b369-4e90-a36b-7fa453ddf606',1,'INV0000031',0.5000,0.5000,0.0000,'0.5000,0',4200.0000,0.0000,'2021-04-29 05:51:04','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('1e114e61-c2e7-4cf6-be3d-2ab72f484f8a',1,'INV0000022',3.0000,3.0000,0.0000,'3.0000,0',4200.0000,0.0000,'2021-04-28 04:23:02','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('21faf7b3-5cb4-460e-871a-69fa2a4e8b11',1,'INV0000020',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-04-28 04:16:54','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('2ef17fe6-6c9f-4661-b385-541846179375',1,'INV0000029',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-04-29 03:08:48','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('356676db-306a-4349-bf49-649a04e21c9e',1,'INV0000003',11.0000,11.0000,0.0000,'9.0000,8000',4000.0000,0.0000,'2021-04-27 04:10:39','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('450d8a5c-ee60-4912-a3c7-48d6894e309b',1,'INV0000026',3.0000,3.0000,0.0000,'3.0000,0',4200.0000,0.0000,'2021-04-28 07:22:31','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('4735195c-d7a2-4b24-b36a-ec28edd18e2f',1,'INV0000013',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-04-27 09:58:37','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('4bb6b9f6-45b6-42ca-9f0e-6fb24516563a',1,'INV0000009',3.5000,3.5000,0.0000,'10,0',4200.0000,6.5000,'2021-04-27 09:29:11','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('4c897971-9fd5-49aa-863f-ecef47e0a8ab',1,'INV0000023',1.3300,1.3300,0.0000,'5,0',4000.0000,3.6700,'2021-04-28 07:10:26','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('4d91d95d-8c5f-41b9-9cf3-216f02d85d51',1,'INV0000030',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-04-29 03:36:20','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('4f8aff8e-9dd6-4a08-b844-757c01188c3b',1,'INV0000027',3.5000,3.5000,0.0000,'5,0',4200.0000,1.5000,'2021-04-28 07:56:45','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('55782b87-de47-4dfd-bc1e-960cbcef3973',1,'INV0000002',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-27 04:10:25','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('58721360-f63c-4a1e-a10f-edbb0f9faf4a',1,'INV0000018',3.0000,3.0000,0.0000,'5,0',4200.0000,2.0000,'2021-04-28 02:21:00','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('740d834e-dbd3-4f62-a7b4-0a9c244a130b',1,'INV0000001',3.0000,3.0000,0.0000,'3.0000,0',4000.0000,0.0000,'2021-04-27 04:10:16','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('7d4f6936-273f-41fb-9b62-172ac471e0d2',1,'INV0000025',5.6700,5.6700,0.0000,'10,0',4000.0000,4.3300,'2021-04-28 07:22:21','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('882f6615-c1a7-4c12-8991-8bf96c2ae620',1,'INV0000017',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-04-28 02:20:48','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('8c5a3227-fdf4-4fa2-a9df-3e2c5b90f3eb',1,'INV0000016',4.0000,4.0000,0.0000,'5,0',4000.0000,1.0000,'2021-04-28 02:09:51','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('8d7ced17-b96e-44e7-b9b6-28cf71c5d4a4',1,'INV0000006',11.0000,11.0000,0.0000,'11,0',4000.0000,0.0000,'2021-04-27 07:38:17','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('b99748e0-92e6-47ab-bd61-4fa85bcb4313',1,'INV0000012',0.0000,0.0000,0.0000,'0,0',4200.0000,0.0000,'2021-04-27 09:56:05','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('bce0f27f-683b-458d-9eae-501db0b12511',1,'INV0000028',3.0000,3.0000,0.0000,'2.5238,2000',4200.0000,0.0000,'2021-04-28 13:44:58','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('c595e46a-5621-4416-bcf9-c6f3c5170d5d',1,'INV0000007',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-04-27 09:25:01','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('db4c5676-4e03-45aa-a637-9151f31a5e5b',1,'INV0000024',4.3300,4.3300,0.0000,'5,0',4000.0000,0.6700,'2021-04-28 07:11:38','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('db9aab8c-9d38-4920-a08b-d2f42d254d10',1,'INV0000015',16.1300,16.1300,0.0000,'10,40000',4000.0000,3.8700,'2021-04-27 11:50:45','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('e6b45447-4935-4827-812e-400189f730f7',1,'INV0000008',3.0000,3.0000,0.0000,'10,0',4200.0000,7.0000,'2021-04-27 09:28:44','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('e8780a33-9ae0-466c-931b-917974a4f38d',1,'INV0000010',3.5000,3.5000,0.0000,'0,20000',4200.0000,1.3250,'2021-04-27 09:29:34','87912c32-6d74-4e00-ae4b-d07f78da5837','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('f42c0760-4cab-43ec-9c11-40aa37f766ac',1,'INV0000011',0.0000,0.0000,0.0000,'0,0',4200.0000,0.0000,'2021-04-27 09:54:17','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('f4c8b624-3a1a-4745-b89e-e8093077ff66',1,'INV0000004',4.0000,4.0000,0.0000,'4.0000,0',4000.0000,0.0000,'2021-04-27 05:11:22','02725d1f-c08f-410d-8a68-939e43ae3b63','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','7146bc8f-bcb8-48dc-bb03-ecd70fc24fb5'),('fd3ca621-b4f8-47ab-bfa9-78d9254c2885',1,'INV0000021',3.5000,3.5000,0.0000,'3.5000,0',4200.0000,0.0000,'2021-04-28 04:18:51','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18'),('ff243680-4dca-43df-afa0-3726351a89e1',1,'INV0000014',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-04-27 09:59:39','4feb3818-dfbf-4979-8159-414c635e2033','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','04f8e4a7-2674-48c4-a0e6-560e40f48a18');
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
INSERT INTO `tbl_profile` VALUES ('4585ad54-76bd-4009-87a1-e0aa22c5b3ba','default.png','','','','','','','2021-04-27 10:03:03','7217e35b-c507-442e-b43a-c7d5b48590ed'),('a4f3a643-e04d-4691-ba4e-e6f3d4b72e58','default.png','Single','','','','','','2021-04-26 12:19:38','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('e11fec4f-84d3-4f87-bd83-cbc997bc2c4e','default.png','','','','','','','2021-04-28 08:15:41','25b38570-b58d-4536-a687-a39e84726642');
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
INSERT INTO `tbl_quantity` VALUES ('050a8708-6dde-407b-a345-8826e025db3e',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','f6858800-570a-49b2-8d55-77b7342a94a9'),('0c48b045-32cf-419d-bea5-a64a5e2af409',2,2,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','244dd67b-d3a4-40ce-991e-de1c5f7d8e9f'),('16cbf318-082f-4d1f-a115-5f144dc10d7d',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','38f1291a-df19-493d-b320-b24667083c1b'),('18c185b4-5634-4502-9469-5935bcac9fa5',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','d7ee92d3-a22c-4b87-ba1b-793c182a96eb'),('2e13bcd0-8f8b-402a-8f2b-a6766c56e650',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','4cdc430e-346f-40da-a38c-a3c7e25f00ea'),('62f423a1-f1cf-48a9-86fc-0b6bba2597e9',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','42f40c7f-b9a7-4c57-ab43-f5d360cac1af'),('95f4ed7c-e86d-4ad5-bdb9-83aad9c49ddb',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','73d820cc-821a-46b6-83f2-70117fdac659'),('aa6f42e2-61c7-4c62-82c7-4a3a6558c0d6',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','164a9622-3cac-4ecb-ad67-668462e0acbc'),('c3230aa7-c785-4bca-902d-f817e3126514',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','ca48acb4-7bd9-4271-a343-37062a74b6de'),('dbbb2306-42a3-4edb-9797-f5219e22ea61',1,1,'c2578a27-be0f-4fed-ab44-dbde9bfb2399','0573215b-2efc-41ba-99b5-671031779c05');
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
INSERT INTO `tbl_stock` VALUES ('c2578a27-be0f-4fed-ab44-dbde9bfb2399',0.20,0.20,'USD',4000.00,89,20.00,'',NULL,'2021-04-26 12:21:28','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79');
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
INSERT INTO `tbl_transaction` VALUES ('0573215b-2efc-41ba-99b5-671031779c05',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-29 03:36:18','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('164a9622-3cac-4ecb-ad67-668462e0acbc',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-29 05:51:01','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('1c3fab33-f271-42f6-b240-ae7c7cd622fc',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 07:38:19','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('21b95da9-e18c-47aa-b839-d2126ea13c4e',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 04:18:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('244dd67b-d3a4-40ce-991e-de1c5f7d8e9f',1,1,'0',0.50,1.00,2,0.60,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-27 05:11:12','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('24833b64-f993-4bb0-86d2-bfee0962e6eb',1,0,'0',8.00,8.00,1,8.00,'Room 1, 60min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-27 07:38:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('258ffb37-d8f0-4f01-999c-b789f06dba36',1,0,'0',1.33,1.33,1,1.33,'Room 1, 10min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-28 07:11:45','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('301d4ba7-e751-4cf8-96e0-95e1a93c66c5',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 07:11:40','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('35253aa1-5923-4f42-86b5-7e8edbf246dc',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 02:21:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('38f1291a-df19-493d-b320-b24667083c1b',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-27 09:29:10','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3c8e21c6-6028-4c1b-8991-f3dd904522f1',1,0,'0',2.67,2.67,1,2.67,'Room 1, 20min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-28 07:41:54','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3d625536-2435-4c13-9f56-9763aa623b29',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:29:32','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('3e846dd1-8826-4b55-b606-2de10dd34bfb',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 07:56:42','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('42f40c7f-b9a7-4c57-ab43-f5d360cac1af',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-27 09:29:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4c10ddbe-ffff-46a5-b19c-6c0a0ecb22bf',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 13:44:57','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('4cdc430e-346f-40da-a38c-a3c7e25f00ea',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-28 04:16:51','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('57888364-7833-4838-8a5f-e6031580988b',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 04:22:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('60f98a0b-8cd7-4c0e-a33c-148ced90c935',1,0,'0',16.13,16.13,1,16.13,'Room 1, 2h 1min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-27 13:51:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6194f8aa-fae9-4ae2-9d8b-9235fcf429c5',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 02:20:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('695cb9f0-61f7-4a7d-acac-77b1a097f992',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 05:11:14','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('6c6cb949-f16d-4e7c-b96b-c6dd43d748a7',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:58:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('73d820cc-821a-46b6-83f2-70117fdac659',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-29 03:08:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('7b13feeb-2bb4-46fc-8fd4-7f41e763e466',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:59:42','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('8fed48a0-1658-4742-8927-4785c729e383',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 07:41:59','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('94a59171-9af0-46b2-b5d5-e45c1254d374',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:25:00','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('9c413331-c4db-469a-b1fc-4d34a4b02c14',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:29:08','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('a90ced9f-c69e-47f4-b342-3e6a7c63be45',1,0,'0',8.00,8.00,1,8.00,'Room 1, 60min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-27 04:10:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('aa23664a-4775-4114-a5b6-642ebd4d0897',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:07','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('aa2e7ce7-bca7-4d14-bcaf-fe8d88e3d4c5',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 05:11:25','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('af2055b0-e4c4-451f-acff-925720cfb211',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-28 07:22:27','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('b542b4cb-9ce5-410d-995a-87e0bfedf135',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:28:39','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('c8f8a0ec-0c42-4857-b74f-0259296942dd',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 09:54:26','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('ca48acb4-7bd9-4271-a343-37062a74b6de',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-28 07:56:44','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('cd0b899e-f13b-4b98-8ebc-af04d6220eab',1,0,'0',1.33,1.33,1,1.33,'Room 1, 10min','8bf53e58-e565-4ced-8e7a-9b3767fdbe32','2021-04-28 07:10:33','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d2a48582-6c85-489b-9953-524252aaaa68',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:22','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('d7ee92d3-a22c-4b87-ba1b-793c182a96eb',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-28 02:20:47','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f6858800-570a-49b2-8d55-77b7342a94a9',1,1,'0',0.50,0.50,1,0.30,'Coca Cola Original Taste','bacb9ca2-8022-45fd-9b73-cecf2a5f8a79','2021-04-28 04:18:46','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2'),('f8043955-4c82-433b-8c0d-0212184f2539',1,1,'0',3.00,3.00,1,3.00,'Burger Bacon','e61363a3-3080-4af1-944f-8fb2cf5a1156','2021-04-27 04:10:49','e0e67d06-d390-48a6-b7d2-a8a87bef6ad2');
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
INSERT INTO `tbl_user` VALUES ('25b38570-b58d-4536-a687-a39e84726642','','','Test','M',NULL,'','$2b$12$/0YhQdcUQzSs.CGDYGpld.P86ayau0JMqK9sUSNUfKgVOU3zINpu2','light','english','70de1f19-b063-42df-a4c1-c901034962e5','','',0,0,'2021-04-28 08:15:41'),('7217e35b-c507-442e-b43a-c7d5b48590ed','','','Gee','M',NULL,'','$2b$12$0dYOyhvQGWjhbO38RRTNQekQ3sMp7nqPadvyqmw.f/K/6RvuzhpS6','dark','english','97d0a23b-8dfe-409f-b8f9-641bb3d40098','','',1,0,'2021-04-27 10:03:03'),('e0e67d06-d390-48a6-b7d2-a8a87bef6ad2','','','Admin','',NULL,'','$2b$12$sQ/.lVX.2wQN6wzAif9H.eBawQK1KbHIgo1m39ruhhNxAFp/EyUr2','dark','khmer','f0f6f545-0dc9-4b6a-9866-5e935b2d6ca2','d0e07729-4e81-4fed-9b27-ce340e045407','04f8e4a7-2674-48c4-a0e6-560e40f48a18',1,1,'2021-04-26 12:19:38');
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

-- Dump completed on 2021-04-29 14:36:43
