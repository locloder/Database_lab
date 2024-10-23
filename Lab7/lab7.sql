CREATE TABLE if not exists categories (
id int PRIMARY KEY,
name varchar(255) NOT NULL
);

CREATE TABLE if not exists news (
id int PRIMARY KEY,
content text NOT NULL,
categories_id int NOT NULL,
FOREIGN KEY (categories_id) REFERENCES categories(id)
);

CREATE TABLE if not exists comments (
id int PRIMARY KEY,
content text NOT NULL,
news_id int NOT NULL,
FOREIGN KEY (news_id) REFERENCES news(id)
);

CREATE TABLE IF NOT EXISTS ratings (
id INT NOT NULL auto_increment,
rating INT CHECK (rating BETWEEN 1 AND 5),
news_id INT NOT NULL,
ip_adress VARCHAR(15) NOT NULL,
PRIMARY KEY (news_id, ip_adress),
FOREIGN KEY (news_id) REFERENCES news(id)
);