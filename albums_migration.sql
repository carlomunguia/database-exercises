USE codeup_test_db;

CREATE TABLE albums
(
    ID     int unsigned NOT NULL AUTO_INCREMENT,
    ARTIST varchar(128),
    NAME  varchar(128),
    YEAR   int(4),
    GENRE  varchar(128),
    SALES  decimal(9, 5),
    PRIMARY KEY (ID)
);