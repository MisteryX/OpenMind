CREATE TABLE `pool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `note` varchar(500) NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `editor` int(11) unsigned NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pool_creator` (`creator`),
  KEY `fk_pool_editor` (`editor`),
  CONSTRAINT `fk_pool_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pool_editor` FOREIGN KEY (`editor`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

