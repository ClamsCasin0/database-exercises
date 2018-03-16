USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(25),
  name  VARCHAR(50),
  release_date INT(4),
  sales FLOAT(12),
  genre VARCHAR(15),
  PRIMARY KEY (id)
);