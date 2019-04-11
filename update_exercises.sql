USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums
SET sales = sales*10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_year < 1980;
UPDATE albums
SET release_year = release_year - 50
WHERE release_year < 1980;
SELECT * FROM albums WHERE release_year < 1980;

SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
