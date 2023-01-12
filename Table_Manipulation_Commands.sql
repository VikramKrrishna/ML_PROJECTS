-- Creating Tables in MySQL
CREATE TABLE IF NOT EXISTS employee_db.EMP_RECORDS(
EMP_ID VARCHAR(4) NOT NULL,
FIRST_NAME VARCHAR(100) NOT NULL,
LAST_NAME VARCHAR(100),
GENDER VARCHAR(1),
CHECK(GENDER IN ('M','F','O'))
)ENGINE=INNODB;

-- Changing the Storage Engine of a Table
ALTER TABLE employee_db.emp_records ENGINE=MERGE;

-- CHECK Constraint in MySQL: Example
CREATE TABLE IF NOT EXISTS employee_db.EMP_TABLE_2 
(
EMP_ID VARCHAR(4) NOT NULL,
FIRST_NAME VARCHAR(100) NOT NULL,
LAST_NAME VARCHAR(100),
GENDER VARCHAR(1),
ROLE VARCHAR(100),
DEPT VARCHAR(100),
MANAGER_ID VARCHAR(100),
EXP INTEGER NOT NULL CHECK (EXP >= 0)
) ENGINE=INNODB;

-- CHECK Constraint in MySQL
CREATE TABLE IF NOT EXISTS employee_db.EMP_TABLE_3 
(
EMP_ID VARCHAR(4) NOT NULL,
FIRST_NAME VARCHAR(100) NOT NULL,
LAST_NAME VARCHAR(100),
GENDER VARCHAR(1),
ROLE VARCHAR(100),
DEPT VARCHAR(100),
MANAGER_ID VARCHAR(100),
EXP INTEGER NOT NULL CHECK (EXP >= 0),
CONSTRAINT Gener_check CHECK(GENDER in ('M','F','O'))
) ENGINE=INNODB;

-- Analyzing Table Description in MySQL
DESC employee_db.emp_records;

-- Listing Existing Tables in MySQL
USE employee_db;
SHOW TABLES;

-- Modifying Table Structure
--  Adding Columns to a Table
-- Adding a single column to a table
ALTER TABLE employee_db.emp_records
ADD Role VARCHAR(40);

DESC emp_records;

-- Adding multiple columns to a table
ALTER TABLE employee_db.emp_records
ADD DEPT VARCHAR(100),
ADD MANAGER_ID VARCHAR(100);

DESC emp_records;

-- Modifying Columns in a Table
-- Modifying a single column in a table
ALTER TABLE employee_db.emp_records
MODIFY GENDER VARCHAR(2) NOT NULL;
DESC emp_records;

-- Modifying Columns in a Table
ALTER TABLE employee_db.emp_records
MODIFY DEPT VARCHAR(100) NOT NULL,
MODIFY MANAGER_ID VARCHAR(100) NOT NULL;
DESC emp_records;

-- Renaming a Column in a Table
ALTER TABLE employee_db.emp_records
CHANGE COLUMN Role JOB VARCHAR(100);
DESC emp_records;

-- Dropping a Column in a Table
ALTER TABLE employee_db.emp_records
DROP COLUMN MANAGER_ID;
DESCRIBE employee_db.emp_records;

-- Renaming a Table
ALTER TABLE employee_db.emp_records
RENAME TO employee_db.emp_data;

SHOW TABLES;
DESCRIBE employee_db.emp_data;

-- Generated Columns in MySQL
ALTER TABLE employee_db.emp_data ENGINE = InnoDB,
ADD FULL_NAME VARCHAR(200)
GENERATED ALWAYS AS(CONCAT(FIRST_NAME,' ',LAST_NAME));

DESCRIBE employee_db.emp_data;

-- Truncating Tables in MySQL
TRUNCATE TABLE employee_db.emp_data;

SELECT * FROM employee_db.emp_data;

-- Dropping Tables
DROP TABLE  IF EXISTS employee_db.emp_table_3;
SHOW TABLES;
