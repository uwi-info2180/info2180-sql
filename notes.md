# SQL Notes

## Glossary
SQL - Structured Query Language
DBMS - DataBase Management System
LAMP - Linux Apache MySQL and PHP
WAMP - Windows Apache MySQL and PHP

## Types of DBMS
- MySQL (Open source)
- Oracle (Proprietary) Oracle XE (FREE)
- Postgres (Open Source)
- Microsoft SQL Server (Proprietary) MS SQL Server Express

## Cloud 9

### Start Apache
apachectl start
apachectl stop

### Start MySQL
mysql-ctl start
mysql-ctl stop
mysql-ctl cli

### Cloud 9 database info
Hostname - $IP (The same local IP as the application you run on Cloud9)
Port - 3306 (The default MySQL port number)
User - $C9_USER (Your Cloud9 user name)
Password - "" (No password since you can only access the DB from within the workspace)
Database - c9 (The database name)

In PHP you can get the details using getenv('C9_USER') and getenv('IP')

### See all databases
SHOW DATABASES;

### See all tables
SHOW TABLES;

### Switch to a datbase
USE nameofdb;

### Run SQL Script
source simpsons.sql