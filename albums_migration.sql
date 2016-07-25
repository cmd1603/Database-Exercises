USE codeup_test_db;

DROP TABLE IF EXISTS albums;

create table albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(50) NOT NULL,
	name VARCHAR(100) NOT NULL,
	release_date YEAR NOT NULL,
	sales INT NOT NULL,
	genre VARCHAR(50) NOT NULL,
	primary key(id)
);