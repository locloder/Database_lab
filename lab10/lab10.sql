-- Адміністратор 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal дамп

SET NAMES utf8;
SET time_zone = '+00:00';
SET Foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS connections ;
CREATE TABLE connections (
id int(11) NOT NULL,
station_a int(11) NOT NULL,
station_b int(11) NOT NULL,
ПЕРВИННИЙ КЛЮЧ ( id ),
КЛЮЧ station_a ( station_a ),
КЛЮЧ station_b ( station_b ),
ОБМЕЖЕННЯ connections_ibfk_1 ЗОВНІШНІЙ КЛЮЧ ( station_a ) ПОСИЛАННЯ stations ( id ),
ОБМЕЖЕННЯ connections_ibfk_2 ЗОВНІШНІЙ КЛЮЧ ( station_b ) ПОСИЛАННЯ stations ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO connections ( id , station_a , station_b ) VALUES
(1, 8, 14),
(2, 1, 8),
(3, 2, 1),
(4, 5, 7),
(5, 3, 4),
(6, 15, 13);

DROP TABLE IF EXISTS lines ;
lines CREATE TABLE (
id int(11) NOT NULL,
name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
color varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
ПЕРВИННИЙ КЛЮЧ ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO lines ( id , name , color ) VALUES
(1, 'Святошинсько-Броварська', 'червоний'),
(2, «Оболонсько-Теремківська», «синій»),
(3, 'Сирецько-Печерська', 'зелений');

ВИДАЛИТИ ТАБЛИЦЮ, ЯКЩО ІСНУЄ stations ;
СТВОРИТИ ТАБЛИЦЮ stations (
id int(11) NOT NULL,
name varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
line_id int(11) NOT NULL,
previous_station int(11) DEFAULT NULL,
next_station int(11) DEFAULT NULL,
ПЕРВИННИЙ КЛЮЧ ( id ),
КЛЮЧ line_id ( line_id ),
КЛЮЧ previous_station ( previous_station ),
КЛЮЧ next_station ( next_station ),
ОБМЕЖЕННЯ stations_ibfk_1 FOREIGN KEY ( line_id ) REFERENCES lines ( id ),
ОБМЕЖЕННЯ stations_ibfk_2 FOREIGN KEY ( previous_station ) REFERENCES stations ( id ),
ОБМЕЖЕННЯ stations_ibfk_3 ЗОВНІШНІЙ КЛЮЧ ( next_station ) ПОСИЛАННЯ stations ( id )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stations ( id , name , line_id , previous_station , next_station ) ЗНАЧЕННЯ
(1, 'Академмістечко', 1, NULL, 2),
(2, 'Житомирська', 1, 1, 3),
(3, «Святошин», 1, 2, 4),
(4, «Нивки», 1, 3, 5),
(5, 'Берестейська', 1, 4, NULL),
(6, 'Героїв Дніпра', 2, NULL, 7),
(7, «Мінська», 2, 6, 8),
(8, «Оболонь», 2, 7, 9),
(9, «Почайна», 2, 8, 10),
(10, 'Тараса Шевченка', 2, 9, NULL),
(11, «Сирець», 3, NULL, 12),
(12, «Дорогожичі», 3, 11, 13),
(13, "Лук'янівська", 3, 12, 14),
(14, «Золоті ворота», 3, 12, 15),
(15, «Палац спорту», ​​3, 14, NULL);