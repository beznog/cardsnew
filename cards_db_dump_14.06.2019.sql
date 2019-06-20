-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: cardsdbnew.ci5rbdjvvbuu.us-east-2.rds.amazonaws.com    Database: cards
-- ------------------------------------------------------
-- Server version	5.6.39-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cardsnew`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cardsnew` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cardsnew`;

--
-- Table structure for table `craft_assetfiles`
--

DROP TABLE IF EXISTS `craft_assetfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfiles`
--

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;
INSERT INTO `craft_assetfiles` VALUES (66,1,1,'space-003.jpg','image',2560,1600,2053900,'2016-11-09 11:32:45','2016-11-09 11:32:46','2016-11-09 11:32:46','ce7ba23a-3f48-4f2d-bdfb-b449a645ce6f'),(68,2,5,'slider-2.png','image',1530,630,181091,'2016-11-09 11:41:54','2016-11-09 11:41:54','2016-11-09 11:41:54','4684c8a0-bd80-461b-ae85-8b478304eb65'),(70,2,5,'slider-3.jpg','image',1920,1080,141144,'2016-11-09 11:42:39','2016-11-09 11:42:39','2016-11-09 11:42:39','30910629-c09b-4166-9110-4cbb943dcfab'),(72,1,1,'speaker-1.jpg','image',1478,979,685134,'2016-11-09 11:46:21','2016-11-09 11:46:21','2016-11-09 11:46:21','9e41ed70-204c-4543-b15f-d542c5732b92'),(74,1,1,'speaker-2.jpg','image',800,532,41607,'2016-11-09 11:47:06','2016-11-09 11:47:06','2016-11-09 11:47:06','db477637-65e1-4f87-8826-92306f779c3d'),(76,1,1,'speaker-3.jpg','image',250,289,19011,'2016-11-09 11:47:50','2016-11-09 11:47:50','2016-11-09 11:47:50','5b71b28a-2f38-46db-9a78-19de5b79fce0'),(78,1,1,'speaker-4.jpg','image',4256,2832,6027215,'2016-11-09 11:49:35','2016-11-09 11:49:37','2016-11-09 11:49:37','78054177-48fe-4a64-b99c-876e981282e0'),(80,1,1,'speaker-6.jpg','image',1200,800,117328,'2016-11-09 11:51:20','2016-11-09 11:50:33','2016-11-09 11:51:24','a55e5389-3ee0-411d-ba28-ff76329a8e70'),(84,1,1,'speaker-7.jpg','image',4896,3264,3097692,'2016-11-09 11:52:38','2016-11-09 11:52:40','2016-11-09 11:52:40','a8a34c3b-c14e-4439-8143-508381d35141'),(86,1,1,'speaker-8.jpg','image',800,600,176974,'2016-11-09 11:53:18','2016-11-09 11:53:18','2016-11-09 11:53:18','2e72ed58-c122-4332-8803-ee00c3061017'),(88,1,1,'speaker-9.jpg','image',1269,702,58349,'2016-11-09 11:53:55','2016-11-09 11:53:55','2016-11-09 11:53:55','8a097cc6-d7a8-4cb8-b3bc-0e671081ca92'),(94,1,1,'ntv.jpg','image',500,467,13340,'2016-11-09 12:28:27','2016-11-09 12:28:27','2016-11-09 12:28:27','295bebd5-a5f4-4e2d-b448-aa60f12fe486'),(96,1,1,'tnt.png','image',447,180,156920,'2016-11-09 12:29:10','2016-11-09 12:29:10','2016-11-09 12:29:10','e86c7db7-7a54-45d2-8bec-58bc52113b62'),(98,1,1,'ren.png','image',600,600,21778,'2016-11-09 12:29:48','2016-11-09 12:29:48','2016-11-09 12:29:48','ba0ee840-a57b-448c-bbd6-b96c2e813dc7'),(100,1,1,'muz.png','image',463,522,208525,'2016-11-09 12:30:17','2016-11-09 12:30:17','2016-11-09 12:30:17','db8ce984-a307-4439-9f01-dcd2537d72d2'),(102,1,1,'rossia.png','image',1024,229,104101,'2016-11-09 12:30:54','2016-11-09 12:30:54','2016-11-09 12:30:54','123aa624-ab5f-4d05-b7cb-4c9e3030df68'),(109,2,5,'video-1.jpg','image',700,467,271017,'2016-11-09 12:42:09','2016-11-09 12:42:09','2016-11-09 12:42:09','e1b84105-e85c-4055-85f9-15f0bcb09f77'),(111,2,5,'video-2.jpg','image',714,454,83682,'2016-11-09 12:43:42','2016-11-09 12:43:42','2016-11-09 12:43:42','61f57583-1603-4404-9512-2ba19db98282'),(113,2,5,'video-3.jpg','image',896,597,377648,'2016-11-09 12:44:42','2016-11-09 12:44:43','2016-11-09 12:44:43','6e3eed66-6b9b-40ea-862d-29be009577d8'),(115,2,5,'video-4.jpg','image',940,450,339464,'2016-11-09 12:45:47','2016-11-09 12:45:47','2016-11-09 12:45:47','aa6df0dd-5ee3-431c-b66a-612670f3cb6a'),(119,1,1,'Студия-Звукозаписиimportant-news-1.jpg','image',600,400,150787,'2016-11-09 13:05:08','2016-11-09 13:05:08','2016-11-09 13:05:08','cae11e35-bb1e-4f15-8cd0-9bf514568882'),(120,1,1,'important-news-1.jpg','image',600,400,150787,'2016-11-09 13:05:43','2016-11-09 13:05:44','2016-11-09 13:05:44','73181bd6-0509-4398-bf33-47b6aaab1c51'),(132,1,1,'c9cff3ab1e8bc8e1085aa7b3fd0acbc2.jpg','image',240,146,14519,'2016-11-09 13:17:30','2016-11-09 13:17:31','2016-11-09 13:17:31','ef2b0bdc-5c84-4757-b136-0cfff4c4f459'),(134,1,1,'fa1c094a5503d1c702821afb447b3044.png','image',238,75,8587,'2016-11-09 13:18:26','2016-11-09 13:18:26','2016-11-09 13:18:26','be4dc33c-f0a2-43e4-b531-caa671c6c0af'),(136,1,1,'5ff2c64ab30945cd3eb6f03a3930e0be.jpg','image',448,299,82434,'2016-11-09 13:19:19','2016-11-09 13:19:19','2016-11-09 13:19:19','7dfac3e7-1b66-4d18-8806-98965f8e57f0'),(141,1,1,'42.jpg','image',300,450,51887,'2016-11-09 14:09:21','2016-11-09 14:09:22','2016-11-09 14:09:22','c4cff4ea-8310-42db-8235-ecb718d60786'),(143,1,1,'41.jpg','image',630,630,165998,'2016-11-09 14:12:23','2016-11-09 14:12:23','2016-11-09 14:12:23','8382a5d1-e9e6-4ccd-90c3-0efc129e11b7'),(146,1,1,'11.jpg','image',800,534,85195,'2016-11-09 14:16:05','2016-11-09 14:16:05','2016-11-09 14:16:05','1b722225-ddc7-43e6-b4ad-83a23639804c'),(147,1,1,'11-1.jpg','image',533,800,86188,'2016-11-09 14:27:47','2016-11-09 14:27:47','2016-11-09 14:27:47','a994ae76-5043-4df1-8fed-c33ec78183b1'),(154,1,1,'128-1.jpg','image',128,128,2816,'2016-11-10 09:34:48','2016-11-10 09:34:48','2016-11-10 09:34:48','3fff25f7-4e7a-42b7-b528-1d8c1c81fa0d'),(156,1,1,'128-2.jpg','image',128,128,3667,'2016-11-10 09:39:55','2016-11-10 09:39:55','2016-11-10 09:39:55','f2525fa0-efb6-4296-b105-804b5aebe3ad'),(158,1,1,'128-3.jpg','image',128,128,5366,'2016-11-10 09:41:41','2016-11-10 09:41:41','2016-11-10 09:41:41','dffe8a06-76bb-45ea-9cfe-5b8cdbc346aa'),(160,1,1,'128-4.jpg','image',128,128,3288,'2016-11-10 09:43:23','2016-11-10 09:43:23','2016-11-10 09:43:23','00b67511-b9a1-4779-be28-23aa9142b648'),(162,1,1,'128-5.jpg','image',128,128,3977,'2016-11-10 09:44:43','2016-11-10 09:44:43','2016-11-10 09:44:43','fd465f6c-8211-465f-8696-e12f56f571b6'),(164,1,1,'128-6.jpg','image',128,128,5246,'2016-11-10 09:46:11','2016-11-10 09:46:11','2016-11-10 09:46:11','4d409a8c-745d-4db7-8340-ff010c4fb645'),(166,1,1,'128-7.jpg','image',128,128,2427,'2016-11-10 09:47:24','2016-11-10 09:47:24','2016-11-10 09:47:24','5a97ea51-17bf-4985-be52-3ab5b80b3420'),(168,1,1,'128-8.jpg','image',128,128,2782,'2016-11-10 09:48:38','2016-11-10 09:48:38','2016-11-10 09:48:38','022434a8-7885-464e-95e5-bae331117ffb'),(170,1,1,'128-9.jpg','image',128,128,5372,'2016-11-10 09:50:03','2016-11-10 09:50:03','2016-11-10 09:50:03','f4dc5c36-2df5-4901-ab23-d111cabba6ff'),(172,1,1,'128-10.jpg','image',128,128,3887,'2016-11-10 09:51:11','2016-11-10 09:51:11','2016-11-10 09:51:11','18646cc4-f0f4-483a-9425-2dc25836d0eb'),(174,2,5,'landing.jpg','image',935,315,71869,'2016-11-10 10:42:24','2016-11-10 10:42:24','2016-11-10 10:42:24','f3931569-d4bf-4f2d-b4ce-73fbf50b022e'),(181,1,1,'68487719-CD47-427A-AF59-057F2B0CB8C8_mw1024_mh1024_s.jpg','image',1024,576,75759,'2016-11-10 10:58:48','2016-11-10 10:58:48','2016-11-10 10:58:48','b957bdde-4773-4c1f-a026-6f7b8599392f'),(183,1,1,'744521934.jpg','image',600,340,64458,'2016-11-10 11:01:57','2016-11-10 11:01:57','2016-11-10 11:01:57','21f75313-d58c-43ef-8b43-a569d29d2aec'),(185,1,1,'lw_675023.jpg','image',480,266,49172,'2016-11-10 11:03:03','2016-11-10 11:03:03','2016-11-10 11:03:03','839775ad-9b55-4d40-941a-c7e7020a8235'),(187,2,5,'hqdefault.jpg','image',196,110,11774,'2016-11-10 11:12:35','2016-11-10 11:12:35','2016-11-10 11:12:35','bbc27001-71fb-4f39-b943-3d3bc125f39a'),(189,2,5,'9eff91f1a1dd4281ff8ce00b9ca7feda.png','image',1000,473,906838,'2016-11-10 11:58:16','2016-11-10 11:58:17','2016-11-10 11:58:17','89b3d1e3-98d0-4d29-945c-52fbabcc3794'),(190,1,1,'offer.pdf','pdf',NULL,NULL,728961,'2016-11-10 12:00:11','2016-11-10 12:00:11','2016-11-10 12:00:11','f573e7a3-f5e1-42b5-b692-7b967279850b'),(192,2,5,'IMG_0094.jpg','image',903,593,52412,'2016-11-10 12:02:16','2016-11-10 12:02:16','2016-11-10 12:02:16','858df6c2-79e1-46d1-bca6-cb00d06d06f2'),(197,1,1,'DSC_1626.jpg','image',940,540,109139,'2016-11-10 12:48:57','2016-11-10 12:48:57','2016-11-10 12:48:57','5750feb1-808e-406b-be8c-219fa6acdd77'),(198,1,1,'AA5B0512.jpg','image',940,540,71426,'2016-11-10 12:50:59','2016-11-10 12:50:59','2016-11-10 12:50:59','c5088eb1-b00c-4887-8835-340bfb1f7d4f'),(199,1,1,'904.jpg','image',918,527,449187,'2016-11-10 12:51:25','2016-11-10 12:51:25','2016-11-10 12:51:25','749f88cf-64de-4a95-bc8f-a2431fa36711'),(201,2,5,'space-012.jpg','image',1920,1080,213968,'2016-11-10 13:49:57','2016-11-10 13:49:57','2016-11-10 13:49:57','1ca4fe83-10c8-4f42-ba94-5fd8596f2b36'),(202,1,1,'history-1.jpg','image',1800,902,300952,'2016-11-10 14:05:51','2016-11-10 14:05:52','2016-11-10 14:05:52','afd1bace-4639-40e3-9e8c-15cd9c8f97ba'),(203,1,1,'partyinfo_553620d619300.jpg','image',250,250,9407,'2016-11-10 14:32:34','2016-11-10 14:32:34','2016-11-10 14:32:34','b6a3d538-bd2c-4a89-a6f5-345fc9e9219b'),(205,1,1,'partyinfo_56ebe69f7c80b.jpg','image',250,250,6690,'2016-11-10 14:34:13','2016-11-10 14:34:13','2016-11-10 14:34:13','bfd76f88-d694-4fe9-9527-3554d069fc20'),(207,1,1,'avatar_kvadrat.jpg','image',250,250,9151,'2016-11-10 14:35:37','2016-11-10 14:35:37','2016-11-10 14:35:37','b093ef9b-de13-4fdf-9fc2-9ebb71bcfab0'),(209,1,1,'partyinfo_58230050ac344.jpg','image',250,250,10932,'2016-11-10 14:36:42','2016-11-10 14:36:42','2016-11-10 14:36:42','3380c4bf-5f4a-4e2c-9a6e-c78b8ae5396e'),(211,1,1,'partyinfo_5616d2e327352.jpg','image',250,250,10334,'2016-11-10 14:37:50','2016-11-10 14:37:50','2016-11-10 14:37:50','c3fa1053-956d-47c0-a57d-e5dadae9ca37'),(215,2,5,'space-010.jpg','image',1024,681,137300,'2016-11-10 15:03:01','2016-11-10 15:03:01','2016-11-10 15:03:01','bb6e49a5-ee2c-4fe8-bc13-e30ee9779270'),(216,2,5,'minsk_ifrs_conference_2014.jpg','image',1000,667,298979,'2016-11-10 17:08:24','2016-11-10 17:08:24','2016-11-10 17:08:24','52f2c3dd-a38e-4ca4-a36b-823f18069440'),(222,2,5,'space-013.jpg','image',1280,800,239848,'2016-11-10 17:17:27','2016-11-10 17:17:27','2016-11-10 17:17:27','3547aa9f-27a7-4249-b37b-c5dcbd49149f'),(223,2,5,'hqdefault-1.jpg','image',196,110,10457,'2016-11-10 18:25:08','2016-11-10 18:25:08','2016-11-10 18:25:08','17851c0b-aed9-4244-8e79-a370d611a9db'),(226,2,5,'space-009.jpg','image',736,460,80641,'2016-11-11 02:21:43','2016-11-11 02:21:43','2016-11-11 02:21:43','cd9f20d2-ebd3-4bea-8bd5-5e5eacc8b353'),(227,2,5,'space-021.jpg','image',1920,1080,344584,'2016-11-11 02:21:56','2016-11-11 02:21:57','2016-11-11 02:21:57','c973f84c-56b2-46b9-bffb-e4536514e49f'),(229,2,5,'photos-cover.jpg','image',2022,1518,325882,'2016-11-11 03:08:25','2016-11-11 03:08:25','2016-11-11 03:08:25','7decf436-0a97-4300-8186-1095b95b1bac'),(232,2,5,'68487719-CD47-427A-AF59-057F2B0CB8C8_mw1024_mh1024_s.jpg','image',1024,576,75759,'2016-11-11 03:16:34','2016-11-11 03:16:36','2016-11-11 03:16:37','48a81ed9-00e9-4bdd-a360-8f14169b1be1'),(236,2,5,'space-008.jpg','image',3000,2400,4057477,'2016-11-11 04:14:20','2016-11-11 04:14:21','2016-11-11 04:14:21','2c9f2ccd-f13f-4752-acee-dcabced9e338'),(239,1,1,'audio.png','image',512,512,16740,'2016-11-24 05:43:31','2016-11-24 05:43:31','2016-11-24 05:43:31','14832697-e4ea-4237-b30f-92e15cdba69a'),(240,1,1,'video.png','image',512,512,13505,'2016-11-24 05:53:09','2016-11-24 05:53:09','2016-11-24 05:53:09','107ce056-4db5-4859-add3-7d0d68736b35'),(242,1,1,'reel_tape_audio_bobbin_recorder_analog_deck_studio_recording_music_equipment_device_technology_retro_player_electronics_machine_sound_hifi_record_flat_design_icon-512.png','image',512,512,35760,'2016-11-24 05:57:07','2016-11-24 05:57:07','2016-11-24 05:57:07','a8255184-7d0b-49ca-89d3-51eaaa81aecb'),(244,1,1,'pavillion-rent.png','image',146,81,17209,'2016-11-24 06:44:34','2016-11-24 06:44:34','2016-11-24 06:44:34','41a4a3bd-25f2-4e2d-abda-a00051e1c9cb'),(245,1,1,'conference-hall.png','image',416,332,139438,'2016-11-24 06:46:20','2016-11-24 06:46:20','2016-11-24 06:46:20','6d04e265-840f-4d49-a720-b7bfdefbddcc'),(247,2,5,'Chroma_Key_12aa.jpg','image',600,400,103122,'2016-11-24 06:52:41','2016-11-24 06:52:42','2016-11-24 06:52:42','b1bfa3f8-814e-4b66-8f8f-9cc1cb865f71'),(248,2,5,'brain-farm-red-bull-fourth-phase-film_h.jpg','image',1400,800,178266,'2016-11-24 06:56:35','2016-11-24 06:56:35','2016-11-24 06:56:35','c68b6931-cee3-47c4-8d20-cbfe90a42724'),(249,2,5,'conferenc-zal.jpg','image',1015,768,201133,'2016-11-24 07:00:16','2016-11-24 07:00:16','2016-11-24 07:00:16','50472f5f-c70d-4729-ac4f-72f3db6c268d'),(252,2,5,'f7047e9e5d01142efa6caf8d92c2453d_1.jpg','image',320,240,30673,'2016-11-28 08:46:48','2016-11-28 08:46:48','2016-11-28 08:46:48','301377f7-81be-4d0e-ac10-6938d1ba75f9'),(256,2,5,'8112590400dc2cc3baf212682e21b0ff.jpeg','image',900,600,219962,'2016-11-28 08:55:51','2016-11-28 08:55:51','2016-11-28 08:55:51','f199102f-6413-4688-9111-34451ce42680'),(258,2,5,'52ce7be5205b364601125461cc5d2226.jpg','image',844,600,219008,'2016-11-28 08:58:02','2016-11-28 08:58:02','2016-11-28 08:58:02','bb9dc1f7-c8e5-49dd-a23f-5d0fe572d9ab'),(261,2,5,'bdeae5e6e76eee2958a2701e9e296302.jpeg','image',900,600,255557,'2016-11-28 09:01:06','2016-11-28 09:01:07','2016-11-28 09:01:07','50831203-e3ac-41ea-a052-8aa4e0a03c23'),(263,2,5,'47a4383d6f3cded36ecb81c1782e72d5.jpg','image',900,600,119183,'2016-11-28 09:02:26','2016-11-28 09:02:26','2016-11-28 09:02:26','09863edb-eb71-416c-bbbf-a0505223c299'),(265,2,5,'38639c5b6d732ec3cb0e99ad60951b2a_1.jpg','image',901,600,186890,'2016-11-28 09:04:46','2016-11-28 09:04:46','2016-11-28 09:04:46','3acdf3d3-4d9c-4950-94a5-f414b049efe3'),(268,2,5,'1bb257f88f4724f8c2be748c94f3efc6.jpg','image',900,600,93540,'2016-11-28 09:07:56','2016-11-28 09:07:57','2016-11-28 09:07:57','5c5740f4-0353-4fba-ab37-638764adba2b'),(270,2,5,'8b87b6259ca3090da0f835ed8d02a25f.jpg','image',879,600,114776,'2016-11-28 09:09:32','2016-11-28 09:09:32','2016-11-28 09:09:32','e035e154-6b77-490f-9704-01c8bb7c52fb'),(272,2,5,'0f39813975b7ce9dc2a3184fee549dd4.jpg','image',900,600,178507,'2016-11-28 09:10:52','2016-11-28 09:10:52','2016-11-28 09:10:52','09e49803-a788-4f66-b15f-44094358acce'),(274,2,5,'8947325bbce8fcdb238b486407c928ad.jpg','image',893,600,140001,'2016-11-28 09:12:33','2016-11-28 09:12:33','2016-11-28 09:12:33','53896f79-1eba-4fe0-a72c-0a01ae54ee70'),(276,1,1,'1241d76e9fca48cbfb1cca1b508db73a.jpg','image',900,600,296870,'2016-11-30 14:20:03','2016-11-30 14:20:03','2016-11-30 14:20:03','93e27028-46c8-4d86-90c0-fac9681cd95b'),(278,1,1,'47c70848a6acae4fb8ce7219fdbd8260.jpg','image',984,600,266307,'2016-11-30 14:21:40','2016-11-30 14:21:40','2016-11-30 14:21:40','b4e8c061-ee04-4a42-b894-a662e4e5258e'),(280,1,1,'45fbdf57526065401842b8ec27ba6105.jpg','image',900,600,196265,'2016-11-30 14:26:35','2016-11-30 14:26:35','2016-11-30 14:26:35','4f3de896-eee1-44a6-a544-ac2ac087b9b2'),(289,1,1,'image3.jpg','image',700,463,44234,'2016-12-01 03:17:18','2016-12-01 03:17:18','2016-12-01 03:17:18','cf64d2a6-6ec7-4958-bcd3-494c7ee89225'),(295,1,1,'image02.png','image',453,508,162263,'2016-12-01 03:23:07','2016-12-01 03:23:08','2016-12-01 03:23:08','83a42dc8-cd65-4735-9200-f3332a997faa'),(297,1,1,'4.jpg','image',635,319,190504,'2016-12-01 03:25:09','2016-12-01 03:25:09','2016-12-01 03:25:09','9a1b0f75-6c4d-41e6-9e7e-62e3b09c98bc');
/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetfolders`
--

DROP TABLE IF EXISTS `craft_assetfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfolders`
--

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;
INSERT INTO `craft_assetfolders` VALUES (1,NULL,1,'Главные фото новостей','','2016-09-02 13:50:20','2016-09-02 13:50:20','46e65ae0-0f4a-464e-99f5-503238460da9'),(2,NULL,NULL,'Temporary source',NULL,'2016-09-02 13:51:25','2016-09-02 13:51:25','49e3ba2f-c5b8-401e-bdbb-3cf5e93801eb'),(3,2,NULL,'user_1',NULL,'2016-09-02 13:51:25','2016-09-02 13:51:25','94379877-d074-4cfe-98c1-e7d85051d099'),(4,3,NULL,'field_9','field_9/','2016-09-02 13:51:25','2016-09-02 13:51:25','dc489a4b-bcdc-4943-9c37-1fe724ba915d'),(5,NULL,2,'Фотографии','','2016-09-03 07:42:53','2016-09-03 07:42:53','583cd28f-f81e-4959-b792-23ddffc3a929');
/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetindexdata`
--

DROP TABLE IF EXISTS `craft_assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetsources`
--

DROP TABLE IF EXISTS `craft_assetsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetsources`
--

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;
INSERT INTO `craft_assetsources` VALUES (1,'Главные фото новостей','mainPhotos','Local','{\"path\":\"resources\\/images\\/photos\\/\",\"publicURLs\":\"1\",\"url\":\"resources\\/images\\/photos\\/\"}',1,69,'2016-09-02 13:50:20','2016-11-09 11:35:47','eae62ccd-cd79-4c55-a77e-3fcef021ca1e'),(2,'Фотографии','photos','Local','{\"path\":\"resources\\/images\\/photos\\/\",\"publicURLs\":\"1\",\"url\":\"resources\\/images\\/photos\\/\"}',2,70,'2016-09-03 07:42:53','2016-11-09 11:35:53','b314c3c7-aba0-4814-bf6d-de7b9a3d568d');
/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransformindex`
--

DROP TABLE IF EXISTS `craft_assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransforms`
--

DROP TABLE IF EXISTS `craft_assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categories`
--

DROP TABLE IF EXISTS `craft_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
INSERT INTO `craft_categories` VALUES (56,1,'2016-11-08 20:31:56','2016-11-08 20:31:56','8cb62fef-c4c0-4150-992f-191f48d1ac09'),(64,2,'2016-11-08 21:21:53','2016-11-08 21:23:51','1ce35d52-bf5a-40ac-a237-d91d07ce81fd');
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups`
--

DROP TABLE IF EXISTS `craft_categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
INSERT INTO `craft_categorygroups` VALUES (1,1,37,'Проектная','projectsSites',1,'','2016-11-08 20:30:49','2016-11-08 20:30:49','82ea179d-c702-4946-848e-9c21e126bee7'),(2,2,42,'Услуги','services',1,'','2016-11-08 21:18:59','2016-11-08 21:20:54','d606358e-0763-40e7-841c-44ee53c20860');
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups_i18n`
--

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

LOCK TABLES `craft_categorygroups_i18n` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` DISABLE KEYS */;
INSERT INTO `craft_categorygroups_i18n` VALUES (1,1,'ru_ru','projects-site-url','{parent.uri}/{slug}','2016-11-08 20:30:49','2016-11-08 20:30:49','98e514a4-7fd5-4fd7-a929-07a3cc330277'),(2,2,'ru_ru','{parent.uri}','{parent.uri}/{slug}','2016-11-08 21:18:59','2016-11-08 21:18:59','3b7ffa6f-40b9-42bd-bd6f-f71e39ec9613');
/*!40000 ALTER TABLE `craft_categorygroups_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_content`
--

DROP TABLE IF EXISTS `craft_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_newsBody` text COLLATE utf8_unicode_ci,
  `field_newsCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `field_newsPunch` text COLLATE utf8_unicode_ci,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_newsImportance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_newsInterviewName` text COLLATE utf8_unicode_ci,
  `field_header` text COLLATE utf8_unicode_ci,
  `field_mainText` text COLLATE utf8_unicode_ci,
  `field_linkTo` text COLLATE utf8_unicode_ci,
  `field_surname` text COLLATE utf8_unicode_ci,
  `field_firstName` text COLLATE utf8_unicode_ci,
  `field_secondName` text COLLATE utf8_unicode_ci,
  `field_position` text COLLATE utf8_unicode_ci,
  `field_punchText` text COLLATE utf8_unicode_ci,
  `field_phone` text COLLATE utf8_unicode_ci,
  `field_mail` text COLLATE utf8_unicode_ci,
  `field_mainTitle` text COLLATE utf8_unicode_ci,
  `field_postAuthor` text COLLATE utf8_unicode_ci,
  `field_question` text COLLATE utf8_unicode_ci,
  `field_answers` text COLLATE utf8_unicode_ci,
  `field_voters` smallint(4) unsigned DEFAULT '0',
  `field_age` int(10) unsigned DEFAULT '0',
  `field_eventType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'seminars',
  `field_eventDate` datetime DEFAULT NULL,
  `field_theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_city` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (88,'haus','2016-07-03 17:00:50'),(218,'wohnung','2016-07-28 12:35:20'),(220,'zimmer','2016-07-28 12:40:04'),(232,'wohnzimmer','2016-07-28 12:46:45'),(280,'a2 - kapitel 1','2016-08-01 20:45:43'),(281,'worter aus dem text','2016-08-01 20:45:43'),(283,'unregelma?ige verben','2017-01-28 15:45:26'),(284,'verben nach kapitel','2017-01-28 15:45:26'),(381,'reflexive verben','2017-01-28 16:21:25'),(386,'testdaf','2017-05-17 15:18:47'),(387,'leseverstehen 1','2017-05-17 15:18:47'),(388,'objekten','2019-04-07 11:10:06');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `word` varchar(255) NOT NULL,
  `translate` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `plural` varchar(255) NOT NULL,
  `sich` varchar(255) NOT NULL,
  `preposition` varchar(255) NOT NULL,
  `regularity` varchar(255) NOT NULL,
  `prasens` varchar(255) NOT NULL,
  `prateritum` varchar(255) NOT NULL,
  `partizip` varchar(255) NOT NULL,
  `modal_verb` varchar(255) NOT NULL,
  `importance` int(11) NOT NULL,
  `complexity` int(11) NOT NULL,
  `knowledge` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `examples` varchar(255) NOT NULL,
  `themes` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `hide` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (194,'noun','ausbildung','образование','die','','','','','','','','',0,0,0,'http://www.gogetnews.info/uploads/posts/2014-07/1404218019_vr-prinyala-novuyu-redakciyu-zakona-o-vysshem-obrazovanii.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(195,'noun','tatigkeit','деятельность','die','','','','','','','','',0,0,0,'https://webformula.pro/upload/medialibrary/0ae/0ae832c5b0975962b326e5e31c911950.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(196,'noun','lebenslauf','резюме','der','','','','','','','','',0,0,0,'http://cs306203.vk.me/v306203281/9cad/hlZoVvSDQ7w.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(197,'noun','ablauf','течение','der','','','','','','','','',0,0,0,'http://img1.liveinternet.ru/images/attach/c/1/62/434/62434847_1281185866_000.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(198,'noun','angabe','сообщение','die','','','','','','','','',0,0,0,'http://www.iconhot.com/icon/png/android-style-icons-r1/512/messager.png','','','','2016-02-18','','0000-00-00 00:00:00'),(199,'noun','anwalt','адвокат','der','','','','','','','','',0,0,0,'http://images.happy-at-home.com/2012/08/izbor-dovokat-300x240.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(200,'noun','fachzeitschrift','отраслевой журнал','die','','','','','','','','',0,0,0,'http://image.slidesharecdn.com/vestsnab212013-131014025919-phpapp01/95/21-2013-1-638.jpg?cb=1381719829','','','','2016-02-18','','0000-00-00 00:00:00'),(201,'noun','geburtsort','место рождения','der','','','','','','','','',0,0,0,'https://www.opentown.org/store/news/712/te0-63aefbb0d0e7aa0d8def5033635a591d.jpg','','','','2016-02-18','','0000-00-00 00:00:00'),(714,'noun','wohnung','квартира','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:35:20'),(715,'noun','zimmer','комната','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:37:58'),(716,'noun','fu?boden','пол','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:40:04'),(717,'noun','decke','потолок','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:40:36'),(718,'noun','wand','стена','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:41:12'),(719,'noun','fenster','окно','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:41:38'),(720,'noun','tur','дверь','die','en','','','','','','','',1,0,0,'','','','','0000-00-00','','2016-07-28 12:42:05'),(721,'noun','fensterbrett','подоконник','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:42:33'),(722,'noun','fu?leiste','плинтус','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:43:14'),(723,'noun','ecke','угол','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:43:41'),(724,'noun','heizkorper','батарея отопления','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:44:31'),(725,'noun','leuchte','светильник','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:45:05'),(726,'noun','lampe','лампочка','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:45:29'),(727,'noun','wohnzimmer','гостиная','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:46:16'),(728,'noun','sofa','','das','s','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:46:45'),(729,'noun','sessel','кресло','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:47:15'),(730,'noun','teppich','ковер','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:47:54'),(731,'noun','kronleuchter','люстра','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:48:31'),(732,'noun','gestell','стеллаж','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:49:00'),(733,'noun','regal','полка','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:49:26'),(734,'noun','vorhang','штора','der','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:49:55'),(735,'noun','tull','тюль','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:50:38'),(736,'noun','audiosystem','аудиосистема','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:51:07'),(737,'noun','fotorahmen','фоторамка','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:51:41'),(738,'noun','schachtel','коробочка','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:52:23'),(739,'noun','tischuhr','настольные часы','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:52:55'),(740,'noun','girlande','гирлянда','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:53:28'),(741,'noun','fernbedienungspult','пульт ду','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:54:47'),(742,'noun','buch','книга','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:55:13'),(743,'noun','fotoalbum','фотоальбом','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:55:44'),(744,'noun','leuchter','подсвечник','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:56:18'),(745,'noun','kerze','свеча','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:56:44'),(746,'noun','sparschwein','копилка','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:57:10'),(747,'noun','buste','бюст','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:57:32'),(748,'noun','bildwerfer','проектор','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:58:01'),(749,'noun','brillenetui','очечник','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:58:31'),(750,'noun','plaid','плед','das','s','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:58:54'),(751,'noun','schublade','выдвижной ящик','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 12:59:30'),(752,'noun','schwelle','порог','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:00:07'),(753,'noun','pfosten','косяк','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:00:38'),(754,'noun','turoffnung','дверной проем','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:01:20'),(755,'noun','draht','провод','der','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:01:41'),(756,'noun','steckdose','розетка','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:02:24'),(757,'noun','stecker','штекер','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:03:02'),(758,'noun','karaffe','графин','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:03:27'),(759,'noun','gardine','гардина','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:04:04'),(760,'noun','rollo','ролль ставни','das','s','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:04:44'),(761,'noun','bild','картина','das','er','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:07:49'),(762,'noun','kissen','подушка','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:08:13'),(763,'noun','stehlampe','торшер','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:08:45'),(764,'noun','box','аудиоколонка','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:09:26'),(765,'noun','verstarker','усилитель','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:10:01'),(766,'noun','ikone','икона','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:10:26'),(767,'noun','uberzug','чехол','der','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:10:48'),(768,'noun','klinke','ручка дверная','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:11:21'),(769,'noun','schlo?','замок дверной','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:11:46'),(770,'noun','handschuh','перчатка','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:12:15'),(771,'noun','schalter','выключатель','der','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:12:42'),(772,'noun','polstermobel','мягкая мебель','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:13:12'),(773,'noun','nasche','ниша','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:13:36'),(774,'noun','zeitschrift','журнал','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:14:44'),(775,'noun','statuette','статуэтка','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-07-28 13:15:29'),(776,'verb','berichten','рассказывать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:45:43'),(777,'noun','angabe','сведения','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:47:30'),(778,'other','zur schule gehen','ходить в школу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:53:44'),(779,'noun','studium abschlie?en','заканчивать учебу','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:55:24'),(780,'other','schreiben den brief an meinen bruder','писать письмо моему брату','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:57:53'),(781,'noun','zentrum von munchen','центр мюнхена','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 20:58:57'),(782,'noun','stelle bei der firma bekommen','получать место в фирме','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:01:16'),(783,'other','wie ist ihr name','как ваше имя','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:02:18'),(784,'other','woher kommen sie','откуда вы приехали','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:02:55'),(785,'other','welche sprachen sprechen sie','на каких языках вы говорите','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:03:45'),(786,'other','was sind sie von beruf','кто вы по профессии','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:04:18'),(787,'other','was sind ihre hobbys','какие у вас хобби','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:04:53'),(788,'other','bei der firma arbeiten','работать в фирме','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:05:48'),(789,'other','ein jahr arbeiten','работать один год','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:06:23'),(791,'noun','ausbildung abschlie?en','заканчивать дополнительную учебу','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:08:57'),(792,'verb','vereinbaren','условиться','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:10:08'),(793,'other','fur chef einen termin vereinbaren','назначать встречу для шефа','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:11:43'),(794,'other','wohnen bei den eltern','жить с родителями','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:12:47'),(795,'verb','ausgeben','тратить','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:13:47'),(796,'other','geld gebe fur andere dinge aus','тратить деньги на другие вещи','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:15:11'),(797,'other','auf arbeit machen','делать на работе','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:16:39'),(798,'other','machen in der freizeit','делать в свободное время','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:17:31'),(799,'verb','zusammenpassen','подходить друг к другу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:18:44'),(800,'verb','erkennen','узнавать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:20:26'),(801,'other','auf der zeichnung','на рисунке','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:21:14'),(802,'verb','zuordnen','соотносить','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:22:37'),(803,'verb','bedienen','обслуживать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:23:23'),(804,'verb','schie?en','стрелять','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:24:20'),(805,'other','aufs tor schie?en','ударить по воротам','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:25:07'),(806,'other','ein tor schie?en','забить гол','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:25:40'),(807,'verb','zubereiten','готовить (еду)','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:34:12'),(808,'verb','den tee zubereiten','готовить чай','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:34:33'),(809,'noun','gesprach fuhren','вести беседу','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:35:16'),(810,'verb','meinen','думать, иметь в виду','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:36:17'),(811,'adjective','mannlich','мужской','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:36:56'),(812,'adjective','weiblich','женский','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:37:31'),(813,'noun','feuerwehrmann','пожарный','der','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:38:08'),(814,'noun','ingenieur','инженер','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:38:56'),(815,'other','auf platz eins liegen','занимать первое место','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:39:41'),(816,'verb','belegen','занимать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:40:17'),(817,'other','den ersten platz belegen','занять первое место','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:40:50'),(818,'verb','bestehen','состоять','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:43:06'),(819,'other','aus zwei teilen bestehen','состоять из двух частей','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:43:41'),(820,'verb','fangen','поймать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:48:53'),(821,'other','einen fisch fangen','поймать одну рыбу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:49:32'),(822,'noun','gedicht','стих','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:50:39'),(823,'other','an der nordsee','на северном море','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:51:34'),(824,'adjective','ha?lich','безобразный','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:52:25'),(825,'verb','ubersetzen','переводить','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:53:04'),(826,'noun','lied','песня','das','er','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:53:38'),(827,'other','erinnern sich an die schulzeit','вспоминать о школьном времени','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:55:40'),(828,'verb','aufhoren','кончаться','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:57:34'),(829,'other','in allen fachern gute noten haben','по всем предметам иметь хорошие оценки','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:58:50'),(830,'other','den unterricht geben','давать обучение','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 21:59:35'),(831,'noun','angst','страх','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:00:56'),(832,'noun','angst vor die prufungen haben','бояться экзаменов','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:03:49'),(833,'other','keine angst','не бойся','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:04:18'),(834,'other','selten','редко','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:05:37'),(835,'verb','erganzen','дополнять','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:19:06'),(836,'noun','bericht','рассказ','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:21:28'),(837,'adjective','passend','подходящий','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:22:12'),(838,'other','sogar','даже','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:23:40'),(839,'other','damals','в то время','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:24:24'),(840,'other','mit vier jahren','в четыре года','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 22:26:09'),(842,'noun','schulpflicht','обязательное обучение','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 23:10:41'),(843,'other','dauern acht jahre','длиться восемь лет','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-01 23:11:20'),(844,'noun','abitur','выпускные экзамены','das','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:46:23'),(845,'noun','abitur machen','сдавать выпускные экзамены','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:46:53'),(846,'other','kinder ab drei jahre','дети с трех лет','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:52:28'),(847,'other','einen kindergarten besuchen','посещать детский сад','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:53:04'),(848,'other','gehen auf die grundschule','ходить в начальную школу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:54:01'),(849,'other','eine auswahl treffen','сделать выбор','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:55:18'),(850,'noun','auswahl','выбор','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:55:50'),(851,'other','zur auswahl','на выбор','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:56:07'),(852,'other','an der oberstufe studieren','учиться на верхней ступени','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:57:44'),(853,'other','einen beruf erlernen','выучиться профессии','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:58:52'),(854,'verb','erlernen','изучать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 12:59:18'),(855,'other','in die schule gehen','ходить в школу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:00:39'),(856,'adjective','fehlend','отсутствующий','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:01:16'),(857,'noun','schulfach','школьный предмет','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:02:46'),(858,'noun','rechnen','арифметика','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:03:41'),(859,'noun','note','оценка','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:04:18'),(860,'noun','macht mir spa?','это доставляет мне удовольствие','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:05:23'),(861,'adjective','manche','некоторые, многие','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:07:01'),(862,'other','manche leute','некоторые (многие) люди','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:07:40'),(863,'other','an der universitat studieren','учиться в университете','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:08:45'),(864,'noun','schulausbildung','школьное образование','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:09:46'),(865,'noun','berufsausbildung','профессиональное образование','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:10:24'),(866,'other','am vierzehnsten mai','четырнадцатого мая','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:13:35'),(867,'other','interessieren sich fur kunst','интересоваться искусст\nвом','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:14:29'),(868,'noun','berufliche tatigkeit','профессиональная деятельность','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:15:36'),(869,'other','ins russischen ubersetzen','переводить на русский','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:16:48'),(870,'noun','kentnisse','знания','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:17:45'),(871,'verb','erfahren','узнавать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:18:35'),(872,'other','ich erfahre uber ihn','я узнал про него','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:19:04'),(873,'noun','praktikum machen','проходить практику','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:20:06'),(874,'other','in tabellarischer form','в виде таблице','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:20:53'),(875,'noun','vorlesung','лекция','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:22:01'),(876,'other','hinter','позади','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:23:36'),(877,'other','dicht','плотно','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:24:24'),(878,'verb','anziehen','одевать одежду','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:26:24'),(879,'verb','kammen','причесывать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:26:45'),(880,'verb','unterhalten','поддерживать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:27:10'),(881,'verb','schminken','краситься','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:27:43'),(882,'verb','streiten','спорить','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:28:04'),(883,'verb','bedanken','благодарить','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:31:12'),(884,'other','ich bedanke mich bei dir fur das geschenk','я благодарю тебя за подарок','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:32:19'),(885,'verb','beschweren','обременять','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:33:05'),(886,'verb','erkalten','простужаться','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:33:39'),(887,'noun','akzent','ударение','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:34:57'),(888,'verb','aufstehen','вставать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:35:31'),(889,'other','zur arbeit fahren','ехать на работу','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:36:15'),(890,'verb','begru?en','приветствовать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:36:46'),(891,'verb','anschalten','включать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:38:11'),(892,'other','ich schalte den computer an','я включаю компьютер','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:38:43'),(893,'noun','passiert bei uns','это произошло с нами','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:39:13'),(894,'verb','raten','отгадывать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:40:26'),(895,'other','in der dritte person','в третьем лице','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:40:57'),(896,'other','eigen','собственный','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 13:41:35'),(897,'noun','rundgang','обход','der','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:14:04'),(898,'noun','bereich','зона, компетенция','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:16:50'),(899,'adjective','schrecklich','ужасный','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:18:12'),(900,'noun','spitzenklasse','высший класс','die_plural','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:19:00'),(901,'verb','bezetzen','занимать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:34:30'),(902,'noun','lehre','учение, теория','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 15:49:07'),(903,'noun','wesen','сущность','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:00:58'),(904,'noun','erziehung','воспитание','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:01:53'),(905,'verb','notieren','делать заметки','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:04:32'),(906,'adjective','berufstatig','работающий по специальности','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:05:37'),(907,'noun','quote','доля','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:07:00'),(908,'verb','erwarten','ожидать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:09:45'),(909,'noun','aussicht','вид, перспектива','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:11:05'),(910,'noun','erfolg in aussicht haben','иметь шансы на успех','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:11:58'),(911,'noun','chancen stehen gut fur mich','я имею хорошие шансы','die','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:12:55'),(912,'verb','verdoppeln','удваиваться','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:14:47'),(913,'other','doch','но','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:15:24'),(914,'noun','absolvent','выпускник','der','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:15:59'),(915,'other','in den letzen zehn jahren','в последние десять лет','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:16:40'),(916,'other','immer noch','по прежнему','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:17:33'),(917,'other','lehrer fur geschichte','учитель истории','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:18:30'),(918,'adjective','hart','трудный','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:18:57'),(919,'verb','absolvieren','окончить учебное заведение','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:19:34'),(920,'noun','grundlage','основа','die','n','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:20:43'),(921,'adjective','steil','крутой (угол)','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:21:28'),(922,'noun','staatsdienst','государственная служба','der','e','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:22:52'),(923,'','kampfen um das uberleben','бороться за выживание','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:24:01'),(924,'noun','wendung','оборот (речи)','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:43:06'),(925,'noun','bezeichnung','название','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:44:06'),(926,'verb','beschaftigen','заниматься','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:45:38'),(927,'verb','entferfen','делать эскиз','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:46:16'),(928,'verb','beraten','консультировать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:46:53'),(929,'adjective','flie?end','бегло','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:48:05'),(930,'verb','schmecken','быть вкусным','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:48:44'),(931,'noun','buch ist weg','книга пропала','das','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:49:29'),(932,'verb','fehlen','отсутствовать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:50:32'),(933,'verb','abfahren','отправляться','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:51:08'),(934,'verb','einnehmen','принимать внутрь','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:51:50'),(935,'verb','einladen','приглашать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:53:48'),(936,'verb','abholen','встречать (на вокзале)','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:54:44'),(937,'verb','absagen','отменять','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:55:55'),(938,'verb','umziehen','переодеваться','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:57:10'),(939,'verb','anmelden','записываться','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:58:20'),(940,'verb','beeilen','торопиться','','','true','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:58:55'),(941,'other','stundenlang','часами','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 16:59:27'),(942,'verb','erarbeiten','проработать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:00:52'),(943,'noun','turnen','гимнастика','das','nothing','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:01:44'),(944,'noun','einladung','приглашение','die','en','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:03:11'),(945,'other','ziemlich','довольно','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:03:50'),(946,'verb','annehmen','принимать','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:04:18'),(947,'adjective','geschieden','разведенный','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:06:33'),(948,'other','mein geburtsort ist chabarowsk','мое место рождения хабаровск','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2016-08-02 17:09:57'),(993,'noun','gang','походка, поступь','der','gange','','','','','','','',0,0,0,'','','','','0000-00-00','','2017-05-17 15:11:07'),(1032,'noun','volkshochschule','народный университет, (вечерние) общеобразовательные курсы','die','volkshochschulen','','','','','','','',0,0,0,'https://www.saale-orla-kreis.de/sokdok/pic/11/Krauterkunde.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbBc9t4CrParV4Eg2yvtCaHs6pZG1wZw_-txpIf-p9H8EMcjY4amc18C4','','','0000-00-00','','2017-05-24 21:21:59'),(1033,'noun','kastchen','ящичек, коробочка','das','kastchen','','','','','','','',0,0,0,'https://www.meine-kinder.at/wp-content/uploads/2015/11/IMG_0331-300x227.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuamo2bdbPg6vLwWkhtDJqWdislHoM2kNzX_Ounn4BdhAH8gA4Z29zsA','','','0000-00-00','','2017-05-24 21:22:24'),(1034,'verb','umgehen','обращаться с чем-либо','','','','mit dativ','irregular','umgeht','umging','umgangen','haben',0,0,0,'http://www.labbe.de/mellvil/verstehen/taschengeld/taschengeldfallen_umgehen.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ktTAXHC4xj971kipbP7M2BdjPRJTQbyDbzyNB9zNzSr-EwBOPm-rGQ','','','0000-00-00','','2017-05-24 21:23:47'),(1035,'verb','erweitern','расширять, делать шире','','','','','irregular','erweitert','erweiterte','erweitert','haben',0,0,0,'','','','','0000-00-00','','2017-05-24 21:24:30'),(1036,'verb','schuchtern','робкий, стеснительный','','','','','irregular','schuchtert','schuchterte','geschuchtert','haben',0,0,0,'http://cdn.familie.de/bilder/Kinder-schuechtern-Persoenlichkeit-2-235616.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl6nQ41sXG80bTASIUOQrqBVHRZ_Pr8p3XVsHb_eypNL_UvapZzGOKXQ','','','0000-00-00','','2017-05-24 21:24:50'),(1037,'adjective','sicher','надёжный, безопасный','','','','','','','','','',0,0,0,'https://www.ksk-stade.de/pixel/opener/op6_sicherheit_th96226013.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsdt_1jVWBSqikjbcWJwj1_BiYdIqL2Z6pMl5GtMqpYsSWkUdXRLQu6g','','','0000-00-00','','2017-05-24 21:25:15'),(1038,'other','ebenso','(точно) так же, таким же образом','','','','','','','','','',0,0,0,'','','','','0000-00-00','','2017-05-24 21:26:37'),(1039,'noun','lamawolle','альпака','die','lamawollen','','','','','','','',0,0,0,'https://www.pitopia.de/pictures/standard/d/dieter1/61/dieter1_770061.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmshBL18RQhQmNNNGavMXZRoet1Bnr3t631MkcdQZHXYn3e9HrRRvLqA','','','0000-00-00','','2019-04-07 11:08:25'),(1040,'noun','klasse','класс','die','klassen','','','','','','','',0,0,0,'http://farm6.static.flickr.com/5201/5373174271_69c6ae90f7_m.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb0DjG1No3ViTU-GEY8IKNe-LjI6Gdz73-MMFi3aN4K_oxpB5mFQZYjg','','','0000-00-00','','2019-04-07 11:10:06');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words-labels`
--

DROP TABLE IF EXISTS `words-labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words-labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words-labels`
--

LOCK TABLES `words-labels` WRITE;
/*!40000 ALTER TABLE `words-labels` DISABLE KEYS */;
INSERT INTO `words-labels` VALUES (1,642,111,'2016-07-03 18:18:00'),(2,642,176,'2016-07-03 18:18:00'),(3,642,88,'2016-07-03 18:18:00'),(4,642,178,'2016-07-03 18:18:00'),(5,642,179,'2016-07-03 18:18:00'),(6,642,180,'2016-07-03 18:18:00'),(7,643,111,'2016-07-03 18:18:45'),(8,643,176,'2016-07-03 18:18:45'),(9,643,88,'2016-07-03 18:18:45'),(10,643,178,'2016-07-03 18:18:45'),(11,643,179,'2016-07-03 18:18:45'),(12,643,180,'2016-07-03 18:18:45'),(13,644,187,'2016-07-03 19:51:39'),(14,644,188,'2016-07-03 19:51:39'),(15,644,189,'2016-07-03 19:51:39'),(16,644,190,'2016-07-03 19:51:39'),(17,644,91,'2016-07-03 19:51:39'),(18,644,92,'2016-07-03 19:51:39'),(19,645,189,'2016-07-03 21:49:53'),(20,645,90,'2016-07-03 21:49:53'),(21,645,93,'2016-07-03 21:49:53'),(22,645,94,'2016-07-03 21:49:53'),(23,645,178,'2016-07-03 21:49:53'),(24,645,187,'2016-07-03 21:49:53'),(25,646,90,'2016-07-03 23:30:59'),(26,646,91,'2016-07-03 23:30:59'),(27,646,188,'2016-07-03 23:30:59'),(28,646,88,'2016-07-03 23:30:59'),(29,646,89,'2016-07-03 23:30:59'),(30,646,178,'2016-07-03 23:30:59'),(31,646,179,'2016-07-03 23:30:59'),(32,646,189,'2016-07-03 23:30:59'),(33,646,190,'2016-07-03 23:30:59'),(34,648,208,'2016-07-04 10:35:33'),(35,648,209,'2016-07-04 10:35:33'),(36,648,90,'2016-07-04 10:35:33'),(37,658,211,'2016-07-04 23:29:54'),(38,658,90,'2016-07-04 23:29:54'),(39,658,93,'2016-07-04 23:29:54'),(40,658,94,'2016-07-04 23:29:54'),(41,658,179,'2016-07-04 23:29:54'),(42,711,216,'2016-07-05 15:19:42'),(43,711,217,'2016-07-05 15:19:42'),(44,711,88,'2016-07-05 15:19:42'),(45,711,176,'2016-07-05 15:19:42'),(46,711,180,'2016-07-05 15:19:42'),(47,711,187,'2016-07-05 15:19:42'),(48,714,218,'2016-07-28 12:35:20'),(49,715,218,'2016-07-28 12:37:58'),(50,716,220,'2016-07-28 12:40:04'),(51,717,220,'2016-07-28 12:40:36'),(52,718,220,'2016-07-28 12:41:12'),(53,719,220,'2016-07-28 12:41:38'),(54,720,220,'2016-07-28 12:42:05'),(55,721,220,'2016-07-28 12:42:33'),(56,722,220,'2016-07-28 12:43:14'),(57,723,220,'2016-07-28 12:43:41'),(58,724,220,'2016-07-28 12:44:31'),(59,725,220,'2016-07-28 12:45:05'),(60,726,220,'2016-07-28 12:45:29'),(61,727,218,'2016-07-28 12:46:16'),(62,728,232,'2016-07-28 12:46:45'),(63,729,232,'2016-07-28 12:47:15'),(64,730,232,'2016-07-28 12:47:54'),(65,731,232,'2016-07-28 12:48:31'),(66,732,232,'2016-07-28 12:49:00'),(67,733,232,'2016-07-28 12:49:26'),(68,734,232,'2016-07-28 12:49:55'),(69,735,232,'2016-07-28 12:50:38'),(70,736,232,'2016-07-28 12:51:07'),(71,737,232,'2016-07-28 12:51:41'),(72,738,232,'2016-07-28 12:52:23'),(73,739,232,'2016-07-28 12:52:55'),(74,740,232,'2016-07-28 12:53:28'),(75,741,232,'2016-07-28 12:54:47'),(76,742,232,'2016-07-28 12:55:13'),(77,743,232,'2016-07-28 12:55:44'),(78,744,232,'2016-07-28 12:56:18'),(79,745,232,'2016-07-28 12:56:44'),(80,746,232,'2016-07-28 12:57:10'),(81,747,232,'2016-07-28 12:57:32'),(82,748,232,'2016-07-28 12:58:01'),(83,749,232,'2016-07-28 12:58:31'),(84,750,232,'2016-07-28 12:58:54'),(85,751,232,'2016-07-28 12:59:30'),(86,752,232,'2016-07-28 13:00:07'),(87,753,232,'2016-07-28 13:00:38'),(88,754,232,'2016-07-28 13:01:20'),(89,755,232,'2016-07-28 13:01:41'),(90,756,232,'2016-07-28 13:02:24'),(91,757,232,'2016-07-28 13:03:02'),(92,758,232,'2016-07-28 13:03:27'),(93,759,232,'2016-07-28 13:04:04'),(94,760,232,'2016-07-28 13:04:44'),(95,761,232,'2016-07-28 13:07:49'),(96,762,232,'2016-07-28 13:08:13'),(97,763,232,'2016-07-28 13:08:45'),(98,764,232,'2016-07-28 13:09:26'),(99,765,232,'2016-07-28 13:10:01'),(100,766,232,'2016-07-28 13:10:26'),(101,767,232,'2016-07-28 13:10:48'),(102,768,232,'2016-07-28 13:11:21'),(103,769,232,'2016-07-28 13:11:46'),(104,770,232,'2016-07-28 13:12:15'),(105,771,232,'2016-07-28 13:12:42'),(106,772,232,'2016-07-28 13:13:12'),(107,773,232,'2016-07-28 13:13:36'),(108,774,232,'2016-07-28 13:14:44'),(109,775,232,'2016-07-28 13:15:29'),(110,776,280,'2016-08-01 20:45:43'),(111,776,281,'2016-08-01 20:45:43'),(112,777,280,'2016-08-01 20:47:30'),(113,777,281,'2016-08-01 20:47:30'),(114,778,280,'2016-08-01 20:53:44'),(115,778,281,'2016-08-01 20:53:44'),(116,779,280,'2016-08-01 20:55:24'),(117,779,281,'2016-08-01 20:55:24'),(118,780,280,'2016-08-01 20:57:53'),(119,780,281,'2016-08-01 20:57:53'),(120,781,280,'2016-08-01 20:58:57'),(121,781,281,'2016-08-01 20:58:57'),(122,782,280,'2016-08-01 21:01:16'),(123,782,281,'2016-08-01 21:01:16'),(124,783,280,'2016-08-01 21:02:18'),(125,783,281,'2016-08-01 21:02:18'),(126,784,280,'2016-08-01 21:02:55'),(127,784,281,'2016-08-01 21:02:55'),(128,785,280,'2016-08-01 21:03:45'),(129,785,281,'2016-08-01 21:03:45'),(130,786,280,'2016-08-01 21:04:18'),(131,786,281,'2016-08-01 21:04:18'),(132,787,280,'2016-08-01 21:04:53'),(133,787,281,'2016-08-01 21:04:53'),(134,788,280,'2016-08-01 21:05:48'),(135,788,281,'2016-08-01 21:05:48'),(136,789,280,'2016-08-01 21:06:23'),(137,789,281,'2016-08-01 21:06:23'),(138,790,280,'2016-08-01 21:08:00'),(139,790,281,'2016-08-01 21:08:00'),(140,791,280,'2016-08-01 21:08:57'),(141,791,281,'2016-08-01 21:08:57'),(142,792,280,'2016-08-01 21:10:08'),(143,792,281,'2016-08-01 21:10:08'),(144,793,280,'2016-08-01 21:11:43'),(145,793,281,'2016-08-01 21:11:43'),(146,794,280,'2016-08-01 21:12:47'),(147,794,281,'2016-08-01 21:12:47'),(148,795,280,'2016-08-01 21:13:47'),(149,795,281,'2016-08-01 21:13:47'),(150,796,280,'2016-08-01 21:15:11'),(151,796,281,'2016-08-01 21:15:11'),(152,797,280,'2016-08-01 21:16:39'),(153,797,281,'2016-08-01 21:16:39'),(154,798,280,'2016-08-01 21:17:31'),(155,798,281,'2016-08-01 21:17:31'),(156,799,280,'2016-08-01 21:18:44'),(157,799,281,'2016-08-01 21:18:44'),(158,800,280,'2016-08-01 21:20:26'),(159,800,281,'2016-08-01 21:20:26'),(160,801,280,'2016-08-01 21:21:14'),(161,801,281,'2016-08-01 21:21:14'),(162,802,280,'2016-08-01 21:22:37'),(163,802,281,'2016-08-01 21:22:37'),(164,803,280,'2016-08-01 21:23:23'),(165,803,281,'2016-08-01 21:23:23'),(166,804,280,'2016-08-01 21:24:20'),(167,804,281,'2016-08-01 21:24:20'),(168,805,280,'2016-08-01 21:25:07'),(169,805,281,'2016-08-01 21:25:07'),(170,806,280,'2016-08-01 21:25:40'),(171,806,281,'2016-08-01 21:25:40'),(172,807,280,'2016-08-01 21:34:12'),(173,807,281,'2016-08-01 21:34:12'),(174,808,280,'2016-08-01 21:34:33'),(175,808,281,'2016-08-01 21:34:33'),(176,809,280,'2016-08-01 21:35:16'),(177,809,281,'2016-08-01 21:35:16'),(178,810,280,'2016-08-01 21:36:17'),(179,810,281,'2016-08-01 21:36:17'),(180,811,280,'2016-08-01 21:36:56'),(181,811,281,'2016-08-01 21:36:56'),(182,812,280,'2016-08-01 21:37:31'),(183,812,281,'2016-08-01 21:37:31'),(184,813,280,'2016-08-01 21:38:08'),(185,813,281,'2016-08-01 21:38:08'),(186,814,280,'2016-08-01 21:38:56'),(187,814,281,'2016-08-01 21:38:56'),(188,815,280,'2016-08-01 21:39:41'),(189,815,281,'2016-08-01 21:39:41'),(190,816,280,'2016-08-01 21:40:17'),(191,816,281,'2016-08-01 21:40:17'),(192,817,280,'2016-08-01 21:40:50'),(193,817,281,'2016-08-01 21:40:50'),(194,818,280,'2016-08-01 21:43:06'),(195,818,281,'2016-08-01 21:43:06'),(196,819,280,'2016-08-01 21:43:41'),(197,819,281,'2016-08-01 21:43:41'),(198,820,280,'2016-08-01 21:48:53'),(199,820,281,'2016-08-01 21:48:53'),(200,821,280,'2016-08-01 21:49:32'),(201,821,281,'2016-08-01 21:49:32'),(202,822,280,'2016-08-01 21:50:39'),(203,822,281,'2016-08-01 21:50:39'),(204,823,280,'2016-08-01 21:51:34'),(205,823,281,'2016-08-01 21:51:34'),(206,824,280,'2016-08-01 21:52:25'),(207,824,281,'2016-08-01 21:52:25'),(208,825,280,'2016-08-01 21:53:04'),(209,825,281,'2016-08-01 21:53:04'),(210,826,280,'2016-08-01 21:53:38'),(211,826,281,'2016-08-01 21:53:38'),(212,827,280,'2016-08-01 21:55:41'),(213,827,281,'2016-08-01 21:55:41'),(214,828,280,'2016-08-01 21:57:34'),(215,828,281,'2016-08-01 21:57:34'),(216,829,280,'2016-08-01 21:58:50'),(217,829,281,'2016-08-01 21:58:50'),(218,830,280,'2016-08-01 21:59:35'),(219,830,281,'2016-08-01 21:59:35'),(220,831,280,'2016-08-01 22:00:56'),(221,831,281,'2016-08-01 22:00:56'),(222,832,280,'2016-08-01 22:03:49'),(223,832,281,'2016-08-01 22:03:49'),(224,833,280,'2016-08-01 22:04:18'),(225,833,281,'2016-08-01 22:04:18'),(226,834,280,'2016-08-01 22:05:37'),(227,834,281,'2016-08-01 22:05:37'),(228,835,280,'2016-08-01 22:19:06'),(229,835,281,'2016-08-01 22:19:06'),(230,836,280,'2016-08-01 22:21:28'),(231,836,281,'2016-08-01 22:21:28'),(232,837,280,'2016-08-01 22:22:12'),(233,837,281,'2016-08-01 22:22:12'),(234,838,280,'2016-08-01 22:23:40'),(235,838,281,'2016-08-01 22:23:40'),(236,839,280,'2016-08-01 22:24:24'),(237,839,281,'2016-08-01 22:24:24'),(238,840,280,'2016-08-01 22:26:09'),(239,840,281,'2016-08-01 22:26:09'),(242,842,280,'2016-08-01 23:10:41'),(243,842,281,'2016-08-01 23:10:41'),(244,843,280,'2016-08-01 23:11:20'),(245,843,281,'2016-08-01 23:11:20'),(246,844,280,'2016-08-02 12:46:23'),(247,844,281,'2016-08-02 12:46:23'),(248,845,280,'2016-08-02 12:46:53'),(249,845,281,'2016-08-02 12:46:53'),(250,846,280,'2016-08-02 12:52:28'),(251,846,281,'2016-08-02 12:52:28'),(252,847,280,'2016-08-02 12:53:04'),(253,847,281,'2016-08-02 12:53:04'),(254,848,280,'2016-08-02 12:54:01'),(255,848,281,'2016-08-02 12:54:01'),(256,849,280,'2016-08-02 12:55:18'),(257,849,281,'2016-08-02 12:55:18'),(258,850,280,'2016-08-02 12:55:50'),(259,850,281,'2016-08-02 12:55:50'),(260,851,280,'2016-08-02 12:56:07'),(261,851,281,'2016-08-02 12:56:07'),(262,852,280,'2016-08-02 12:57:44'),(263,852,281,'2016-08-02 12:57:44'),(264,853,280,'2016-08-02 12:58:52'),(265,853,281,'2016-08-02 12:58:52'),(266,854,280,'2016-08-02 12:59:18'),(267,854,281,'2016-08-02 12:59:18'),(268,855,280,'2016-08-02 13:00:39'),(269,855,281,'2016-08-02 13:00:39'),(270,856,280,'2016-08-02 13:01:16'),(271,856,281,'2016-08-02 13:01:16'),(272,857,280,'2016-08-02 13:02:46'),(273,857,281,'2016-08-02 13:02:46'),(274,858,280,'2016-08-02 13:03:41'),(275,858,281,'2016-08-02 13:03:41'),(276,859,280,'2016-08-02 13:04:18'),(277,859,281,'2016-08-02 13:04:18'),(278,860,280,'2016-08-02 13:05:23'),(279,860,281,'2016-08-02 13:05:23'),(280,861,280,'2016-08-02 13:07:01'),(281,861,281,'2016-08-02 13:07:01'),(282,862,280,'2016-08-02 13:07:40'),(283,862,281,'2016-08-02 13:07:40'),(284,863,280,'2016-08-02 13:08:45'),(285,863,281,'2016-08-02 13:08:45'),(286,864,280,'2016-08-02 13:09:46'),(287,864,281,'2016-08-02 13:09:46'),(288,865,280,'2016-08-02 13:10:24'),(289,865,281,'2016-08-02 13:10:24'),(290,866,280,'2016-08-02 13:13:35'),(291,866,281,'2016-08-02 13:13:35'),(292,867,280,'2016-08-02 13:14:29'),(293,867,281,'2016-08-02 13:14:29'),(294,868,280,'2016-08-02 13:15:36'),(295,868,281,'2016-08-02 13:15:36'),(296,869,280,'2016-08-02 13:16:48'),(297,869,281,'2016-08-02 13:16:48'),(298,870,280,'2016-08-02 13:17:45'),(299,870,281,'2016-08-02 13:17:45'),(300,871,280,'2016-08-02 13:18:35'),(301,871,281,'2016-08-02 13:18:35'),(302,872,280,'2016-08-02 13:19:04'),(303,872,281,'2016-08-02 13:19:04'),(304,873,280,'2016-08-02 13:20:06'),(305,873,281,'2016-08-02 13:20:06'),(306,874,280,'2016-08-02 13:20:53'),(307,874,281,'2016-08-02 13:20:53'),(308,875,280,'2016-08-02 13:22:01'),(309,875,281,'2016-08-02 13:22:01'),(310,876,280,'2016-08-02 13:23:36'),(311,876,281,'2016-08-02 13:23:36'),(312,877,280,'2016-08-02 13:24:24'),(313,877,281,'2016-08-02 13:24:24'),(314,878,280,'2016-08-02 13:26:24'),(315,878,281,'2016-08-02 13:26:24'),(316,879,280,'2016-08-02 13:26:45'),(317,879,281,'2016-08-02 13:26:45'),(318,880,280,'2016-08-02 13:27:10'),(319,880,281,'2016-08-02 13:27:10'),(320,881,280,'2016-08-02 13:27:43'),(321,881,281,'2016-08-02 13:27:43'),(322,882,280,'2016-08-02 13:28:04'),(323,882,281,'2016-08-02 13:28:04'),(324,883,280,'2016-08-02 13:31:12'),(325,883,281,'2016-08-02 13:31:12'),(326,884,280,'2016-08-02 13:32:19'),(327,884,281,'2016-08-02 13:32:19'),(328,885,280,'2016-08-02 13:33:05'),(329,885,281,'2016-08-02 13:33:05'),(330,886,280,'2016-08-02 13:33:39'),(331,886,281,'2016-08-02 13:33:39'),(332,887,280,'2016-08-02 13:34:57'),(333,887,281,'2016-08-02 13:34:57'),(334,888,280,'2016-08-02 13:35:31'),(335,888,281,'2016-08-02 13:35:31'),(336,889,280,'2016-08-02 13:36:15'),(337,889,281,'2016-08-02 13:36:15'),(338,890,280,'2016-08-02 13:36:46'),(339,890,281,'2016-08-02 13:36:46'),(340,891,280,'2016-08-02 13:38:11'),(341,891,281,'2016-08-02 13:38:11'),(342,892,280,'2016-08-02 13:38:43'),(343,892,281,'2016-08-02 13:38:43'),(344,893,280,'2016-08-02 13:39:13'),(345,893,281,'2016-08-02 13:39:13'),(346,894,280,'2016-08-02 13:40:26'),(347,894,281,'2016-08-02 13:40:26'),(348,895,280,'2016-08-02 13:40:57'),(349,895,281,'2016-08-02 13:40:57'),(350,896,280,'2016-08-02 13:41:35'),(351,896,281,'2016-08-02 13:41:35'),(352,897,280,'2016-08-02 15:14:04'),(353,897,281,'2016-08-02 15:14:04'),(354,898,280,'2016-08-02 15:16:50'),(355,898,281,'2016-08-02 15:16:50'),(356,899,280,'2016-08-02 15:18:12'),(357,899,281,'2016-08-02 15:18:12'),(358,900,280,'2016-08-02 15:19:00'),(359,900,281,'2016-08-02 15:19:00'),(360,901,280,'2016-08-02 15:34:30'),(361,901,281,'2016-08-02 15:34:30'),(362,902,280,'2016-08-02 15:49:07'),(363,902,281,'2016-08-02 15:49:07'),(364,903,280,'2016-08-02 16:00:58'),(365,903,281,'2016-08-02 16:00:58'),(366,904,280,'2016-08-02 16:01:53'),(367,904,281,'2016-08-02 16:01:53'),(368,905,280,'2016-08-02 16:04:32'),(369,905,281,'2016-08-02 16:04:32'),(370,906,280,'2016-08-02 16:05:37'),(371,906,281,'2016-08-02 16:05:37'),(372,907,280,'2016-08-02 16:07:00'),(373,907,281,'2016-08-02 16:07:00'),(374,908,280,'2016-08-02 16:09:45'),(375,908,281,'2016-08-02 16:09:45'),(376,909,280,'2016-08-02 16:11:05'),(377,909,281,'2016-08-02 16:11:05'),(378,910,280,'2016-08-02 16:11:58'),(379,910,281,'2016-08-02 16:11:58'),(380,912,280,'2016-08-02 16:14:47'),(381,912,281,'2016-08-02 16:14:47'),(382,913,280,'2016-08-02 16:15:24'),(383,913,281,'2016-08-02 16:15:24'),(384,914,280,'2016-08-02 16:15:59'),(385,914,281,'2016-08-02 16:15:59'),(386,915,280,'2016-08-02 16:16:40'),(387,915,281,'2016-08-02 16:16:40'),(388,916,280,'2016-08-02 16:17:33'),(389,916,281,'2016-08-02 16:17:33'),(390,917,280,'2016-08-02 16:18:30'),(391,917,281,'2016-08-02 16:18:30'),(392,918,280,'2016-08-02 16:18:57'),(393,918,281,'2016-08-02 16:18:57'),(394,919,280,'2016-08-02 16:19:34'),(395,919,281,'2016-08-02 16:19:34'),(396,920,280,'2016-08-02 16:20:43'),(397,920,281,'2016-08-02 16:20:43'),(398,921,280,'2016-08-02 16:21:28'),(399,921,281,'2016-08-02 16:21:28'),(400,922,280,'2016-08-02 16:22:52'),(401,922,281,'2016-08-02 16:22:52'),(402,923,280,'2016-08-02 16:24:01'),(403,923,281,'2016-08-02 16:24:01'),(404,924,280,'2016-08-02 16:43:06'),(405,924,281,'2016-08-02 16:43:06'),(406,925,280,'2016-08-02 16:44:06'),(407,925,281,'2016-08-02 16:44:06'),(408,926,280,'2016-08-02 16:45:38'),(409,926,281,'2016-08-02 16:45:38'),(410,927,280,'2016-08-02 16:46:16'),(411,927,281,'2016-08-02 16:46:16'),(412,928,280,'2016-08-02 16:46:53'),(413,928,281,'2016-08-02 16:46:53'),(414,929,280,'2016-08-02 16:48:05'),(415,929,281,'2016-08-02 16:48:05'),(416,930,280,'2016-08-02 16:48:44'),(417,930,281,'2016-08-02 16:48:44'),(418,931,280,'2016-08-02 16:49:29'),(419,931,281,'2016-08-02 16:49:29'),(420,932,280,'2016-08-02 16:50:32'),(421,932,281,'2016-08-02 16:50:32'),(422,933,280,'2016-08-02 16:51:08'),(423,933,281,'2016-08-02 16:51:08'),(424,934,280,'2016-08-02 16:51:50'),(425,934,281,'2016-08-02 16:51:50'),(426,935,280,'2016-08-02 16:53:48'),(427,935,281,'2016-08-02 16:53:48'),(428,936,280,'2016-08-02 16:54:44'),(429,936,281,'2016-08-02 16:54:44'),(430,937,280,'2016-08-02 16:55:55'),(431,937,281,'2016-08-02 16:55:55'),(432,938,280,'2016-08-02 16:57:10'),(433,938,281,'2016-08-02 16:57:10'),(434,939,280,'2016-08-02 16:58:20'),(435,939,281,'2016-08-02 16:58:20'),(436,940,280,'2016-08-02 16:58:55'),(437,940,281,'2016-08-02 16:58:55'),(438,941,280,'2016-08-02 16:59:27'),(439,941,281,'2016-08-02 16:59:27'),(440,942,280,'2016-08-02 17:00:52'),(441,942,281,'2016-08-02 17:00:52'),(442,943,280,'2016-08-02 17:01:44'),(443,943,281,'2016-08-02 17:01:44'),(444,944,280,'2016-08-02 17:03:11'),(445,944,281,'2016-08-02 17:03:11'),(446,945,280,'2016-08-02 17:03:50'),(447,945,281,'2016-08-02 17:03:50'),(448,946,280,'2016-08-02 17:04:18'),(449,946,281,'2016-08-02 17:04:18'),(450,947,280,'2016-08-02 17:06:33'),(451,947,281,'2016-08-02 17:06:33'),(452,948,280,'2016-08-02 17:09:57'),(453,948,281,'2016-08-02 17:09:57'),(454,949,280,'2016-08-02 17:12:38'),(455,949,281,'2016-08-02 17:12:38'),(456,950,280,'2017-01-28 15:45:26'),(457,950,283,'2017-01-28 15:45:26'),(458,950,284,'2017-01-28 15:45:26'),(459,951,280,'2017-01-28 15:48:33'),(460,951,283,'2017-01-28 15:48:33'),(461,951,284,'2017-01-28 15:48:33'),(462,952,280,'2017-01-28 15:50:23'),(463,952,283,'2017-01-28 15:50:23'),(464,952,284,'2017-01-28 15:50:23'),(465,953,280,'2017-01-28 15:51:21'),(466,953,283,'2017-01-28 15:51:21'),(467,953,284,'2017-01-28 15:51:21'),(468,954,280,'2017-01-28 15:52:27'),(469,954,283,'2017-01-28 15:52:27'),(470,954,284,'2017-01-28 15:52:27'),(471,955,280,'2017-01-28 15:53:10'),(472,955,283,'2017-01-28 15:53:10'),(473,955,284,'2017-01-28 15:53:10'),(474,956,280,'2017-01-28 15:54:43'),(475,956,283,'2017-01-28 15:54:43'),(476,956,284,'2017-01-28 15:54:43'),(477,957,280,'2017-01-28 15:55:34'),(478,957,283,'2017-01-28 15:55:34'),(479,957,284,'2017-01-28 15:55:34'),(480,958,280,'2017-01-28 15:56:49'),(481,958,283,'2017-01-28 15:56:49'),(482,958,284,'2017-01-28 15:56:49'),(483,959,280,'2017-01-28 15:57:38'),(484,959,283,'2017-01-28 15:57:38'),(485,959,284,'2017-01-28 15:57:38'),(486,960,280,'2017-01-28 15:58:25'),(487,960,283,'2017-01-28 15:58:25'),(488,960,284,'2017-01-28 15:58:25'),(489,961,280,'2017-01-28 15:59:14'),(490,961,283,'2017-01-28 15:59:14'),(491,961,284,'2017-01-28 15:59:14'),(492,962,280,'2017-01-28 15:59:53'),(493,962,283,'2017-01-28 15:59:53'),(494,962,284,'2017-01-28 15:59:53'),(495,963,280,'2017-01-28 16:00:43'),(496,963,283,'2017-01-28 16:00:43'),(497,963,284,'2017-01-28 16:00:43'),(498,964,280,'2017-01-28 16:01:39'),(499,964,283,'2017-01-28 16:01:39'),(500,964,284,'2017-01-28 16:01:39'),(501,965,280,'2017-01-28 16:02:43'),(502,965,283,'2017-01-28 16:02:43'),(503,965,284,'2017-01-28 16:02:43'),(504,966,280,'2017-01-28 16:03:40'),(505,966,283,'2017-01-28 16:03:40'),(506,966,284,'2017-01-28 16:03:40'),(507,967,280,'2017-01-28 16:05:04'),(508,967,283,'2017-01-28 16:05:04'),(509,967,284,'2017-01-28 16:05:04'),(510,968,280,'2017-01-28 16:05:36'),(511,968,283,'2017-01-28 16:05:36'),(512,968,284,'2017-01-28 16:05:36'),(513,969,280,'2017-01-28 16:06:22'),(514,969,283,'2017-01-28 16:06:22'),(515,969,284,'2017-01-28 16:06:22'),(516,970,280,'2017-01-28 16:07:51'),(517,970,283,'2017-01-28 16:07:51'),(518,970,284,'2017-01-28 16:07:51'),(519,971,280,'2017-01-28 16:08:52'),(520,971,283,'2017-01-28 16:08:52'),(521,971,284,'2017-01-28 16:08:52'),(522,972,280,'2017-01-28 16:09:42'),(523,972,283,'2017-01-28 16:09:42'),(524,972,284,'2017-01-28 16:09:42'),(525,973,280,'2017-01-28 16:11:31'),(526,973,283,'2017-01-28 16:11:31'),(527,973,284,'2017-01-28 16:11:31'),(528,974,280,'2017-01-28 16:12:10'),(529,974,283,'2017-01-28 16:12:10'),(530,974,284,'2017-01-28 16:12:10'),(531,975,280,'2017-01-28 16:12:52'),(532,975,283,'2017-01-28 16:12:52'),(533,975,284,'2017-01-28 16:12:52'),(534,976,280,'2017-01-28 16:13:40'),(535,976,283,'2017-01-28 16:13:40'),(536,976,284,'2017-01-28 16:13:40'),(537,977,280,'2017-01-28 16:14:28'),(538,977,283,'2017-01-28 16:14:28'),(539,977,284,'2017-01-28 16:14:28'),(540,978,280,'2017-01-28 16:15:17'),(541,978,283,'2017-01-28 16:15:17'),(542,978,284,'2017-01-28 16:15:17'),(543,979,280,'2017-01-28 16:16:23'),(544,979,283,'2017-01-28 16:16:23'),(545,979,284,'2017-01-28 16:16:23'),(546,980,280,'2017-01-28 16:18:02'),(547,980,283,'2017-01-28 16:18:02'),(548,980,284,'2017-01-28 16:18:02'),(549,981,280,'2017-01-28 16:19:12'),(550,981,283,'2017-01-28 16:19:12'),(551,981,284,'2017-01-28 16:19:12'),(552,982,280,'2017-01-28 16:21:25'),(553,982,283,'2017-01-28 16:21:25'),(554,982,284,'2017-01-28 16:21:25'),(555,982,381,'2017-01-28 16:21:25'),(556,983,280,'2017-01-28 16:22:32'),(557,983,283,'2017-01-28 16:22:32'),(558,983,284,'2017-01-28 16:22:32'),(559,983,381,'2017-01-28 16:22:32'),(560,984,280,'2017-01-28 16:23:41'),(561,984,284,'2017-01-28 16:23:41'),(562,984,381,'2017-01-28 16:23:41'),(563,985,280,'2017-01-28 16:25:36'),(564,985,283,'2017-01-28 16:25:36'),(565,985,284,'2017-01-28 16:25:36'),(566,985,381,'2017-01-28 16:25:36'),(567,986,280,'2017-02-03 21:09:58'),(568,986,284,'2017-02-03 21:09:58'),(569,986,381,'2017-02-03 21:09:58'),(570,987,280,'2017-02-03 21:12:07'),(571,987,284,'2017-02-03 21:12:07'),(572,987,381,'2017-02-03 21:12:07'),(573,993,280,'2017-05-17 15:11:07'),(574,993,283,'2017-05-17 15:11:07'),(575,993,284,'2017-05-17 15:11:07'),(576,993,381,'2017-05-17 15:11:07'),(613,1017,386,'2017-05-17 22:02:57'),(614,1017,387,'2017-05-17 22:02:57'),(615,1040,388,'2019-04-07 11:10:06');
/*!40000 ALTER TABLE `words-labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14  9:21:09
