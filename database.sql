CREATE DATABASE testdb;
DROP DATABASE testdb;
CREATE TABLE company(
  id INT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  age INT NOT NULL,
  address CHAR(50),
  salary REAL
);
CREATE TABLE department(
  id INT PRIMARY KEY NOT NULL,
  dept CHAR(50) NOT NULL,
  emp_id INT NOT NULL
);
DROP TABLE company,
department;
CREATE SCHEMA myschema;
CREATE TABLE myschema.company(
  id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  address CHAR(25),
  salary DECIMAL(18, 2),
  PRIMARY KEY(id)
);
SELECT
  *
FROM
  myschema.company;
DROP SCHEMA myschema;
DROP SCHEMA myschema CASCADE;
-- drop all including contained objects