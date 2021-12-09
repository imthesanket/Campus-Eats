DROP TABLE IF EXISTS `food_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_rating` (
  `foodrating_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `overallfood_rating` int DEFAULT NULL,
  PRIMARY KEY (`foodrating_id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_restaurant_id` (`restaurant_id`),
  CONSTRAINT `fk_foodrating_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);