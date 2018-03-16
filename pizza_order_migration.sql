USE codeup_test_db;

DROP TABLE IF EXISTS pizza_order;

CREATE TABLE pizza_order (
  name VARCHAR(120) NOT NULL,
  phone_number CHAR(10),
  email VARCHAR(150),
  address VARCHAR(200),
  pizza_size CHAR(2),
  total_cost Decimal(6,2),
  description VARCHAR(500),
  isDelivered TINYINT,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (name)
);