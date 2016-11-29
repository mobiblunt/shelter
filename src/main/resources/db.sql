CREATE TABLE USER(
ID bigint(20) auto_increment NOT NULL Primary key,
FIRST_NAME varchar(30) not null,
LAST_NAME varchar(30) not null,
PASSWORD varchar(100) not null,
gender varchar(30) not null,
date_of_birth date not null,
email varchar(30) not null,
mobile_phone varchar(30) not null,
city varchar(30) not null,
state varchar(30) not null,
country varchar(30) not null
);
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
    FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

