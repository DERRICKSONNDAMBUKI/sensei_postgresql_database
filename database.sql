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
-- insert into into a table
SELECT * FROM company;
-- display everything on the table
SELECT id,name,salary FROM company;
-- display only id,name and salary from the company table
SELECT * FROM company WHERE salary=65000;
-- using WHERE clause and an expression to display record that matches a saslary of 65,000
SELECT CURRENT_TIMESTAMP;
-- displays current date and time from the system
SELECT * FROM company WHERE age>=19 AND salary >=65000;
-- where clause is used to specify a condition using expressions
SELECT * FROM company WHERE name LIKE 'R%';
-- displays the records that name starts with R
SELECT * FROM company WHERE age IN (19,29);
-- display records that age is either 19 or 29
SELECT * FROM company WHERE age NOT IN (19,29);
-- display records that age is neither 19 nor 29
SELECT * FROM company WHERE  age BETWEEN 12 and 19;
SELECT age FROM company WHERE EXISTS (SELECT age FROM company WHERE salary>65000)
-- sql subquery
SELECT * FROM company WHERE age >=25 OR salary=65000;