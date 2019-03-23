DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

 use burgers_db;

CREATE TABLE burgers (
  id Int(11) AUTO_INCREMENT NOT NULL,
  burger_name VARCHAR(100) NOT NULL,
  devoured BOOLEAN ,
  PRIMARY KEY (id) );