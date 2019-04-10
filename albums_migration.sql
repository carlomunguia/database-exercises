USE codeup_test_db;

DROP TABLE if exists `albums`;

CREATE TABLE albums (
    ID     int unsigned NOT NULL AUTO_INCREMENT,
    ARTIST varchar(128),
    NAME  varchar(128),
    YEAR   year,
    GENRE  varchar(128),
    SALES  decimal(9, 5),
    PRIMARY KEY (ID));

