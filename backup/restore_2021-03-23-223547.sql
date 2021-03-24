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
INSERT INTO `payment` VALUES ('d6a84336-b0b7-4834-bd4c-6df1c5fbaab5','3c8be64a-a562-4121-8ebe-bb741c5d6312'),('88787735-888d-4037-94e4-84dde907728d','e7c68166-4ef6-4f16-ac05-a2db4a18f169'),('b310b8ce-7588-41c3-96d0-48d929ecdece','58b0c5b8-732c-4585-ac6a-52b628972321'),('ef9a2b12-5b03-4cf7-b8be-b46bfbbce61c','32170e4f-15a9-4b7b-b025-654477281b21'),('ef9a2b12-5b03-4cf7-b8be-b46bfbbce61c','4b6c3a88-f673-4066-8a01-7f81124a4ddd'),('ef9a2b12-5b03-4cf7-b8be-b46bfbbce61c','cbf2303a-27f3-4d04-b392-2ac4ff82aa00'),('102213ad-4119-4959-b112-6df44258eb2e','c53777af-18a6-44aa-ba4b-6f38325535f8'),('7f0e25bd-7858-46f1-8540-cad588e408cf','8a77394e-73b1-414c-b645-031750142d29'),('eff5e4e6-a38c-4645-a66a-fa40e0f12b28','57392728-1b09-4c67-a9ae-814ead259986'),('0b61390d-7193-4077-89fd-98984f637567','e00b1a19-e898-432a-966a-cbcda46ffe2e'),('d7c01950-8b3d-4591-bab0-19b46d2c224c','c91e7aed-3a41-4f21-824b-6c04f5494d74'),('d7c01950-8b3d-4591-bab0-19b46d2c224c','48e8a29d-7995-4f82-ace1-9877ac6363a7'),('9c5c789c-e504-4a7c-a035-d775d34ade6a','b34faaf5-30f3-44a5-a887-6dc9925df8c5');
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
INSERT INTO `tbl_activity` VALUES ('013d6222-74d2-4886-b602-25e2006fc87d','Admin has added color Black in product','Add','2021-03-20 01:19:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('05588ea8-83e4-4923-9044-f80542aa7b95','Admin has upload photo for color: Gold','Upload','2021-03-20 01:20:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('05e246f4-db7e-49f1-b834-d6fba48ee25c','Admin has added transaction: Headlight','Add','2021-03-20 01:39:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0621b819-2ad2-498e-883f-ec41e4da6af8','Admin has added transaction: Headlight','Add','2021-03-20 01:41:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('064816be-5745-46ae-8150-d89d6076bf00','Admin has modified color from Pink/#C870BB in product','Modify','2021-03-20 01:22:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('066f57dd-5e50-44cd-ae31-0f590e179fb5','Admin has added color Blue in product','Add','2021-03-20 01:24:35','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0a4e2fa1-39ff-480c-b469-4605978d6dfb','Thong has updated transaction Room 1, 60min','Modified','2021-03-23 02:30:10','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0d48c94c-2abe-42e9-8654-025041e118aa','Admin has logged in','Login','2021-03-20 01:12:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('0f4b9d50-6aa4-43ae-ada2-e8a481d57974','Admin has checked out payment INV0000002','Payment','2021-03-20 01:39:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('108f066d-b231-4151-9829-95f7aef62a5f','Admin has added color Red in product','Add','2021-03-20 01:23:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1121a19e-a188-4031-9914-827572e64d03','Admin has upload photo for product: Headlight','Upload','2021-03-20 01:18:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('12239730-baf1-4b5a-ae93-b72dde294f12','Thong has added product Test','Add','2021-03-21 04:25:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('17e057ae-a37f-489a-9b12-265b8d48cde7','Admin has upload photo for color: Grey','Upload','2021-03-20 01:20:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('17f0d040-8fa8-4bb6-a045-40e5018b04f9','Admin has added transaction: Rollable Water Bottle','Add','2021-03-20 01:40:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1824a306-bc10-46c8-be52-c6e3535de628','Admin has ordered invoice: INV0000006','Order','2021-03-20 01:41:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('199ce653-5b69-43be-8d7b-d8f268f46fc7','Thong has modified language from english','Modify','2021-03-22 13:50:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('19a6dcc1-1e5e-415f-a3d8-259652294e2d','Admin has added stock: 3.7/dollar/2/4000/0.0 in product Lighter Match','Add','2021-03-20 01:26:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1c0d0d32-4c68-4ad6-a6e2-768243d14507','Admin has added brand: Camping Cave in brand','Add','2021-03-20 01:17:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('20c3a95d-4c0b-4b3e-b0bf-c8dc2af4654b','Thong has added stock: 11/dollar/13/4000/0.0 in product Test','Add','2021-03-21 04:27:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2225d584-deff-406d-8b2c-08f5f3f45f4b','Thong has added property: Tst in category Ligther','Add','2021-03-23 02:56:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('22584b3d-5346-4509-a3ef-93b47a0c9c29','Admin has added category: Water Bottle in category','Add','2021-03-20 01:16:12','174084d3-74e4-495b-8e00-cb44eadcbf15'),('23004728-6b70-4511-8cd5-537d2d0d4b2d','Admin has added product Bottle Holder Clip','Add','2021-03-20 01:19:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('24dab6ca-2cbc-45e6-b5d1-90fc0762b7d7','Admin has added stock: 0.8/dollar/5/4000/0.0 in product Bottle Holder Clip','Add','2021-03-20 01:25:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('25b57396-0e12-457f-bcae-0efb3d25fd85','Thong has added stock: 1/dollar/12/4000/0.0 in product afaa','Add','2021-03-21 04:26:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2d8a1f17-487d-4aae-88ff-4919661fec2d','Admin has added stock: 3.35/dollar/3/4000/0.0 in product Rollable Water Bottle','Add','2021-03-20 01:27:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2dea52a2-3e19-4365-85c3-32ff4142ad30','Admin has added category: Headlight in category','Add','2021-03-20 01:16:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2eca01a3-0ede-450b-ae6f-e24f109b3978','Admin has upload photo for color: Brown','Upload','2021-03-20 01:19:40','174084d3-74e4-495b-8e00-cb44eadcbf15'),('2f7746fc-8d30-430f-ab90-5a53b3d0276c','Admin has upload photo for product: Lighter Match','Upload','2021-03-20 01:20:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('33c57f8e-5ded-474c-ae36-f769c4e8ca21','Admin has checked out payment INV0000007','Payment','2021-03-20 01:53:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('34a5737e-26cc-417c-bb54-5b534114f351','Admin has added color Black in product','Add','2021-03-20 01:18:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('358df228-a81e-4144-b493-682024481c6f','Admin has added color Blue in product','Add','2021-03-20 01:21:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('39af29eb-5d1c-43c9-a998-71170a28bd92','Admin has checked out payment INV0000005','Payment','2021-03-20 01:41:11','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3b95fef8-f364-4905-91a5-4e311e97f5d9','Thong has checked out order from: 09:29 AM to 10:29 AM','Check Out','2021-03-23 02:30:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3c199b42-fa1c-4b58-b500-f5dc8d4e89b6','Thong has added customer: Thong','Add','2021-03-23 02:29:46','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3d995420-11c5-4409-9a68-ca9ee28fd80c','Admin has added product Collapsible Water Bottle','Add','2021-03-20 01:23:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3f76f2e9-4266-42fd-a35d-39cef77051ad','Admin has added stock: 3.35/dollar/10/4000/0.0 in product Rollable Water Bottle','Add','2021-03-20 01:27:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4098d618-67df-4912-b12a-7124526114df','Thong has added product test','Add','2021-03-21 04:26:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4111cbd0-37ee-4c16-83a3-52967d8701e2','Admin has ordered invoice: INV0000004','Order','2021-03-20 01:40:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('42ebd36c-f3c1-4e76-98d2-3a62f419d33a','Thong has added room: Room 2','Create','2021-03-22 01:41:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('444d3562-a25c-49af-b320-b8fb4730f74b','Thong has added product afaa','Add','2021-03-21 04:26:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('46113cf0-e608-40d5-b597-2b9fedfd7894','Admin has added expense: Delivery x2','Create','2021-03-20 01:35:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('462ba78f-c80f-48bd-b9ea-88ebc0cb93e8','Thong has deleted expense: afaa x12','Delete','2021-03-23 02:40:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('489a1156-302c-4c39-a236-101be62ac3e4','Admin has modified info from Admin////None/','Modify','2021-03-20 01:56:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4c9b90bc-186a-4927-953a-bd0d19d48174','Thong has logged in','Login','2021-03-20 01:57:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4d773102-8d7a-48fd-8a76-fda3edb8f4f0','Admin has added stock: 3.46/dollar/3/4000/0.0 in product Collapsible Water Bottle','Add','2021-03-20 01:32:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4e104d3d-8681-4f13-9476-0acc5e9b2dae','Admin has added stock: 3.46/dollar/5/4000/0.0 in product Collapsible Water Bottle','Add','2021-03-20 01:32:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('52d0240c-9ec8-4562-8b69-000836c5b87c','Admin has upload photo for color: Red','Upload','2021-03-20 01:23:49','174084d3-74e4-495b-8e00-cb44eadcbf15'),('533cfb8a-6a24-4fd8-b62c-e59e8e3c13b2','Admin has checked out payment INV0000006','Payment','2021-03-20 01:41:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5543e40d-d2dc-4a28-b5a8-b2beb07ddb17','Admin has opened drawer','Open','2021-03-20 01:38:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5809a91d-55d0-40a5-8f06-e97f7653615e','Thong has checked out payment INV0000008','Payment','2021-03-23 02:13:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5d586c51-f914-4ede-a14f-76f3dff0ab3e','Admin has added color Black in product','Add','2021-03-20 01:24:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5e47737e-a813-4085-81bb-9539bf51725d','Admin has added transaction: Lighter Match','Add','2021-03-20 01:41:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('670eb4c6-2244-4a1f-ae5a-9ec44d4b5fe3','Admin has checked out payment INV0000003','Payment','2021-03-20 01:39:41','174084d3-74e4-495b-8e00-cb44eadcbf15'),('67397abe-4c6a-431e-a739-97bf70ce99fd','Admin has modified theme from light','Modify','2021-03-20 01:16:00','174084d3-74e4-495b-8e00-cb44eadcbf15'),('69edbcd0-1ed6-4b0b-8114-90920b48f43d','Thong has added product tesg','Add','2021-03-21 04:26:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6fbb43e1-7234-43a9-9e71-5ae5d0faad73','Admin has added product Headlight','Add','2021-03-20 01:18:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('70f62fac-d359-4bac-bf57-5198dc0502d6','Thong has logged in','Login','2021-03-22 13:50:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('72061cea-23d0-4b38-8264-cd74cf0408b5','Admin has checked out payment INV0000001','Payment','2021-03-20 01:38:57','174084d3-74e4-495b-8e00-cb44eadcbf15'),('72215816-5ffe-448f-86ad-ecda71cdc50e','Admin has added stock: 3.7/dollar/3/4000/0.0 in product Lighter Match','Add','2021-03-20 01:33:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('72724b6f-6c18-4056-9462-cc5e07ce0c52','Admin has ordered invoice: INV0000001','Order','2021-03-20 01:38:52','174084d3-74e4-495b-8e00-cb44eadcbf15'),('76de674a-23cd-4d27-b94b-144ad5401d58','Thong has added order from: 09:28 AM to 10:28 AM','Add','2021-03-23 02:29:52','174084d3-74e4-495b-8e00-cb44eadcbf15'),('78a302ae-d45f-472b-ab45-f793b9d2e616','Admin has reversed transaction Lighter Match','Delete','2021-03-20 01:52:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('79e33c87-0ef7-4aa7-8f41-c382985b7543','Admin has added color Brown in product','Add','2021-03-20 01:19:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7ac295dd-372a-46d8-ba12-fc433ea42fce','Admin has added stock: 3.7/dollar/5/4000/0.0 in product Lighter Match','Add','2021-03-20 01:26:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7ae54df1-c014-41ce-a2c5-3a6c9ccfefb5','Admin has added product Rollable Water Bottle','Add','2021-03-20 01:21:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('7b465e2c-3468-42ef-be62-deb7b4b35f6b','Thong has added product test','Add','2021-03-21 04:26:12','174084d3-74e4-495b-8e00-cb44eadcbf15'),('815db11e-9d68-4be1-ad67-793e4ba904ce','Thong has logged in','Login','2021-03-23 15:33:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('86c6e1ef-bf58-45f7-98c9-1d8dda3bdfd8','Thong has deleted expense: Delivery x2','Delete','2021-03-23 02:40:23','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8dfec399-85dc-49a8-b99d-7f54f08d534c','Thong has added transaction: afaa','Add','2021-03-23 02:30:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8e9ae331-7956-4858-8c4d-8e89d1a5eb9e','Admin has modified store from: Store Name//','Deleted','2021-03-20 01:34:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('91364403-42b4-4431-936e-279b98ea003e','Admin has checked out payment INV0000004','Payment','2021-03-20 01:40:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9191fdd8-fd0a-4d85-86c9-32bc9a78af19','Admin has upload photo for color: Blue','Upload','2021-03-20 01:21:48','174084d3-74e4-495b-8e00-cb44eadcbf15'),('938a76e9-28ae-4fa1-b244-858557b7e610','Admin has upload photo for color: Black','Upload','2021-03-20 01:21:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('94ac1bee-d377-4ec9-98af-c44c7eebae2a','Admin has added stock: 3.35/dollar/5/4000/0.0 in product Rollable Water Bottle','Add','2021-03-20 01:27:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9768953c-aad5-433a-960b-0ec637e6ee31','Thong has checked in order from: 09:29 AM to 10:29 AM','Check In','2021-03-23 02:29:56','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9813353d-e58b-4cf0-be0e-f423c81b043f','Admin has added color Grey in product','Add','2021-03-20 01:20:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9a6b654d-b3da-41eb-9259-a8761ce73f16','Thong has checked out order from: 09:31 AM to 10:31 AM','Check Out','2021-03-23 02:54:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9d1402be-bde3-41da-8482-24e1392973e9','Admin has added transaction: Collapsible Water Bottle','Add','2021-03-20 01:39:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9f5683f7-0f72-48a7-9eed-0f1b6bb003ce','Admin has added category: Bottle Strip in category','Add','2021-03-20 01:16:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9fe53ebc-1465-4f2a-9326-68764ed807d9','Admin has added stock: 3.46/dollar/3/4000/0.0 in product Collapsible Water Bottle','Add','2021-03-20 01:32:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a0a04070-ff80-4f7c-b084-5da0a16fab6e','Admin has added color Black in product','Add','2021-03-20 01:21:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a309612f-9b80-42d9-9582-66708224c5fc','Admin has upload photo for product: Rollable Water Bottle','Upload','2021-03-20 01:21:13','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a41d8260-0db0-4192-9bfd-3701029dd006','Admin has added category: Ligther in category','Add','2021-03-20 01:16:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a6237ec3-9a16-4ccf-8c6c-7625c5d55e8e','Thong has added stock: 12/dollar/13/4000/0.0 in product tesg','Add','2021-03-21 04:26:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a62afccd-4f76-4149-b9c7-ca50f02f1a91','Thong has checked out payment INV0000010','Payment','2021-03-23 02:30:16','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a6360343-0440-440e-b4b3-af4d90761c06','Admin has upload photo for product: Bottle Holder Clip','Upload','2021-03-20 01:19:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('a9db27b1-827d-47b8-87f9-9ea3ee615acb','Admin has logged in','Login','2021-03-14 15:20:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('acfcd26d-3f21-49b1-9221-77cf922b1366','Thong has ordered invoice: INV0000008','Order','2021-03-23 02:13:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b1e5942c-2719-4a75-952b-f52121f70ae8','Admin has ordered invoice: INV0000003','Order','2021-03-20 01:39:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b3e80df2-bb55-4d6d-ae58-ed7876f9483e','Thong has checked in order from: 09:31 AM to 10:31 AM','Check In','2021-03-23 02:31:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b67e31ae-e898-4e2f-9fa8-4fe52d4495cd','Thong has checked out payment INV0000009','Payment','2021-03-23 02:14:04','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b6803748-0bab-4f9d-a3f3-8d0bd6c9757c','Thong has added stock: 13/dollar/12/4000/0.0 in product test','Add','2021-03-21 04:27:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba61a7fd-a81a-46ca-b60f-f61f325284cc','Admin has upload photo for color: Black','Upload','2021-03-20 01:19:34','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ba6a9b3f-aa8e-407c-9332-db211e78059f','Thong has added transaction: Collapsible Water Bottle','Add','2021-03-23 02:13:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bc70575d-25a2-4da5-8d78-e8293a3dd86f','Admin has added color Silver in product','Add','2021-03-20 01:33:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bdd590d4-350f-44f8-ba38-d5139b16b490','Admin has added transaction: Headlight','Add','2021-03-20 01:37:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bfd14756-060f-4cf5-80a4-3a3bc06a28d6','Thong has added stock: 13/dollar/12/4000/0.0 in product test','Add','2021-03-21 04:27:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c316238e-ce98-4337-858a-02b761a2fce5','Thong has added order from: 09:30 AM to 10:30 AM','Add','2021-03-23 02:31:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c3762ed7-0d8a-48dc-892f-879b5ee326e1','Admin has ordered invoice: INV0000005','Order','2021-03-20 01:41:07','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c5462b72-3c00-4651-b08f-04d0ffb2c9f7','Thong has added room: Room 1','Create','2021-03-22 01:41:21','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c7502056-e48a-4f63-8e39-9dde9f82f27d','Thong has logged in','Login','2021-03-22 13:48:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c7c08e7f-9ff3-45f8-964b-70d582a0888b','Admin has upload photo for color: Black','Upload','2021-03-20 01:18:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c8e977f6-df1e-4e5f-b113-9faa04ef00a1','Admin has added transaction: Collapsible Water Bottle','Add','2021-03-20 01:38:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cd2a353d-45bd-4b8e-be88-43b8eb8e5177','Admin has added stock: 3.35/dollar/2/4000/0.0 in product Rollable Water Bottle','Add','2021-03-20 01:28:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cdcc8b10-5e7b-4da3-b166-6dbd62d9ab7f','Admin has modified color from Pink/#B870C8 in product','Modify','2021-03-20 01:22:39','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cfd256f7-e489-4601-a0a7-0ca2aaa1d9d5','Admin has added color Gold in product','Add','2021-03-20 01:20:31','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d1217242-d7f1-4ed4-a8c2-66d650270ad4','Thong has logged in','Login','2021-03-21 04:22:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d132cdab-815e-4ac0-b3ff-3ba4f625dc06','Thong has added room: Room 3','Create','2021-03-22 01:41:32','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d26074a4-8df6-4734-9342-f095feb0d0da','Admin has added stock: 3.9/dollar/10/4000/0.0 in product Headlight','Add','2021-03-20 01:33:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d330e1bd-565e-49eb-a272-74969e2dd7ca','Admin has added transaction: Bottle Holder Clip','Add','2021-03-20 01:40:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d41a907f-f067-4cf3-b1fd-f44a0456ca07','Admin has added category: Pillow in category','Add','2021-03-20 01:16:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d4211ae9-8fd1-4d1d-8df3-ce4d39ea5891','Thong has updated transaction Room 3, 24min','Modified','2021-03-23 02:54:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('de31d14f-ace9-45c7-b10c-b5cb69f405dc','Admin has added color Orange in product','Add','2021-03-20 01:24:20','174084d3-74e4-495b-8e00-cb44eadcbf15'),('de37eee6-7264-4a68-917b-fe225bf448cc','Admin has added color Pink in product','Add','2021-03-20 01:22:28','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e092b514-b445-4453-92ea-ff6c2c71f284','Thong has ordered invoice: INV0000009','Order','2021-03-23 02:13:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e31d5b5a-ce62-4d6f-960a-7ac03dc3908e','Admin has added stock: 0.8/dollar/10/4000/0.0 in product Bottle Holder Clip','Add','2021-03-20 01:25:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e55095eb-1b7b-443d-9ebe-c010b0c88ec6','Admin has ordered invoice: INV0000002','Order','2021-03-20 01:39:16','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e87e74bb-1dc9-4c3c-8b47-3fc03863ab3d','Admin has added transaction: Lighter Match','Add','2021-03-20 01:40:39','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ea30d086-2471-4e96-9d0e-747ae3511c5f','Admin has upload photo for product: Collapsible Water Bottle','Upload','2021-03-20 01:23:30','174084d3-74e4-495b-8e00-cb44eadcbf15'),('eb0da697-3521-40ec-b7f0-61da14bb2f87','Thong has checked out payment INV0000011','Payment','2021-03-23 02:55:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('eceec577-1820-434d-9279-2056f3932c5a','Admin has added stock: 3.46/dollar/4/4000/0.0 in product Collapsible Water Bottle','Add','2021-03-20 01:32:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ee5fd929-b1e9-4e0d-adef-ca5ee614d4f7','Admin has modified category from Bottle Strip','Modify','2021-03-20 01:17:07','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ee619ca9-cd6a-4a43-8566-e41043f58253','Admin has added expense: Packaging x50','Create','2021-03-20 01:36:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f08d1b78-9f94-4991-9457-28b14184a048','Thong has added Rollable Water Bottle to favorite','Add','2021-03-23 02:39:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f0a3cb5a-1c48-48fc-a8a4-bc64a6c42986','Thong has added transaction: Lighter Match','Add','2021-03-23 02:13:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f2dae37f-6b19-42db-a8f7-2d0a9eb8f453','Admin has ordered invoice: INV0000007','Order','2021-03-20 01:53:19','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f4730df9-fc50-49e2-9b38-b635462d5806','Admin has added product Lighter Match','Add','2021-03-20 01:20:04','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f475a954-5cba-4db5-bba6-8c6490373349','Thong has uploaded his profile picture ','Modify','2021-03-20 01:56:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f52daffc-cda2-480d-9341-58db07227d2e','Admin has added transaction: Lighter Match','Add','2021-03-20 01:53:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f5367e28-1ce3-4cee-a42a-73389d874182','Admin has upload photo for color: Orange','Upload','2021-03-20 01:22:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f683a3f7-9dd3-4504-98a0-79592b5899a1','Admin has upload photo for color: Pink','Upload','2021-03-20 01:22:33','174084d3-74e4-495b-8e00-cb44eadcbf15'),('fb7caf2c-eb31-4756-9d81-30529b4daaf5','Admin has added color Orange in product','Add','2021-03-20 01:22:11','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_appearance` VALUES ('079b92c9-ec49-4a45-bf68-d98769a5bc5e','','','','','','e458de78-b750-46cb-a8d3-6450f2830f97'),('411fca3e-1304-4c97-ba72-10cafd4988f6','','','','','','4143eedd-cfc4-4a4a-a013-1afa9a9afb43'),('6e47773e-cbf4-4e75-b219-2cdd3cba4672','','','','','','f15e367b-0e55-44df-842d-a23eb1bab2ef'),('964a18a9-33a6-43a4-8b59-91af7cd2abd7','','','','','','0d3fa953-7185-476d-a16c-0c65d9e24df0'),('9c226e05-d330-4c59-88cc-a2602a4d69b3','','','','','','f7c2c434-504d-4072-95b8-da2ec442d2b7'),('b11229ba-47ae-4f12-ab8d-d670710c75df','','','','','','0a697ba2-5b9d-4a10-943b-b58d7702f28e'),('b9015e01-dcf0-4d69-8cf3-fbdbe574b0f8','','','','','','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03'),('dda8f5ba-dee9-4c31-af2d-ba3a56ec55ca','','','','','','403c4689-0daa-4902-8531-9fc828fafcd5'),('ee80355e-cac8-4cd9-b462-7f9389d6179e','','','','','','003ad2c5-0471-4f7c-bc78-b0c8bddd511c'),('fb524db8-09f9-46dc-b497-c8be03a1a6d8','','','','','','a638adda-1f4a-4ca9-9237-953636787bed');
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
INSERT INTO `tbl_brand` VALUES ('51239a4c-7971-4dd9-9648-695421f2492a','Camping Cave','','2021-03-20 01:17:30','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_category` VALUES ('3de790ab-7309-4d41-97ea-3ff73a9740b2','Headlight','default.png','','2021-03-20 01:16:38','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4315edc5-7d03-4bbc-bbb4-e98e391e8238','Holder Clip','default.png','','2021-03-20 01:16:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('bfda7c81-1cf5-4157-8559-382217a2f9c2','Pillow','default.png','','2021-03-20 01:16:24','174084d3-74e4-495b-8e00-cb44eadcbf15'),('db694013-f711-4fe1-9669-e30bfeaa25ba','Water Bottle','default.png','','2021-03-20 01:16:12','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e1e3bb6d-8ba1-4b22-897a-2c1d53e86dec','Ligther','default.png','','2021-03-20 01:16:33','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_checkin` VALUES ('094e55ad-3d0f-403f-8d0d-c5450c1819d8','2021-03-23 02:29:56','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:29:56','379863ed-0033-4204-967c-4b67546e1c92','d7c01950-8b3d-4591-bab0-19b46d2c224c'),('c6ce67e6-814f-489c-b2e9-88da247a0d0e','2021-03-23 02:31:31','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:31:31','4e8dcde0-a1fc-4107-9a9d-c3d0d5c9d15a','9c5c789c-e504-4a7c-a035-d775d34ade6a');
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
INSERT INTO `tbl_checkout` VALUES ('327e1578-bd4e-4289-ba5d-55610e3362c7','2021-03-23 02:54:51',24,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:54:51','4e8dcde0-a1fc-4107-9a9d-c3d0d5c9d15a'),('98c78a4b-9387-477b-98c6-3249bd4d0d35','2021-03-23 02:30:08',60,'174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:30:08','379863ed-0033-4204-967c-4b67546e1c92');
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
INSERT INTO `tbl_color` VALUES ('18008bfe-3bba-4de6-8fc9-7ca729d48f63','Blue','#32A1B2',0.00,'2021-03-20 01:21:43','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('30c27ebf-1258-48f0-b480-752c99cf2cc3','Brown','#AC893C',0.00,'2021-03-20 01:19:26','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03'),('31365ba7-b570-4fbe-9de1-b54d7147338f','Silver','#AEAEAE',0.00,'2021-03-20 01:33:17','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('3150254d-ed2d-43e5-b885-472bcc379823','Grey','#4A4545',0.00,'2021-03-20 01:20:22','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('3a198883-4645-4bb2-a24f-a9264d0fdff9','Black','#222222',0.00,'2021-03-20 01:18:26','174084d3-74e4-495b-8e00-cb44eadcbf15','f15e367b-0e55-44df-842d-a23eb1bab2ef'),('69f7bcc1-7eac-44e6-a416-1eb1c77d269b','Blue','#39A5BC',0.00,'2021-03-20 01:24:35','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('84e687ba-bfc0-417c-bf33-3dcb15e58dd1','Black','#323232',0.00,'2021-03-20 01:21:22','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('b2852f88-ab61-4ef6-af35-bff3579e656d','Orange','#DA9733',0.00,'2021-03-20 01:22:11','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('cb065b9f-9006-4cad-8ad3-17dfa194867b','Gold','#988748',0.00,'2021-03-20 01:20:31','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('ce0cd6be-9706-4dc5-b36d-375681fae101','Black','#2E2E2E',0.00,'2021-03-20 01:24:27','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('cf0c6ea6-2d35-404f-ad7c-56554ed776f8','Pink','#CE6483',0.00,'2021-03-20 01:22:28','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('d1580d30-b283-4ac0-b7c6-907d8fccb1e6','Orange','#AC7532',0.00,'2021-03-20 01:24:20','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('edd60810-e8e2-45d9-8ef7-566677f3513e','Black','#262626',0.00,'2021-03-20 01:19:14','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03'),('eeab4305-7050-4d89-a3b7-c4ab90e3efe1','Red','#AC3232',0.00,'2021-03-20 01:23:41','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97');
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
INSERT INTO `tbl_customer` VALUES ('3cd550a7-76a9-47d8-b9f4-a9ef6c2c1c63','Thong',NULL,'','2021-03-23 02:29:46','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_drawer` VALUES ('cde1b018-8cdf-40eb-b4d2-72becbdd918d','45ad5428-353d-473e-9474-892d628e97a6',4000.00,'Default',0.00,'2021-03-20 01:38:01',NULL,'174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_order` VALUES ('379863ed-0033-4204-967c-4b67546e1c92',1,1,'2021-03-23 02:29:00','2021-03-23 03:29:00','117f13e6-38ee-4a65-a2ea-a8acb0ca8a99','3cd550a7-76a9-47d8-b9f4-a9ef6c2c1c63','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:29:52'),('4e8dcde0-a1fc-4107-9a9d-c3d0d5c9d15a',1,1,'2021-03-23 02:31:00','2021-03-23 03:31:00','34fe197a-42da-49af-8789-0a63c2a71304','3cd550a7-76a9-47d8-b9f4-a9ef6c2c1c63','174084d3-74e4-495b-8e00-cb44eadcbf15','2021-03-23 02:31:26');
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
INSERT INTO `tbl_outcome` VALUES ('064cf2d9-424e-43b4-92d2-98797adc705d',1,'tesg x13',156.00,'2021-03-21 04:26:55','174084d3-74e4-495b-8e00-cb44eadcbf15'),('1d166577-97f7-42ef-bb2f-780656b11f89',1,'Lighter Match x2',7.40,'2021-03-20 01:26:44','174084d3-74e4-495b-8e00-cb44eadcbf15'),('31218386-8ca0-486f-9b57-59770a8bbdce',0,'Packaging x50',9.25,'2021-03-20 01:36:29','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4b01f09d-4ee7-4f94-98ee-8531d291791b',1,'Collapsible Water Bottle x3',10.38,'2021-03-20 01:32:50','174084d3-74e4-495b-8e00-cb44eadcbf15'),('523a75bc-594c-40ab-b06c-4e7bb07b4e69',1,'Collapsible Water Bottle x3',10.38,'2021-03-20 01:32:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('56aeeaac-e45c-4e3f-b699-1a122936ea06',1,'Collapsible Water Bottle x4',13.84,'2021-03-20 01:32:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('5e8ad314-9f97-4ba2-ac0e-da8fd9a847af',1,'test x12',156.00,'2021-03-21 04:27:14','174084d3-74e4-495b-8e00-cb44eadcbf15'),('6b573e6a-15da-496b-b193-ff380342f0a1',1,'Rollable Water Bottle x2',6.70,'2021-03-20 01:28:03','174084d3-74e4-495b-8e00-cb44eadcbf15'),('706f7ed1-7b33-412a-881b-3ea7b89cca28',1,'test x12',156.00,'2021-03-21 04:27:05','174084d3-74e4-495b-8e00-cb44eadcbf15'),('9a92076a-f759-44fb-8186-06e5229cf439',1,'Collapsible Water Bottle x5',17.30,'2021-03-20 01:32:17','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b77efc7f-f52e-4042-a38a-ef85506f4908',1,'Headlight x10',39.00,'2021-03-20 01:33:53','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ca16a47e-1ceb-497e-9b98-82844ea78a61',1,'Rollable Water Bottle x3',10.05,'2021-03-20 01:27:43','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d0828374-2d31-4e3d-a79f-425d65c6d95b',1,'Test x13',143.00,'2021-03-21 04:27:25','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d4301aca-5afa-4113-af9e-06e3e05d667a',1,'Lighter Match x5',18.50,'2021-03-20 01:26:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('d92b90d2-18d1-4521-8368-ae5eedf0a29b',1,'Rollable Water Bottle x5',16.75,'2021-03-20 01:27:37','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ebfeb8ee-7251-40da-9e35-646d2407a054',1,'Rollable Water Bottle x10',33.50,'2021-03-20 01:27:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f343a151-bbd2-44ed-bba2-aa4fda92ad03',1,'Lighter Match x3',11.10,'2021-03-20 01:33:27','174084d3-74e4-495b-8e00-cb44eadcbf15'),('f7a8c56d-9d3d-4a20-9712-3465b0713776',1,'Bottle Holder Clip x5',4.00,'2021-03-20 01:25:47','174084d3-74e4-495b-8e00-cb44eadcbf15'),('ffe7c03e-be08-4c4f-a642-b39d557cd294',1,'Bottle Holder Clip x10',8.00,'2021-03-20 01:25:53','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_payment` VALUES ('0b61390d-7193-4077-89fd-98984f637567',1,'INV0000009',7.99,8.00,4000.00,0.01,'2021-03-23 02:13:59','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('102213ad-4119-4959-b112-6df44258eb2e',1,'INV0000005',16.00,16.00,4000.00,0.00,'2021-03-20 01:41:07','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('7f0e25bd-7858-46f1-8540-cad588e408cf',1,'INV0000007',5.00,5.00,4000.00,0.00,'2021-03-20 01:53:19','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('88787735-888d-4037-94e4-84dde907728d',1,'INV0000002',11.75,11.75,4000.00,0.00,'2021-03-20 01:39:16','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('9c1801be-e6ad-4da5-a4f2-32108d726c54',0,'INV0000006',5.00,5.00,4000.00,0.00,'2021-03-20 01:41:33','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('9c5c789c-e504-4a7c-a035-d775d34ade6a',1,'INV0000011',3.20,5.00,4000.00,1.80,'2021-03-23 02:31:31','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('b310b8ce-7588-41c3-96d0-48d929ecdece',1,'INV0000003',24.00,24.00,4000.00,0.00,'2021-03-20 01:39:37','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('d6a84336-b0b7-4834-bd4c-6df1c5fbaab5',1,'INV0000001',8.00,8.00,4000.00,0.00,'2021-03-20 01:38:52','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('d7c01950-8b3d-4591-bab0-19b46d2c224c',1,'INV0000010',20.00,20.00,4000.00,0.00,'2021-03-23 02:29:56','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('ef9a2b12-5b03-4cf7-b8be-b46bfbbce61c',1,'INV0000004',7.85,7.85,4000.00,0.00,'2021-03-20 01:40:03','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d'),('eff5e4e6-a38c-4645-a66a-fa40e0f12b28',1,'INV0000008',5.99,6.00,4000.00,0.01,'2021-03-23 02:13:28','174084d3-74e4-495b-8e00-cb44eadcbf15','cde1b018-8cdf-40eb-b4d2-72becbdd918d');
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
INSERT INTO `tbl_photo` VALUES ('152b0549-1aef-49c3-bbfd-93a3c69aea99','a9bac12d-8ff7-4be0-a572-3de180bd5851.png','Bottle Holder Clip','2021-03-20 01:19:40','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03','30c27ebf-1258-48f0-b480-752c99cf2cc3'),('18ea21d0-fbf2-4b03-98d0-ee10902ac118','9261397f-db6c-418e-b064-40d08d78ee4c.PNG','Rollable Water Bottle','2021-03-20 01:22:18','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed','b2852f88-ab61-4ef6-af35-bff3579e656d'),('7a80b3c0-74f2-4be7-81a6-8ab0998dd390','556a9658-1783-4e89-956b-891f6e36786e.PNG','Rollable Water Bottle','2021-03-20 01:21:48','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed','18008bfe-3bba-4de6-8fc9-7ca729d48f63'),('827d5216-750d-49be-9bbc-e2ac10c3e59c','a1f06476-d54b-4883-8178-08fc676e1415.PNG','Bottle Holder Clip','2021-03-20 01:19:34','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03','edd60810-e8e2-45d9-8ef7-566677f3513e'),('d6b827a9-3184-4128-b833-cbb75052e51f','a1200700-93a7-489e-8c33-c51cafd0ab2f.PNG','Rollable Water Bottle','2021-03-20 01:22:33','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed','cf0c6ea6-2d35-404f-ad7c-56554ed776f8'),('ed5f4777-4c80-45b0-893c-bbdb9b82bb0d','f092fe64-6c47-4a27-a237-e7b7d93a0c1b.png','Rollable Water Bottle','2021-03-20 01:21:32','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed','84e687ba-bfc0-417c-bf33-3dcb15e58dd1'),('ee2b0d35-45ec-4be0-add5-33343fdd2d13','e992df2b-c398-47cd-8394-382ce4d5d780.png','Collapsible Water Bottle','2021-03-20 01:23:49','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97','eeab4305-7050-4d89-a3b7-c4ab90e3efe1'),('f4545075-2bc9-4bc0-8040-dd5dd7b2e08c','5c487dde-e063-4f4d-b362-329b1836464e.PNG','Lighter Match','2021-03-20 01:20:43','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5','cb065b9f-9006-4cad-8ad3-17dfa194867b'),('f4a55c37-bfa1-43b9-9105-9fb61bf5d8e3','b683494c-3c77-4abc-803c-bdcb84721c53.png','Lighter Match','2021-03-20 01:20:37','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5','3150254d-ed2d-43e5-b885-472bcc379823'),('f7ec6b09-0653-48dc-bbcc-4bf96d568d22','1e609e33-fb82-49e4-b124-4df11daf6b0e.png','Headlight','2021-03-20 01:18:32','174084d3-74e4-495b-8e00-cb44eadcbf15','f15e367b-0e55-44df-842d-a23eb1bab2ef','3a198883-4645-4bb2-a24f-a9264d0fdff9');
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
INSERT INTO `tbl_product` VALUES ('003ad2c5-0471-4f7c-bc78-b0c8bddd511c','test','',1,13.00,'dollar','',NULL,'default.png','','[]','2021-03-21 04:26:12','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','e1e3bb6d-8ba1-4b22-897a-2c1d53e86dec'),('0a697ba2-5b9d-4a10-943b-b58d7702f28e','afaa','',1,12.00,'dollar','',NULL,'default.png','','[]','2021-03-21 04:26:30','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','bfda7c81-1cf5-4157-8559-382217a2f9c2'),('0d3fa953-7185-476d-a16c-0c65d9e24df0','tesg','',1,123.00,'dollar','',NULL,'default.png','','[]','2021-03-21 04:26:21','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','bfda7c81-1cf5-4157-8559-382217a2f9c2'),('1f4af181-97e4-4a9f-b8cf-bc34b5b47e03','Bottle Holder Clip','',1,2.50,'dollar','',NULL,'daf57efe-c75b-478c-93a0-73ca95b3064f.png','','[]','2021-03-20 01:19:02','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','4315edc5-7d03-4bbc-bbb4-e98e391e8238'),('403c4689-0daa-4902-8531-9fc828fafcd5','Lighter Match','',1,5.99,'dollar','',NULL,'b347c7ee-4bcc-4cd1-927a-098f3222ec30.png','','[]','2021-03-20 01:20:04','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','e1e3bb6d-8ba1-4b22-897a-2c1d53e86dec'),('4143eedd-cfc4-4a4a-a013-1afa9a9afb43','test','',1,12.00,'dollar','',NULL,'default.png','','[]','2021-03-21 04:26:01','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','e1e3bb6d-8ba1-4b22-897a-2c1d53e86dec'),('a638adda-1f4a-4ca9-9237-953636787bed','Rollable Water Bottle','',1,7.99,'dollar','',NULL,'cc70013b-c73a-428f-b67a-04ec80b51ccb.png','','[\"174084d3-74e4-495b-8e00-cb44eadcbf15\"]','2021-03-20 01:21:03','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','db694013-f711-4fe1-9669-e30bfeaa25ba'),('e458de78-b750-46cb-a8d3-6450f2830f97','Collapsible Water Bottle','',1,7.99,'dollar','',NULL,'462e517b-ba58-49bb-ba94-41eabd518d0f.png','','[]','2021-03-20 01:23:25','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','db694013-f711-4fe1-9669-e30bfeaa25ba'),('f15e367b-0e55-44df-842d-a23eb1bab2ef','Headlight','',1,7.99,'dollar','',NULL,'ef625af6-9dda-4db4-b530-d75eb7bce56d.png','','[]','2021-03-20 01:18:05','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','3de790ab-7309-4d41-97ea-3ff73a9740b2'),('f7c2c434-504d-4072-95b8-da2ec442d2b7','Test','',1,12.00,'dollar','',NULL,'default.png','','[]','2021-03-21 04:25:53','174084d3-74e4-495b-8e00-cb44eadcbf15','51239a4c-7971-4dd9-9648-695421f2492a','3de790ab-7309-4d41-97ea-3ff73a9740b2');
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
INSERT INTO `tbl_profile` VALUES ('96ad051c-71b8-41c0-bda6-b74c578eaede','468af6ef-fc3a-4c3d-a1ed-ed40385e06ef.jpg','Single','','','','','','2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_property` VALUES ('e8d7bff4-4423-466e-8eb4-932151b84127','Tst','text','','2021-03-23 02:56:55','174084d3-74e4-495b-8e00-cb44eadcbf15','e1e3bb6d-8ba1-4b22-897a-2c1d53e86dec');
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
INSERT INTO `tbl_quantity` VALUES ('06d4dbdd-9129-476a-b111-dc27a84c7f1d',1,1,'e84e3d7b-9937-4b1a-84cd-55a7b9307c89','c91e7aed-3a41-4f21-824b-6c04f5494d74'),('07eda9f4-5e3b-462d-94f8-85fab2df2a16',1,1,'56aeeaac-e45c-4e3f-b699-1a122936ea06','e00b1a19-e898-432a-966a-cbcda46ffe2e'),('4059c80a-3c29-4788-831f-4ea76dc6ae00',1,1,'d4301aca-5afa-4113-af9e-06e3e05d667a','57392728-1b09-4c67-a9ae-814ead259986'),('44553223-7970-42bb-89c8-136d6e676a02',1,1,'ffe7c03e-be08-4c4f-a642-b39d557cd294','4b6c3a88-f673-4066-8a01-7f81124a4ddd'),('5697422e-e75f-46f8-9b93-0459d9ff4715',1,1,'1d166577-97f7-42ef-bb2f-780656b11f89','8a77394e-73b1-414c-b645-031750142d29'),('7f41a639-d61d-4e58-a531-7a28ba09b45c',1,1,'d4301aca-5afa-4113-af9e-06e3e05d667a','cbf2303a-27f3-4d04-b392-2ac4ff82aa00'),('870a1f8b-5b5f-4c66-8cc9-0ac5f0fca07d',2,2,'b77efc7f-f52e-4042-a38a-ef85506f4908','c53777af-18a6-44aa-ba4b-6f38325535f8'),('8746464c-c704-4449-82d3-1501d1ad2dcc',1,1,'ebfeb8ee-7251-40da-9e35-646d2407a054','32170e4f-15a9-4b7b-b025-654477281b21'),('8b49ec38-6d66-47d7-afa3-f79e3a5682ae',3,3,'b77efc7f-f52e-4042-a38a-ef85506f4908','58b0c5b8-732c-4585-ac6a-52b628972321'),('a699c006-68c7-401b-8ad4-70c31bfebb1d',1,1,'56aeeaac-e45c-4e3f-b699-1a122936ea06','e7c68166-4ef6-4f16-ac05-a2db4a18f169'),('c2149d63-8b25-46e4-a02b-09c2fee0585f',1,1,'b77efc7f-f52e-4042-a38a-ef85506f4908','3c8be64a-a562-4121-8ebe-bb741c5d6312');
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
INSERT INTO `tbl_role` VALUES ('ff681de8-3d05-450c-8d35-1b7f47326182','Administration','Admin, Cashier, Stock, Editor, Report',1,'2021-03-14 15:20:10','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_room` VALUES ('117f13e6-38ee-4a65-a2ea-a8acb0ca8a99','Room 1',8.00,'1h','Open','2021-03-22 01:41:21','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('34fe197a-42da-49af-8789-0a63c2a71304','Room 3',8.00,'1h','Open','2021-03-22 01:41:32','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee'),('765719d1-d3a4-465a-b49e-99d65d35ea53','Room 2',8.00,'1h','Open','2021-03-22 01:41:29','174084d3-74e4-495b-8e00-cb44eadcbf15','436f239c-9d00-46ef-bb8d-b39ffb7944ee');
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
INSERT INTO `tbl_stock` VALUES ('064cf2d9-424e-43b4-92d2-98797adc705d',12.00,'dollar',4000.00,13,'',0.00,'2021-03-21 04:26:55','174084d3-74e4-495b-8e00-cb44eadcbf15','0d3fa953-7185-476d-a16c-0c65d9e24df0'),('1d166577-97f7-42ef-bb2f-780656b11f89',3.70,'dollar',4000.00,1,'cb065b9f-9006-4cad-8ad3-17dfa194867b',0.00,'2021-03-20 01:26:44','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('4b01f09d-4ee7-4f94-98ee-8531d291791b',3.46,'dollar',4000.00,3,'eeab4305-7050-4d89-a3b7-c4ab90e3efe1',0.00,'2021-03-20 01:32:50','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('523a75bc-594c-40ab-b06c-4e7bb07b4e69',3.46,'dollar',4000.00,3,'d1580d30-b283-4ac0-b7c6-907d8fccb1e6',0.00,'2021-03-20 01:32:37','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('56aeeaac-e45c-4e3f-b699-1a122936ea06',3.46,'dollar',4000.00,2,'69f7bcc1-7eac-44e6-a416-1eb1c77d269b',0.00,'2021-03-20 01:32:26','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('5e8ad314-9f97-4ba2-ac0e-da8fd9a847af',13.00,'dollar',4000.00,12,'',0.00,'2021-03-21 04:27:14','174084d3-74e4-495b-8e00-cb44eadcbf15','4143eedd-cfc4-4a4a-a013-1afa9a9afb43'),('6b573e6a-15da-496b-b193-ff380342f0a1',3.35,'dollar',4000.00,2,'cf0c6ea6-2d35-404f-ad7c-56554ed776f8',0.00,'2021-03-20 01:28:03','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('706f7ed1-7b33-412a-881b-3ea7b89cca28',13.00,'dollar',4000.00,12,'',0.00,'2021-03-21 04:27:05','174084d3-74e4-495b-8e00-cb44eadcbf15','003ad2c5-0471-4f7c-bc78-b0c8bddd511c'),('9a92076a-f759-44fb-8186-06e5229cf439',3.46,'dollar',4000.00,5,'ce0cd6be-9706-4dc5-b36d-375681fae101',0.00,'2021-03-20 01:32:17','174084d3-74e4-495b-8e00-cb44eadcbf15','e458de78-b750-46cb-a8d3-6450f2830f97'),('b77efc7f-f52e-4042-a38a-ef85506f4908',3.90,'dollar',4000.00,4,'3a198883-4645-4bb2-a24f-a9264d0fdff9',0.00,'2021-03-20 01:33:53','174084d3-74e4-495b-8e00-cb44eadcbf15','f15e367b-0e55-44df-842d-a23eb1bab2ef'),('ca16a47e-1ceb-497e-9b98-82844ea78a61',3.35,'dollar',4000.00,3,'18008bfe-3bba-4de6-8fc9-7ca729d48f63',0.00,'2021-03-20 01:27:43','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('d0828374-2d31-4e3d-a79f-425d65c6d95b',11.00,'dollar',4000.00,13,'',0.00,'2021-03-21 04:27:25','174084d3-74e4-495b-8e00-cb44eadcbf15','f7c2c434-504d-4072-95b8-da2ec442d2b7'),('d4301aca-5afa-4113-af9e-06e3e05d667a',3.70,'dollar',4000.00,3,'3150254d-ed2d-43e5-b885-472bcc379823',0.00,'2021-03-20 01:26:37','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('d92b90d2-18d1-4521-8368-ae5eedf0a29b',3.35,'dollar',4000.00,5,'b2852f88-ab61-4ef6-af35-bff3579e656d',0.00,'2021-03-20 01:27:37','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('e84e3d7b-9937-4b1a-84cd-55a7b9307c89',1.00,'dollar',4000.00,11,'',0.00,'2021-03-21 04:26:44','174084d3-74e4-495b-8e00-cb44eadcbf15','0a697ba2-5b9d-4a10-943b-b58d7702f28e'),('ebfeb8ee-7251-40da-9e35-646d2407a054',3.35,'dollar',4000.00,9,'84e687ba-bfc0-417c-bf33-3dcb15e58dd1',0.00,'2021-03-20 01:27:26','174084d3-74e4-495b-8e00-cb44eadcbf15','a638adda-1f4a-4ca9-9237-953636787bed'),('f343a151-bbd2-44ed-bba2-aa4fda92ad03',3.70,'dollar',4000.00,3,'31365ba7-b570-4fbe-9de1-b54d7147338f',0.00,'2021-03-20 01:33:27','174084d3-74e4-495b-8e00-cb44eadcbf15','403c4689-0daa-4902-8531-9fc828fafcd5'),('f7a8c56d-9d3d-4a20-9712-3465b0713776',0.80,'dollar',4000.00,5,'30c27ebf-1258-48f0-b480-752c99cf2cc3',0.00,'2021-03-20 01:25:47','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03'),('ffe7c03e-be08-4c4f-a642-b39d557cd294',0.80,'dollar',4000.00,9,'edd60810-e8e2-45d9-8ef7-566677f3513e',0.00,'2021-03-20 01:25:53','174084d3-74e4-495b-8e00-cb44eadcbf15','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03');
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
INSERT INTO `tbl_store` VALUES ('c3cb5134-a51e-450a-835f-dd59c9d42cfe','Camping Cave','017 467 617','','2021-03-14 15:20:10');
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
INSERT INTO `tbl_transaction` VALUES ('32170e4f-15a9-4b7b-b025-654477281b21',1,1,'0',3.35,3.35,1,0.00,'Rollable Water Bottle','a638adda-1f4a-4ca9-9237-953636787bed','2021-03-20 01:40:02','174084d3-74e4-495b-8e00-cb44eadcbf15'),('3c8be64a-a562-4121-8ebe-bb741c5d6312',1,1,'0',8.00,8.00,1,4.10,'Headlight','f15e367b-0e55-44df-842d-a23eb1bab2ef','2021-03-20 01:37:59','174084d3-74e4-495b-8e00-cb44eadcbf15'),('48e8a29d-7995-4f82-ace1-9877ac6363a7',1,0,'0',8.00,8.00,1,8.00,'Room 1, 60min','117f13e6-38ee-4a65-a2ea-a8acb0ca8a99','2021-03-23 02:30:08','174084d3-74e4-495b-8e00-cb44eadcbf15'),('4b6c3a88-f673-4066-8a01-7f81124a4ddd',1,1,'0',0.80,0.80,1,0.00,'Bottle Holder Clip','1f4af181-97e4-4a9f-b8cf-bc34b5b47e03','2021-03-20 01:40:22','174084d3-74e4-495b-8e00-cb44eadcbf15'),('57392728-1b09-4c67-a9ae-814ead259986',1,1,'0',5.99,5.99,1,2.29,'Lighter Match-Grey','403c4689-0daa-4902-8531-9fc828fafcd5','2021-03-23 02:13:26','174084d3-74e4-495b-8e00-cb44eadcbf15'),('58b0c5b8-732c-4585-ac6a-52b628972321',1,1,'0',8.00,24.00,3,12.30,'Headlight','f15e367b-0e55-44df-842d-a23eb1bab2ef','2021-03-20 01:39:36','174084d3-74e4-495b-8e00-cb44eadcbf15'),('8a77394e-73b1-414c-b645-031750142d29',1,1,'0',5.00,5.00,1,1.30,'Lighter Match-Gold','403c4689-0daa-4902-8531-9fc828fafcd5','2021-03-20 01:53:18','174084d3-74e4-495b-8e00-cb44eadcbf15'),('b34faaf5-30f3-44a5-a887-6dc9925df8c5',1,0,'0',3.20,3.20,1,3.20,'Room 3, 24min','34fe197a-42da-49af-8789-0a63c2a71304','2021-03-23 02:54:51','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c53777af-18a6-44aa-ba4b-6f38325535f8',1,1,'0',8.00,16.00,2,8.20,'Headlight','f15e367b-0e55-44df-842d-a23eb1bab2ef','2021-03-20 01:41:06','174084d3-74e4-495b-8e00-cb44eadcbf15'),('c91e7aed-3a41-4f21-824b-6c04f5494d74',1,1,'0',12.00,12.00,1,11.00,'afaa','0a697ba2-5b9d-4a10-943b-b58d7702f28e','2021-03-23 02:30:01','174084d3-74e4-495b-8e00-cb44eadcbf15'),('cbf2303a-27f3-4d04-b392-2ac4ff82aa00',1,1,'0',3.70,3.70,1,0.00,'Lighter Match','403c4689-0daa-4902-8531-9fc828fafcd5','2021-03-20 01:40:39','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e00b1a19-e898-432a-966a-cbcda46ffe2e',1,1,'0',7.99,7.99,1,4.53,'Collapsible Water Bottle-Blue','e458de78-b750-46cb-a8d3-6450f2830f97','2021-03-23 02:13:58','174084d3-74e4-495b-8e00-cb44eadcbf15'),('e7c68166-4ef6-4f16-ac05-a2db4a18f169',1,1,'0',11.75,11.75,1,8.29,'Collapsible Water Bottle','e458de78-b750-46cb-a8d3-6450f2830f97','2021-03-20 01:39:14','174084d3-74e4-495b-8e00-cb44eadcbf15');
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
INSERT INTO `tbl_user` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','','','Thong','M',NULL,'','$2b$12$H0zF3SYKCJ17gfjfPpzGu.2WrH0KTEVDvwhlQmMBoidmmNlPsqyEW','dark','khmer','e4769719-e2a2-4a1b-9685-09d045a4a20e','4b7e6772-2319-42ba-8218-73919032bfda','cde1b018-8cdf-40eb-b4d2-72becbdd918d',1,1,'2021-03-14 15:20:10');
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
INSERT INTO `user_role` VALUES ('174084d3-74e4-495b-8e00-cb44eadcbf15','ff681de8-3d05-450c-8d35-1b7f47326182');
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

-- Dump completed on 2021-03-23 22:35:48
