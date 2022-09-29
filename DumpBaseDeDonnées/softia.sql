-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (arm64)
--
-- Host: localhost    Database: softia
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `attestations`
--

DROP TABLE IF EXISTS `attestations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attestations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `etudiant_id` bigint unsigned NOT NULL,
  `convention_id` bigint unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attestations_etudiant_id_foreign` (`etudiant_id`),
  KEY `attestations_convention_id_foreign` (`convention_id`),
  CONSTRAINT `attestations_convention_id_foreign` FOREIGN KEY (`convention_id`) REFERENCES `conventions` (`id`),
  CONSTRAINT `attestations_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attestations`
--

LOCK TABLES `attestations` WRITE;
/*!40000 ALTER TABLE `attestations` DISABLE KEYS */;
/*!40000 ALTER TABLE `attestations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conventions`
--

DROP TABLE IF EXISTS `conventions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conventions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbHeur` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conventions`
--

LOCK TABLES `conventions` WRITE;
/*!40000 ALTER TABLE `conventions` DISABLE KEYS */;
INSERT INTO `conventions` VALUES (1,'Dr. Pietro Ullrich Jr.',8,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(2,'Ms. Krystina Thompson',8,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(3,'Kylee Kessler',7,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(4,'Margret Harris',3,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(5,'Jaron Ankunding',3,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(6,'Ms. Tanya Keeling I',1,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(7,'Roma Lang DVM',6,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(8,'Lempi Turcotte',1,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(9,'Kyla Rosenbaum',9,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(10,'Electa Auer',2,'2022-09-29 16:34:40','2022-09-29 16:34:40');
/*!40000 ALTER TABLE `conventions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conventions_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `etudiants_mail_unique` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiants`
--

LOCK TABLES `etudiants` WRITE;
/*!40000 ALTER TABLE `etudiants` DISABLE KEYS */;
INSERT INTO `etudiants` VALUES (1,'Stephen','Greenfelder','clementine75@example.net',1,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(2,'Sydney','Lind','junius.abernathy@example.net',2,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(3,'Stefanie','Yost','maximo.mcdermott@example.net',7,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(4,'Haley','Labadie','uriel.morar@example.org',1,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(5,'Jerel','Tillman','naomi.spinka@example.net',6,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(6,'Blaze','Haag','aurelio.okeefe@example.net',8,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(7,'Hassie','Little','ldoyle@example.net',2,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(8,'Peggie','Shanahan','hassan08@example.com',5,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(9,'Reagan','Legros','igutmann@example.com',1,'2022-09-29 16:34:40','2022-09-29 16:34:40'),(10,'Zack','Hand','uondricka@example.net',7,'2022-09-29 16:34:40','2022-09-29 16:34:40');
/*!40000 ALTER TABLE `etudiants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_09_29_120532_create_etudiants_table',1),(3,'2022_09_29_120544_create_conventions_table',1),(4,'2022_09_29_120554_create_attestations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-30  1:17:28
