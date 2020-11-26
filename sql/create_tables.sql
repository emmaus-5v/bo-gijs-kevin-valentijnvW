DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  user_id SMALLINT,
  datum_plaatsing TIMESTAMP,
  naam TEXT,
  beschrijving TEXT,
  veiling_start TIMESTAMP,
  veiling_eind TIMESTAMP,
  minimum_prijs NUMERIC(10,2),
  category_id SMALLINT
  
);