DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  code VARCHAR(15),
  category_id INT,
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(20, 2)
); 

DROP TABLE IF EXISTS categories; 
CREATE TABLE categories (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255),
  description TEXT
);

DROP TABLE IF EXISTS related_products;
CREATE TABLE related_products (
  ID SERIAL PRIMARY KEY,
  product1_id INTEGER,
  product2_id INTEGER
);
