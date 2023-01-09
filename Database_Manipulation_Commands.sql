-- Creating Databases in MySQL
CREATE DATABASE IF NOT EXISTS employee_db;

CREATE DATABASE IF NOT EXISTS employee_db_2;

-- Listing Available Databases in MySQL
SHOW DATABASES;

-- Database Selection in MySQL
USE employee_db;
SELECT database();

-- DROP DATABASE [IF EXISTS] database_name;
DROP DATABASE IF EXISTS employee_db_2;
SHOW DATABASES;