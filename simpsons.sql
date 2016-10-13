-- MySQL dump 10.11
--
-- to install this database, from a terminal, type:
-- mysql -u USERNAME -p -h SERVERNAME simpsons < simpsons.sql
--
-- Host: localhost    Database: simpsons
-- ------------------------------------------------------
-- Server version   5.0.45-log

-- DROP DATABASE IF EXISTS simpsons;
CREATE DATABASE simpsons;
USE simpsons;

DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
id INT UNSIGNED NOT NULL PRIMARY KEY, 
name VARCHAR(32) DEFAULT NULL, 
teacher_id INT UNSIGNED NOT NULL
);
INSERT INTO courses VALUES
(10001, 'Computer Science 142', 1234),
(10002, 'Computer Science 143', 5678),
(10003, 'Computer Science 190M', 9012),
(10004, 'Informatics 100', 1234);

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
student_id INT UNSIGNED NOT NULL, 
course_id INT UNSIGNED NOT NULL, 
grade varchar(2) DEFAULT NULL
);
INSERT INTO grades VALUES
(123, 10001, 'B-'),
(123, 10002, 'C'),
(456, 10001, 'B+'),
(888, 10002, 'A+'),
(888, 10003, 'A+'),
(404, 10004, 'D+'),
(404, 10002, 'B'),
(456, 10002, 'D-');

DROP TABLE IF EXISTS students;
CREATE TABLE students (
id INT UNSIGNED NOT NULL PRIMARY KEY, 
name VARCHAR(32) DEFAULT NULL, 
email VARCHAR(32) DEFAULT NULL,
password VARCHAR(16) DEFAULT NULL
);
INSERT INTO students VALUES
(123, 'Bart', 'bart@fox.com', 'bartman'),
(404, 'Ralph', 'ralph@fox.com', 'catfood'),
(456, 'Milhouse', 'milhouse@fox.com', 'fallout'),
(888, 'Lisa', 'lisa@fox.com', 'vegan');

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
id INT UNSIGNED NOT NULL PRIMARY KEY, 
name VARCHAR(32) DEFAULT NULL
);

INSERT INTO teachers VALUES
(1234, 'Krabappel'),
(5678, 'Hoover'),
(9012, 'Stepp');

-- debug output to just show the contents of all tables
/*SHOW TABLES;
SELECT * FROM courses;
SELECT * FROM grades;
SELECT * FROM students;
SELECT * FROM teachers;*/
