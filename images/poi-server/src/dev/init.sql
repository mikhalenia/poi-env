CREATE TABLE IF NOT EXISTS `categories`(
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT NOW(),
  UNIQUE KEY `name`(`name`),
  PRIMARY KEY (`category_id`)
) ENGINE=TokuDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `points`(
  `point_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `longitude` DOUBLE DEFAULT 0,
  `latitude` DOUBLE DEFAULT 0,
  `site` VARCHAR(255) DEFAULT NULL,
  `working_time` json DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT NOW(),
  UNIQUE KEY (`category_id`, `name`, `longitude`, `latitude`),
  PRIMARY KEY (`point_id`)
) ENGINE=TokuDB DEFAULT CHARSET=utf8;
