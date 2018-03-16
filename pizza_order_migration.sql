USE codeup_test_db;

DROP TABLE IF EXISTS pizza_order;

CREATE TABLE pizza_order (
  name VARCHAR(35) NOT NULL,
  phone_number VARCHAR(30),
  email CHAR(10),
  address VARCHAR(40),
  pizza_size CHAR(2),
  total_cost Decimal(8,2),
  description VARCHAR(50),
  isDelivered TINYINT,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (name)
);