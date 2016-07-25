USE codeup_test_db;

TRUNCATE albums;

insert into albums (artist, name, release_date, sales, genre)

values('Drake', 'Views', '2016', '50', 'R&B'),
	  ('Pink Floyd', 'The Dark Side of the Moon', '1973', '22', 'Progressive Rock')	,
	  ('Bee Gees', 'Saturday Night Fever', '1977', '19', 'Disco');