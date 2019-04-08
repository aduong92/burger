DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burger_db;

 use burger_db;

CREATE TABLE burgers (
  id Int(11) AUTO_INCREMENT NOT NULL,
  burger_name VARCHAR(100) NOT NULL,
  devoured BOOLEAN ,
  PRIMARY KEY (id) );