CREATE DATABASE testdb;
-- create a new database
DROP DATABASE testdb;
-- delete a database
CREATE TABLE company(
  id INT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  age INT NOT NULL,
  address CHAR(50),
  salary REAL
);
-- create a table
CREATE TABLE department(
  id INT PRIMARY KEY NOT NULL,
  dept CHAR(50) NOT NULL,
  emp_id INT NOT NULL
);
DROP TABLE company,
department;
-- delete a table
CREATE SCHEMA myschema;
-- create a schema - named collection of tables.
CREATE TABLE myschema.company(
  id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  address CHAR(25),
  salary DECIMAL(18, 2),
  PRIMARY KEY(id)
);
-- create a table in schema
SELECT
  *
FROM
  myschema.company;
-- select from a table in schema
  DROP SCHEMA myschema;
-- delete empty schema
  DROP SCHEMA myschema CASCADE;
-- drop all including contained objects
  -- Advantages of using a Schema
  -- - It allows many users to use one database without interfering with each other.
  -- - It organizes database objects into logical groups to make them more manageable.
  -- - Third-party applications can be put into separate schemas so they do not collide with
  -- - the names of other objects.
  CREATE TABLE company(
    id INT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    age INT NOT NULL,
    address CHAR(50),
    salary REAL,
    join_date DATE
  );
INSERT INTO
  company (id, name, age, address, salary, join_date)
VALUES
  (1, Ricky, 13, Nakuru, 85000.0, 2020 -02 -22);
INSERT INTO
  company (id, name, age, address, salary, join_date)
VALUES
  (2, Sensei, 17, Nakuru, 205000.0, 2018 -04 -28);
  INSERT INTO
  company (id, name, age, address, salary, join_date)
VALUES
  (3, Joy, 19, Nairobi, 75000.0, 2021 -08 -25);
INSERT INTO
  company (id, name, age, address, salary, join_date)
VALUES
  (4, Rube, 29, Nyeri, 65000.0, 2021 -05 -03);
INSERT INTO
  company (id, name, age, address, salary, join_date)
VALUES
  (5, Leen, 13, Machakos, 85000.0, 2020 -06 -14);

