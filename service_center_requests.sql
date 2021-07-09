-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: service_center
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id_req` int unsigned NOT NULL AUTO_INCREMENT,
  `date_time_start` datetime NOT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `urgency` varchar(20) NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_equipment` int unsigned NOT NULL,
  `id_service` int unsigned NOT NULL,
  `id_employee_reception` int unsigned NOT NULL,
  `id_employee_engineer` int unsigned NOT NULL,
  `id_status` int unsigned NOT NULL,
  PRIMARY KEY (`id_req`),
  KEY `fk_requests_customers_id` (`id_customer`),
  KEY `fk_requests_equipment_id` (`id_equipment`),
  KEY `fk_requests_services_id` (`id_service`),
  KEY `fk_requests_employees_rec_id` (`id_employee_reception`),
  KEY `fk_requests_employees_eng_id` (`id_employee_engineer`),
  KEY `fk_requests_status_id` (`id_status`),
  CONSTRAINT `fk_requests_customers_id` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_cus`),
  CONSTRAINT `fk_requests_employees_eng_id` FOREIGN KEY (`id_employee_engineer`) REFERENCES `employees` (`id_empl`),
  CONSTRAINT `fk_requests_employees_rec_id` FOREIGN KEY (`id_employee_reception`) REFERENCES `employees` (`id_empl`),
  CONSTRAINT `fk_requests_equipment_id` FOREIGN KEY (`id_equipment`) REFERENCES `equipment` (`id_eq`),
  CONSTRAINT `fk_requests_services_id` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_ser`),
  CONSTRAINT `fk_requests_status_id` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_stat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,'2020-02-25 13:40:40','2020-03-02 15:20:20','обычная',2,2,1,1,6,4),(2,'2021-06-28 15:40:00',NULL,'обычная',1,4,2,8,7,3),(3,'2020-03-01 13:00:40','2020-03-03 15:20:20','высокая',5,3,3,1,2,4),(4,'2021-07-08 15:40:00',NULL,'высокая',7,9,1,8,10,1);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 15:27:48
