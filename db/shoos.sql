DROP TABLE shoo_orders ;




CREATE TABLE shoo_orders (
  id SERIAL4 PRIMARY KEY,
  full_name VARCHAR(255),
  address VARCHAR(255),
  quantity INT2,
  size INT2,
  shoe_type VARCHAR
  );
