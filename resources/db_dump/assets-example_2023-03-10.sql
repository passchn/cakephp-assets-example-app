# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.7.34)
# Datenbank: assets-example
# Verarbeitungszeit: 2023-03-10 19:07:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabellen-Dump articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `image_id` char(36) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;

INSERT INTO `articles` (`id`, `title`, `content`, `image_id`, `created`, `modified`)
VALUES
	('12be4797-fe2a-4c07-9cf7-f8fcff7c82af','My First Article','This is some content.','3a598481-1c3a-4378-af63-b0d6c9755e06','2023-03-10 19:57:16','2023-03-10 19:57:16');

/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;


# Tabellen-Dump assets_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets_assets`;

CREATE TABLE `assets_assets` (
  `id` char(36) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `category` varchar(255) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `directory` varchar(255) NOT NULL DEFAULT '',
  `mimetype` varchar(255) NOT NULL DEFAULT '',
  `filesize` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `assets_assets` WRITE;
/*!40000 ALTER TABLE `assets_assets` DISABLE KEYS */;

INSERT INTO `assets_assets` (`id`, `title`, `description`, `category`, `filename`, `directory`, `mimetype`, `filesize`, `created`, `modified`)
VALUES
	('3a598481-1c3a-4378-af63-b0d6c9755e06','',NULL,NULL,'230310-185716_pexels-yugal-srivastava-1067333.jpg','resources/assets/','image/jpeg','625916','2023-03-10 19:57:16','2023-03-10 19:57:16');

/*!40000 ALTER TABLE `assets_assets` ENABLE KEYS */;
UNLOCK TABLES;


# Tabellen-Dump assets_phinxlog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets_phinxlog`;

CREATE TABLE `assets_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `assets_phinxlog` WRITE;
/*!40000 ALTER TABLE `assets_phinxlog` DISABLE KEYS */;

INSERT INTO `assets_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`)
VALUES
	(20220121091709,'AssetsAddAssetsTable','2023-03-10 18:13:59','2023-03-10 18:13:59',0);

/*!40000 ALTER TABLE `assets_phinxlog` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
