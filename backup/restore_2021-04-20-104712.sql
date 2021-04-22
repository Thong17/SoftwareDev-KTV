-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mart_shop
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
INSERT INTO `payment` VALUES ('d3e379e1-a81c-4236-9423-d5c812a4d861','5437e4bf-1d8a-4da0-97ed-fc12e6c43415'),('d3e379e1-a81c-4236-9423-d5c812a4d861','3ae6b048-7899-42dd-9f75-cb481db3bc99');
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
INSERT INTO `tbl_activity` VALUES ('01c82941-a98a-4e79-923b-858a8622ac43','Admin has deleted category: Food','Delete','2021-04-17 15:40:47','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('08bf4646-edf3-4ed5-8b49-12cb047fe0f9','Admin has deleted category: Food','Delete','2021-04-17 15:39:56','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('0e1250e0-6641-4fc9-8a2e-33972ca60425','Admin has modified room: Room 3 from Room 3/8','Modify','2021-04-19 13:58:49','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('1003879e-7479-4880-a8f7-b9ef1d972d60','Admin has added property: Size in category មុខម្អូប','Add','2021-04-17 15:47:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('148763e2-cda9-4d3b-89a2-d1808b018a69','Admin has deleted brand: Shop','Delete','2021-04-17 15:50:12','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('177cfeb7-94a9-47bf-a05e-59f3f14bf3a9','Admin has modified product from Burger Bacon//True/KHR/3.00///None/មុខម្អូប','Modify','2021-04-18 13:04:11','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('18f3891b-f425-489d-90d5-f6a0ea0cd61e','Admin has modified theme from dark','Modify','2021-04-17 15:00:48','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('1bab889f-52e1-4a11-a45f-423e9147c05c','Admin has modified theme from light','Modify','2021-04-19 13:33:22','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('1f471d96-7435-4de1-ab99-aa032603792e','Admin has added category: Beverage in category','Add','2021-04-17 15:26:59','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('214188a7-2264-4efc-aa34-5d789b67bf13','Admin has modified category from Food','Modify','2021-04-17 15:53:47','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2627e8e8-c6b7-42d3-87de-54ea990dfde6','Admin has deleted property: ទំហំ in category','Delete','2021-04-17 15:46:22','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2711e695-dcf6-4b56-8743-89f49400888f','Admin has modified theme from blue','Modify','2021-04-17 15:00:51','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('297f6bb6-1273-40a5-95e7-7f65c41c9334','Admin has added room: Room 10','Create','2021-04-19 13:58:59','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2b559526-4761-4441-a37c-e4bc224c6d18','Admin has modified theme from dark','Modify','2021-04-19 13:54:41','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2b7bb3d7-b223-4483-af97-7478e97dada7','Admin has deleted brand: Coca Cola','Delete','2021-04-17 15:43:05','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2bda6756-4c72-4631-8dfe-e94e138950f5','Admin has modified theme from dark','Modify','2021-04-19 13:55:28','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2c8ed7c7-6e62-465d-ab51-79ea785a062c','Admin has added room: Room 1','Create','2021-04-19 13:58:01','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2ecbbe45-8e27-4763-98ab-fb898e60e506','Admin has added category: មុខម្អូប in category','Add','2021-04-17 15:27:31','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('2f31d09c-967f-449f-a2f2-c3ba9a1baff2','Admin has logged in','Login','2021-04-17 15:22:20','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('312bdcdc-e6e3-42ad-9607-c706b82ad4f4','Admin has added category: Beverage in category','Add','2021-04-17 15:38:20','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('31dae1cc-6adb-427d-abc8-e77023e0857f','Admin has modified theme from light','Modify','2021-04-17 15:00:45','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('3227a9a1-3c58-49c0-920a-4040eed4de61','Admin has added category: Food in category','Add','2021-04-17 15:40:20','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('33cd7f6e-4dcf-435d-a723-eb7c52bf99bd','Admin has added category: Beverage in category','Add','2021-04-17 15:41:17','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('34c6afb7-8d4d-4dc6-a911-0787f159364b','Admin has added category: Food in category','Add','2021-04-17 15:39:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('365932d1-718e-4cb9-8de3-9b2e6d67ec14','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:34:56','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('36c65842-02bf-477e-b082-1f6a9804c275','Admin has deleted category: Beverage','Delete','2021-04-17 15:46:23','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('36cc6064-a559-4481-90c8-2b94b36a15cf','Admin has logged in','Login','2021-04-17 15:03:40','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('39a2a46d-d7c3-4fc2-8403-eef340e7200d','Admin has added stock: 0.3/KHR/100/4000/None/30.0 in product Coca Cola Original Taste','Add','2021-04-18 13:06:53','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('4179ac9b-971d-45d2-9542-b1408728116f','Admin has added color Silver in product','Add','2021-04-18 13:01:39','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('4371b64a-397c-469d-931c-4e7e0d689fa4','Admin has modified category from Food','Modify','2021-04-17 15:52:40','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('48230150-caa5-4628-84c3-9b5da1ad3e4f','Admin has uploaded his profile picture ','Modify','2021-04-17 15:25:18','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('499e8de5-ddf8-47c8-bcbe-dd4384b241ec','Admin has logged in','Login','2021-04-17 14:58:32','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('49a25ebe-05f0-4c45-83bb-af623f36e17b','Admin has added category: Beverage in category','Add','2021-04-17 15:45:28','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('4d1aeee3-78fa-4c0a-ba22-0c5bed2edac8','Admin has deleted category: Beverage','Delete','2021-04-17 15:39:54','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('4d7a6a97-c138-4540-972b-eab5cc1a0a9d','Admin has deleted category: Beverage','Delete','2021-04-17 15:34:54','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5565db22-26bf-4b0f-bcc9-f827a5cee14b','Admin has modified theme from light','Modify','2021-04-19 13:56:30','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5a9eb306-b090-4305-8737-bffa78248654','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:52:56','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5b005527-b193-4027-943d-75f10a3c6a41','Admin has modified category from Food','Modify','2021-04-17 15:45:49','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5cc9ea9f-ae9c-429c-8823-9e59f7c1cf90','Admin has logged in','Login','2021-04-17 14:52:58','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5df06bee-5974-4aaf-842a-9417a18160fb','Admin has logged in','Login','2021-04-17 15:00:32','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5ef057e6-9388-4e54-8516-11a1b8c494ec','Admin has deleted category: Food','Delete','2021-04-17 15:37:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5efee3f9-10e9-4a3c-8adf-974934a31988','Admin has deleted category: Beverage','Delete','2021-04-17 15:37:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('60c2f2b3-71ee-4697-aaa6-092993d3fc23','Admin has deleted category: Beverage','Delete','2021-04-17 15:38:43','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('62315bed-72bc-45fb-88c8-d53f1f373b60','Admin has modified theme from blue','Modify','2021-04-19 13:33:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('628cd50f-b344-49ea-b4a0-9238659a9dbf','Admin has deleted category: Beverage','Delete','2021-04-17 15:47:43','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('6336015e-1fa7-4b93-8a70-884da2965329','Admin has deleted category: Food','Delete','2021-04-17 15:38:45','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('651a1419-2ac0-4882-b003-18ae67c8f94c','Admin has modified category from Beverage','Modify','2021-04-17 15:27:17','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('68481afc-fbc6-42ed-ad90-2fc42762410b','Admin has added category: Food in category','Add','2021-04-17 15:48:10','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('68740ac4-4289-4cc4-a8b4-3698298f4e32','Admin has modified language from english','Modify','2021-04-17 15:25:51','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('6ad8148d-24ab-4de1-8921-4c2ae894d571','Admin has modified language from english','Modify','2021-04-17 15:00:58','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('6c303b1a-3b28-4dee-9c8f-7c48bbe69350','Admin has deleted category: Food','Delete','2021-04-17 15:51:08','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('6fe93a6e-3a37-4d92-a7b9-59a59e76bc6a','Admin has modified store from: Store Name//','Deleted','2021-04-19 13:57:21','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('710a92df-d46c-4c62-9f85-03c70091247f','Admin has modified theme from dark','Modify','2021-04-17 14:53:16','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('736a96b2-c916-4fda-9b3f-45211b73a6d5','Admin has modified category from Food','Modify','2021-04-17 15:47:11','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('73a16a85-72ce-49a7-bd30-ce3827c75d9a','Admin has added property: ទំហំ in category មុខម្អូប','Add','2021-04-17 15:48:54','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('743a8fda-5020-46b9-bb03-37d1a68ee9fa','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-04-18 13:05:16','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('77bee170-db33-4dec-88ad-8707e8d5ff0f','Admin has added category: Beverage in category','Add','2021-04-17 15:37:09','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7800ff18-2dfe-44d5-891a-d4ad2ce93e77','Admin has deleted brand: Shop','Delete','2021-04-17 15:43:06','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('78091fb0-8645-4084-a625-af9028c05306','Admin has added property: Size in category មុខម្អូប','Add','2021-04-17 15:27:49','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7b0e2d83-1bae-418c-864b-446ea75f69a7','Admin has added category: Food in category','Add','2021-04-17 15:45:30','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7b3459a0-87f5-4632-863c-b5f584acb632','Admin has logged in','Login','2021-04-17 15:02:26','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7c7eb8b9-a0aa-4650-8010-2bc1a7a0f43e','Admin has added category: Beverage in category','Add','2021-04-17 15:52:17','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7d0f1f4c-9ab5-4c0b-b99b-2fa06fa3527c','Admin has modified stock from: 0.30/KHR/4000.00/100/None/30.00 in product Coca Cola Original Taste','Modify','2021-04-18 13:07:07','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7fa14ac4-a5e5-4fbe-9a62-8b7c4c7f444a','Admin has modified category from Food','Modify','2021-04-17 15:48:32','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('7ffd925f-77c1-415e-b9aa-cbc5fad02136','Admin has added category: Food in category','Add','2021-04-17 15:41:20','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('802fd201-1621-4394-821b-6b8efd983ba3','Admin has added brand: Shop in brand','Add','2021-04-17 15:54:35','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('84bec972-92d6-47b3-82b2-9a0c1eb09b62','Admin has added category: Food in category','Add','2021-04-17 15:38:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('8508a8b2-318c-4fa1-ac81-613c3e656440','Admin has deleted brand: Coca Cola','Delete','2021-04-17 15:50:11','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('863ffda5-8a9f-4552-9bcf-3ecb65b4b219','Admin has modified theme from blue','Modify','2021-04-17 14:53:19','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('87e5272d-2d0d-4804-adac-4a0c06ae25de','Admin has added value Small in product','Add','2021-04-18 13:03:12','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('89c13462-4c4a-4a59-a0ed-d5357cc6f79a','Admin has added room: Room 10','Create','2021-04-19 13:58:34','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('8a51235a-df81-4884-84fa-aafa9cc9ec21','Admin has added product Burger Bacon','Add','2021-04-18 13:01:08','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('8ceac50f-a5b1-4ab4-87a3-e91b196f0836','Admin has added category: Beverage in category','Add','2021-04-17 15:48:07','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('8d51e7fe-9bbb-489f-8d7e-c82c33874a6e','Admin has added category: Beverage in category','Add','2021-04-17 15:46:51','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('8dab1c35-333e-424a-b081-e7bb5aa5a42b','Admin has upload photo for product: Burger Bacon','Upload','2021-04-18 13:01:28','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('92c85590-99cd-48b4-be0f-53743c8545ea','Admin has deleted category: Beverage','Delete','2021-04-17 15:40:45','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('94ba30f4-f99e-478c-b08d-4be0064e9d0b','Admin has added brand: Coca Cola in brand','Add','2021-04-18 12:59:06','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9594b196-82e1-4c9b-a00d-d94755ca8d58','Admin has added category: Food in category','Add','2021-04-17 15:53:28','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('98a7e823-b5fc-47a5-bfe7-9036dd0a9b12','Admin has added brand: Shop in brand','Add','2021-04-18 12:59:14','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9ad0505d-2687-4272-bf0e-8d4de0785d80','Admin has modified theme from light','Modify','2021-04-17 15:25:37','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9bcd5a8c-1e0b-4c7d-8bed-f14048645bf5','Admin has added brand: Shop in brand','Add','2021-04-17 15:42:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9cff4a5f-fe42-4b76-b58e-1c08a2c64245','Admin has added category: Beverage in category','Add','2021-04-17 15:39:21','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9d116ca3-de9e-45b8-8cec-6649ee2d3924','Admin has modified theme from dark','Modify','2021-04-19 13:53:52','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('9da3d19c-01c7-4045-b1ad-e9e4a65de146','Admin has deleted category: Beverage','Delete','2021-04-17 15:52:54','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a04e1432-c59f-44cc-a36b-f29e87485558','Admin has added property: ទំហំ in category មុខម្អូប','Add','2021-04-17 15:46:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a1408c5a-2d38-4e6c-96d0-277f846e44e2','Admin has upload photo for color: Silver','Upload','2021-04-18 13:02:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a2ac9bd1-46ed-4260-a76b-1a406a70ef23','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:46:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a5a91667-bae4-4813-8e65-589adef0d4c0','Admin has modified category from Food','Modify','2021-04-17 15:41:41','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a6b35675-2360-483b-bf25-455b659ae25d','Admin has logged in','Login','2021-04-18 07:11:29','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a79377b0-2993-490c-b5a6-4598b14f8a08','Admin has deleted category: Beverage','Delete','2021-04-17 15:50:14','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a7fe8756-7345-447d-aa6a-fc2767683371','Admin has modified theme from blue','Modify','2021-04-17 15:25:47','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a814b384-d280-4974-b4e3-1e426f6f5a21','Admin has uploaded his profile picture ','Modify','2021-04-17 15:05:01','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a86818b5-89a1-484c-89d8-9e2296e06dd5','Admin has logged in','Login','2021-04-20 03:46:53','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('a8bd8fea-2ded-4e04-ab39-769700e1d54e','Admin has modified color from Silver/#B4AFAF in product','Modify','2021-04-18 13:02:29','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('aa930486-0c9e-4cf8-9c55-01e69949f740','Admin has removed Coca Cola Original Taste from favorite','Remove','2021-04-18 13:08:26','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('ab956d42-3b7b-4f56-9012-0cb2b225ffc2','Admin has modified theme from light','Modify','2021-04-19 13:54:19','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('ae051902-e5dc-46e0-ab94-9bd4c16ab7e2','Admin has added product Coca Cola Original Taste','Add','2021-04-18 13:05:11','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b0fdc0de-c1d1-466a-ad99-08de4ef2fe5b','Admin has added Coca Cola Original Taste to favorite','Add','2021-04-18 13:08:12','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b1bd9f1b-5739-4fde-ae8a-269cf72feb67','Admin has added category: Food in category','Add','2021-04-17 15:46:54','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b2caddc1-bfc4-4fbc-9637-497230e1aa18','Admin has modified theme from light','Modify','2021-04-19 13:55:04','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b4628f82-e0fe-4269-9d95-fc5a12bc2e5f','Admin has modified language from khmer','Modify','2021-04-17 15:21:30','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b57215e1-dd8a-4bc1-94bb-8435eb59be2b','Admin has added brand: Coca Cola in brand','Add','2021-04-17 15:49:24','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('ba9110b4-811a-4e49-bb12-97c405d52764','Admin has added Burger Bacon to favorite','Add','2021-04-18 13:08:17','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('bad94f10-b3ce-453e-b289-536887cff91d','Admin has added transaction: Coca Cola Original Taste','Add','2021-04-18 13:10:01','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('bb6f443c-f0e5-4185-9f4a-a8c7e5dc69d2','Admin has deleted color: Red in product','Delete','2021-04-18 13:02:39','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('bf0249b4-36a0-42ad-8fb4-abe15f17c848','Admin has added category: Beverage in category','Add','2021-04-17 15:40:18','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('bf3c8a66-a035-422b-b095-ceb544c2866b','Admin has added brand: Coca Cola in brand','Add','2021-04-17 15:42:18','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('bfe5a68e-5b03-45e9-b5a5-71e7bd469fe2','Admin has ordered invoice: INV0000001','Order','2021-04-18 13:10:33','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c0015441-21d0-4811-8df7-f98fc9646d43','Admin has logged in','Login','2021-04-19 04:00:02','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c1536477-aea2-4faf-9776-ca1a7c87ae3b','Admin has added property: Size in category មុខម្អូប','Add','2021-04-17 15:42:01','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c2ded814-9ceb-4b78-89b3-2074a58a32da','Admin has added category: Beverage in category','Add','2021-04-17 15:53:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c4eb34ae-1b04-403a-b9bb-cf26f17d67fe','Admin has checked out payment INV0000001','Payment','2021-04-18 13:11:19','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c81fb7eb-7899-4ddf-8e15-b5843d9d1b78','Admin has deleted category: Beverage','Delete','2021-04-17 15:51:06','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('c8eab99a-9be8-4316-8247-7815e95228bb','Admin has upload photo for color: Silver','Upload','2021-04-18 13:02:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('ca8e2d51-acb7-40b5-af4d-0349cb0891c2','Admin has uploaded his profile picture ','Modify','2021-04-17 15:05:53','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('ca9ad88d-fce2-4f61-a74e-a04f75a90a6c','Admin has modified theme from light','Modify','2021-04-17 14:53:14','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('cbc2acf6-bec0-411e-a3aa-905acc3c2537','Admin has modified language from khmer','Modify','2021-04-17 14:58:36','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('cfa5af6f-deb2-4143-87a0-20fe4e4ced13','Admin has added room: Room 2','Create','2021-04-19 13:58:14','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d235a715-31e9-43f4-b19d-c653d8a8786a','Admin has logged in','Login','2021-04-17 15:01:39','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d4838901-a267-45af-8764-89dd03a1711c','Admin has modified theme from green','Modify','2021-04-17 15:25:41','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d6566422-a5ce-4a0e-8383-4ec1b85e2bf9','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:47:45','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d74f1527-258f-47ba-86e3-613ee5a0da36','Admin has added category: Food in category','Add','2021-04-17 15:50:46','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d83bcf69-816f-48b2-8415-ef40bf5fc8c9','Admin has added category: Beverage in category','Add','2021-04-17 15:50:42','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('d888e6ff-2895-4d0c-a0b2-eb736b218ed2','Admin has added value Large in product','Add','2021-04-18 13:03:33','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('da3c37ec-9bd1-4c65-ad3d-0dbca8fce782','Admin has added room: Room 11','Create','2021-04-19 13:59:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('db4c128b-83fb-4af1-a5e2-f882a1559f88','Admin has modified language from english','Modify','2021-04-17 14:53:22','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('dc29a0b7-5d19-4d41-8aa0-0cb75813e5f9','Admin has logged in','Login','2021-04-17 15:24:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('dc3822a3-5f82-47c4-bbee-4cce8c358db2','Admin has added category: Food in category','Add','2021-04-17 15:52:20','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('de7a5bb4-cf8b-403b-8f6b-ab6c1ddfad33','Admin has added property: ទំហំ in category មុខម្អូប','Add','2021-04-17 15:54:02','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('dec3c897-db00-488d-93ef-7217436aed63','Admin has deleted category: Beverage','Delete','2021-04-17 15:44:31','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('df8ea52f-7ea6-4866-956a-7c503a09f9a4','Admin has removed Burger Bacon from favorite','Remove','2021-04-18 13:08:19','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('e2160d56-4e3a-466a-8881-b260a1dd35d1','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:50:16','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('e471fca2-2734-4656-8243-3cd89131a32f','Admin has modified stock from: 0.30/KHR/4000.00/100/2021-04-21/30.00 in product Coca Cola Original Taste','Modify','2021-04-18 13:07:22','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('e5d15b85-574d-49a9-8f5b-9b615f06e934','Admin has added transaction: Burger Bacon-Large','Add','2021-04-18 13:10:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('e6320e4d-ed5e-466a-9dd7-b29200d9da98','Admin has added category: Food in category','Add','2021-04-17 15:37:13','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('e811e5b3-cbe4-43fe-8cda-15676bce22ec','Admin has opened drawer','Open','2021-04-18 13:09:41','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('eabbee83-9243-4ce9-8883-7b6eb3006fc4','Admin has added brand: Shop in brand','Add','2021-04-17 15:49:31','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('eb9e255f-8245-442d-b7bf-3fcf046e111e','Admin has deleted brand: Shop','Delete','2021-04-17 15:59:47','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f363955c-85ea-4fe2-b6f4-7303683439c7','Admin has added floor: 1F','Create','2021-04-19 13:58:39','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f46c46e0-f64c-4ae9-b5f0-520f2fac5459','Admin has deleted category: មុខម្អូប','Delete','2021-04-17 15:44:29','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f504ddf1-aa37-4373-980f-db9a50762bc8','Admin has added brand: Coca Cola in brand','Add','2021-04-17 15:54:26','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f676775d-6571-48d1-87a6-69395c88ab01','Admin has modified stock from: 0.30/KHR/4000.00/100/2021-04-17/30.00 in product Coca Cola Original Taste','Modify','2021-04-18 13:07:34','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f7d0da46-c444-4739-a2cb-43cc256b371b','Admin has deleted brand: Coca Cola','Delete','2021-04-17 15:59:46','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('f938f89e-f2a0-4a37-807d-bc7785fe4dca','Admin has modified category from Food','Modify','2021-04-17 15:51:04','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('fa5f6ba2-3029-4e52-b375-a819efd46435','Admin has upload photo for color: Silver','Upload','2021-04-18 13:02:03','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('fd2f2fb9-91e4-4469-8e86-683edfe406ca','Admin has modified theme from dark','Modify','2021-04-17 15:25:39','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_appearance` VALUES ('0cdd45fa-4deb-4b49-b148-91886e3b8f23','','','','','','6d8b6edc-e700-4e1c-a524-9632880976ef'),('bf3edb4d-8d93-4681-92ff-827254b854fa','','','','','','2b3f0a83-fe6e-4f98-ac63-ea24c80bada7');
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
INSERT INTO `tbl_brand` VALUES ('18daa8bc-5540-4a5a-93be-a8f7fdb0726b','Shop','','2021-04-18 12:59:14','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('b4a4b602-2233-4c07-b5ba-329d632c9a85','Coca Cola','','2021-04-18 12:59:06','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_category` VALUES ('39a61fa0-2c04-420a-87c3-0537a865c65e','មុខម្អូប','default.png','','2021-04-17 15:53:28','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('88d848f5-0776-460f-81b6-6bfca7a6a48c','Beverage','default.png','','2021-04-17 15:53:25','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_drawer` VALUES ('909696dc-b8b6-4d5b-bb67-13e03dfeb428','f0ba3b53-6b99-4dbe-a62e-6e37ad7168a0',4200.00,'Default',101100.00,'2021-04-18 13:09:41',NULL,'465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_floor` VALUES ('076061d9-f1b5-4dde-8443-7e0092788af1','Ground Floor','2021-04-17 14:50:12','b43e7e5f-7f87-487c-aed1-6136c1e5f646'),('bedc8389-4d5b-420e-bb94-07f67b723059','1F','2021-04-19 13:58:39','b43e7e5f-7f87-487c-aed1-6136c1e5f646');
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
INSERT INTO `tbl_money` VALUES ('8ac3a5d6-cd0f-403d-a8a1-3ee2de68f4e6',1,'USD',1.00000,99,'909696dc-b8b6-4d5b-bb67-13e03dfeb428'),('a153e38e-c688-40a9-b1ad-d76757b5af83',1000,'KHR',0.25000,99,'909696dc-b8b6-4d5b-bb67-13e03dfeb428'),('c7630b3c-cb15-4431-a9ce-7a50169e46d8',10,'USD',10.00000,100,'909696dc-b8b6-4d5b-bb67-13e03dfeb428');
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
INSERT INTO `tbl_outcome` VALUES ('2ab3848c-4d25-4b5e-a93c-6da96e9e7aed',1,'Coca Cola Original Taste x100',30.00,'2021-04-18 13:06:53','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
  `receive` varchar(20) DEFAULT NULL,
  `rate` decimal(10,4) DEFAULT NULL,
  `change` decimal(10,4) DEFAULT NULL,
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
INSERT INTO `tbl_payment` VALUES ('d3e379e1-a81c-4236-9423-d5c812a4d861',1,'INV0000001',6.0000,'5,10000',4200.0000,1.4500,'2021-04-18 13:10:33','465c4e3d-b81d-4086-aebd-fe0d27383db5','909696dc-b8b6-4d5b-bb67-13e03dfeb428');
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
INSERT INTO `tbl_product` VALUES ('2b3f0a83-fe6e-4f98-ac63-ea24c80bada7','Coca Cola Original Taste','',1,0.50,'KHR',2000.00,'20','2021-04-22','42d5edf6-bc25-468b-a5e0-99d3a1a20c95.jpeg','','[]','2021-04-18 13:05:11','465c4e3d-b81d-4086-aebd-fe0d27383db5','b4a4b602-2233-4c07-b5ba-329d632c9a85','88d848f5-0776-460f-81b6-6bfca7a6a48c'),('6d8b6edc-e700-4e1c-a524-9632880976ef','Burger Bacon','',0,3.00,'KHR',12000.00,'',NULL,'a09f1c88-2acb-4f74-b790-228b78d2b8d9.png','','[]','2021-04-18 13:01:08','465c4e3d-b81d-4086-aebd-fe0d27383db5','18daa8bc-5540-4a5a-93be-a8f7fdb0726b','39a61fa0-2c04-420a-87c3-0537a865c65e');
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
INSERT INTO `tbl_profile` VALUES ('6c918d9b-c456-4138-a0f7-17a965c6db42','f5649570-f034-44d1-8d0f-f878d2f639c2.jpg','Single','','','','','','2021-04-17 14:50:12','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_property` VALUES ('1b59e8ca-95de-4fb1-a3ee-79a18d93ac4f','ទំហំ','text','','2021-04-17 15:54:02','465c4e3d-b81d-4086-aebd-fe0d27383db5','39a61fa0-2c04-420a-87c3-0537a865c65e');
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
INSERT INTO `tbl_quantity` VALUES ('032b0e15-c68b-48b8-b2b6-ca0fdbec9e54',5,5,'2ab3848c-4d25-4b5e-a93c-6da96e9e7aed','5437e4bf-1d8a-4da0-97ed-fc12e6c43415');
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
INSERT INTO `tbl_role` VALUES ('0c010b74-788e-43f9-bd28-c6b5624506e8','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-04-17 14:50:12','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_room` VALUES ('5d09604c-d97b-448b-9ece-ed9b1e13f38f','Room 3',8.00,'1h','Open','2021-04-19 13:58:34','465c4e3d-b81d-4086-aebd-fe0d27383db5','076061d9-f1b5-4dde-8443-7e0092788af1'),('8f64df3a-d07e-42ea-9fa2-93fbb677eda3','Room 10',10.00,'1h','Open','2021-04-19 13:58:59','465c4e3d-b81d-4086-aebd-fe0d27383db5','bedc8389-4d5b-420e-bb94-07f67b723059'),('991a0709-6ed7-4915-b358-32fc10dd5d1c','Room 2',8.00,'1h','Open','2021-04-19 13:58:14','465c4e3d-b81d-4086-aebd-fe0d27383db5','076061d9-f1b5-4dde-8443-7e0092788af1'),('a3e2b48e-481a-4fbf-a4d7-e29b3fbffcad','Room 1',8.00,'1h','Open','2021-04-19 13:58:01','465c4e3d-b81d-4086-aebd-fe0d27383db5','076061d9-f1b5-4dde-8443-7e0092788af1'),('f1b7c2f7-69f1-432f-bf54-92f9645ce9c8','Room 11',10.00,'1h','Open','2021-04-19 13:59:03','465c4e3d-b81d-4086-aebd-fe0d27383db5','bedc8389-4d5b-420e-bb94-07f67b723059');
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
INSERT INTO `tbl_stock` VALUES ('2ab3848c-4d25-4b5e-a93c-6da96e9e7aed',0.30,1200.00,'KHR',4000.00,95,30.00,'','2021-04-30','2021-04-18 13:06:53','465c4e3d-b81d-4086-aebd-fe0d27383db5','2b3f0a83-fe6e-4f98-ac63-ea24c80bada7');
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
INSERT INTO `tbl_store` VALUES ('b43e7e5f-7f87-487c-aed1-6136c1e5f646','ឈ្មោះហាង','012 345 678','#30, St. 5, Phnom Penh','2021-04-17 14:50:12');
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
INSERT INTO `tbl_transaction` VALUES ('3ae6b048-7899-42dd-9f75-cb481db3bc99',1,1,'0',4.00,4.00,1,4.00,'Burger Bacon-Large','6d8b6edc-e700-4e1c-a524-9632880976ef','2021-04-18 13:10:25','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('5437e4bf-1d8a-4da0-97ed-fc12e6c43415',1,1,'20',0.50,2.00,5,0.50,'Coca Cola Original Taste','2b3f0a83-fe6e-4f98-ac63-ea24c80bada7','2021-04-18 13:10:01','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `tbl_user` VALUES ('465c4e3d-b81d-4086-aebd-fe0d27383db5','','','Admin','',NULL,'','$2b$12$1ywIHVJaZj9aaxHjLqLuguAEFTUtoRCZNu.iiG2q/X4.UheXIXHfy','dark','khmer','1c7e5462-16da-4104-888d-cada9f3fc173','f0ba3b53-6b99-4dbe-a62e-6e37ad7168a0','909696dc-b8b6-4d5b-bb67-13e03dfeb428',1,1,'2021-04-17 14:50:12');
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
INSERT INTO `tbl_value` VALUES ('0767a196-b258-4a76-84d9-944446b18145','Large',1.00,'USD',1.00,'','6d8b6edc-e700-4e1c-a524-9632880976ef','1b59e8ca-95de-4fb1-a3ee-79a18d93ac4f','2021-04-18 13:03:33','465c4e3d-b81d-4086-aebd-fe0d27383db5'),('cbcaef3b-fd4e-4fdd-a2ca-7ddb241f6b6f','Small',0.00,'USD',0.00,'','6d8b6edc-e700-4e1c-a524-9632880976ef','1b59e8ca-95de-4fb1-a3ee-79a18d93ac4f','2021-04-18 13:03:12','465c4e3d-b81d-4086-aebd-fe0d27383db5');
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
INSERT INTO `user_role` VALUES ('465c4e3d-b81d-4086-aebd-fe0d27383db5','0c010b74-788e-43f9-bd28-c6b5624506e8');
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

-- Dump completed on 2021-04-20 10:47:12
