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
INSERT INTO `owe` VALUES ('d9716716-116f-473c-a468-e969032c44e7','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48'),('63f22ce6-a83c-46e8-acce-76d1aaac687c','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48'),('26e806f4-7172-469b-8aa0-cfffdcfb2cde','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48'),('eee81ed2-6457-4bc2-9878-dd72e200aa64','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48'),('80c06ee9-08e1-42d0-a653-145107e025ed','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48'),('057feeda-7aca-43ed-858a-a26acdc347d6','9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48');
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
INSERT INTO `owe_inv` VALUES ('d9716716-116f-473c-a468-e969032c44e7','6da97561-dcf9-415d-8b52-81eb0109cd68'),('63f22ce6-a83c-46e8-acce-76d1aaac687c','c67f6a05-5798-486e-b1cc-22420786a58b'),('63f22ce6-a83c-46e8-acce-76d1aaac687c','db40a975-fbcc-4306-adc8-41a782d82f50'),('26e806f4-7172-469b-8aa0-cfffdcfb2cde','db40a975-fbcc-4306-adc8-41a782d82f50'),('eee81ed2-6457-4bc2-9878-dd72e200aa64','2ec1e768-b501-46d2-afed-7c49e4179c45'),('eee81ed2-6457-4bc2-9878-dd72e200aa64','141ed113-d1a6-4d86-ac90-09cd253c6003'),('80c06ee9-08e1-42d0-a653-145107e025ed','fb9c0ad0-5a7b-4698-b5ea-963ca3ec16bf'),('80c06ee9-08e1-42d0-a653-145107e025ed','c6c96b27-df03-459c-ab1b-2bc4e6ea89b2'),('80c06ee9-08e1-42d0-a653-145107e025ed','e6d76bc9-0c7f-43a8-b020-4094fea9a5c7'),('057feeda-7aca-43ed-858a-a26acdc347d6','1176d6fe-5062-42b3-9c1a-2698040e8422');
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
INSERT INTO `payment` VALUES ('bbbf0b25-7c05-465a-b752-c6e8f932ea0a','e10470ca-f13f-4b93-8985-9ff306a6bd71'),('bbbf0b25-7c05-465a-b752-c6e8f932ea0a','743bd0d0-70c8-4351-871e-5b1f43c46d25'),('92f6f646-7c39-4996-96b6-a57be9c3be01','5ca5786e-bf86-4343-aefb-0a7e719c2130'),('92f6f646-7c39-4996-96b6-a57be9c3be01','ff6b51b2-9f2f-47bd-a6c9-2c71a4f6f00d'),('4114622d-509b-4b89-9cbe-9d339e790150','470a4748-9e54-4658-8c6b-f36e55c13fd4'),('f74dbe98-7b77-42fa-9753-4eb1d07c5bd8','4f8e8b7e-0516-49b4-a61c-ceec5446bb22'),('f74dbe98-7b77-42fa-9753-4eb1d07c5bd8','ad7357f7-f372-4e0d-a3fe-d75eb0c41e9a'),('8260d821-9660-444c-a3c8-8679b89930e6','f541a019-8789-4b86-b488-f9fcecaae763'),('8260d821-9660-444c-a3c8-8679b89930e6','66b58439-21c4-44a3-82aa-8824032d20d5'),('29121d13-c18b-4336-bdc1-fac9d283db85','339fb185-c2a6-46aa-a14a-a56dae7c5a7c'),('71639be1-f5b8-4509-b795-4d6b3678778c','49a72828-96b2-4289-9fff-b03b6dbcaef9'),('226fa3ca-f893-4438-b1d4-1df422549a36','f5c53e37-885f-437e-bec9-0fd144b2e501'),('6612fb6d-871e-4f8b-a1b7-1b51e915ebe8','d8f3eb3a-491f-4cbb-8837-37bf2f6572e5'),('99ab17af-74c9-407d-89a5-be01e0edeb30','b1d91469-9f41-4566-962c-42e2060a5784'),('33c3a377-e6bd-4df1-bab4-708689841237','e588648e-ecac-4013-ae98-ee9b2b816fea'),('d9716716-116f-473c-a468-e969032c44e7','56320a56-abe1-45cb-b4c2-93a0f56ce5da'),('05a58bb7-787b-4cd8-b51d-ede50ed8dc99','59576270-cc03-4656-923b-d0ee602e01be'),('dd7f2651-b7fb-454c-8cb9-4a68e5b6ef9a','a26fba76-c443-46ec-9b16-5beb0a08be2a'),('44d8d330-4109-4914-a78a-a7967c34fe12','e6d0dea5-e48e-48c8-be71-7bb75ceaeb23'),('ca5374ce-8584-4211-a00d-5e7a93103bfb','5b3f94c9-f41c-453d-b375-0f8d88339948'),('1d3d3797-c9a5-4095-aa21-ae8db0b78e73','38280897-2570-4279-b2d9-7cb315ba504b'),('72488372-3c2f-4971-a849-870f9999597c','5f7c57e6-a159-416e-bd87-18f7fb4618c2'),('63f22ce6-a83c-46e8-acce-76d1aaac687c','3c732709-1d52-4b6c-bb02-53d40f7e4755'),('26e806f4-7172-469b-8aa0-cfffdcfb2cde','769c51e2-405d-456a-899d-bc635119f6ab'),('26e806f4-7172-469b-8aa0-cfffdcfb2cde','685c6e78-cf4b-4be4-9669-1ea79d57337a'),('a4e06b3d-e9aa-45ca-b271-bb432baf261b','2c25a5e7-ce90-4d16-867c-206fc909c23f'),('70d86f49-9240-4b97-8b54-534066577921','f6b14169-ae63-425f-a9aa-8550b1a0acf1'),('05a369f1-d190-4646-85f9-17a6bc18474a','dbce772c-974e-4ff2-be01-37565a8e78f7'),('999b455a-591c-4b89-bf92-a10cae6be6b9','232f47de-3656-4bda-8d98-96f6fad969c7'),('07910833-8d42-4c11-8523-5aac5c0106fd','26d2a6f8-4fe5-4027-90ba-8a83ca01ddb0'),('f0ad30b9-f18c-4a74-b8d9-b12fbb0c2d17','f266f297-fd5c-4602-83b0-c4e2358522ab'),('5b170c7a-ab6e-4e42-9589-a1d8e254c4d5','304a46a2-47c9-459a-8b48-73e8a7df9796'),('118892d0-5c5c-4772-a216-807791643dc5','f4962718-55d2-474b-a4ef-97b89ca24af3'),('72ce56e6-7b4f-4d0f-a4e6-0bc44931e322','273efcbd-4fed-418c-948e-85d7ea8f0f32'),('ce34198f-7ba5-4851-bf6a-f3271c4e8606','db2f1fe7-60d4-49f2-a62e-dafeb83a0aa5'),('56021f95-7001-49da-b351-c2a8255432cd','4ecc8fb9-b83c-42b8-aabd-142c58eaf3a0'),('9eac7eef-819d-41aa-a8dc-ed9395faa51a','1e86b8d7-633a-4af2-afc9-4ce27dabc486'),('aacdb56b-ce5e-4535-84aa-d4446c308160','a8f6bc3a-8263-4ce4-861d-0c41032c192a'),('37f0d4a7-bdea-43ca-9db6-8072f66288e9','10e7f448-c785-4096-ace5-635939c3cd15'),('eee81ed2-6457-4bc2-9878-dd72e200aa64','3a94d89f-1f7c-4cfa-99f4-7bf0de802ae1'),('80c06ee9-08e1-42d0-a653-145107e025ed','94a6cb16-596f-458e-b9c0-2e4c7ae0929d'),('80c06ee9-08e1-42d0-a653-145107e025ed','3eadac73-2f01-4850-aa64-f5fdb91bb7bc'),('75df409b-ef1a-45dd-a2de-9877c9f915b1','a3f3751f-dd1f-415c-840e-98c03b17e62d'),('75df409b-ef1a-45dd-a2de-9877c9f915b1','23fe356a-628a-41c0-be1c-d975add21da4'),('80c06ee9-08e1-42d0-a653-145107e025ed','1cd25855-851c-44b4-9591-c93f3d7c54ea'),('812d8cf9-b018-4ad9-b63f-e4516b4ba1d4','3e16afa4-7e81-424e-9ed3-ff1ff6617c33'),('812d8cf9-b018-4ad9-b63f-e4516b4ba1d4','4d34c25b-605c-402e-961d-f82edc2902c8'),('772c4b97-5bcd-4d6f-9ba1-2959a7c2353e','03850d58-aa65-45d6-abdd-3381786f5580'),('97a2ba5e-a6c7-4d9d-81cf-1d5d67eec80f','933c03b3-8321-4990-b50e-bdf9aa911a6d'),('d26fff76-be55-4121-b4e9-472f56927463','52b2cb9e-0c4d-40a7-9555-7dc150091eb9'),('b8caed43-b229-4f56-9378-2916c1c79831','988b1eab-4d05-4a72-bf88-2c155ec2196a'),('b8caed43-b229-4f56-9378-2916c1c79831','5f5b6bd0-3220-4922-8ac7-24f7abd89207'),('19a174a9-bf0d-4cec-a59f-fbf8f24ecbfc','ef90114a-b4fa-4bc2-b802-098425837c3c'),('19a174a9-bf0d-4cec-a59f-fbf8f24ecbfc','d544e654-d983-466a-80f2-df3b99a166d8'),('4a3a7ab7-b10d-4481-b384-1f02e96919fe','0f8a6859-70ce-44b8-9105-7b6e89dde1e5'),('4a3a7ab7-b10d-4481-b384-1f02e96919fe','11ec7058-8bd0-40a3-8ff6-5d7bfe74812a'),('44d4b775-38f5-4968-a617-78180050326f','506f1edb-883b-4079-b770-8fa0a80a8a02'),('44d4b775-38f5-4968-a617-78180050326f','3180b67b-fbf6-41aa-be14-496b86a54f78'),('057feeda-7aca-43ed-858a-a26acdc347d6','9c0fd03d-4294-4f70-bba4-a9c3bf56a8f3'),('380c678b-ef0c-4312-a037-6ceac244861c','f8f20e02-1c86-4771-b4cb-ba70be8ee625'),('64d07e59-82c6-429c-b79c-93eab2e85fd7','7945a86a-a0c6-4ea2-8e59-d298263dfb35'),('d59628dc-9b94-4d61-be5e-c7c46c0fce95','1b50063f-24c2-45dc-996f-5e0831b191bf'),('ced2471a-5595-4954-8cda-dff7090b6d56','7ff6f8a1-ac1e-481a-b6b0-9b602e8e7ae6'),('0deef291-d784-4e15-9088-25f14adeeba4','44d4d330-02c1-43e3-8466-01de7890bfc4'),('cbd26b0d-cc4d-42bd-a447-c16644607242','82504dd8-4527-44a7-b1b3-d37625502374'),('432e399f-5f96-4f7b-8d21-32086e017d1b','ea5f3b00-d90b-4ac3-a88b-9be5c633476a'),('5b81dc8a-a260-41a5-874a-770085cb3387','1bfad5f8-50fd-4d44-9246-94ca63fa7ef1'),('ee71bfa0-9035-4154-8323-1bfd36f5ef1f','47252cae-e142-40f2-ad8f-c59dce32ca6f'),('ee71bfa0-9035-4154-8323-1bfd36f5ef1f','c6d45edc-ccea-4f43-b6f5-df24d418de9d'),('cb8a001a-f05d-481d-91db-f3da3df6e34f','4f53781c-4f9a-44a6-b9a4-334b18d14f7c'),('fc46c536-5f84-4851-be0d-0b9eca047473','f1312643-bd89-49d3-932e-7c1e717e1008'),('0567e111-dc02-466d-b426-b1d974c64910','7d9e9eb3-df00-49b3-b322-6852141e5fd1'),('0567e111-dc02-466d-b426-b1d974c64910','11b6a06a-4845-4886-8590-2dfb07d8a89c'),('0567e111-dc02-466d-b426-b1d974c64910','eddc4a13-ea7e-4479-a730-a15c9c010bb2'),('0567e111-dc02-466d-b426-b1d974c64910','c347ceb3-5441-4075-9fc3-be27a236fb1b'),('0567e111-dc02-466d-b426-b1d974c64910','e79db1d3-bc85-4b6b-b4ed-9e9bddb2c209'),('52e5bcd2-da57-46be-86ce-03782085a426','59b2d113-741d-4177-a2c7-d727faf2af98'),('6a0ea5b4-dd40-4962-b3cc-0aa0012382a9','d3171c98-b674-4dd3-a679-29144be329af'),('6a0ea5b4-dd40-4962-b3cc-0aa0012382a9','af87da67-fc7b-4dd7-aa2f-aede5df98478'),('8ee74571-74d2-4e9f-8c1a-2ce9a5be92ac','d0deda8f-fe85-48fd-b0c2-096e42d9fef2'),('3a00e84e-90be-46eb-a857-d72cb46b7b08','957d3aea-29ba-4737-8409-8de2b5487e5f'),('7d07651e-2c25-459e-863c-39a7394e6647','c2bef1a0-d1c5-4af7-b30b-412c7cbed0cf'),('7d07651e-2c25-459e-863c-39a7394e6647','fd592d9c-d37c-476a-867c-0a2d7b3363ba'),('7d07651e-2c25-459e-863c-39a7394e6647','14298775-c9a7-4629-9892-f6a5aab8d0bf'),('7d07651e-2c25-459e-863c-39a7394e6647','279c2dd2-22d3-4f03-be33-0744322edcb4'),('59bec6b0-a077-4ea0-8d2d-4722ba99c4fa','eda3fd2f-6376-480c-b807-25d0c0151dea'),('59bec6b0-a077-4ea0-8d2d-4722ba99c4fa','4b93eeba-f9d2-4677-a99e-ab5d071819bd'),('59bec6b0-a077-4ea0-8d2d-4722ba99c4fa','1e9289fd-0f6c-4740-a3e1-dae0df2b218d'),('0567e111-dc02-466d-b426-b1d974c64910','7f3ef95b-eb5a-4d5b-b6f3-48c87d701c29'),('a9d31022-c03a-400d-b701-1bc15dac6111','dfb2f13c-137c-40ec-961d-ae1744399815'),('a9d31022-c03a-400d-b701-1bc15dac6111','6250b41c-c85c-4651-ad52-aceaa1fdf7f8'),('58bd0720-a292-4af2-9952-1ff815dee7c6','c40a2f77-8929-4138-bb10-8e4779aaf9a1'),('58bd0720-a292-4af2-9952-1ff815dee7c6','fef02e98-527d-47fd-8b65-f82af9d5cc88'),('8de6d88f-eca7-42b0-afb3-581603f19465','690e4d68-bb0d-4a72-8c6d-716a4c504493'),('8de6d88f-eca7-42b0-afb3-581603f19465','4a47628b-26b4-49cc-930e-283ea60c5c98'),('c9724dc2-5103-4902-a2e5-364ecd077505','70684425-a365-4478-a8dc-8b2ca64c4ccb'),('c9724dc2-5103-4902-a2e5-364ecd077505','52db5731-61ca-48d5-a0eb-9c9ba4a0e5ac'),('9c6b26b9-0356-4a4f-affb-a85432554775','f900dd5d-551f-49a7-ad56-f26b00ccc66d'),('9c6b26b9-0356-4a4f-affb-a85432554775','3e10ccc1-0838-4d7f-947e-394d9a08cf5c'),('a3b5dee3-7764-4349-bcb3-5f24d2ed1ee2','06c1b574-2981-45bd-9c03-26a6cac16e07'),('a3b5dee3-7764-4349-bcb3-5f24d2ed1ee2','2fc6fbd1-0251-4121-8002-8f2e860177f4'),('16056dd2-44e3-4d4d-97f7-f0e88f95f184','6581fab8-7e96-485f-afb6-415f1cbb7dc8'),('16056dd2-44e3-4d4d-97f7-f0e88f95f184','f3c70982-fe00-49e6-8f1e-76c10587694f'),('16056dd2-44e3-4d4d-97f7-f0e88f95f184','ec456c3e-be2d-4132-8508-dae06180f75d'),('16056dd2-44e3-4d4d-97f7-f0e88f95f184','d6b29365-9594-4bcb-8234-08a3fc5e9cbc'),('9839c89f-8ba8-42de-b8cc-ba95283695dc','e2bc0a9e-d9d5-4503-a6c5-748da807f5f5'),('9839c89f-8ba8-42de-b8cc-ba95283695dc','1a94d09c-a667-423c-9af5-d0c0f90c517f'),('748571d3-556a-4f33-85c1-29a8342ae0f1','cd49d41a-71a3-43e2-99cd-b8e843d910e9'),('ee29bce5-a8be-442c-b2a5-55cc6b044c6d','bed7c73c-63a6-4ece-a2f9-f1b19c3bdf86'),('ee29bce5-a8be-442c-b2a5-55cc6b044c6d','db3c15d6-722c-40e4-9c95-1690652a2a8a'),('52da62c1-2cb2-42d5-b4c2-ab384367ab3b','5409600e-ab33-4166-96e3-a7992ec17089'),('52da62c1-2cb2-42d5-b4c2-ab384367ab3b','dab48096-0d2d-4a9c-b451-bbac86f107e3');
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
INSERT INTO `tbl_activity` VALUES ('013c4152-5baf-42ae-93e3-75ca1c887d07','Admin has modified theme from blue','Modify','2021-05-03 13:17:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('013fdb7b-9b2a-40ab-9e77-e5789c8fe76d','Admin has ordered invoice: INV0000015','Order','2021-05-04 01:15:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0185b0d5-f1f9-4160-8ddc-68e61e7531dd','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 02:11:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('01adce38-ea96-43a3-9bce-b046a979567f','Admin has ordered invoice: INV0000014','Order','2021-05-04 01:13:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('020d1288-a79d-4817-9b5e-a4321ab3428a','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:36:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('02e328b9-6379-42c6-bfd4-47076ae3f7e2','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:38:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('03038834-1889-45e9-b7eb-bdca0563808c','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-07 02:03:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('036fd9b2-53c0-43fa-9b72-fa5ef4aacd2d','Admin has checked out payment INV0000042','Payment','2021-05-05 12:23:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('038f523f-782a-4fa7-891a-44912e97189c','Admin has ordered invoice: INV0000057','Order','2021-05-07 07:06:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('039654f2-8ab4-4008-a701-9dc1b6891e46','Admin has toggle room: Room 1 from Open','Toggle','2021-05-10 02:26:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('03d40780-eed9-4db6-82eb-4c3d4dec97b0','Admin has ordered invoice: INV0000013','Order','2021-05-03 14:20:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('046d52ad-947a-4fe9-a178-4cc386eb046b','Admin has ordered invoice: INV0000001','Order','2021-05-03 14:00:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('04f36929-6491-4e72-bca1-dd007a8ff5d1','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:08:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('04fcddd9-cf0e-4c41-b2fd-c13f007a651b','Admin has checked out payment INV0000035','Payment','2021-05-05 11:36:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('053a8572-b3f1-4305-a2ef-e8a22086f7ad','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-04 11:11:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0609a962-7db9-44ed-8b94-4a231e6fa491','Admin has checked in order from: 08:44 AM to 08:44 AM','Check In','2021-05-10 01:44:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('06824282-28c2-4e82-95d9-ec5702f4c386','Admin has ordered invoice: INV0000070','Order','2021-05-09 12:43:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('07642af4-5bcc-4bc4-85b2-a5cf2a3c59cb','Admin has ordered invoice: INV0000016','Order','2021-05-04 01:17:13','47115938-fef6-49fe-a624-a630fdfd7d8b'),('07c2fd12-0448-405f-9bc9-823775b517c7','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-06 01:14:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('08789a76-871d-459b-83c3-f8d4f50bf6e6','Admin has updated transaction Room 3, 10h 7min','Modified','2021-05-06 11:20:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0961e843-f154-4916-821d-49781b61a317','Admin has toggle room: Room 2 from Open','Toggle','2021-05-06 10:38:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0a524e84-79d1-4e85-b2f7-6fc9d502e147','Admin has added order from 2021-05-05 07:35 PM to 2021-05-05 07:35 PM for customer Thong','Add','2021-05-05 12:36:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0acf2a9c-b4b3-4fc6-93c1-df0f8fe9ca45','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:19:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0bae846a-8956-4da6-a0ad-0c866ae97667','Admin has checked out payment INV0000040','Payment','2021-05-05 12:35:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0bfd0c5d-2764-40f8-9700-8e319c85255b','Admin has added order from 2021-05-10 08:34 AM to 2021-05-10 08:34 AM for customer Thong','Add','2021-05-10 01:35:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0c02edd3-8da3-4076-a3ac-c70a804a7613','Admin has added order from 2021-05-10 10:01 AM to 2021-05-10 10:01 AM for customer Customer','Add','2021-05-10 03:02:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0d3d4511-b4de-4869-9de2-a5a5c284bbb6','Admin has added order from 2021-05-05 07:34 PM to 2021-05-05 07:34 PM for customer Thong','Add','2021-05-05 12:35:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0dd160ef-dc08-4139-9e1f-be465482c3d8','Admin has modified theme from blue','Modify','2021-05-03 13:19:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0e28b736-8cb3-4632-82f8-76b9ab0bbeda','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-04 01:13:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('100f0872-df1f-40d0-a76a-a916b4d3c69c','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-09 12:35:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('10577fa6-f0df-4242-a1ec-287adfe1c1f2','Admin has checked out payment INV0000037','Payment','2021-05-05 11:38:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('10776ea0-e1a7-4f04-b70d-e1b63494e40f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:19:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('10ca903e-5ed1-424e-94b2-b1af23ebb790','Admin has checked out payment INV0000082','Payment','2021-05-10 01:47:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('10db14d4-58e4-4e52-9d0f-31c338c51b1f','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-07 02:15:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('119132b2-6c5d-4427-b0a5-c679753aaa3b','Admin has checked out order from: 07:36 PM to 07:36 PM','Check Out','2021-05-06 01:13:04','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1312d633-3270-4d3e-9138-2612128768aa','Admin has checked in order from: 07:36 PM to 07:36 PM','Check In','2021-05-05 12:36:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('13889f28-649e-41e3-88e8-edfff73349d6','Admin has modified language from khmer','Modify','2021-05-03 13:18:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('13da40e0-898f-4753-992e-f359aabd8298','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:16:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('14b58f13-efa9-41f1-8b47-fc54f229a3bb','Admin has ordered invoice: INV0000012','Order','2021-05-03 14:18:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('15449397-b573-4a33-bc3a-23ace376f48d','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:35:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('156bde75-0a93-4754-af09-d355be5ed272','Admin has checked out payment INV0000015','Payment','2021-05-04 01:15:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('15b74fad-b06e-43fd-9d05-fdaed35ad402','Admin has ordered invoice: INV0000022','Order','2021-05-04 11:19:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1747177e-2518-4812-ac19-ae855bee6eed','Admin has ordered invoice: INV0000017','Order','2021-05-04 01:19:04','47115938-fef6-49fe-a624-a630fdfd7d8b'),('18428762-10c2-4f1e-9af4-53de5641c731','Admin has checked out payment INV0000018','Payment','2021-05-05 11:36:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('185c8303-4169-4001-852a-977bb1c70b34','Admin has checked in order from: 10:10 AM to 10:10 AM','Check In','2021-05-10 03:11:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('19134685-1cf6-48f0-8df5-019de0f2e60d','Admin has checked out order from: 07:35 PM to 07:35 PM','Check Out','2021-05-05 12:35:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('198b4b01-1812-4733-b5f2-1082216e65e0','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-03 14:09:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('199489f6-03ad-4a3e-89d6-41e9e087dd40','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:33:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('19bf5f3b-d421-4042-bacd-afeb0f3d6785','Admin has added order from 2021-05-10 08:41 AM to 2021-05-10 08:41 AM for customer Thong','Add','2021-05-10 01:42:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1b5333e5-7a86-4e6b-adbd-79c0dabfed52','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:07:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1d6e0291-5ea9-4308-a152-015c28788865','Admin has added order from 2021-05-06 05:37 PM to 2021-05-06 05:37 PM for customer Customer','Add','2021-05-06 10:38:57','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1dc3e301-b73b-44d3-9947-e3533616e8ea','Admin has modified theme from light','Modify','2021-05-03 13:19:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1e0b20dd-7569-4290-9ff1-1c3802804a7a','Admin has ordered invoice: INV0000061','Order','2021-05-07 07:16:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1f48893b-95b7-4d64-8fdb-859051ca47e7','Admin has modified theme from light','Modify','2021-05-03 13:47:57','47115938-fef6-49fe-a624-a630fdfd7d8b'),('208a5c45-2f83-4f82-8e0d-6ada1ae9c9cd','Admin has checked in order from: 06:37 PM to 06:37 PM','Check In','2021-05-05 11:37:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('22392e7a-a6a0-4dcf-a3d4-c66a9543f89d','Admin has checked out payment INV0000068','Payment','2021-05-10 01:32:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2288c3ef-4f6d-4882-856c-197939696d2e','Admin has checked out order from: 10:10 AM to 10:10 AM','Check Out','2021-05-10 03:11:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('22b86aa2-41dd-444f-9096-bbae0b0c5622','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:39:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('23909307-4cea-4c11-8a88-0520161d2670','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-04 11:08:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('24d493f8-feaa-40a3-92d0-1752280e0450','Admin has ordered invoice: INV0000048','Order','2021-05-06 12:14:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('25c9effb-8388-4a36-a780-f6a962b9396f','Admin has closed drawer','Close','2021-05-05 01:59:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('25e8f416-9292-43ae-a178-84a8f53fee4c','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 02:02:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2600894d-7c45-4719-af00-a4668a2dfd90','Admin has logged in','Login','2021-05-03 13:14:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('268143d5-83bb-435b-adec-2edd69626b89','Admin has checked out payment INV0000024','Payment','2021-05-05 01:37:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('289f71ba-a2b4-42ab-95dd-5da50ba5c325','Admin has checked out payment INV0000017','Payment','2021-05-04 01:19:10','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2911191e-7add-446e-b689-5b01fe8e3219','Admin has checked out payment INV0000001','Payment','2021-05-03 14:01:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2a014472-0bee-4270-9b61-2387db3c364b','Admin has modified language from english','Modify','2021-05-03 13:17:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2ae7ef0f-c38e-4333-bca5-aa64a0b70d38','Admin has logged in','Login','2021-05-05 01:35:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2b2ee3f5-b2e0-4aff-8520-4b67ba354d60','Admin has checked out payment INV0000080','Payment','2021-05-10 01:44:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2b7ad3b5-0750-4d05-b479-f9c10c46701d','Admin has checked out payment INV0000086','Payment','2021-05-10 03:11:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2c0a9712-1f48-4253-bda0-1a80753b7e50','Admin has toggle room: Room 1 from Close','Toggle','2021-05-10 02:26:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2c769c26-be2b-4875-9a95-5ebb30411c43','Admin has checked out order from: 08:42 AM to 08:42 AM','Check Out','2021-05-10 01:42:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2d0e57e5-a7a1-4404-82d2-2edf3ab88b17','Admin has checked in order from: 08:38 AM to 08:38 AM','Check In','2021-05-10 01:38:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2d8b0d87-b150-41c7-92bb-d349d0513ac3','Admin has checked in order from: 08:50 AM to 08:50 AM','Check In','2021-05-10 01:51:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2e60cbfe-1064-4293-838d-629bc6f51650','Admin has added order from 2021-05-05 06:38 PM to 2021-05-05 06:38 PM for customer Thong','Add','2021-05-05 11:39:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2eaa097c-1376-4c8b-8a1b-3c963bf0457a','Admin has checked out payment INV0000050','Payment','2021-05-06 12:22:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2f01fdfe-2c48-4347-a3f4-2dbb8acdb542','Admin has checked out payment INV0000006','Payment','2021-05-06 10:45:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2f648b1f-b085-42cc-8e71-3a101338af44','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 10:55:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2ff09e9c-a07e-46ea-ac23-c7f8095364eb','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:16:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2ffcb1bb-0fd1-464b-bfa2-522787264526','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:51:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('307e0e6a-3ff0-427c-911c-0534be0ceacb','Admin has checked out order from: 06:38 PM to 06:38 PM','Check Out','2021-05-05 11:38:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('309df9f6-54bd-4c84-bf1a-098498e3ebc1','Admin has checked out payment INV0000072','Payment','2021-05-09 12:48:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('309e2c32-c9f8-4a84-b604-819f3d872def','Admin has opened drawer','Open','2021-05-07 02:02:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('30b9abe7-f45f-4c2d-a142-833a856ef7c9','Admin has checked out payment INV0000078','Payment','2021-05-10 01:39:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('324a78ec-d62f-467c-9aac-93a93a45df47','Admin has checked out payment INV0000012','Payment','2021-05-03 14:18:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('329d0089-6c9e-4ee8-8049-0d921437fd49','Admin has added order from 2021-05-10 10:09 AM to 2021-05-10 10:09 AM for customer Thong','Add','2021-05-10 03:10:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('33cdbc12-9d5f-4932-87c4-5d1887a62806','Admin has logged in','Login','2021-05-06 01:02:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('34915a8e-9b00-4b82-a2f9-f7783ac4e2c3','Admin has added order from 2021-05-09 07:33 PM to 2021-05-09 07:33 PM for customer Thong','Add','2021-05-09 12:34:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('354014d2-c053-40ea-9b75-21133f0a6d72','Admin has checked out order from: 08:46 AM to 08:46 AM','Check Out','2021-05-10 01:47:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('35536b28-c282-4041-9002-45a42a05ab53','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:30:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3559bbc4-db0a-4f2a-b041-93f63478854a','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-04 01:14:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3643eed2-2214-4707-abb9-e72f84bb008a','Admin has checked out order from: 06:39 PM to 06:39 PM','Check Out','2021-05-05 11:41:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('36df1616-bb37-43ce-8392-8aab335bd899','Admin has ordered invoice: INV0000010','Order','2021-05-03 14:16:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('37428ad1-ec60-415b-80b4-486189495012','Admin has logged in','Login','2021-05-03 13:12:51','47115938-fef6-49fe-a624-a630fdfd7d8b'),('374c2241-a1a9-4f83-928c-006f7ab7dada','Admin has added product Burger Bacon','Add','2021-05-03 13:56:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('395c428b-bb90-4d60-89d1-8806a67edfad','Admin has checked out payment INV0000085','Payment','2021-05-10 03:10:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('39f46612-5cc7-46b1-af84-0841f0f1f56a','Admin has added product fasd','Add','2021-05-04 10:53:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3b500353-37dd-4aef-8266-f157e13023ab','Admin has checked in order from: 10:02 AM to 10:02 AM','Check In','2021-05-10 03:02:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3b96b547-c6e8-4831-bbd6-55e56788b5d5','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 03:03:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3c0a6ac3-e4ab-42a4-9330-c9d10d84ac60','Admin has added order from 2021-05-10 08:43 AM to 2021-05-10 08:43 AM for customer Thong','Add','2021-05-10 01:44:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3ccf1b11-99dd-466d-b09e-820dfdf7d7e4','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-05 11:57:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3d651195-da95-4d4e-a4ec-643a873e7c48','Admin has checkout owe total: 12.5','Checkout','2021-05-03 14:19:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3dbb0472-ec0c-41f9-963f-42fd01dabe18','Admin has checked out payment INV0000004','Payment','2021-05-06 01:23:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3ec386a4-204c-4b49-8f67-47edd26d286e','Admin has checked in order from: 08:50 AM to 08:50 AM','Check In','2021-05-07 01:51:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3f9ce6a0-aa8c-4577-8df9-e477a2568916','Admin has checked out payment INV0000032','Payment','2021-05-05 02:20:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3fbc7c4d-d7ca-449b-8cd1-c363f9819e8d','Admin has added order from 2021-05-07 08:49 AM to 2021-05-07 08:49 AM for customer Thong','Add','2021-05-07 01:51:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4048aee7-d697-4202-87ba-fda729ae7ad9','Admin has checked in order from: 06:36 PM to 06:36 PM','Check In','2021-05-05 11:36:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('40617ba8-1cba-4524-a166-30dd8f576208','Admin has ordered invoice: INV0000052','Order','2021-05-07 02:02:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('412729fd-f9aa-4ab0-92c7-31fc3ec3a62c','Admin has checked out order from: 08:38 AM to 08:38 AM','Check Out','2021-05-10 01:38:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('414e2c9a-7ba6-4aa0-9830-357140fd3b50','Admin has checked out payment INV0000043','Payment','2021-05-05 12:35:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('420aaf3f-4460-4031-b023-ae937b2ff3f2','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:37:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('42a35e3e-77a2-4f4a-965d-154102636792','Admin has checked out payment INV0000003','Payment','2021-05-03 14:21:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('44f5dcdd-19e1-4ef8-84ea-e6a0b8ea0419','Admin has ordered invoice: INV0000004','Order','2021-05-03 14:09:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('457c09b8-7790-4624-a01c-8c9fe81aa79f','Admin has checked out payment INV0000030','Payment','2021-05-05 02:12:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4585610f-a8b5-497f-937c-aeca54a6abbb','Admin has checked in order from: 07:23 PM to 07:23 PM','Check In','2021-05-05 12:23:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('459a0636-cf1f-43de-a30f-14a162a00505','Admin has modified theme from dark','Modify','2021-05-03 13:17:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('45deeeff-6472-4347-a554-da6c7c1b8fa5','Admin has checked out order from: 08:50 AM to 08:50 AM','Check Out','2021-05-10 01:51:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('46132a23-57be-4b1d-96a7-d35797ed07e0','Admin has checked out payment INV0000065','Payment','2021-05-09 03:27:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('46561d54-0cad-42d0-856f-b3082ac8acc2','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:35:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('47670465-d29f-49ed-b4ae-138e543d77de','Admin has added value ធំ in product','Add','2021-05-03 13:57:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4823f04f-1040-4ffe-9c9a-a0e644e623e3','Admin has logged in','Login','2021-05-10 01:57:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('492f5ea6-d781-400f-82b3-284a035b4ed2','Admin has checked out payment INV0000023','Payment','2021-05-04 12:17:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('49e6426e-259b-4177-9d54-da68be5f8a78','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 02:06:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('49e8d7e4-bce4-43cb-b18a-d7e86588ec0a','Admin has checkout owe total: 5','Checkout','2021-05-06 11:51:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4a3c7783-1051-4b11-9a90-4e5f47692d54','Admin has checked out payment INV0000076','Payment','2021-05-10 01:36:57','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4a850311-0fe0-470a-99cb-a5cb434dab16','Admin has ordered invoice: INV0000024','Order','2021-05-05 01:37:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4c1eed3d-b08b-49ab-aa9b-88a8e1a632d8','Admin has added order from 2021-05-05 06:35 PM to 2021-05-05 06:35 PM for customer Thong','Add','2021-05-05 11:36:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4d588a39-d082-46fd-a7fa-52b00577f010','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:35:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4d7a6cf2-2fdc-4d6f-9978-ff7e64dff2fe','Admin has checked in order from: 08:40 AM to 08:40 AM','Check In','2021-05-10 01:40:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4db8a149-e264-4381-bc6c-5f5f810a232a','Admin has added product Test','Add','2021-05-04 05:46:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4e1662d6-cc1c-402c-bcf4-0e6efcd5ee07','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:16:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4e3c78ef-735d-45de-b8ac-5ce266c4eaa8','Admin has checked out payment INV0000022','Payment','2021-05-06 10:45:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4f9d5a42-9e7c-4e9e-b33a-0c998174b24d','Admin has ordered invoice: INV0000027','Order','2021-05-05 02:03:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('50cbf480-ba98-42f1-99c4-5d04a1c6fc74','Admin has checked out order from: 09:07 AM to 09:07 AM','Check Out','2021-05-05 11:35:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5101ab09-6448-4dac-ab0e-ea3b5ba0ffb4','Admin has upload photo for color: Red','Upload','2021-05-03 13:54:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('51fd579d-fb1e-4700-88f7-dac77c51f0dc','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 02:19:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('55f10f60-7b49-4e38-bb7e-33c2070ebdcb','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:43:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('572975cc-be62-4daf-9348-5884f306e8cb','Admin has modified theme from dark','Modify','2021-05-03 13:19:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5852a93b-f23e-4242-805c-281b7fa0e070','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 03:27:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('586a1b57-7660-4fbc-8eaf-e2011066fd1f','Admin has ordered invoice: INV0000021','Order','2021-05-04 11:11:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('589793f3-e7bf-4999-87d0-f372d9f53f62','Admin has checkout owe total: 2','Checkout','2021-05-06 01:22:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('59404b57-7c8b-4b88-93b5-a3e00d07bbc7','Admin has ordered invoice: INV0000041','Order','2021-05-05 11:57:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('595669ff-6953-4433-b276-aba78f2c8443','Admin has ordered invoice: INV0000047','Order','2021-05-06 12:12:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('59bec389-b8ff-4e86-8a7e-35ef2c3bfc55','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-07 02:03:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5a4b1cc1-427f-4b37-9638-6e962357e8b2','Admin has checked out payment INV0000026','Payment','2021-05-05 01:59:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5bf1b817-fc69-451c-a52f-a4e191613eab','Admin has checked out payment INV0000046','Payment','2021-05-06 11:20:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5c5fb6c9-63cb-4db3-804e-c9f8dcb2374d','Admin has ordered invoice: INV0000002','Order','2021-05-03 14:05:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5cee1480-82a8-4f25-ba6c-4b05e740bece','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 02:03:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5d34b4ee-8719-411a-a157-beada859af8a','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-05 10:55:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5dc628b5-a227-4556-95f7-1aed057ebbd6','Admin has logged in','Login','2021-05-07 01:15:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5e274507-3fac-4057-a812-2318f3af8bc0','Admin has checked out payment INV0000066','Payment','2021-05-09 03:28:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5ea8e61b-a12c-432b-8a00-8fd853d8a249','Admin has ordered invoice: INV0000007','Order','2021-05-03 14:11:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5eaaee4c-7622-4836-8d32-b03ab6861638','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-09 12:39:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5eaccf6d-f02d-4c62-8426-1124bbad0762','Admin has added product fadsfasd','Add','2021-05-04 05:47:04','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5f257000-76de-4444-bb82-efa6720bc4e9','Admin has checked out payment INV0000033','Payment','2021-05-05 10:55:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6025eb10-abd0-4edc-930f-ac59562401b1','Admin has checked out order from: 06:38 PM to 06:38 PM','Check Out','2021-05-05 11:39:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('60a4e93d-0da9-424a-a658-f60ba065eeb8','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-04 11:19:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('60ab73a8-e1d8-4e51-af11-eb18f3e304f5','Admin has checked out payment INV0000013','Payment','2021-05-03 14:20:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('611a2f3c-b2ac-471e-a1a5-0b7e9ca20fb9','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:47:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('61839963-985b-4d91-92d7-47889d77c555','Admin has checked out payment INV0000036','Payment','2021-05-05 11:37:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('63c05b43-7851-4a9b-89df-f029e8777cb1','Admin has checked out order from: 08:13 AM to 08:13 AM','Check Out','2021-05-09 03:33:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6426b087-bb28-49c8-b426-2b4d96ea4cf0','Admin has checked out order from: 06:37 PM to 06:37 PM','Check Out','2021-05-05 11:37:51','47115938-fef6-49fe-a624-a630fdfd7d8b'),('64dab532-7eab-43bc-ab38-06ef1f8c8a2c','Admin has checked in order from: 07:34 PM to 07:34 PM','Check In','2021-05-09 12:35:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('658a59f0-6e3e-4589-b22c-dd2971f7d26d','Admin has checked out payment INV0000077','Payment','2021-05-10 01:37:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6727752d-4c41-4fa6-8431-66047ae566fb','Admin has added customer: Thong','Add','2021-05-03 14:18:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('67a09774-c9a7-4e2d-9b2a-b2961b143663','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 01:57:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('67b12f46-844a-4948-a4cc-ba03a83fb891','Admin has ordered invoice: INV0000028','Order','2021-05-05 02:06:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('67e2f5d5-45ea-4548-b7ee-ea2b6c63b4a4','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 02:15:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('685e6ea0-befa-4309-bf10-70a6f698fd6b','Admin has ordered invoice: INV0000067','Order','2021-05-09 12:34:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('69100e22-074d-4994-8bba-d82d8637fbbb','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:42:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('69baf78d-6164-4bce-b425-cc571996fd3d','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:09:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6a2ef464-69f0-41a3-a179-1ceb01c572a7','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:20:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6b2c213d-25f4-45db-b81d-f13e9c3da99b','Admin has checked in order from: 06:38 PM to 06:38 PM','Check In','2021-05-05 11:38:55','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6b3b732c-2b63-4776-8e8d-3e7ebd7de385','Admin has checked out payment INV0000007','Payment','2021-05-06 10:45:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6b586a70-a129-48a1-98d7-24ca2ac25658','Admin has opened drawer','Open','2021-05-05 02:13:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6b6d6277-c51f-4e8d-9e56-560af28281ea','Admin has checked out payment INV0000063','Payment','2021-05-07 07:17:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6c0575bd-b5d0-4acd-8036-eb833e6abba1','Admin has ordered invoice: INV0000062','Order','2021-05-07 07:16:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6d48c3f6-e821-40d4-9807-c3cb0f822d17','Admin has added product fasdf','Add','2021-05-04 10:54:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6ddcd07f-ce2d-4ffb-8863-df54dd165d2b','Admin has ordered invoice: INV0000033','Order','2021-05-05 10:55:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6de89170-3c6d-42f5-a4c8-90953f927ec9','Admin has ordered invoice: INV0000026','Order','2021-05-05 01:59:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6ea9bf56-6cfb-4fa2-8495-c1852e262bc2','Admin has ordered invoice: INV0000074','Order','2021-05-10 01:30:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6f6783d7-1c9c-41d8-8d48-2379bc3c1447','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 03:03:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('705d4918-bb6b-45ca-bc84-5beb1b3d3439','Admin has checked out payment INV0000049','Payment','2021-05-06 12:14:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('70ab6cfc-da4a-41ea-b084-97f6b93c3222','Admin has ordered invoice: INV0000003','Order','2021-05-03 14:07:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('70b20fe3-568b-4c00-b1af-ba7e8dae5eee','Admin has checked out order from: 06:37 PM to 06:37 PM','Check Out','2021-05-05 11:37:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('71387d46-868e-400f-9c1c-a8c0ab1a026c','Admin has added product test1','Add','2021-05-04 05:46:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('71bdba42-e673-4ec1-ad05-2e73b549463a','Admin has added order from 2021-05-10 08:39 AM to 2021-05-10 08:39 AM for customer Thong','Add','2021-05-10 01:40:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('727c2fd2-0694-40de-836e-b8deefc33770','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-09 03:27:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('749f737f-579e-442e-8882-e4a6c0efc52c','Admin has added property: ទំហំ in category អាហារ','Add','2021-05-03 13:51:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('75017e72-f98c-487a-a9c6-5476b0fbd281','Admin has checked out order from: 08:13 AM to 08:13 AM','Check Out','2021-05-06 11:20:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7511772b-9676-47fd-8d44-e4925510ca9f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 03:11:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('75ddd429-e120-40dc-a764-817360db9f7c','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:38:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('763d436c-6f02-4c76-961d-cb3ad957354d','Admin has ordered invoice: INV0000053','Order','2021-05-07 02:03:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('76d89c58-c68e-419f-8245-5c338b500fc2','Admin has ordered invoice: INV0000049','Order','2021-05-06 12:14:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('786dc8b3-e16f-46c5-8487-fd89ee5f8f19','Admin has added order from 2021-05-10 08:37 AM to 2021-05-10 08:37 AM for customer Thong','Add','2021-05-10 01:38:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('78716f46-db29-45cc-a5ea-b828d8494ce8','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:47:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('79673dfd-fe83-43d8-ac2d-3f7b06226e3f','Admin has upload photo for product: Burger Bacon','Upload','2021-05-03 13:56:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('79e62356-f9ee-45f7-ab8d-57004e8c7915','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-05 02:12:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7a2b4b2d-0a8f-4750-8d37-db0550bca1fb','Admin has added room: Room 4','Create','2021-05-05 11:53:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7a86d8dc-f239-4ae8-89f3-913b258eec7f','Admin has checked out payment INV0000020','Payment','2021-05-04 11:09:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7af73d0a-7d3e-4807-a6f0-d30e7d50b54c','Admin has checked out payment INV0000075','Payment','2021-05-10 01:35:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7b9f68ef-73b7-4133-8cc4-62aa5d69ed6b','Admin has checked out payment INV0000010','Payment','2021-05-03 14:16:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7c0d023d-80b7-47f9-8032-ea77835cbcdc','Admin has opened drawer','Open','2021-05-05 01:59:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7de22203-0d6f-4cab-acb8-1afba3bc6ad7','Admin has checked in order from: 06:39 PM to 06:39 PM','Check In','2021-05-05 11:39:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7e42408a-70db-4dea-a80c-0d7eb925a4d6','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:38:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7ec807b9-f202-45a5-8ad2-383f615233b7','Admin has ordered invoice: INV0000060','Order','2021-05-07 07:09:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7ee0fb50-4379-4277-862c-81484289a88c','Admin has ordered invoice: INV0000064','Order','2021-05-07 09:34:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7ef84707-8622-4598-8658-0ab11f275d15','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-06 12:12:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7fa447e0-8d2c-45de-9a53-d29799d99a46','Admin has added product t-shirt','Add','2021-05-07 01:42:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8038f63d-ae76-4d6e-9704-3b6bd60c7e7f','Admin has closed drawer','Close','2021-05-05 02:13:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('815daeda-ee06-40d2-93e0-c5ba9c561f30','Admin has checked out payment INV0000058','Payment','2021-05-10 01:54:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('81dc146d-f705-4713-94ea-090366745156','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:15:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('81df27a8-d527-446a-98ad-14c15e9ed2fe','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:43:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('82972c6a-08c6-4742-abe4-1baf5d15e1a6','Admin has checked out payment INV0000016','Payment','2021-05-04 01:17:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('83205bdd-547a-40c1-865c-6ef621f0ae6a','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-03 13:59:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('840f01a5-25ad-4a10-9487-284063c3d141','Admin has checked out payment INV0000048','Payment','2021-05-06 12:14:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('84223025-d37a-408e-a0e3-a33339f538de','Admin has checked in order from: 08:46 AM to 08:46 AM','Check In','2021-05-10 01:47:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('849778b9-9250-4759-bdfd-e9b3c3fd2dd4','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-04 01:19:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('85cffb4a-88b5-4727-9a76-65c57e980f98','Admin has ordered invoice: INV0000011','Order','2021-05-03 14:16:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('86f93713-5dc0-4d53-afcd-1ab69faafbe4','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 01:37:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('881ef592-1b65-4d99-9bd2-78e545be4a79','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:11:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8826146d-8488-4ad1-b9b7-295d6cf5b3b2','Admin has checked out order from: 06:36 PM to 06:36 PM','Check Out','2021-05-05 11:36:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('897b3ea3-4396-4674-b829-31813e268f5f','Admin has checkout owe total: 1','Checkout','2021-05-07 06:00:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('89839fbb-b0d3-4af7-9dec-6664c14e5f6a','Admin has added category: Beverage in category','Add','2021-05-03 13:50:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('89ec04e2-0d2d-46f2-be4b-73b85b7f5064','Admin has added product 3dasf','Add','2021-05-04 05:46:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8a1d2537-a786-477c-93c0-35bd72b951e1','Admin has checked out payment INV0000056','Payment','2021-05-07 03:18:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8ab005e9-c918-499a-85e3-e31bc5ddcb7a','Admin has ordered invoice: INV0000034','Order','2021-05-05 10:55:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8acdb718-3a8b-4292-8113-195f60cfeabf','Admin has ordered invoice: INV0000058','Order','2021-05-07 07:08:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8b3a1bb9-e9c1-4b49-b5ba-a0c98e21c232','Admin has added room: Room 2','Create','2021-05-05 11:51:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8b829d8c-3e54-4dbd-bdb9-0d9add0c74fa','Admin has ordered invoice: INV0000059','Order','2021-05-07 07:09:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8c01b7a8-aca6-4298-b2a0-8b84a16db003','Admin has added order from 2021-05-04 09:06 AM to 2021-05-04 09:06 AM for customer Thong','Add','2021-05-04 02:07:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8c4b42af-d31e-42aa-adef-b82357ed04a4','Admin has added brand: Shop in brand','Add','2021-05-03 13:51:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8c607458-a810-417c-a7e5-92b2fcb1a57c','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-03 14:10:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8d0c956a-ccdd-4260-a898-c9661b411248','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-06 01:14:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8d30ffe0-d649-436f-9156-fc6389661f49','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:47:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8dc8f049-866f-486e-b006-3806e63f4570','Admin has checked out payment INV0000057','Payment','2021-05-10 01:54:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8e885c64-3c12-4df4-be84-7aa57076bc06','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:37:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8eb7fa70-e3af-410a-bf23-4aa413a3642f','Admin has added order from 2021-05-05 07:22 PM to 2021-05-05 07:22 PM for customer Thong','Add','2021-05-05 12:23:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('8edc0599-882e-4435-9858-1baacc71789a','Admin has checked out order from: 08:35 AM to 08:35 AM','Check Out','2021-05-10 01:35:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('920a7e98-ed34-43f9-a2b1-e7e8ec3f4eee','Admin has checked out payment INV0000053','Payment','2021-05-07 02:03:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9340b002-83b8-4300-b10b-b7034e74725d','Admin has ordered invoice: INV0000023','Order','2021-05-04 12:17:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('956f2b32-daff-42d1-adbd-e93029517f97','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:07:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('95a5b467-5b72-428c-965b-21431b17cc41','Admin has uploaded his profile picture ','Modify','2021-05-03 13:49:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('95ff9f6e-7063-47fc-8c1b-bb23a74b61e0','Admin has added order from 2021-05-06 08:12 AM to 2021-05-06 08:12 AM for customer Thong','Add','2021-05-06 01:13:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('969767a0-5c99-4b1a-a3c4-04f81a33807c','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:08:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9721bd33-50b4-4a6a-87e2-ef56918bc97c','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-07 08:53:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('978f15d8-8a28-4c33-bb5f-86625510a813','Admin has logged in','Login','2021-05-06 09:55:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9844a62e-04f5-44e2-886d-08b68a83a032','Admin has checked out payment INV0000069','Payment','2021-05-09 12:39:51','47115938-fef6-49fe-a624-a630fdfd7d8b'),('98f1b71c-2f4e-4a84-aec1-4b1bbef42f52','Admin has checkout owe total: 10','Checkout','2021-05-06 11:21:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('99690ae0-ce71-4b52-936a-f5260d016c1b','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:47:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('99762df1-85e2-4f17-aa8c-c07a4edd79de','Admin has modified language from english','Modify','2021-05-03 13:48:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9988bc17-20af-46c0-a2db-70d1aae40edf','Admin has checked out payment INV0000029','Payment','2021-05-05 02:11:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9992e1cb-42ce-40f9-8ca4-f133c9bacde2','Admin has checked out payment INV0000034','Payment','2021-05-05 10:55:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9acd8c37-fe0f-438c-9c75-e76facfd06e8','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-03 14:05:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9c6a4950-9057-4736-8e65-34642a2548c3','Admin has checked in order from: 08:35 AM to 08:35 AM','Check In','2021-05-10 01:35:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9d610364-3ec9-4dd9-b23b-797f57112d9b','Admin has checked in order from: 08:42 AM to 08:42 AM','Check In','2021-05-10 01:42:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9e34d4f1-9f43-4199-bb25-af8a6a8a1cce','Admin has logged in','Login','2021-05-10 01:58:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9eb2ce1a-8830-4a73-a640-f5c6bbf4e934','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 03:02:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9f9121cc-3e12-4df2-b2ff-e920338c516c','Admin has checked out payment INV0000031','Payment','2021-05-05 02:13:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a07c6bd5-135d-4d84-b8ea-6d19e0750513','Admin has ordered invoice: INV0000077','Order','2021-05-10 01:37:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a096e945-27af-40bc-b511-ab1820608dfd','Admin has checked out payment INV0000073','Payment','2021-05-10 01:08:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a131971a-a946-4d7b-8b96-7779267bae23','Admin has checked in order from: 08:13 AM to 08:13 AM','Check In','2021-05-06 01:13:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a1bad205-7a4c-4410-a3b6-5af03715545a','Admin has checkout owe total: 5','Checkout','2021-05-04 11:11:57','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a1d45322-f2e6-4efc-b7e9-5b6cfdad11b6','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-04 12:17:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a27f755f-299d-44bf-ab8b-b2c4851cf5e6','Admin has toggle room: Room 2 from Close','Toggle','2021-05-10 02:19:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a42b8f0d-f5ca-4193-937e-0ae4b11f2df1','Admin has checked out order from: 07:23 PM to 07:23 PM','Check Out','2021-05-05 12:23:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a479d219-d8dd-46ff-add5-9efdd247a040','Admin has checked out payment INV0000014','Payment','2021-05-04 01:13:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a4c91a9b-72c5-40e9-93fc-3fa4eb64c581','Admin has added room: Room 3','Create','2021-05-05 11:53:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a4c91aae-6150-4a7c-8227-d7483902981a','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:36:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a4efee01-317b-4e90-a3d7-4af9cf80dbc8','Admin has logged in','Login','2021-05-03 13:47:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a4f855ee-5efe-4e86-a6d1-20e9fba1ebe3','Admin has added product fasdf','Add','2021-05-04 10:53:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a5450d93-9eed-4377-a197-25c245de22df','Admin has added product coacca','Add','2021-05-07 07:00:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a6a9c406-21cb-47c6-a15e-e9bb7249b0aa','Admin has modified language from english','Modify','2021-05-03 13:19:55','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a769ef70-cf8f-489c-8c85-d6dcab277dc2','Admin has checked out payment INV0000039','Payment','2021-05-05 11:39:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a79ee4e2-3f95-4974-a823-06ea1848b4d7','Admin has added product fasdf','Add','2021-05-04 10:54:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a7a2d3d3-0f93-43e7-bc31-582b2e6218c0','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:09:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a7d245b0-bcf2-4455-82f8-cdbf2e72399f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:40:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a8370a55-8fd1-4f94-a414-de856f1d10a7','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:40:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a83aec88-e5f9-4c85-a2f5-58e66a2dddb4','Admin has modified category from Food','Modify','2021-05-03 13:50:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a84b09ea-8187-4365-8c4d-b9bfc61f4527','Admin has checked out payment INV0000025','Payment','2021-05-05 01:57:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a95a19fa-97ea-4325-9cf6-eabeeee6cb63','Admin has checked in order from: 06:38 PM to 06:38 PM','Check In','2021-05-05 11:38:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a9f0a014-b2a0-4f9c-b21a-9f3a1ff1cbee','Admin has ordered invoice: INV0000019','Order','2021-05-04 10:54:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('aafe290a-7aaf-4693-b938-fb35b7f3e343','Admin has checked out payment INV0000027','Payment','2021-05-05 02:03:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ab15a17d-9ed7-4ed2-8bfe-56ea5821e621','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 02:03:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('acd78eca-b27f-40cc-8edd-0b84cce2eb1c','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-06 01:21:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('acedc004-9aab-4aa1-a238-d279a41b2943','Admin has checked out payment INV0000047','Payment','2021-05-06 12:12:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ad4de6c7-7cd1-47ed-a9ef-10408bb5751c','Admin has checked out payment INV0000071','Payment','2021-05-09 12:47:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ad629569-41a7-4dfc-86e7-8fba43cf18db','Admin has checked out payment INV0000079','Payment','2021-05-10 01:40:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ae965fce-a75a-4c18-ac0b-73045723ee4c','Admin has checkout owe total: 10','Checkout','2021-05-06 01:22:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('aef659a2-7c35-406c-b169-7aa1997ae801','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-06 01:21:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b03e520c-d911-43b1-9e40-a72bb563b99f','Admin has added color Red in product','Add','2021-05-03 13:54:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b05c8ee0-2c16-44a3-887d-faf8f0e8d2fc','Admin has checked in order from: 05:38 PM to 05:38 PM','Check In','2021-05-10 02:19:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b12a379f-40f3-4b5a-8ae9-90294d77180f','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-09 12:47:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b2037a72-c6e1-4f6a-84ba-da387493e582','Admin has upload photo for color: Red','Upload','2021-05-03 13:54:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b2653621-4fbe-4453-8384-bf28e9d9fe03','Admin has ordered invoice: INV0000009','Order','2021-05-03 14:15:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b269ec47-edeb-483e-ae8d-61b02a800a20','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:16:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b36ec66b-9087-4465-8081-0f7de4de80c4','Admin has checked in order from: 08:13 AM to 08:13 AM','Check In','2021-05-06 01:13:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b3b56353-bb9c-465c-a5f7-33e6e8dbdbfa','Admin has added order from 2021-05-06 07:21 PM to 2021-05-06 07:21 PM for customer Thong','Add','2021-05-06 12:22:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b4f7d1d3-45d8-4568-89da-97c30190c0d2','Admin has ordered invoice: INV0000025','Order','2021-05-05 01:57:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b57d87d3-0f6a-491c-a901-200daa6c55e8','Admin has added room: Room 1','Create','2021-05-04 02:06:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b6a48919-054f-4fe5-be93-07a876632731','Admin has checked out payment INV0000038','Payment','2021-05-05 11:38:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b761da87-f0e7-4cf8-8d55-fbe516e055ba','Admin has added stock: 0.3/KHR/100/4000/None/30.0 in product Coca Cola Original Taste','Add','2021-05-03 13:58:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b77377f0-af8b-4b0c-b25f-72bef06e0680','Admin has logged in','Login','2021-05-09 03:27:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b81efd56-0ae7-4a54-a66c-a2dc04c74f7f','Admin has added order from 2021-05-05 06:36 PM to 2021-05-05 06:36 PM for customer Thong','Add','2021-05-05 11:37:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b9aa8202-3d82-4bf4-9a27-a8bead76ee37','Admin has ordered invoice: INV0000071','Order','2021-05-09 12:47:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ba097175-da55-4c17-8b3c-a5f450f5eee8','Admin has added value តូច in product','Add','2021-05-03 13:57:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('bc550c80-c66f-4a6b-9098-cbf20dfad27e','Admin has added order from 2021-05-05 06:37 PM to 2021-05-05 06:37 PM for customer Customer','Add','2021-05-05 11:38:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('bcc657a5-4b94-49a4-a694-3514062904c4','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 01:59:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('bf5e688f-ede9-42a4-af96-4deb55eea47c','Admin has added order from 2021-05-06 08:12 AM to 2021-05-06 08:12 AM for customer Thong','Add','2021-05-06 01:13:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('bffd4f5d-46e5-4060-a1fe-8a8f49850956','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:33:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c05c5728-156b-43e7-bf8e-66accdd38989','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-06 12:12:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c1f8d836-027c-4b3f-973f-70074ee61ffd','Admin has checked out payment INV0000055','Payment','2021-05-07 02:15:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c3432f6f-278e-4d78-89ff-80de17617857','Admin has ordered invoice: INV0000066','Order','2021-05-09 03:28:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c362480a-c3bc-4ea4-963d-713872ba670d','Admin has checked out payment INV0000070','Payment','2021-05-09 12:43:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c3aa5287-763b-4324-beca-62a3f7310555','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 09:34:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c3afba0f-96c4-4570-a986-e1df344e5124','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:35:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c3ec3a69-f418-4216-8f77-52e3c30a71cd','Admin has opened drawer','Open','2021-05-03 14:00:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c4297ab2-dc14-4e6c-b4c9-16e21f6417d0','Admin has checked out payment INV0000011','Payment','2021-05-03 14:17:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c434f949-7942-4b24-b2d8-11c785b47f7e','Admin has ordered invoice: INV0000065','Order','2021-05-09 03:27:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c5ecce8c-db41-4191-8fe7-dd5e1c9cbfc9','Admin has checked out order from: 07:34 PM to 07:34 PM','Check Out','2021-05-10 01:30:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c601155f-8150-4dfc-9a2f-c3ee780dfbc5','Admin has added order from 2021-05-05 06:37 PM to 2021-05-05 06:37 PM for customer Thong','Add','2021-05-05 11:38:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c67e0049-6cd9-4dd5-aa8a-a56a470504fb','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-06 12:22:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c70df640-103a-44d3-bfef-8a2f686e6d68','Admin has deleted color: Blue in product','Delete','2021-05-03 13:55:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c8a751f2-8cfa-4ffc-b9a4-47c0a48c5979','Admin has ordered invoice: INV0000008','Order','2021-05-03 14:12:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c8e6d2b6-6485-423e-9705-b3e3d62fcfb6','Admin has logged in','Login','2021-05-04 01:08:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c9c05826-2c88-4245-97fe-c5eb48b0d2dd','Admin has checked out order from: 08:50 AM to 08:50 AM','Check Out','2021-05-09 03:34:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ca704dd6-154b-46c7-b0e7-4bc43081c0d5','Admin has opened drawer','Open','2021-05-05 01:57:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ca9af5a6-b636-4d4f-86c8-bf8c1e0aab8e','Admin has checked out payment INV0000083','Payment','2021-05-10 01:51:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cb079ecf-5853-45e6-bf1e-1543bf9cf67f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 02:02:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cb14ab98-0fcf-4a70-a2a8-1c323d411b34','Admin has checked in order from: 07:35 PM to 07:35 PM','Check In','2021-05-05 12:35:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cb9bac88-b437-4a09-a314-a6ea4b830051','Admin has added category: Food in category','Add','2021-05-03 13:50:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cc277b37-f59f-4447-a901-6dcb91da3485','Admin has added order from 2021-05-10 08:49 AM to 2021-05-10 08:49 AM for customer Thong','Add','2021-05-10 01:50:58','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cc555b56-f406-4880-a707-5ed8a0904e5c','Admin has ordered invoice: INV0000056','Order','2021-05-07 03:17:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ccd18722-432f-4d0e-93a7-e43e999ffc7b','Admin has ordered invoice: INV0000055','Order','2021-05-07 02:15:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cd2162eb-94ae-4448-83ca-90a02785a905','Admin has logged in','Login','2021-05-05 10:54:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cd962f24-c858-4513-b3e6-c6ca5cde1798','Admin has closed drawer','Close','2021-05-05 01:57:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ce1b996f-371a-48e9-b036-4328c595999a','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-10 01:19:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cf4299f9-0d75-4824-b89c-dfb9fd9d5e09','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:34:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cfdafdda-0950-4be1-93d7-3528d150658f','Admin has added product lidsaf','Add','2021-05-04 05:46:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d1696df0-32be-46cb-af53-fe3890a576c9','Admin has ordered invoice: INV0000020','Order','2021-05-04 11:09:13','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d1e073cd-5aaf-4c1d-b03a-766310996526','Admin has checked out order from: 07:22 PM to 07:22 PM','Check Out','2021-05-06 12:22:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d226cff5-108a-4bb4-8c5f-b9dd7099ca57','Admin has checked out payment INV0000074','Payment','2021-05-10 01:30:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d23f11f6-57f8-4042-97cf-0ec09a497129','Admin has ordered invoice: INV0000069','Order','2021-05-09 12:39:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d2625d69-ce91-4c74-b242-37bad67a90a6','Admin has ordered invoice: INV0000029','Order','2021-05-05 02:11:04','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d27a7a1b-5c19-401e-a1f5-ed5f549461bd','Admin has checked out payment INV0000008','Payment','2021-05-03 14:13:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d2c36830-980d-4ca0-9fb5-b45e3f1781e3','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 13:59:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d34d456b-59f8-4cd0-b4e6-1b15df1959af','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:06:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d3c34b1a-ba34-4899-b493-29251710630a','Admin has added product fadsf','Add','2021-05-04 10:53:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d49df7f1-d11a-410b-b638-2b1b907e474c','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-09 03:28:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d4bffa22-397b-4405-b095-91c6e52b9e6d','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-03 14:09:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d4d1402f-323e-4e97-9a67-1f9107786c70','Admin has added order from 2021-05-05 06:36 PM to 2021-05-05 06:36 PM for customer Customer','Add','2021-05-05 11:37:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d4fdc48d-8bb8-461a-b190-51edb3a39e30','Admin has ordered invoice: INV0000032','Order','2021-05-05 02:20:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d575f1f7-4bc5-4dac-8a8a-7265f6b0ca31','Admin has checked out payment INV0000067','Payment','2021-05-09 12:34:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d6115852-4a57-44b1-a6b4-f68141f9e298','Admin has checked out payment INV0000051','Payment','2021-05-09 03:34:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d87555a3-7cab-47a9-9e8a-6e77427f6175','Admin has added product asdfsadf','Add','2021-05-04 10:53:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d92c60d1-2111-4e35-8f04-547ad278de23','Admin has ordered invoice: INV0000054','Order','2021-05-07 02:03:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d9dff836-3097-4f3a-8e8c-6fcae0a57db7','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:12:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dba429ff-1d81-479d-b15c-5733983b1227','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-05 02:20:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dc022204-c021-4195-bac4-4ca1b1595d54','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 03:11:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dc3638a0-855a-4141-93b4-1e3a8d3e4004','Admin has added product Coca Cola Original Taste','Add','2021-05-03 13:53:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dc8d8306-5253-49a3-8ee4-bbdfb5693573','Admin has added room: Room 5','Create','2021-05-05 11:54:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dd1467fc-0a5c-4f0a-929a-d5103d05e798','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-06 12:12:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dd25c158-dbdc-4d1d-92f0-0baa2debec6f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:05:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dd73fd09-cd53-441c-9d02-e7c8fed95ad1','Admin has ordered invoice: INV0000031','Order','2021-05-05 02:13:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ddbdeb50-6530-4c0b-a880-5bf59095181b','Admin has added order from 2021-05-10 08:45 AM to 2021-05-10 08:45 AM for customer Customer','Add','2021-05-10 01:46:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('de379ce2-ac98-48a7-bdc6-55f14cf924c8','Admin has ordered invoice: INV0000073','Order','2021-05-10 01:08:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dfa64042-29d6-4556-9080-9593b72d1079','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-03 14:18:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e017cf32-824a-46c5-ac05-b563000ef0f7','Admin has checked out payment INV0000005','Payment','2021-05-06 10:06:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e0f1a2bc-a2d6-48fe-9d3f-382a2053508b','Admin has modified room: Room 3 from Room 3/3','Modify','2021-05-05 11:54:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e31ccf58-92d6-444d-9aa3-00c0ab8fa463','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:16:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e5b326cf-2f35-4b92-8f0d-2a150dce1486','Admin has modified theme from light','Modify','2021-05-05 11:02:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e639a4a3-437f-4dd8-a133-38a285886e69','Admin has logged in','Login','2021-05-03 13:46:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6a2dde1-0063-46f4-a6fb-da30a9314f48','Admin has checked out payment INV0000044','Payment','2021-05-06 01:13:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6b2e4b8-bd33-4d47-830e-53c168b18297','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-06 12:14:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6c88cfd-8fae-4bb1-8f05-7ec944297245','Admin has checked out payment INV0000009','Payment','2021-05-03 14:15:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6e2244d-30ac-4e5e-939a-04e06a9be3ac','Admin has checked in order from: 06:37 PM to 06:37 PM','Check In','2021-05-05 11:37:04','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6fc9849-e53b-43dd-994b-d4ff1cf61508','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:42:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e7bc4988-e1df-40ff-a92c-e6b3cb504575','Admin has added brand: Coca Cola in brand','Add','2021-05-03 13:51:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e7c54f26-78b7-4ce0-9ea8-cdbc9d7e575a','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-07 02:02:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e8d999bb-6bbe-4f00-ac7d-df1624a9a88f','Admin has upload photo for product: Coca Cola Original Taste','Upload','2021-05-03 13:53:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e9387aef-37f6-4940-8b95-3e16e2f4ae28','Admin has modified theme from dark','Modify','2021-05-03 13:48:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ea5656fc-e375-4540-93d3-3c1685599dbc','Admin has checked out payment INV0000081','Payment','2021-05-10 01:46:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('eba4d6fa-7bfa-4326-b049-add4400b9fb3','Admin has checked out payment INV0000041','Payment','2021-05-05 11:58:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ebe57c2e-d814-4a68-8add-5ee106e3a8d8','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-10 01:51:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ec3958d9-abd3-4625-9786-ed6db5331434','Admin has created user: thong','Created','2021-05-07 02:41:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ed78f840-0e75-48d8-b614-d485009cfb0f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-05 02:13:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ed793ea7-813b-46b1-9498-f5350ecd3a02','Admin has checkout owe total: 0.475','Checkout','2021-05-04 11:09:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ed9631fd-e4bd-4aaf-af9f-9680d366b09f','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:09:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ee5853a1-cb5a-410d-b498-ca76cee3e8fd','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-03 14:09:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ee911d8b-730c-432c-a7ad-4433fbeb4e11','Admin has checked out order from: 10:02 AM to 10:02 AM','Check Out','2021-05-10 03:10:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('eed859b7-5c6c-447d-88a7-784c7d052e3b','Admin has checked out payment INV0000019','Payment','2021-05-04 10:54:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ef1eef6c-24b2-4a29-8d81-83c287b22e01','Admin has ordered invoice: INV0000072','Order','2021-05-09 12:48:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ef359bd8-8ea3-4111-b2a6-926e8401a752','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-04 11:11:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f01d04a1-32a6-4bbd-8411-5dbffec3672f','Admin has added transaction: Burger Bacon-ធំ','Add','2021-05-04 10:54:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f0906fa0-a83b-4b1e-b5cb-0e74cd149510','Admin has checked out payment INV0000054','Payment','2021-05-07 02:03:52','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f0d34d26-f807-493c-9a5c-9134248787b4','Admin has updated transaction Room 3, 1h 30min','Modified','2021-05-05 12:23:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f15eff1b-8f37-4508-a2ff-704906028bc6','Admin has logged in','Login','2021-05-04 10:50:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f1dad098-58ca-47c4-9097-3b13a10a3cfa','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-09 12:48:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f2d24462-f272-4683-a6a3-591166dd515b','Admin has checked in order from: 07:22 PM to 07:22 PM','Check In','2021-05-06 12:22:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f2ece6b4-6381-4781-8fc4-21b6b9284d6d','Admin has ordered invoice: INV0000005','Order','2021-05-03 14:09:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f39b9abb-2001-4ea7-913f-9c8352678919','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 03:17:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f3a2ec79-bb6d-42de-aee1-a5c420300104','Admin has ordered invoice: INV0000006','Order','2021-05-03 14:10:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f3ea978c-60b5-455f-8f00-19cc233ba69c','Admin has checked in order from: 09:07 AM to 09:07 AM','Check In','2021-05-04 02:07:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f45772bb-fc31-4247-8932-44f0e08bb8e1','Admin has modified theme from light','Modify','2021-05-03 13:17:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4781558-c9ef-41a9-8a82-013411d4bdaf','Admin has checked out payment INV0000021','Payment','2021-05-04 11:11:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4933e58-22b3-4580-8836-5ac0424661e6','Admin has upload photo for color: Red','Upload','2021-05-03 13:54:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4988baf-247d-43fd-ae75-e6aadf1ba005','Admin has modified color from Red/#D04949 in product','Modify','2021-05-03 13:55:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4d9a3b3-987a-4664-a2fb-40951830a190','Admin has checkout owe total: 10','Checkout','2021-05-06 11:21:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4e46f9f-8d95-4355-83f7-2f464276f677','Admin has ordered invoice: INV0000030','Order','2021-05-05 02:12:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f5a3d0a6-746f-4421-be2d-5a7c1413333e','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-03 14:07:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f64270a5-886b-4f3a-af43-cee1f1866e4a','Admin has ordered invoice: INV0000076','Order','2021-05-10 01:36:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f6496c06-e023-44d6-aeb8-0f201a22a2b0','Admin has checked out payment INV0000045','Payment','2021-05-09 03:33:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f70d87b8-d382-44b6-9761-3ccb578774fc','Admin has checked out payment INV0000052','Payment','2021-05-07 02:02:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f786ceb2-f459-44d2-88fd-15aa5900a7b1','Admin has checked out order from: 08:40 AM to 08:40 AM','Check Out','2021-05-10 01:40:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f7d7fad3-92f7-4775-890b-ef60e0756a95','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-06 12:12:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f85db0a6-0254-4771-be56-8d4a859aafb9','Admin has checked out payment INV0000002','Payment','2021-05-03 14:05:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f8baa4e6-8065-4ce2-bbb1-bbb1e6f6be01','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-04 01:17:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f96fbe6b-0ec0-4543-8bd9-67dd05997877','Admin has added transaction: Coca Cola Original Taste','Add','2021-05-07 07:08:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fa1e7c61-47dc-49be-85c2-412b57f558f9','Admin has checked out payment INV0000028','Payment','2021-05-06 10:44:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fadfa960-b5ec-43b6-a955-2f375764113b','Admin has checked out order from: 08:44 AM to 08:44 AM','Check Out','2021-05-10 01:45:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fb32e670-82b7-4059-9fbb-456635d51235','Admin has added transaction: Burger Bacon-តូច','Add','2021-05-06 12:14:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fbea2acc-bf43-4957-8eb8-5029d3614672','Admin has closed drawer','Close','2021-05-07 02:02:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fcc6276c-2127-4025-a9c0-6ff21e0fb35d','Admin has ordered invoice: INV0000063','Order','2021-05-07 07:16:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fd589cad-f708-4d65-a30b-ed47d0fca500','Admin has added brand: Online Shop in brand','Add','2021-05-06 02:26:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fecac00c-6642-4eb9-8581-a499142385a5','Admin has modified language from khmer','Modify','2021-05-03 13:46:27','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_appearance` VALUES ('07864b6d-0968-456c-b357-78d8cd8e0184','','','','','','be9f4d43-168d-43fe-8e56-1e02f1f7233c'),('275bcd61-3c65-4a1f-be63-cb7f9c67323e','','','','','','398614af-e5e9-482e-a86f-9e18166b54d2'),('2c1816cd-a2c9-481a-825c-5b0bfe70ae1a','','','','','','f3ca3108-d095-49a4-be25-f94ebfe1b048'),('3bd0b932-a74d-4aa3-9966-d3c62af14f63','','','','','','cdc9a549-2168-425e-95a8-92efc9b534af'),('5c24f9e4-b97a-4ff8-a1ee-e84946b263da','','','','','','276cd5cd-e7fe-44f7-affa-2bd8dd4baf66'),('5c2a882a-70d4-40db-b10f-faba1a87ea9e','','','','','','501672b6-e507-4ca9-ab2e-45d0dc85cc7d'),('7c6e1a3b-d5e9-4b1f-bdd3-6661e77a1264','','','','','','20dad389-234e-4638-9382-e669665d39de'),('7d37f7cc-7a84-4481-b4ff-b59374601535','','','','','','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d'),('8771bb2d-37f4-4e5d-98e3-26a2ace34086','','','','','','e9dd0a8f-6505-4f2b-a621-3cce32be5aea'),('8b009b63-6498-45c3-a1ec-af4c16868a4f','','','','','','76539a3a-9020-468d-b1ce-28542d7e28a2'),('a3194933-150f-4e73-a70d-fa053be60fe6','','','','','','ff58057b-9dd2-4dc5-a0f1-7c477643d30a'),('ac0cbc8b-88df-470c-97bd-5f0c23b537ab','','','','','','2eab33c7-39bc-431e-bee9-2be0b8c6ef09'),('d94622da-ed65-4149-92a7-1384cc520c15','','','','','','0bf6aeb0-d426-4d25-822c-72cce07b22c2'),('eecebbdc-77f5-44eb-b157-8a8f65dee4d3','','','','','','8da25aa9-bd3e-4adf-9212-25345420b007'),('f2d13cca-984d-4646-932d-08a596507db4','','','','','','491e65ec-90f7-4de4-9932-e78ab22a1f68');
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
INSERT INTO `tbl_brand` VALUES ('599b375b-b08c-4684-8501-7eab6dba25e6','Shop','','2021-05-03 13:51:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('95793a69-89fb-454a-b4cd-11169e02fa3a','Coca Cola','','2021-05-03 13:51:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a47efbbf-1f8a-4483-9f50-204da242c923','Online Shop','','2021-05-06 02:26:25','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_category` VALUES ('d2c92eb6-500e-477a-b0e8-1769362ab7cd','អាហារ','default.png','','2021-05-03 13:50:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d4c3261b-af04-4d78-bf49-4d93e8e8942e','Beverage','default.png','','2021-05-03 13:50:06','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_checkin` VALUES ('06a34cc7-f845-44e3-bf24-f2ef5db9e7f7','2021-05-10 01:44:45','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:44:45','9fcc69b4-fb43-4f0f-92b7-5d52a0a79e85','4edfa704-ecd7-4abd-8130-fff5e7ab1312'),('10da1bda-ac49-42dc-92f0-8d68f5340813','2021-05-06 01:13:41','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 01:13:41','960a3482-5e98-4480-9c2f-11a9117c2dcc','80c06ee9-08e1-42d0-a653-145107e025ed'),('1648725f-2d20-49c4-84f9-ae7364414106','2021-05-05 11:38:34','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:38:34','bc7ac8f1-c017-4366-9edf-2e7678b73273','5d19dc36-df7f-497a-90db-6d119738c9f3'),('1b21b5b5-b0a1-4720-94cb-3a5c481db93a','2021-05-10 03:02:56','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:02:56','77d8a817-8b40-4481-a393-a34b3cabec10','ee29bce5-a8be-442c-b2a5-55cc6b044c6d'),('1fe97022-46fc-4484-9357-dae3999aabbf','2021-05-05 12:23:23','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:23:23','abf9354c-bc3e-410e-a1b4-f6ae21245d0c','eee81ed2-6457-4bc2-9878-dd72e200aa64'),('20441079-d4dc-4fd9-a987-66c86659da28','2021-05-05 11:39:19','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:39:19','e17bec5b-b075-4505-bf77-5b1c88687470','7fc569a6-e629-4423-a1f8-24357b10b7ae'),('216d02c9-bcbe-419f-9d55-0515fa83747e','2021-05-04 02:07:32','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-04 02:07:32','a63403fd-acc1-4236-8ed6-bbe562eb0e21','67e8779a-e386-4ba3-8e5c-c1dad436d2a0'),('34c64447-12f2-445b-a5c7-bfa0d91e9bc1','2021-05-09 12:35:05','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-09 12:35:05','adf6b881-e010-4b69-9622-471333208880','0567e111-dc02-466d-b426-b1d974c64910'),('3c432d7d-a1c7-46e5-ba82-4b70102ad404','2021-05-10 01:40:27','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:40:27','a772d888-e21b-41eb-bbef-abbe4959aa2e','9c6b26b9-0356-4a4f-affb-a85432554775'),('422538ea-a612-4292-a68c-4d49901c3975','2021-05-06 12:22:35','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 12:22:35','48dc52bf-7ed5-4c7e-b081-a27b2e97675a','d26fff76-be55-4121-b4e9-472f56927463'),('47a24d7b-d5ac-4984-895d-92d3f36b39af','2021-05-07 01:51:03','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-07 01:51:03','312b7eb8-8465-436b-832c-6605c0bac8c5','40707e53-a10d-485a-b062-09398267d244'),('4a1e21ac-db78-408a-9ebd-336295a275bb','2021-05-10 03:11:00','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:11:00','4f196231-d76a-4744-a450-314318928af0','52da62c1-2cb2-42d5-b4c2-ab384367ab3b'),('524a1821-5d7a-448e-bc70-ffdb7ec661d4','2021-05-10 01:47:22','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:47:22','663e81e7-c5de-4199-aea8-59ed54b4ac62','16056dd2-44e3-4d4d-97f7-f0e88f95f184'),('5a1c50a9-e9ef-4452-8b87-9a223366e405','2021-05-05 11:36:31','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:36:31','f03ba76f-d14e-4528-a616-0f9d8e4d09a4','a18ade16-8be1-46de-9237-142cc4b35ea9'),('60b9cf2c-1f4c-4ae8-a42f-ac5195131ac8','2021-05-10 01:38:36','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:38:36','2995ea36-2aa3-438a-b6be-93b592f7be1c','c9724dc2-5103-4902-a2e5-364ecd077505'),('7d41383c-52f0-40e7-8933-0b485e0b380d','2021-05-05 12:35:38','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:35:38','0b2fd6f7-54be-43a9-9bee-cb545d0385c3','09b46c81-97eb-4e7c-9986-40a26345ee62'),('9a16de94-dcae-4d34-8743-2997ca9b83b4','2021-05-10 01:51:01','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:51:01','431d9500-52c0-4026-9401-73726f9a3240','9839c89f-8ba8-42de-b8cc-ba95283695dc'),('9eafcdd0-fabb-4baf-9aaf-7d39f2709f8b','2021-05-10 01:35:08','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:35:08','06f3d6f5-ed0d-4541-89e8-bf6a93cb6f54','a9d31022-c03a-400d-b701-1bc15dac6111'),('c148d328-248e-4a91-9583-b41687a32f1c','2021-05-10 02:19:31','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 02:19:31','9a970e8b-cf56-40f4-a3f0-88d5eee1ba24','748571d3-556a-4f33-85c1-29a8342ae0f1'),('c4ba2a8c-424b-477a-a4cf-403cd2e7d3df','2021-05-05 11:37:44','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:44','aa54c262-967f-49e6-ae2f-f138d89bb15a','0b68af50-0431-4942-a2c9-38e6f5469dea'),('cba4268f-7daf-4c91-bcbd-d291b792d7d6','2021-05-05 11:38:55','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:38:55','f6d244c3-7dc4-45a2-b19a-c025643272fe','0d33acdf-df4a-44ba-bc8a-a9ab6f2db56e'),('cc0bf4b8-8be4-4cee-a408-173e87d21ffd','2021-05-05 11:37:04','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:04','19be8d87-467b-4d22-a642-b5613be08f30','5a5088f9-bf08-47cb-b628-1a9c562beeed'),('d51196cc-2c2d-4d97-970b-ed74c6cbf9a0','2021-05-05 12:36:19','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:36:19','c9baadc5-00d5-4c73-a015-99048ae6bbba','b59c84a3-f2e5-404c-a38e-e8dce5ce9e6f'),('d69fdce8-bbd8-4623-8992-993da7e0dbaa','2021-05-06 01:13:30','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 01:13:30','30d52472-8890-4508-8f79-d6fb2d8a06fc','75df409b-ef1a-45dd-a2de-9877c9f915b1'),('ffb07bd2-4b5b-49da-b962-a65b23ab14f1','2021-05-10 01:42:05','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:42:05','34d9208f-81ae-427d-82ea-8b61eb051aa1','a3b5dee3-7764-4349-bcb3-5f24d2ed1ee2');
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
INSERT INTO `tbl_checkout` VALUES ('04003e34-5fb9-45aa-8a56-b5960494df59','2021-05-10 01:38:56',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:38:56','2995ea36-2aa3-438a-b6be-93b592f7be1c'),('05edb494-859a-497f-af49-43b12b179f9d','2021-05-05 11:36:36',504,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:36:36','f03ba76f-d14e-4528-a616-0f9d8e4d09a4'),('1d534544-19cf-4ec6-a164-35167cb4fccd','2021-05-05 11:37:51',60,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:51','aa54c262-967f-49e6-ae2f-f138d89bb15a'),('2091cab9-93b5-42dd-b522-9ba45a2f7bbb','2021-05-06 11:20:45',607,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 11:20:45','960a3482-5e98-4480-9c2f-11a9117c2dcc'),('3ca8a27e-3437-49e6-9ddc-d01a53b20f9a','2021-05-10 01:45:41',1,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:45:41','9fcc69b4-fb43-4f0f-92b7-5d52a0a79e85'),('55f5e8b5-77b9-4b6e-a09e-d0a47f91fa6f','2021-05-06 01:13:04',756,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 01:13:04','c9baadc5-00d5-4c73-a015-99048ae6bbba'),('56c90642-a066-4ab8-b153-51c5c141c4f4','2021-05-10 03:11:15',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:11:15','4f196231-d76a-4744-a450-314318928af0'),('60e87707-756f-425a-990a-74c80c7405d5','2021-05-10 03:10:37',8,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:10:37','77d8a817-8b40-4481-a393-a34b3cabec10'),('62a27577-a206-4e2a-9f14-7562cded2f18','2021-05-05 11:38:38',30,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:38:38','bc7ac8f1-c017-4366-9edf-2e7678b73273'),('6d8df831-3de3-40bd-8972-1f26bc00ecf5','2021-05-05 11:39:02',60,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:39:02','f6d244c3-7dc4-45a2-b19a-c025643272fe'),('7218689c-a9aa-4ff2-a97d-fda793401b7c','2021-05-10 01:30:36',775,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:30:36','adf6b881-e010-4b69-9622-471333208880'),('80931a62-d632-4295-8ccc-effbdfef96cc','2021-05-10 01:35:36',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:35:36','06f3d6f5-ed0d-4541-89e8-bf6a93cb6f54'),('8572145d-15ea-4f6f-96f9-bb46e6f61832','2021-05-06 12:22:46',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 12:22:46','48dc52bf-7ed5-4c7e-b081-a27b2e97675a'),('88d5e02c-6690-4d08-a5d9-ce4739ed9601','2021-05-09 03:34:01',2982,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-09 03:34:01','312b7eb8-8465-436b-832c-6605c0bac8c5'),('88f4b5b6-aeaf-4ebe-9dbf-80a013b59489','2021-05-10 01:51:11',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:51:11','431d9500-52c0-4026-9401-73726f9a3240'),('b5ea7ca2-29d6-4766-a61a-029d8d3ebf53','2021-05-05 11:37:12',30,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:12','19be8d87-467b-4d22-a642-b5613be08f30'),('badc7abc-c086-47f7-b27f-1794aa96c1c8','2021-05-05 11:41:33',30,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:41:33','e17bec5b-b075-4505-bf77-5b1c88687470'),('d5a9c787-4c3e-4e83-9085-6754237888f4','2021-05-10 01:42:25',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:42:25','34d9208f-81ae-427d-82ea-8b61eb051aa1'),('d90ab88a-8033-4cd4-8f5d-e5b9920568ad','2021-05-10 01:47:38',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:47:38','663e81e7-c5de-4199-aea8-59ed54b4ac62'),('d90b7afb-b63b-406c-9083-1dcb78ce5a3e','2021-05-09 03:33:24',4460,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-09 03:33:24','30d52472-8890-4508-8f79-d6fb2d8a06fc'),('d929cecb-67e5-492b-83e4-ac951c21d270','2021-05-05 11:35:58',569,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:35:58','a63403fd-acc1-4236-8ed6-bbe562eb0e21'),('e4f682c3-f417-49b8-9f9e-f9ae562f6c2c','2021-05-10 01:40:41',0,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:40:41','a772d888-e21b-41eb-bbef-abbe4959aa2e'),('e597d86a-4a81-4055-872a-1c6ea2c9532d','2021-05-05 12:23:33',90,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:23:33','abf9354c-bc3e-410e-a1b4-f6ae21245d0c'),('faadb94a-8e6f-42e7-a1da-19b68f76e100','2021-05-05 12:35:41',1,'47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:35:41','0b2fd6f7-54be-43a9-9bee-cb545d0385c3');
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
INSERT INTO `tbl_customer` VALUES ('35788729-ffb4-4b5b-9b5f-f0a90346155e','Thong',NULL,'','','2021-05-03 14:18:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f09db67d-1812-40ca-894f-0f93d7b58f0b','Customer',NULL,'','','2021-05-03 12:56:03','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_drawer` VALUES ('30451bb3-3752-4003-b345-983e7dd23d03','',4000.0000,'Default',0.0000,'2021-05-05 02:13:43','2021-05-07 02:02:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3a771fca-e422-40a6-998d-bdf4c643d5e4','',4000.0000,'Default',0.0000,'2021-05-05 01:57:36','2021-05-05 01:59:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('673223f9-b58f-41fc-8a3b-7c29605dcfc7','',4200.0000,'Default',11100.0000,'2021-05-07 02:02:44',NULL,'47115938-fef6-49fe-a624-a630fdfd7d8b'),('d4f153ae-ce8f-485e-94c1-4a990d3fb2cc','',4000.0000,'Default',112000.0000,'2021-05-03 14:00:45','2021-05-05 01:57:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fc198cf4-9b65-4cce-9841-8d95c03d6948','',4000.0000,'Default',0.0000,'2021-05-05 01:59:28','2021-05-05 02:13:38','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_floor` VALUES ('44f4df78-3c48-49b3-8071-39028885fa6f','GF','2021-05-03 12:56:03','7b2e8a27-27d1-4203-a9ff-780cd78a01c1');
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
INSERT INTO `tbl_invoice` VALUES ('1176d6fe-5062-42b3-9c1a-2698040e8422',1.0000,1.0000,0.0000,'1,0',4200.0000,0.0000,'2021-05-07 06:00:01','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('141ed113-d1a6-4d86-ac90-09cd253c6003',4.5000,4.5000,0.0000,'12,0',4000.0000,7.5000,'2021-05-06 01:22:53','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('2ec1e768-b501-46d2-afed-7c49e4179c45',4.5000,2.0000,2.5000,'2,0',4000.0000,0.0000,'2021-05-06 01:22:43','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('6da97561-dcf9-415d-8b52-81eb0109cd68',6.0000,6.0000,0.0000,'11,10000',4000.0000,7.5000,'2021-05-03 14:19:00','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('c67f6a05-5798-486e-b1cc-22420786a58b',3.0000,0.5000,2.5000,'0,2000',4000.0000,0.0000,'2021-05-04 11:09:37','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('c6c96b27-df03-459c-ab1b-2bc4e6ea89b2',33.8500,30.0000,3.8500,'20,40000',4000.0000,0.0000,'2021-05-06 11:21:31','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('db40a975-fbcc-4306-adc8-41a782d82f50',7.5000,7.5000,0.0000,'7,2000',4000.0000,0.0000,'2021-05-04 11:11:57','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('e6d76bc9-0c7f-43a8-b020-4094fea9a5c7',33.8500,33.8500,0.0000,'20,60000',4000.0000,1.1500,'2021-05-06 11:51:35','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e'),('fb9c0ad0-5a7b-4698-b5ea-963ca3ec16bf',33.8500,20.0000,13.8500,'20,0',4000.0000,0.0000,'2021-05-06 11:21:12','47115938-fef6-49fe-a624-a630fdfd7d8b','35788729-ffb4-4b5b-9b5f-f0a90346155e');
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
INSERT INTO `tbl_money` VALUES ('2d2dbb86-8caf-4f47-9ad8-2f22a876d238',10,'USD',10.00000,100,'d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('45f997f5-64fc-4d24-a99f-4f08f324d2ed',10,'USD',10.00000,100,'d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('5c91a25f-2608-4a81-8887-51279b3d614e',100,'USD',100.00000,100,'673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('6eee429b-9f7f-4e5a-a983-63275aecc7e7',1000,'KHR',0.25000,0,'d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('78446a19-d01f-405c-b305-9adefd2edc2d',1,'USD',1.00000,72,'673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('bd2a36e7-b77b-45f1-a4e7-7960fc1ba2a1',10,'USD',10.00000,100,'673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('bedfdfff-bd45-48f6-ac0a-d14c572a766c',100,'USD',100.00000,100,'d4f153ae-ce8f-485e-94c1-4a990d3fb2cc');
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
INSERT INTO `tbl_order` VALUES ('06f3d6f5-ed0d-4541-89e8-bf6a93cb6f54',1,1,'2021-05-10 01:35:00','2021-05-10 01:35:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:35:06'),('0b2fd6f7-54be-43a9-9bee-cb545d0385c3',1,1,'2021-05-05 12:35:00','2021-05-05 12:35:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:35:36'),('19be8d87-467b-4d22-a642-b5613be08f30',1,1,'2021-05-05 11:37:00','2021-05-05 11:37:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:02'),('2995ea36-2aa3-438a-b6be-93b592f7be1c',1,1,'2021-05-10 01:38:00','2021-05-10 01:38:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:38:34'),('30d52472-8890-4508-8f79-d6fb2d8a06fc',1,1,'2021-05-06 01:13:00','2021-05-06 01:13:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 01:13:26'),('312b7eb8-8465-436b-832c-6605c0bac8c5',1,1,'2021-05-07 01:50:00','2021-05-07 01:50:00','8ec5b324-3a6f-4742-a7c8-eade5dfc9e8b','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-07 01:51:00'),('34d9208f-81ae-427d-82ea-8b61eb051aa1',1,1,'2021-05-10 01:42:00','2021-05-10 01:42:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:42:00'),('431d9500-52c0-4026-9401-73726f9a3240',1,1,'2021-05-10 01:50:00','2021-05-10 01:50:00','5d0f7c0b-c230-4c37-8a90-c7504f563391','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:50:58'),('48dc52bf-7ed5-4c7e-b081-a27b2e97675a',1,1,'2021-05-06 12:22:00','2021-05-06 12:22:00','5d0f7c0b-c230-4c37-8a90-c7504f563391','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 12:22:33'),('4f196231-d76a-4744-a450-314318928af0',1,1,'2021-05-10 03:10:00','2021-05-10 03:10:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:10:58'),('663e81e7-c5de-4199-aea8-59ed54b4ac62',1,1,'2021-05-10 01:46:00','2021-05-10 01:46:00','91afc067-2833-4f89-93ba-a41db67d5492','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:46:11'),('77d8a817-8b40-4481-a393-a34b3cabec10',1,1,'2021-05-10 03:02:00','2021-05-10 03:02:00','91afc067-2833-4f89-93ba-a41db67d5492','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 03:02:53'),('960a3482-5e98-4480-9c2f-11a9117c2dcc',1,1,'2021-05-06 01:13:00','2021-05-06 01:13:00','5d0f7c0b-c230-4c37-8a90-c7504f563391','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 01:13:39'),('9a970e8b-cf56-40f4-a3f0-88d5eee1ba24',0,1,'2021-05-06 10:38:00','2021-05-06 10:38:00','8bfad1c6-c648-49de-b212-eda5d0796e49','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-06 10:38:57'),('9fcc69b4-fb43-4f0f-92b7-5d52a0a79e85',1,1,'2021-05-10 01:44:00','2021-05-10 01:44:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:44:42'),('a63403fd-acc1-4236-8ed6-bbe562eb0e21',1,1,'2021-05-04 02:07:00','2021-05-04 02:07:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-04 02:07:28'),('a772d888-e21b-41eb-bbef-abbe4959aa2e',1,1,'2021-05-10 01:40:00','2021-05-10 01:40:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-10 01:40:25'),('aa54c262-967f-49e6-ae2f-f138d89bb15a',1,1,'2021-05-05 11:37:00','2021-05-05 11:37:00','91afc067-2833-4f89-93ba-a41db67d5492','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:37:42'),('abf9354c-bc3e-410e-a1b4-f6ae21245d0c',1,1,'2021-05-05 12:23:00','2021-05-05 12:23:00','5d0f7c0b-c230-4c37-8a90-c7504f563391','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:23:20'),('adf6b881-e010-4b69-9622-471333208880',1,1,'2021-05-09 12:34:00','2021-05-09 12:34:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-09 12:34:30'),('bc7ac8f1-c017-4366-9edf-2e7678b73273',1,1,'2021-05-05 11:38:00','2021-05-05 11:38:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:38:32'),('c9baadc5-00d5-4c73-a015-99048ae6bbba',1,1,'2021-05-05 12:36:00','2021-05-05 12:36:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 12:36:18'),('e17bec5b-b075-4505-bf77-5b1c88687470',1,1,'2021-05-05 11:39:00','2021-05-05 11:39:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:39:15'),('f03ba76f-d14e-4528-a616-0f9d8e4d09a4',1,1,'2021-05-05 11:36:00','2021-05-05 11:36:00','91afc067-2833-4f89-93ba-a41db67d5492','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:36:29'),('f6d244c3-7dc4-45a2-b19a-c025643272fe',1,1,'2021-05-05 11:38:00','2021-05-05 11:38:00','91afc067-2833-4f89-93ba-a41db67d5492','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','2021-05-05 11:38:52');
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
INSERT INTO `tbl_outcome` VALUES ('0f650da8-8e2f-42f8-a65e-dd54a4d2e201',1,'Coca Cola Original Taste x100',30.0000,'2021-05-03 13:58:40','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_owe` VALUES ('9b6e6aab-9fcd-4669-a2b1-7b5caeffbb48','OWE_Thong',0.0000,4200.0000,0.0000,0.0000,'0,0','2021-05-03 14:18:26','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_payment` VALUES ('0567e111-dc02-466d-b426-b1d974c64910',1,'INV0000068',16.0000,16.0000,0.0000,'0,70000',4000.0000,1.5000,'2021-05-09 12:35:05','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('057feeda-7aca-43ed-858a-a26acdc347d6',1,'INV0000056',1.0000,1.0000,0.0000,'1.0000,0',4200.0000,0.0000,'2021-05-07 03:17:39','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('05a369f1-d190-4646-85f9-17a6bc18474a',1,'INV0000024',1.5000,1.5000,0.0000,'2,0',4000.0000,0.5000,'2021-05-05 01:37:03','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('05a58bb7-787b-4cd8-b51d-ede50ed8dc99',1,'INV0000013',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-03 14:20:15','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('07910833-8d42-4c11-8523-5aac5c0106fd',1,'INV0000026',0.4760,0.4760,0.0000,'1,0',4200.0000,0.5240,'2021-05-05 01:59:36','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','fc198cf4-9b65-4cce-9841-8d95c03d6948'),('09b46c81-97eb-4e7c-9986-40a26345ee62',1,'INV0000043',0.0000,0.0000,0.0000,'10,0',4000.0000,10.0000,'2021-05-05 12:35:38','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('0b68af50-0431-4942-a2c9-38e6f5469dea',1,'INV0000037',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:37:44','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('0d33acdf-df4a-44ba-bc8a-a9ab6f2db56e',1,'INV0000039',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:38:55','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('0deef291-d784-4e15-9088-25f14adeeba4',0,'INV0000061',0.5000,0.0000,0.5000,'0,0',4200.0000,0.0000,'2021-05-07 07:16:05','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('118892d0-5c5c-4772-a216-807791643dc5',1,'INV0000029',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-05 02:11:04','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','fc198cf4-9b65-4cce-9841-8d95c03d6948'),('16056dd2-44e3-4d4d-97f7-f0e88f95f184',1,'INV0000082',5.5000,5.5000,0.0000,'0,30000',4200.0000,1.7250,'2021-05-10 01:47:22','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('19a174a9-bf0d-4cec-a59f-fbf8f24ecbfc',1,'INV0000053',4.5000,4.5000,0.0000,'10,0',4200.0000,5.5000,'2021-05-07 02:03:01','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('1d3d3797-c9a5-4095-aa21-ae8db0b78e73',1,'INV0000017',1.0000,1.0000,0.0000,'5,0',4000.0000,4.0000,'2021-05-04 01:19:04','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('226fa3ca-f893-4438-b1d4-1df422549a36',1,'INV0000008',0.5000,0.5000,0.0000,'2,1000',4000.0000,1.5000,'2021-05-03 14:12:52','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('26e806f4-7172-469b-8aa0-cfffdcfb2cde',1,'INV0000021',4.5000,4.5000,0.0000,'4.5000,0',4000.0000,0.0000,'2021-05-04 11:11:19','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('29121d13-c18b-4336-bdc1-fac9d283db85',1,'INV0000006',3.0000,3.0000,0.0000,'5,0',4000.0000,2.0000,'2021-05-03 14:10:29','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('33c3a377-e6bd-4df1-bab4-708689841237',1,'INV0000011',1.0000,1.0000,0.0000,'0.5,3000',4000.0000,0.2500,'2021-05-03 14:16:52','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('37f0d4a7-bdea-43ca-9db6-8072f66288e9',1,'INV0000041',4.0000,4.0000,0.0000,'5,0',4000.0000,1.0000,'2021-05-05 11:57:48','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('380c678b-ef0c-4312-a037-6ceac244861c',1,'INV0000057',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-05-07 07:06:21','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('3a00e84e-90be-46eb-a857-d72cb46b7b08',1,'INV0000072',0.5000,0.5000,0.0000,'1,0',4200.0000,0.5000,'2021-05-09 12:48:14','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('40707e53-a10d-485a-b062-09398267d244',1,'INV0000051',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-07 01:51:03','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('4114622d-509b-4b89-9cbe-9d339e790150',1,'INV0000003',3.0000,3.0000,0.0000,'5,10000',4000.0000,4.5000,'2021-05-03 14:07:25','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('432e399f-5f96-4f7b-8d21-32086e017d1b',1,'INV0000063',1.0000,1.0000,0.0000,'1,0',4200.0000,0.0000,'2021-05-07 07:16:48','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('44d4b775-38f5-4968-a617-78180050326f',1,'INV0000055',4.5000,4.5000,0.0000,'5,0',4200.0000,0.5000,'2021-05-07 02:15:33','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('44d8d330-4109-4914-a78a-a7967c34fe12',1,'INV0000015',4.0000,4.0000,0.0000,'10,10000',4000.0000,8.5000,'2021-05-04 01:15:05','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('4a3a7ab7-b10d-4481-b384-1f02e96919fe',1,'INV0000054',3.5000,3.5000,0.0000,'0,20000',4200.0000,1.3250,'2021-05-07 02:03:41','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('4edfa704-ecd7-4abd-8130-fff5e7ab1312',1,'INV0000081',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-10 01:44:45','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('52da62c1-2cb2-42d5-b4c2-ab384367ab3b',1,'INV0000086',6.5000,6.5000,0.0000,'10,10000',4200.0000,6.0000,'2021-05-10 03:11:00','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('52e5bcd2-da57-46be-86ce-03782085a426',1,'INV0000069',1.0000,1.0000,0.0000,'1,0',4200.0000,0.0000,'2021-05-09 12:39:43','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('56021f95-7001-49da-b351-c2a8255432cd',1,'INV0000032',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-05-05 02:20:35','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('58bd0720-a292-4af2-9952-1ff815dee7c6',1,'INV0000076',3.5000,3.5000,0.0000,'0,20000',4200.0000,1.3250,'2021-05-10 01:36:49','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('59bec6b0-a077-4ea0-8d2d-4722ba99c4fa',1,'INV0000074',1.5000,1.5000,0.0000,'2,0',4200.0000,0.5000,'2021-05-10 01:30:14','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('5a5088f9-bf08-47cb-b628-1a9c562beeed',1,'INV0000036',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:37:04','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('5b170c7a-ab6e-4e42-9589-a1d8e254c4d5',1,'INV0000028',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-05 02:06:45','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','fc198cf4-9b65-4cce-9841-8d95c03d6948'),('5b81dc8a-a260-41a5-874a-770085cb3387',0,'INV0000064',0.5000,0.0000,0.5000,'0,0',4200.0000,0.0000,'2021-05-07 09:34:42','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('5d19dc36-df7f-497a-90db-6d119738c9f3',1,'INV0000038',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:38:34','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('63f22ce6-a83c-46e8-acce-76d1aaac687c',1,'INV0000020',3.0000,3.0000,0.0000,'2.5000,2000',4000.0000,0.0000,'2021-05-04 11:09:13','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('64d07e59-82c6-429c-b79c-93eab2e85fd7',1,'INV0000058',0.5000,0.5000,0.0000,'0,4000',4200.0000,0.4750,'2021-05-07 07:08:20','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('6612fb6d-871e-4f8b-a1b7-1b51e915ebe8',1,'INV0000009',0.5000,0.5000,0.0000,'2,1000',4000.0000,1.7500,'2021-05-03 14:15:35','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('67e8779a-e386-4ba3-8e5c-c1dad436d2a0',1,'INV0000018',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-04 02:07:32','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('6a0ea5b4-dd40-4962-b3cc-0aa0012382a9',1,'INV0000070',1.4000,1.4000,0.0000,'0,6000',4200.0000,0.0300,'2021-05-09 12:43:52','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('70d86f49-9240-4b97-8b54-534066577921',1,'INV0000023',1.0000,1.0000,0.0000,'2,0',4000.0000,1.0000,'2021-05-04 12:17:07','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('71639be1-f5b8-4509-b795-4d6b3678778c',1,'INV0000007',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-03 14:11:17','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('72488372-3c2f-4971-a849-870f9999597c',1,'INV0000019',12.0000,12.0000,0.0000,'15,0',4000.0000,3.0000,'2021-05-04 10:54:56','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('72ce56e6-7b4f-4d0f-a4e6-0bc44931e322',1,'INV0000030',8.0000,8.0000,0.0000,'10,0',4000.0000,2.0000,'2021-05-05 02:12:16','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','fc198cf4-9b65-4cce-9841-8d95c03d6948'),('748571d3-556a-4f33-85c1-29a8342ae0f1',0,'INV0000084',0.0000,0.0000,0.0000,'0,0',4200.0000,0.0000,'2021-05-10 02:19:31','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('75df409b-ef1a-45dd-a2de-9877c9f915b1',1,'INV0000045',7.0000,7.0000,0.0000,'10,0',4000.0000,3.0000,'2021-05-06 01:13:30','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('772c4b97-5bcd-4d6f-9ba1-2959a7c2353e',1,'INV0000048',1.0000,1.0000,0.0000,'1,0',4000.0000,0.0000,'2021-05-06 12:14:31','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('7d07651e-2c25-459e-863c-39a7394e6647',1,'INV0000073',4.5000,4.5000,0.0000,'5,0',4200.0000,0.5000,'2021-05-10 01:08:09','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('7fc569a6-e629-4423-a1f8-24357b10b7ae',1,'INV0000040',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:39:19','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('80c06ee9-08e1-42d0-a653-145107e025ed',1,'INV0000046',33.8500,33.8500,0.0000,'20,55400',4000.0000,0.0000,'2021-05-06 01:13:41','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('812d8cf9-b018-4ad9-b63f-e4516b4ba1d4',1,'INV0000047',5.0000,5.0000,0.0000,'6,0',4000.0000,1.0000,'2021-05-06 12:12:27','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('8260d821-9660-444c-a3c8-8679b89930e6',1,'INV0000005',3.2000,3.2000,0.0000,'4,0',4000.0000,0.8000,'2021-05-03 14:09:47','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('8de6d88f-eca7-42b0-afb3-581603f19465',1,'INV0000077',10.5000,10.5000,0.0000,'0,50000',4200.0000,1.4750,'2021-05-10 01:37:33','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('8ee74571-74d2-4e9f-8c1a-2ce9a5be92ac',1,'INV0000071',2.7000,2.7000,0.0000,'5,0',4200.0000,2.3000,'2021-05-09 12:47:15','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('92f6f646-7c39-4996-96b6-a57be9c3be01',1,'INV0000002',4.5000,4.5000,0.0000,'3,10000',4000.0000,1.0000,'2021-05-03 14:05:34','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('97a2ba5e-a6c7-4d9d-81cf-1d5d67eec80f',1,'INV0000049',3.0000,3.0000,0.0000,'3,0',4000.0000,0.0000,'2021-05-06 12:14:47','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('9839c89f-8ba8-42de-b8cc-ba95283695dc',1,'INV0000083',3.5000,3.5000,0.0000,'0,20000',4200.0000,1.3250,'2021-05-10 01:51:01','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('999b455a-591c-4b89-bf92-a10cae6be6b9',1,'INV0000025',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-05 01:57:37','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','3a771fca-e422-40a6-998d-bdf4c643d5e4'),('99ab17af-74c9-407d-89a5-be01e0edeb30',1,'INV0000010',0.5000,0.5000,0.0000,'0.2,3000',4000.0000,0.4500,'2021-05-03 14:16:16','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('9c6b26b9-0356-4a4f-affb-a85432554775',1,'INV0000079',3.5000,3.5000,0.0000,'5,0',4000.0000,1.5000,'2021-05-10 01:40:27','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('9eac7eef-819d-41aa-a8dc-ed9395faa51a',1,'INV0000033',4.0000,4.0000,0.0000,'10,0',4000.0000,6.0000,'2021-05-05 10:55:29','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('a18ade16-8be1-46de-9237-142cc4b35ea9',1,'INV0000035',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 11:36:31','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('a3b5dee3-7764-4349-bcb3-5f24d2ed1ee2',1,'INV0000080',3.5000,3.5000,0.0000,'4,0',4000.0000,0.5000,'2021-05-10 01:42:05','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('a4e06b3d-e9aa-45ca-b271-bb432baf261b',1,'INV0000022',1.0000,1.0000,0.0000,'1,0',4000.0000,0.0000,'2021-05-04 11:19:23','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('a9d31022-c03a-400d-b701-1bc15dac6111',1,'INV0000075',3.5000,3.5000,0.0000,'0,20000',4000.0000,1.5000,'2021-05-10 01:35:08','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('aacdb56b-ce5e-4535-84aa-d4446c308160',1,'INV0000034',1.0000,1.0000,0.0000,'1,0',4000.0000,0.0000,'2021-05-05 10:55:46','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('b59c84a3-f2e5-404c-a38e-e8dce5ce9e6f',1,'INV0000044',0.0000,0.0000,0.0000,'0,0',4000.0000,0.0000,'2021-05-05 12:36:19','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('b8caed43-b229-4f56-9378-2916c1c79831',1,'INV0000052',3.5000,3.5000,0.0000,'5,0',4000.0000,1.5000,'2021-05-07 02:02:18','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('bbbf0b25-7c05-465a-b752-c6e8f932ea0a',1,'INV0000001',4.1000,4.1000,0.0000,'2,10000',4000.0000,0.4000,'2021-05-03 14:00:50','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('c9724dc2-5103-4902-a2e5-364ecd077505',1,'INV0000078',3.5000,3.5000,0.0000,'0,20000',4000.0000,1.5000,'2021-05-10 01:38:36','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('ca5374ce-8584-4211-a00d-5e7a93103bfb',1,'INV0000016',1.0000,1.0000,0.0000,'10,0',4000.0000,9.0000,'2021-05-04 01:17:13','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('cb8a001a-f05d-481d-91db-f3da3df6e34f',1,'INV0000066',3.0000,3.0000,0.0000,'5,0',4200.0000,2.0000,'2021-05-09 03:28:19','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('cbd26b0d-cc4d-42bd-a447-c16644607242',0,'INV0000062',1.0000,0.0000,1.0000,'0,0',4200.0000,0.0000,'2021-05-07 07:16:24','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('ce34198f-7ba5-4851-bf6a-f3271c4e8606',1,'INV0000031',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-05 02:13:45','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('ced2471a-5595-4954-8cda-dff7090b6d56',0,'INV0000060',0.5000,0.0000,0.5000,'0,0',4200.0000,0.0000,'2021-05-07 07:09:50','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('d26fff76-be55-4121-b4e9-472f56927463',1,'INV0000050',0.5000,0.5000,0.0000,'1,0',4000.0000,0.5000,'2021-05-06 12:22:35','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('d59628dc-9b94-4d61-be5e-c7c46c0fce95',0,'INV0000059',0.5000,0.0000,0.5000,'0,0',4200.0000,0.0000,'2021-05-07 07:09:24','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('d9716716-116f-473c-a468-e969032c44e7',1,'INV0000012',6.0000,6.0000,0.0000,'6.0000,0',4000.0000,0.0000,'2021-05-03 14:18:28','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('dd7f2651-b7fb-454c-8cb9-4a68e5b6ef9a',1,'INV0000014',4.0000,4.0000,0.0000,'10,10000',4000.0000,8.5000,'2021-05-04 01:13:16','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('ee29bce5-a8be-442c-b2a5-55cc6b044c6d',1,'INV0000085',3.5000,3.5000,0.0000,'0,20000',4200.0000,1.3250,'2021-05-10 03:02:56','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('ee71bfa0-9035-4154-8323-1bfd36f5ef1f',1,'INV0000065',5.0000,5.0000,0.0000,'0,21000',4200.0000,0.0000,'2021-05-09 03:27:43','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7'),('eee81ed2-6457-4bc2-9878-dd72e200aa64',1,'INV0000042',4.5000,4.5000,0.0000,'4.5000,0',4000.0000,0.0000,'2021-05-05 12:23:23','35788729-ffb4-4b5b-9b5f-f0a90346155e','47115938-fef6-49fe-a624-a630fdfd7d8b','30451bb3-3752-4003-b345-983e7dd23d03'),('f0ad30b9-f18c-4a74-b8d9-b12fbb0c2d17',1,'INV0000027',0.9520,0.9520,0.0000,'0,4000',4200.0000,0.0004,'2021-05-05 02:03:27','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','fc198cf4-9b65-4cce-9841-8d95c03d6948'),('f74dbe98-7b77-42fa-9753-4eb1d07c5bd8',1,'INV0000004',3.5000,3.5000,0.0000,'4,0',4000.0000,0.5000,'2021-05-03 14:09:07','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','d4f153ae-ce8f-485e-94c1-4a990d3fb2cc'),('fc46c536-5f84-4851-be0d-0b9eca047473',1,'INV0000067',1.5000,1.5000,0.0000,'2,0',4200.0000,0.5000,'2021-05-09 12:34:08','f09db67d-1812-40ca-894f-0f93d7b58f0b','47115938-fef6-49fe-a624-a630fdfd7d8b','673223f9-b58f-41fc-8a3b-7c29605dcfc7');
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
INSERT INTO `tbl_product` VALUES ('0bf6aeb0-d426-4d25-822c-72cce07b22c2','Coca Cola Original Taste','',1,0.5000,'KHR',2000.0000,'',NULL,'3a3338f1-2e11-4e9b-a74d-75f307347867.jpeg','','[]','2021-05-03 13:53:42','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('20dad389-234e-4638-9382-e669665d39de','fasd','',1,12.0000,'USD',12.0000,'',NULL,'default.png','','[]','2021-05-04 10:53:45','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('276cd5cd-e7fe-44f7-affa-2bd8dd4baf66','test1','',1,2.0000,'USD',2.0000,'',NULL,'default.png','','[]','2021-05-04 05:46:39','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('2eab33c7-39bc-431e-bee9-2be0b8c6ef09','coacca','',1,12.0000,'USD',12.0000,'',NULL,'default.png','','[]','2021-05-07 07:00:38','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('398614af-e5e9-482e-a86f-9e18166b54d2','fasdf','',1,3.0000,'USD',3.0000,'',NULL,'default.png','','[]','2021-05-04 10:53:52','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('491e65ec-90f7-4de4-9932-e78ab22a1f68','fasdf','',1,4.0000,'USD',4.0000,'',NULL,'default.png','','[]','2021-05-04 10:54:01','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('501672b6-e507-4ca9-ab2e-45d0dc85cc7d','Test','',1,1.0000,'USD',1.0000,'',NULL,'default.png','','[]','2021-05-04 05:46:29','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('76539a3a-9020-468d-b1ce-28542d7e28a2','fadsfasd','',1,3.0000,'USD',3.0000,'',NULL,'default.png','','[]','2021-05-04 05:47:04','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('8da25aa9-bd3e-4adf-9212-25345420b007','lidsaf','',1,3.0000,'USD',3.0000,'',NULL,'default.png','','[]','2021-05-04 05:46:48','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('be9f4d43-168d-43fe-8e56-1e02f1f7233c','3dasf','',1,2.0000,'USD',2.0000,'',NULL,'default.png','','[]','2021-05-04 05:46:56','47115938-fef6-49fe-a624-a630fdfd7d8b','95793a69-89fb-454a-b4cd-11169e02fa3a','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','Burger Bacon','',0,3.0000,'USD',3.0000,'10',NULL,'1756a6bd-f01b-4922-9e6d-f9d400b4de36.png','','[]','2021-05-03 13:56:27','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('cdc9a549-2168-425e-95a8-92efc9b534af','asdfsadf','',1,12.0000,'USD',12.0000,'',NULL,'default.png','','[]','2021-05-04 10:53:28','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d4c3261b-af04-4d78-bf49-4d93e8e8942e'),('e9dd0a8f-6505-4f2b-a621-3cce32be5aea','fadsf','',1,12.0000,'USD',12.0000,'',NULL,'default.png','','[]','2021-05-04 10:53:37','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('f3ca3108-d095-49a4-be25-f94ebfe1b048','t-shirt','',1,2.0000,'USD',2.0000,'',NULL,'default.png','','[]','2021-05-07 01:42:29','47115938-fef6-49fe-a624-a630fdfd7d8b','a47efbbf-1f8a-4483-9f50-204da242c923','d2c92eb6-500e-477a-b0e8-1769362ab7cd'),('ff58057b-9dd2-4dc5-a0f1-7c477643d30a','fasdf','',1,3.0000,'USD',3.0000,'',NULL,'default.png','','[]','2021-05-04 10:54:23','47115938-fef6-49fe-a624-a630fdfd7d8b','599b375b-b08c-4684-8501-7eab6dba25e6','d2c92eb6-500e-477a-b0e8-1769362ab7cd');
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
INSERT INTO `tbl_profile` VALUES ('0bb1863e-6447-4aff-9b57-0dd33da52e73','982ecaa0-7ad1-4da5-b625-6614cd2678c0.jpg','Single','','','','','','2021-05-03 12:56:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('76eb7414-bd6a-4b6b-a5b9-dd713c92a952','default.png','','','','','','','2021-05-07 02:41:37','2a2af735-bb91-496e-bb70-91bfee1ee60f');
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
INSERT INTO `tbl_property` VALUES ('b4a3601f-54cc-42b4-852b-016d1a316b5c','ទំហំ','text','','2021-05-03 13:51:05','47115938-fef6-49fe-a624-a630fdfd7d8b','d2c92eb6-500e-477a-b0e8-1769362ab7cd');
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
INSERT INTO `tbl_quantity` VALUES ('00093b1d-aa8f-4333-963d-0b2c4ad6aa84',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','54cdbb67-4fe0-4807-9178-8d4005cbff69'),('04750551-5789-485f-b09d-d984ff89287a',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','49a72828-96b2-4289-9fff-b03b6dbcaef9'),('1418dc52-7436-4754-95f0-060522fbb31c',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','c40a2f77-8929-4138-bb10-8e4779aaf9a1'),('156800f7-404a-4da6-b335-918dddeb6ba2',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','232f47de-3656-4bda-8d98-96f6fad969c7'),('1e88b7b4-921d-49c0-b260-7e5e9225bcfe',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','59b2d113-741d-4177-a2c7-d727faf2af98'),('23f2d52c-3a31-4edb-948f-c5c644e5d351',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','1b50063f-24c2-45dc-996f-5e0831b191bf'),('2685952d-2be7-4733-8f3f-a02bf389ba6e',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','a8f6bc3a-8263-4ce4-861d-0c41032c192a'),('26bab85a-7f97-4a00-a71b-e2cbd9cac6a3',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','5b3f94c9-f41c-453d-b375-0f8d88339948'),('2a5db1f2-3fea-4a65-beba-1862d2c3b1b4',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','c2bef1a0-d1c5-4af7-b30b-412c7cbed0cf'),('2d11fad3-ea07-4ce0-9537-f756b1e48c3c',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','38280897-2570-4279-b2d9-7cb315ba504b'),('317ae5ee-1a56-4db3-a986-57ae8ddf32f7',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','ad7357f7-f372-4e0d-a3fe-d75eb0c41e9a'),('32e970b4-9d18-41c3-8c96-36caf869d312',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','ec456c3e-be2d-4132-8508-dae06180f75d'),('34ef7b78-8ce9-428a-8480-6fbcbe60fb81',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','7d9e9eb3-df00-49b3-b322-6852141e5fd1'),('3588900e-0a3d-4b3f-bcc2-21cc41c2c58e',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','fd592d9c-d37c-476a-867c-0a2d7b3363ba'),('38634c34-4739-4b70-bb0e-c48d216de726',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','52db5731-61ca-48d5-a0eb-9c9ba4a0e5ac'),('39626e44-f083-4db0-a603-e7df9f9a4760',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','2c25a5e7-ce90-4d16-867c-206fc909c23f'),('3e5dccc0-0d41-4ce5-a176-cbc582975e8b',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','5ca5786e-bf86-4343-aefb-0a7e719c2130'),('3f5e144b-a3d3-4010-8cde-bea733395604',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','957d3aea-29ba-4737-8409-8de2b5487e5f'),('4a22e205-beb8-45a9-81ff-fc400978cf2a',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','3eadac73-2f01-4850-aa64-f5fdb91bb7bc'),('4c5d37ea-1e7a-490f-8cfd-353c84d0ee25',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f900dd5d-551f-49a7-ad56-f26b00ccc66d'),('508d643c-af60-44ce-a600-24eaf7fd4ad4',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f6b14169-ae63-425f-a9aa-8550b1a0acf1'),('55f2e2ff-62c5-4d31-8b90-dc235ac4f42a',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','ea5f3b00-d90b-4ac3-a88b-9be5c633476a'),('56ebb0f9-88db-40f9-afd9-c5888c4c2acb',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','b1d91469-9f41-4566-962c-42e2060a5784'),('5c3195e2-366b-48f1-8e2b-7aa76df72444',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','769c51e2-405d-456a-899d-bc635119f6ab'),('63ee1b95-b231-4ab6-9af2-0f03c5ade52f',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','14298775-c9a7-4629-9892-f6a5aab8d0bf'),('70c41cdb-5917-4555-aaa4-acd7c68eb9af',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','c347ceb3-5441-4075-9fc3-be27a236fb1b'),('70cee8a4-5418-4c5f-873c-b34ef50bb857',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','0f8a6859-70ce-44b8-9105-7b6e89dde1e5'),('740db5a7-41ea-458c-a197-d18e07951c81',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','82504dd8-4527-44a7-b1b3-d37625502374'),('7a0ed721-0888-43a1-96e2-8ebc37f3635f',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','7ff6f8a1-ac1e-481a-b6b0-9b602e8e7ae6'),('7bb132ad-228f-444d-8e29-d77ea435104e',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','ef90114a-b4fa-4bc2-b802-098425837c3c'),('7d0b6945-899c-4e2f-a93a-3aa27e8ce840',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','1bfad5f8-50fd-4d44-9246-94ca63fa7ef1'),('830efb69-7f70-4e5c-9d1a-35558e26f724',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f5c53e37-885f-437e-bec9-0fd144b2e501'),('845ce74a-988a-4895-a536-b462f9e85728',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','d3171c98-b674-4dd3-a679-29144be329af'),('87583b72-eec8-418d-bd14-5e2695a03d64',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f4962718-55d2-474b-a4ef-97b89ca24af3'),('8bdc949f-53e5-4678-93d1-4287e61b71ac',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','6581fab8-7e96-485f-afb6-415f1cbb7dc8'),('96a8f691-6d6c-44d5-987a-3e531eb41868',3,3,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','690e4d68-bb0d-4a72-8c6d-716a4c504493'),('9759e312-1fb0-4cf8-986c-ee4979ff6d61',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','dab48096-0d2d-4a9c-b451-bbac86f107e3'),('99e2983d-2c5c-423d-914d-bf266eef7468',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','9c0fd03d-4294-4f70-bba4-a9c3bf56a8f3'),('9ab3c4e1-6685-4e37-9bf6-5cf0eab9a29e',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','db2f1fe7-60d4-49f2-a62e-dafeb83a0aa5'),('a750e897-bf95-41b6-9d5b-0c26a95621ea',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','d8f3eb3a-491f-4cbb-8837-37bf2f6572e5'),('a994b155-9db6-4eed-be89-0fae59f822d8',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','59576270-cc03-4656-923b-d0ee602e01be'),('aef18b25-5726-46d4-84b7-ce0502a06490',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','bed7c73c-63a6-4ece-a2f9-f1b19c3bdf86'),('aef70392-f591-4bbd-a85a-d136baf346ce',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','26d2a6f8-4fe5-4027-90ba-8a83ca01ddb0'),('b6e1350d-7511-43fe-8ec2-3cd83e34b457',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','03850d58-aa65-45d6-abdd-3381786f5580'),('b9f3df6c-8084-4ac4-bd08-bba86e51e4fd',3,3,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','3180b67b-fbf6-41aa-be14-496b86a54f78'),('ba51a1c6-82d8-48ae-b7b5-bbd17e1b163e',3,3,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','dbce772c-974e-4ff2-be01-37565a8e78f7'),('be9b5973-0037-40fe-bf87-0bb7b8b22924',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','4b93eeba-f9d2-4677-a99e-ab5d071819bd'),('c0d1f5ca-188a-4b1d-aa9d-51a837327073',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','e10470ca-f13f-4b93-8985-9ff306a6bd71'),('c5947aef-f800-44bb-9da0-fdbf7ff7f5f7',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','eda3fd2f-6376-480c-b807-25d0c0151dea'),('c8d6abe8-08b5-4ff4-a129-244375bdf3d3',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','dfb2f13c-137c-40ec-961d-ae1744399815'),('d284f4e2-1d4b-436a-9942-1d6e337f2284',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','e2bc0a9e-d9d5-4503-a6c5-748da807f5f5'),('d2acdc54-4f48-40d9-a56c-502deb13cf91',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','47252cae-e142-40f2-ad8f-c59dce32ca6f'),('d3030865-df26-4a41-90e6-bd8e758b0a68',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','988b1eab-4d05-4a72-bf88-2c155ec2196a'),('d48a73ca-a872-4594-ba32-f22cac876ff8',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','af87da67-fc7b-4dd7-aa2f-aede5df98478'),('da39507b-dd89-4d69-acd0-da0056896f6d',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','06c1b574-2981-45bd-9c03-26a6cac16e07'),('dc070291-0bd0-4a8f-91f6-3e4d7b01f21c',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','d6b29365-9594-4bcb-8234-08a3fc5e9cbc'),('de9d10d2-719e-4a56-b694-bd73c51ed7b3',3,3,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f1312643-bd89-49d3-932e-7c1e717e1008'),('dfc74033-09f8-4024-83f1-346a393418b2',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','eddc4a13-ea7e-4479-a730-a15c9c010bb2'),('e1615287-85df-4bc0-bcd0-de0dbd72e91e',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','44d4d330-02c1-43e3-8466-01de7890bfc4'),('e21d6479-b445-4d58-b786-8777d16e347b',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','1e9289fd-0f6c-4740-a3e1-dae0df2b218d'),('e4b7ab98-c749-4861-af46-39b6fab6db8c',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f266f297-fd5c-4602-83b0-c4e2358522ab'),('e5e84464-f1bc-4341-8919-c3ee96ab809d',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','52b2cb9e-0c4d-40a7-9555-7dc150091eb9'),('e7916395-46af-4732-bba5-29a24e0fad72',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','f8f20e02-1c86-4771-b4cb-ba70be8ee625'),('e813bd99-e7d4-4d27-a1fd-60ca02411e77',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','3e16afa4-7e81-424e-9ed3-ff1ff6617c33'),('ec567e4e-1ebf-4648-b5a2-dce1c7081747',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','66b58439-21c4-44a3-82aa-8824032d20d5'),('ed2ff91f-0d89-4575-8ab6-18cc6d41159f',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','7945a86a-a0c6-4ea2-8e59-d298263dfb35'),('f42760f0-85ef-4854-a49a-cf8b81677c7c',2,2,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','e588648e-ecac-4013-ae98-ee9b2b816fea'),('fe95120b-4a22-4be4-b229-9213028d3db3',1,1,'0f650da8-8e2f-42f8-a65e-dd54a4d2e201','304a46a2-47c9-459a-8b48-73e8a7df9796');
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
INSERT INTO `tbl_role` VALUES ('8782812d-2a9a-4a23-b517-0331ff6d318d','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-05-03 12:56:03','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_room` VALUES ('5d0f7c0b-c230-4c37-8a90-c7504f563391','Room 3',3.0000,'1h','Open','2021-05-05 11:53:32','47115938-fef6-49fe-a624-a630fdfd7d8b','44f4df78-3c48-49b3-8071-39028885fa6f'),('6bbc4c5a-c44e-4c1d-a385-f55dd69f58c0','Room 4',0.0000,'1h','Open','2021-05-05 11:53:54','47115938-fef6-49fe-a624-a630fdfd7d8b','44f4df78-3c48-49b3-8071-39028885fa6f'),('8bfad1c6-c648-49de-b212-eda5d0796e49','Room 2',0.0000,'1h','In Process','2021-05-05 11:51:41','47115938-fef6-49fe-a624-a630fdfd7d8b','44f4df78-3c48-49b3-8071-39028885fa6f'),('8ec5b324-3a6f-4742-a7c8-eade5dfc9e8b','Room 5',0.0000,'1h','Open','2021-05-05 11:54:24','47115938-fef6-49fe-a624-a630fdfd7d8b','44f4df78-3c48-49b3-8071-39028885fa6f'),('91afc067-2833-4f89-93ba-a41db67d5492','Room 1',0.0000,'1h','Open','2021-05-04 02:06:56','47115938-fef6-49fe-a624-a630fdfd7d8b','44f4df78-3c48-49b3-8071-39028885fa6f');
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
INSERT INTO `tbl_stock` VALUES ('0f650da8-8e2f-42f8-a65e-dd54a4d2e201',0.3000,1200.0000,'KHR',4000.0000,6,30.0000,'',NULL,'2021-05-03 13:58:40','47115938-fef6-49fe-a624-a630fdfd7d8b','0bf6aeb0-d426-4d25-822c-72cce07b22c2');
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
INSERT INTO `tbl_store` VALUES ('7b2e8a27-27d1-4203-a9ff-780cd78a01c1','Store Name','','','2021-05-03 12:56:03');
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
INSERT INTO `tbl_transaction` VALUES ('03850d58-aa65-45d6-abdd-3381786f5580',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-06 12:14:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('06c1b574-2981-45bd-9c03-26a6cac16e07',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:42:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('0f8a6859-70ce-44b8-9105-7b6e89dde1e5',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 02:03:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('10e7f448-c785-4096-ace5-635939c3cd15',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-05 11:57:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('11b6a06a-4845-4886-8590-2dfb07d8a89c',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-09 12:35:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('11ec7058-8bd0-40a3-8ff6-5d7bfe74812a',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-07 02:03:39','47115938-fef6-49fe-a624-a630fdfd7d8b'),('135ba7fa-8b79-4495-aa62-89f2b74b1a1f',0,1,'0',3.0000,3.0000,1,0.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 12:12:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('14298775-c9a7-4629-9892-f6a5aab8d0bf',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:08:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1a94d09c-a667-423c-9af5-d0c0f90c517f',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:51:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1b50063f-24c2-45dc-996f-5e0831b191bf',0,1,'0',0.5000,0.5000,1,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:09:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1bfad5f8-50fd-4d44-9246-94ca63fa7ef1',0,1,'0',0.5000,0.5000,1,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 09:34:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1cd25855-851c-44b4-9591-c93f3d7c54ea',1,0,'0',30.3500,30.3500,1,30.3500,'Room 3, 10h 7min','5d0f7c0b-c230-4c37-8a90-c7504f563391','2021-05-06 11:20:45','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1e86b8d7-633a-4af2-afc9-4ce27dabc486',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-05 10:55:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('1e9289fd-0f6c-4740-a3e1-dae0df2b218d',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:19:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('232f47de-3656-4bda-8d98-96f6fad969c7',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 01:57:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('23fe356a-628a-41c0-be1c-d975add21da4',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 01:21:36','47115938-fef6-49fe-a624-a630fdfd7d8b'),('26d2a6f8-4fe5-4027-90ba-8a83ca01ddb0',1,1,'0',0.4760,0.4760,1,0.1760,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 01:59:34','47115938-fef6-49fe-a624-a630fdfd7d8b'),('273efcbd-4fed-418c-948e-85d7ea8f0f32',1,1,'0',4.0000,8.0000,2,8.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-05 02:12:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('279c2dd2-22d3-4f03-be33-0744322edcb4',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:08:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2c25a5e7-ce90-4d16-867c-206fc909c23f',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-04 11:19:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('2fc6fbd1-0251-4121-8002-8f2e860177f4',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:42:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('304a46a2-47c9-459a-8b48-73e8a7df9796',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 02:06:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3180b67b-fbf6-41aa-be14-496b86a54f78',1,1,'0',0.5000,1.5000,3,0.6000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 02:15:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('339fb185-c2a6-46aa-a14a-a56dae7c5a7c',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:10:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('38280897-2570-4279-b2d9-7cb315ba504b',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-04 01:19:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('390b6829-135b-4b88-b63a-cb5d4898ae51',0,1,'0',3.0000,3.0000,1,0.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 03:02:43','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3a94d89f-1f7c-4cfa-99f4-7bf0de802ae1',1,0,'0',4.5000,4.5000,1,4.5000,'Room 3, 1h 30min','5d0f7c0b-c230-4c37-8a90-c7504f563391','2021-05-05 12:23:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3c732709-1d52-4b6c-bb02-53d40f7e4755',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-04 11:08:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3e10ccc1-0838-4d7f-947e-394d9a08cf5c',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:40:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3e16afa4-7e81-424e-9ed3-ff1ff6617c33',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-06 12:12:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('3eadac73-2f01-4850-aa64-f5fdb91bb7bc',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-06 01:14:20','47115938-fef6-49fe-a624-a630fdfd7d8b'),('44d4d330-02c1-43e3-8466-01de7890bfc4',0,1,'0',0.5000,0.5000,1,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:16:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('470a4748-9e54-4658-8c6b-f36e55c13fd4',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:07:22','47115938-fef6-49fe-a624-a630fdfd7d8b'),('47252cae-e142-40f2-ad8f-c59dce32ca6f',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 03:27:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4757b0a1-0945-40c1-aee9-827c12f6aeb2',0,1,'0',3.0000,3.0000,1,0.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-07 08:53:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('49a72828-96b2-4289-9fff-b03b6dbcaef9',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:11:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4a47628b-26b4-49cc-930e-283ea60c5c98',1,1,'0',3.0000,9.0000,3,9.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:37:32','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4b93eeba-f9d2-4677-a99e-ab5d071819bd',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:19:31','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4d34c25b-605c-402e-961d-f82edc2902c8',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 12:12:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4ecc8fb9-b83c-42b8-aabd-142c58eaf3a0',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-05 02:20:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4f53781c-4f9a-44a6-b9a4-334b18d14f7c',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-09 03:28:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('4f8e8b7e-0516-49b4-a61c-ceec5446bb22',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:09:02','47115938-fef6-49fe-a624-a630fdfd7d8b'),('506f1edb-883b-4079-b770-8fa0a80a8a02',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-07 02:15:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('52b2cb9e-0c4d-40a7-9555-7dc150091eb9',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-06 12:22:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('52db5731-61ca-48d5-a0eb-9c9ba4a0e5ac',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:38:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5409600e-ab33-4166-96e3-a7992ec17089',1,1,'0',3.0000,6.0000,2,6.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 03:11:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('54cdbb67-4fe0-4807-9178-8d4005cbff69',0,1,'0',0.5000,0.5000,1,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-06 12:12:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('56320a56-abe1-45cb-b4c2-93a0f56ce5da',1,1,'0',3.0000,6.0000,2,6.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:18:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('59576270-cc03-4656-923b-d0ee602e01be',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:20:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('59b2d113-741d-4177-a2c7-d727faf2af98',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:39:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5b3f94c9-f41c-453d-b375-0f8d88339948',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-04 01:17:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5ca5786e-bf86-4343-aefb-0a7e719c2130',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:05:29','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5f5b6bd0-3220-4922-8ac7-24f7abd89207',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-07 02:02:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('5f7c57e6-a159-416e-bd87-18f7fb4618c2',1,1,'0',4.0000,12.0000,3,12.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-04 10:54:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6250b41c-c85c-4651-ad52-aceaa1fdf7f8',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:35:16','47115938-fef6-49fe-a624-a630fdfd7d8b'),('6581fab8-7e96-485f-afb6-415f1cbb7dc8',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:47:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('66b58439-21c4-44a3-82aa-8824032d20d5',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:09:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('685c6e78-cf4b-4be4-9669-1ea79d57337a',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-04 11:11:18','47115938-fef6-49fe-a624-a630fdfd7d8b'),('690e4d68-bb0d-4a72-8c6d-716a4c504493',1,1,'0',0.5000,1.5000,3,0.6000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:37:27','47115938-fef6-49fe-a624-a630fdfd7d8b'),('70684425-a365-4478-a8dc-8b2ca64c4ccb',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:38:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('743bd0d0-70c8-4351-871e-5b1f43c46d25',1,1,'10',4.0000,3.6000,1,3.6000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 13:59:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('769c51e2-405d-456a-899d-bc635119f6ab',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-04 11:11:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7945a86a-a0c6-4ea2-8e59-d298263dfb35',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:08:19','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7d9e9eb3-df00-49b3-b322-6852141e5fd1',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:35:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7f3ef95b-eb5a-4d5b-b6f3-48c87d701c29',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:30:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('7ff6f8a1-ac1e-481a-b6b0-9b602e8e7ae6',0,1,'0',0.5000,0.5000,1,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:09:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('82504dd8-4527-44a7-b1b3-d37625502374',0,1,'0',0.5000,1.0000,2,0.0000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:16:23','47115938-fef6-49fe-a624-a630fdfd7d8b'),('933c03b3-8321-4990-b50e-bdf9aa911a6d',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 12:14:46','47115938-fef6-49fe-a624-a630fdfd7d8b'),('94a6cb16-596f-458e-b9c0-2e4c7ae0929d',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 01:14:17','47115938-fef6-49fe-a624-a630fdfd7d8b'),('957d3aea-29ba-4737-8409-8de2b5487e5f',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:48:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('988b1eab-4d05-4a72-bf88-2c155ec2196a',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 02:02:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('9c0fd03d-4294-4f70-bba4-a9c3bf56a8f3',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 03:17:38','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a26fba76-c443-46ec-9b16-5beb0a08be2a',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-04 01:13:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a3f3751f-dd1f-415c-840e-98c03b17e62d',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-06 01:21:21','47115938-fef6-49fe-a624-a630fdfd7d8b'),('a8f6bc3a-8263-4ce4-861d-0c41032c192a',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 10:55:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ad7357f7-f372-4e0d-a3fe-d75eb0c41e9a',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:09:05','47115938-fef6-49fe-a624-a630fdfd7d8b'),('af87da67-fc7b-4dd7-aa2f-aede5df98478',1,1,'10',0.5000,0.9000,2,0.3000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:43:49','47115938-fef6-49fe-a624-a630fdfd7d8b'),('b1d91469-9f41-4566-962c-42e2060a5784',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:16:15','47115938-fef6-49fe-a624-a630fdfd7d8b'),('bed7c73c-63a6-4ece-a2f9-f1b19c3bdf86',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 03:03:07','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c2bef1a0-d1c5-4af7-b30b-412c7cbed0cf',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:07:56','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c347ceb3-5441-4075-9fc3-be27a236fb1b',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:38:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c40a2f77-8929-4138-bb10-8e4779aaf9a1',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:36:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('c6d45edc-ccea-4f43-b6f5-df24d418de9d',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-09 03:27:41','47115938-fef6-49fe-a624-a630fdfd7d8b'),('cd49d41a-71a3-43e2-99cd-b8e843d910e9',0,1,'0',3.0000,3.0000,1,0.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 02:19:37','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d0deda8f-fe85-48fd-b0c2-096e42d9fef2',1,1,'10',3.0000,2.7000,1,2.7000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-09 12:47:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d3171c98-b674-4dd3-a679-29144be329af',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:43:35','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d544e654-d983-466a-80f2-df3b99a166d8',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-07 02:03:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d6b29365-9594-4bcb-8234-08a3fc5e9cbc',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:47:42','47115938-fef6-49fe-a624-a630fdfd7d8b'),('d8f3eb3a-491f-4cbb-8837-37bf2f6572e5',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:15:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dab48096-0d2d-4a9c-b451-bbac86f107e3',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 03:11:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('db2f1fe7-60d4-49f2-a62e-dafeb83a0aa5',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 02:13:40','47115938-fef6-49fe-a624-a630fdfd7d8b'),('db3c15d6-722c-40e4-9c95-1690652a2a8a',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 03:03:11','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dbce772c-974e-4ff2-be01-37565a8e78f7',1,1,'0',0.5000,1.5000,3,0.6000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 01:37:01','47115938-fef6-49fe-a624-a630fdfd7d8b'),('dfb2f13c-137c-40ec-961d-ae1744399815',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:35:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e10470ca-f13f-4b93-8985-9ff306a6bd71',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 13:59:09','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e2bc0a9e-d9d5-4503-a6c5-748da807f5f5',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:51:03','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e588648e-ecac-4013-ae98-ee9b2b816fea',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:16:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e6d0dea5-e48e-48c8-be71-7bb75ceaeb23',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-04 01:14:54','47115938-fef6-49fe-a624-a630fdfd7d8b'),('e79db1d3-bc85-4b6b-b4ed-9e9bddb2c209',1,1,'0',4.0000,8.0000,2,8.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-09 12:39:14','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ea5f3b00-d90b-4ac3-a88b-9be5c633476a',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:16:47','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ec456c3e-be2d-4132-8508-dae06180f75d',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:47:33','47115938-fef6-49fe-a624-a630fdfd7d8b'),('eda3fd2f-6376-480c-b807-25d0c0151dea',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:19:26','47115938-fef6-49fe-a624-a630fdfd7d8b'),('eddc4a13-ea7e-4479-a730-a15c9c010bb2',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:35:24','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ef90114a-b4fa-4bc2-b802-098425837c3c',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 02:02:53','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f1312643-bd89-49d3-932e-7c1e717e1008',1,1,'0',0.5000,1.5000,3,0.6000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-09 12:34:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f266f297-fd5c-4602-83b0-c4e2358522ab',1,1,'0',0.4760,0.9520,2,0.3520,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 02:03:25','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f3c70982-fe00-49e6-8f1e-76c10587694f',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:47:28','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4962718-55d2-474b-a4ef-97b89ca24af3',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-05 02:11:00','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f541a019-8789-4b86-b488-f9fcecaae763',1,1,'10',3.0000,2.7000,1,2.7000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:09:44','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f5c53e37-885f-437e-bec9-0fd144b2e501',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-03 14:12:50','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f6b14169-ae63-425f-a9aa-8550b1a0acf1',1,1,'0',0.5000,1.0000,2,0.4000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-04 12:17:06','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f8f20e02-1c86-4771-b4cb-ba70be8ee625',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-07 07:06:08','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f900dd5d-551f-49a7-ad56-f26b00ccc66d',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:40:30','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fd592d9c-d37c-476a-867c-0a2d7b3363ba',1,1,'0',0.5000,0.5000,1,0.2000,'Coca Cola Original Taste','0bf6aeb0-d426-4d25-822c-72cce07b22c2','2021-05-10 01:07:59','47115938-fef6-49fe-a624-a630fdfd7d8b'),('fef02e98-527d-47fd-8b65-f82af9d5cc88',1,1,'0',3.0000,3.0000,1,3.0000,'Burger Bacon-តូច','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-10 01:36:48','47115938-fef6-49fe-a624-a630fdfd7d8b'),('ff6b51b2-9f2f-47bd-a6c9-2c71a4f6f00d',1,1,'0',4.0000,4.0000,1,4.0000,'Burger Bacon-ធំ','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','2021-05-03 14:05:33','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `tbl_user` VALUES ('2a2af735-bb91-496e-bb70-91bfee1ee60f','','','thong','M','2021-05-08','','$2b$12$CRWLGM.5NOAGut2P3ZdRxOr0eq6uujGjdpNaCKog1Fop6fKdqJBUW','light','english','de299408-5f53-4ec3-904e-709bc4ca12b3','','',0,0,'2021-05-07 02:41:37'),('47115938-fef6-49fe-a624-a630fdfd7d8b','','','Admin','',NULL,'','$2b$12$GuM6UcxKxvVktKoOQuGY6Ox7FbIPFGaSIGXoirDa0xezzHrV9cVbS','dark','khmer','f0e3df08-e3bc-4202-b349-dfaabcbafce3','04376ce0-b2b1-421a-8599-bec024520a61','673223f9-b58f-41fc-8a3b-7c29605dcfc7',1,1,'2021-05-03 12:56:03');
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
INSERT INTO `tbl_value` VALUES ('0ebe5fec-ea5f-42c7-8d53-5d6c760d080d','ធំ',1.0000,'USD',1.0000,'','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','b4a3601f-54cc-42b4-852b-016d1a316b5c','2021-05-03 13:57:12','47115938-fef6-49fe-a624-a630fdfd7d8b'),('f4c39006-e832-4024-87bc-cdfb6f7463e2','តូច',0.0000,'USD',0.0000,'','c3ca9da1-6a24-4a2e-aacb-3be3e73d8d8d','b4a3601f-54cc-42b4-852b-016d1a316b5c','2021-05-03 13:57:03','47115938-fef6-49fe-a624-a630fdfd7d8b');
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
INSERT INTO `user_role` VALUES ('47115938-fef6-49fe-a624-a630fdfd7d8b','8782812d-2a9a-4a23-b517-0331ff6d318d');
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

-- Dump completed on 2021-05-10 11:59:35
