USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)

values('Drake', 'Views', '2016', '50', 'R&B'),
	  ('Pink Floyd', 'The Dark Side of the Moon', '1973', '22', 'Progressive Rock')	,
	  ('Bee Gees', 'Saturday Night Fever', '1977', '19', 'Disco'),
	  ('Led Zeppelin', 'Led Zeppelin IV', '1971', '29', 'Hard Rock, Heavy Metal'),
      ('Shania Twain', 'Come On Over', '1997', '29', 'Country, Pop');