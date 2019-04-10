USE codeup_test_db;

SELECT 'PINK FLOYD ALBUMS' AS '';
SELECT * FROM albums where artist = 'Pink Floyd';
SELECT 'Sgt Pepers lonely hearts club band was released in' AS '';
SELECT YEAR FROM albums WHERE name = 'Sgt.Peppers Lonely Hearts Club Band';
SELECT 'The genre for Nevermind is :' AS '';
SELECT genre FROM albums where name = 'Nevermind';
SELECT 'Albums released in the 1990s :' AS '';
SELECT * from albums WHERE YEAR > 1990;
SELECT 'Albums with less than 20 million sales: ' AS '';
SELECT * from albums where sales < 20.0;
SELECT 'Rock Albums' AS '';
SELECT * from albums where genre = 'Rock';