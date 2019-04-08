USE codeup_test_db;
Create Table: CREATE TABLE `albums` (
    'ID' int(10) unsigned NOT NULL AUTO_INCREMENT,
    'ARTIST' varchar(50) DEFAULT NULL,
    'NAME' varchar(100) NOT NULL,
    'RELEASE_DATE' int(10),
    'SALES' float(20),
    'GENRE'varchar(50) NOT NULL,
    PRIMARY KEY ('ID')