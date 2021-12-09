DROP TABLE IF EXISTS `driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `deliverydriver_rating` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_driver_id` (`driver_id`),
  CONSTRAINT `fk_driverrating_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);