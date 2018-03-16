USE codeup_test_db;

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(120),
  number CHAR(10),
  email VARCHAR(150),
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);