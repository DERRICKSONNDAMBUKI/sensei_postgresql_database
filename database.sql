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
SELECT
  *
FROM
  company;
-- display everything on the table
SELECT
  id,
  name,
  salary
FROM
  company;
-- display only id,name and salary from the company table
SELECT
  *
FROM
  company
WHERE
  salary = 65000;
-- using WHERE clause and an expression to display record that matches a saslary of 65,000
SELECT
  CURRENT_TIMESTAMP;
-- displays current date and time from the system
SELECT
  *
FROM
  company
WHERE
  age >= 19
  AND salary >= 65000;
-- where clause is used to specify a condition using expressions
SELECT
  *
FROM
  company
WHERE
  name LIKE 'R%';
-- displays the records that name starts with R
  -- The percent sign represents zero, one, or multiple numbers or characters. The underscore
  -- represents a single number or character.
SELECT
  *
FROM
  company
WHERE
  age IN (19, 29);
-- display records that age is either 19 or 29
SELECT
  *
FROM
  company
WHERE
  age NOT IN (19, 29);
-- display records that age is neither 19 nor 29
SELECT
  *
FROM
  company
WHERE
  age BETWEEN 12
  and 19;
SELECT
  age
FROM
  company
WHERE
  EXISTS (
    SELECT
      age
    FROM
      company
    WHERE
      salary > 65000
  );
-- sql subquery
SELECT
  *
FROM
  company
WHERE
  age >= 25
  OR salary = 65000;
UPDATE
  company
SET
  salary = 15000
WHERE
  id = 3;
-- updates the salary records of id 3
UPDATE
  company
SET
  address = 'Mombasa',
  salary = 50000;
-- updates all addresses to Mombasa and all salaries to 50000
DELETE FROM
  company
WHERE
  id = 2;
-- removes records of id 2
SELECT
  *
FROM
  company
WHERE
  age :: text LIKE '2%';
-- display all records that age starts with 2
SELECT
  *
FROM
  company
WHERE
  address LIKE '&-&';
-- display all records that address have hyphen (-) inside text
SELECT
  *
FROM
  company
LIMIT
  4;
-- display only 4 records
SELECT
  *
FROM
  company
LIMIT
  3 OFFSET 2;
-- display 3 records from the 3rd position skipping 2 positions
SELECT
  *
FROM
  company
ORDER BY
  age ASC;
-- display records in ascending order by age
SELECT
  *
FROM
  company
ORDER BY
  name,
  salary ASC;
-- display records in ascending order by name and salary
SELECT
  name,
  SUM(salary)
FROM
  company
GROUP BY
  name;
-- displays name and total sum of their salaries grouped by name
INSERT INTO
  COMPANY
VALUES
  (8, 'Paul', 24, 'Kisumu', 20000.00);
INSERT INTO
  COMPANY
VALUES
  (9, 'James', 44, 'Marsabit', 5000.00);
INSERT INTO
  COMPANY
VALUES
  (10, 'James', 45, 'Bungoma', 5000.00);
With CTE AS (
    SELECT
      id,
      name,
      age,
      address,
      salary
    FROM
      company
  )
SELECT
  *
FROM
  CTE;
With RECURSIVE t(n) AS (
    VALUES
      (0)
    UNION ALL
    SELECT
      salary fom company
    WHERE
      salary < 20000
  )
SELECT
  SUM(n)
FROM
  t;
--   finds the sum of the salaries less than 20000
  CREATE TABLE company1(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
  );
With moved_rows AS (
    DELETE FROM
      company
    WHERE
      salary >= 30000 RETURNING *
  )
INSERT INTO
  company1 (
    SELECT
      *
    FROM
      moved_rows
  );
-- moves records from company to company1
SELECT
  *
FROM
  company;
SELECT
  *
FROM
  company1;
SELECT
  name
FROM
  company
GROUP BY
  name
HAVING
  COUNT(name) < 2;
-- display records for which name count is less than 2
  -- The HAVING clause allows us to pick out particular rows where the function's result meets some
  -- condition.
INSERT INTO
  COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
  (6, 'Loise', 32, 'Malindi', 26000.00);
INSERT INTO
  COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
  (7, 'Allen', 25, 'Kiambu', 15000.00);
INSERT INTO
  COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
  (10, 'Loise', 32, 'Malindi', 26000.00);
INSERT INTO
  COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
  (11, 'Allen', 25, 'Kiambu', 15000.00);
-- DISTINCT keyword is used in conjunction with SELECT statement to eliminate
  -- all the duplicate records and fetching only unique records.
  CREATE TABLE COMPANY1(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
  );
-- NOT NULL constaint- ensures that a column cannot have a NULL value
  CREATE TABLE COMPANY3(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL UNIQUE,
    ADDRESS CHAR(50),
    SALARY REAL DEFAULT 50000.00
  );
-- UNIQUE constraint - Ensures that all values in a comlumn are different.
  CREATE TABLE COMPANY4(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
  );
-- PRIMARY Key − Uniquely identifies each row/record in a database table.
  CREATE TABLE COMPANY6(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
  );
CREATE TABLE DEPARTMENT1(
    ID INT PRIMARY KEY NOT NULL,
    DEPT CHAR(50) NOT NULL,
    EMP_ID INT references COMPANY6(ID)
  );
-- FOREIGN Key − Constrains data based on columns in other tables.
  -- The column EMP_ID is the foreign key and references the ID field of
  -- the table COMPANY6.
  CREATE TABLE COMPANY5(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL CHECK(SALARY > 0)
  );
-- CHECK Constraint − The CHECK constraint ensures that all values in a column satisfy
  -- certain conditions.
  CREATE TABLE COMPANY7(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT,
    AGE INT,
    ADDRESS CHAR(50),
    SALARY REAL,
    EXCLUDE USING gist (NAME WITH =, AGE WITH <>)
  );
-- EXCLUSION Constraint − The EXCLUDE constraint ensures that if any two rows are
  -- compared on the specified column(s) or expression(s) using the specified operator(s),
  -- not all of these comparisons will return TRUE.
  -- USING gist is the type of index to build and use for enforcement.
ALTER TABLE
  table_name DROP CONSTRAINT some_name;
-- dropping constraints
INSERT INTO
  department (id, dept, emp_id)
VALUES
  (1, 'IT Billing', 1);
INSERT INTO
  department (id, dept, emp_id)
VALUES
  (2, 'Engineering', 2);
INSERT INTO
  department (id, dept, emp_id)
VALUES
  (3, 'Finance', 7);
SELECT
  emp_id,
  name,
  dept
FROM
  company
  CROSS JOIN department;
SELECT
  emp_id,
  name,
  dept
FROM
  company
  INNER JOIN department ON company.id = department.emp_id;
SELECT
  emp_id,
  name,
  dept
FROM
  company
  LEFT OUTER JOIN department ON company.id = department.emp_id;
SELECT
  emp_id,
  name,
  dept
FROM
  company
  RIGHT OUTER JOIN department ON company.id = department.emp_id;
SELECT
  emp_id,
  name,
  dept
FROM
  company FULL
  OUTER JOIN department ON company.id = department.emp_id;
SELECT
  emp_id,
  name,
  dept
FROM
  company
  INNER JOIN department ON company.id = department.emp_id
UNION
SELECT
  emp_id,
  name,
  dept
FROM
  company
  LEFT OUTER JOIN department ON company.id = department.emp_id;
-- The PostgreSQL UNION clause/operator is used to combine the results of two or more SELECT
  -- statements without returning any duplicate rows.
SELECT
  emp_id,
  name,
  dept
FROM
  company
  INNER JOIN department ON company.id = department.emp_id
UNION ALL
SELECT
  emp_id,
  name,
  dept
FROM
  company
  LEFT OUTER JOIN department ON company.id = department.emp_id;
SELECT
  c.id,
  c.name,
  c.age,
  d.dept
FROM
  company AS c,
  department AS d
WHERE
  c.id = d.emp_id;
UPDATE company SET address = NULL ,salary = NULL WHERE id IN (6,7);
SELECT * FROM pg_trigger;
-- listing triggers
-- PostgreSQL Triggers are database callback functions,
-- performed/invoked when a specified database event occurs.
ALTER TABLE company ADD gender CHAR(1);
-- add a column gender to company table
ALTER TABLE  company DROP gender;
-- The PostgreSQL ALTER TABLE command is used to add, delete or modify columns in an
-- existing table.
TRUNCATE TABLE company;
-- The PostgreSQL TRUNCATE TABLE command is used to delete complete data from an
-- existing table.
CREATE VIEW  company_view as SELECT id,name,age FROM  company;
SELECT  * FROM company_view;
DROP VIEW  company_view;
-- A view can represent a subset of a real table, selecting certain columns or
-- certain rows from an ordinary table. A view can even represent joined tables.
