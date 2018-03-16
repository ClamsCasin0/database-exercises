USE codeup_test_db;

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  number CHAR(15) NOT NULL,
  email VARCHAR(150),
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (id)
);