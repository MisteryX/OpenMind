CREATE TABLE `model` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `editor` int(11) unsigned NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_model_creator` (`creator`),
  KEY `fk_model_editor` (`editor`),
  CONSTRAINT `fk_model_creator` FOREIGN KEY (`creator`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_model_editor` FOREIGN KEY (`editor`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
