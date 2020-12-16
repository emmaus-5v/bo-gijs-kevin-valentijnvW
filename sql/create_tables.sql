DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  ID SERIAL PRIMARY KEY,
  code VARCHAR(15),
  category_id INT,
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
); 

DROP TABLE IF EXISTS categories; 
CREATE TABLE categories (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255),
  description TEXT
); 