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

INSERT INTO role(name)
VALUES ('VERIFICATION_MANAGER');

INSERT INTO USER(first_name, last_name, password, gender, date_of_birth, email, mobile_phone, city,state, country)
VALUES ('Chima', 'Ejiofor','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm', 'male','1989-03-05','chimobi.ejiofor@gmail.com', '07067208421', 'Ketu','Lagos','Nigeria');

INSERT INTO USER_ROLE (user_id, role_id)
  SELECT user.id, role.id FROM user user, role role
  where user.email='chimobi.ejiofor@gmail.com' and role.name='ADMIN';
