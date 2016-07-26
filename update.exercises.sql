USE codeup_test_db;

SELECT *  FROM albums;
UPDATE albums
SET sales = sales * 10;


SELECT * FROM albums WHERE release_date < 1990;
UPDATE albums
SET release_date = release_date - 50
WHERE release_date < 1980;


SELECT * FROM albums WHERE artist = 'Shania Twain';
UPDATE albums
SET artist = 'Wynona Twain'
WHERE artist = 'Shania Twain';

SELECT * FROM albums;


 