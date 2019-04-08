USE codeup_test_db;

DROP TABLE IF EXISTS `albums`;

CREATE TABLE albums
(
    ID           int unsigned NOT NULL AUTO_INCREMENT,
    ARTIST       varchar(128) NOT NULL,
    NAME         varchar(128)NOT NULL,
    RELEASE_DATE int,
    SALES        decimal(9,5),
    GENRE        varchar(50),
    PRIMARY KEY (ID)
);