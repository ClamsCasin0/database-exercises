USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(125),
  name  VARCHAR(125),
  release_date INT,
  sales DECIMAL(12,2),
  genre VARCHAR(120),
  PRIMARY KEY (id)
);