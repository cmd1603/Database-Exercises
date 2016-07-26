USE codeup_test_db;

SELECT 'This is Drakes latest album' AS 'Info';
SELECT * FROM albums WHERE artist = 'Drake';

SELECT 'The is the year Led Zeppelin IV was released' AS 'Info';
SELECT release_date FROM albums WHERE artist = 'Led Zeppelin';

SELECT 'This is the genre for Saturday Night Fever' AS 'Info';
SELECT genre FROM albums WHERE artist = 'Bee Gees';

SELECT 'These albums were released in the 70s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1970 AND 1979;

SELECT 'These albums had less than 20 million sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20;

SELECT 'These are the country albums' AS 'Info';
SELECT name FROM albums WHERE genre LIKE 'country%';  