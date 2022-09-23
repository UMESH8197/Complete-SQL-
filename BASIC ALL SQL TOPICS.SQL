
What is a database : It is a collection of data and holds this data in the form of tables. 
What is a table : Table holds the data in form of rows and columns, similar to excel spreadsheet. 
The database provides us the capability to access and manipulate this data. 

2 types of databases :
1. Relational Database : data is stored in the form of rows and columns. Have r/s b/s 2 and more tables. EX. MYSQL, SQL SERVER, SQLite.
2. NO SQL Database : store like key-value, Document, graph, not r/s b/w 2 and more tables. Each table is different. EX. Mongodb, Cassandra. 

SQL : Structured Query Language. Mysql is database and SQL is a way to interact/communicate with MYSQL Database. SQL is is used to query a relational DB. 

SHOW DATABASES ;

CREATE DATABASE trendytech;
drop database TRENDYTECH;
USE trendytech;
select database();
create table employee
(
name varchar(233),  # 255 varchar limitation. 
age int,
salary int
);
show tables;
desc employee; # schema of table. 
drop table employee; 

----------------------------------------------------2ND CLASS------------------------------------------------------------------------------------
create table employee (
first_name varchar(30),
middle_name varchar(30),
last_name varchar(30),
age int,
salary int, 
location varchar(30)
);
show tables; 
desc employee;

select * from employee; 
INSERT INTO employee VALUES ('UMESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee VALUES ('GANESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('RAJARAM"S','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ("NAMADEV'S",'PAWAR',25,10000,'BANGLORE');
INSERT INTO employee VALUES ('ANURADHA','KRUSHNADEV','PAWAR',23,20000,'MUMBAI'),('LATIKA','KRUSHNADEV','PAWAR',45,50000,'BABHULGAON');
DROP TABLE EMPLOYEE;

create table employee (
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL
);

DESC EMPLOYEE; 
INSERT INTO employee (middle_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
DROP TABLE EMPLOYEE;
--------------------------------DEFAULT VALUES-----------------------------------------------------------------------------------------

create table employee (
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) DEFAULT 'BANGALORE'
);

DESC EMPLOYEE;

INSERT INTO employee (first_name,last_name,age,salary)VALUES ('KRUSHNADEV','PAWAR',25,10000);
select * from employee;
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,'mumbai');
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,NULL);
DROP TABLE EMPLOYEE;

create table employee (
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE'
);
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,NULL);
INSERT INTO employee (first_name,last_name,age,salary)VALUES ('UMESH','PAWAR',25,10000);
select * from employee;
INSERT INTO employee (first_name,last_name,age,salary)VALUES ('ANIL','PAWAR',25,10000);
DROP TABLE EMPLOYEE;

-------------------------------------------------Session-3-------------------------------------------------------------------------------------

create table employee ( 
ID INT,
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE'
);
INSERT INTO employee VALUES (1,'UMESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
SELECT * FROM EMPLOYEE;
DROP TABLE EMPLOYEE;
create table employee ( 
ID INT PRIMARY KEY,
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE'
);
DESC EMPLOYEE;
INSERT INTO employee VALUES (1,'UMESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee VALUES (1,'UMESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE'); # NO NULL AND DUPLICATE. MUST BE UNIQUE. 

create table employee ( 
ID INT,
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE',
PRIMARY KEY (ID) # YOU CAN MENTION LIKE THIS ALSO. OR
PRIMARY KEY (ID,FIRST_NAME)
);

DROP TABLE EMPLOYEE;

create table employee ( 
ID INT AUTO_INCREMENT,
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE',
PRIMARY KEY (ID)
);

DESC EMPLOYEE; 
INSERT INTO employee VALUES (1,'UMESH','KRUSHNADEV','PAWAR',25,10000,'BANGLORE');
INSERT INTO employee (first_name,last_name,age,salary,location)VALUES ('KRUSHNADEV','PAWAR',25,10000,'mumbai');
SELECT * FROM EMPLOYEE;
drop table employee;
# You can have only one primary key, and the primary key can not hold any null. We should use primary key when we have to uniquely identify each record. 
# Unique key can hold NULL, For example in MYSQL a unique key can hold any number of NULL values. In some of the other famous DB'S UNIQUE KEY hold only one NULL. 
# The purpose of unique key is to make sure the values do not duplicate. We can have only one primary key but multiple unique keys in table. 

create table employee ( 
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
age int NOT NULL,
PRIMARY KEY (first_name,last_name)
);

select * from employee;

insert into employee values('umesh','pawar',25);
insert into employee values('ganesh','pawar',25);
insert into employee values('ganesh','pawar',25);
insert into employee values('ganesh','parade',25);
drop table employee;


create table employee ( 
ID int UNIQUE KEY,
first_name varchar(30),
last_name varchar(30),
age int NOT NULL
);

DESC EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(1,'UMESH','PAWAR',25);
INSERT INTO EMPLOYEE VALUES(1,'UMESH','PAWAR',25);
INSERT INTO EMPLOYEE VALUES(NULL,'UMESH','PAWAR',25);
INSERT INTO EMPLOYEE VALUES(NULL,'UMESH','PAWAR',25);
SELECT * FROM EMPLOYEE;
DROP TABLE EMPLOYEE;

create table employee ( 
ID int,
first_name varchar(30),
last_name varchar(30),
age int NOT NULL,
UNIQUE KEY(FIRST_NAME,LAST_NAME)
);
DROP TABLE EMPLOYEE;

------------------------------------------------Session-4---------------------------------------------------------------------------------------------
create table employee ( 
ID INT,
first_name varchar(30) NOT NULL,
middle_name varchar(30),
last_name varchar(30) NOT NULL,
age int NOT NULL,
salary int NOT NULL, 
location varchar(30) NOT NULL DEFAULT 'BANGALORE',
PRIMARY KEY (ID)
);
desc employee;
INSERT INTO employee (ID,first_name,last_name,age,salary)VALUES (1,'KRUSHNADEV','PAWAR',25,10000);
INSERT INTO employee (ID,first_name,last_name,age,salary)VALUES (2,'GANESH','PAWAR',60,20000);
INSERT INTO employee (ID,first_name,last_name,age,salary)VALUES (3,'UMESH','PAWAR',27,30000);
SELECT * FROM EMPLOYEE;
SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEE;
SELECT * FROM EMPLOYEE WHERE AGE > 29;
SELECT * FROM EMPLOYEE WHERE first_name = 'umesh'; # This sentence is case insensitive. to make it case sensitive use keyword binary. 
SELECT * FROM EMPLOYEE WHERE BINARY first_name = 'UMESH';
SELECT FIRST_NAME AS NAME,LAST_NAME AS SURNAME FROM EMPLOYEE;
SELECT * FROM EMPLOYEE;
SET SQL_SAFE_UPDATES = 0;
UPDATE EMPLOYEE SET AGE = 35 WHERE AGE = 27;
UPDATE EMPLOYEE SET LOCATION = 'MUMBAI' WHERE FIRST_NAME = 'UMESH';
UPDATE EMPLOYEE SET SALARY = SALARY+5000;
UPDATE EMPLOYEE SET LOCATION='BANGALORE' WHERE FIRST_NAME = 'UMESH' AND LAST_NAME = 'PAWAR';
DELETE FROM EMPLOYEE WHERE ID = 3;
DELETE FROM EMPLOYEE WHERE ID = NULL;
DELETE FROM EMPLOYEE;
DESC EMPLOYEE;
# ALTER is used to alter structure/schema of table. Structure Manipulation. Update is used for data manipulation. 
alter table employee add column job_title varchar(50);
alter table employee drop column job_title;
alter table employee drop primary key ;
alter table employee add PRIMARY KEY(ID);
alter table employee MODIFY column FIRST_NAME varchar(50);
TRUNCATE TABLE EMPLOYEE;
desc employee;
DROP TABLE EMPLOYEE;

# DDL : Data Definition Language - deals with table structure/schema. EX. CREATE,ALTER,TRUNCATE,DROP.
# DML : Data Manipulation Language - here deals with data directly. EX. SELECT, INSERT,UPDATE,DELETE.
# TRUNCATE internally drops the table and recreate it. TRUNCATE RUN faster than DELETE. 

--------------------------------------------------Session-5-------------------------------------------------------------------------------
create table students (
STUD_ID int AUTO_INCREMENT,
STUD_NAME VARCHAR(50)NOT NULL,
MIDDLE_NAME VARCHAR(50),
LAST_NAME VARCHAR(50)NOT NULL,
STUD_EMAIL VARCHAR(50)NOT NULL,
STUD_PHONE VARCHAR(50)NOT NULL,
STUD_ALTERNATE_PHONE VARCHAR(50),
ENROLLMENT_DATE TIMESTAMP NOT NULL,
YEARS_OF_EXP INT NOT NULL,
STUD_COMPANY VARCHAR(50),
BATCH_DATE VARCHAR(50)NOT NULL,
SOURCE_OF_JOINING VARCHAR(50)NOT NULL,
LOCATION VARCHAR(50)NOT NULL,
PRIMARY KEY (STUD_ID),
UNIQUE KEY (STUD_EMAIL)
);
DESC STUDENTS;
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('UMESH','PAWAR','UMESH@GMAIL.COM','9876543210','2022/09/22',6,'WALMART','5-02-2021','LINKEDIN','BANGALORE');
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('GANESH','PAWAR','GANESH@GMAIL.COM','0123456789','2022/09/22',3,'FLIPKART','5-02-2021','LINKEDIN','HYDERABAD');
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('LATIKA','PAWAR','LATIKA@GMAIL.COM','1111111111','2022/09/22',16,'GOOGLE','5-02-2021','GOOGLE','MUMBAI');
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('SHARAD','PAWAR','SHARAD@GMAIL.COM','2222222222','2022/09/22',16,'GOOGLE','5-02-2021','TCS','MUMBAI'),('AJIT','PAWAR','AJIT@GMAIL.COM','3333333333','2022/09/22',16,'IDEA','5-02-2021','IDEA','PUNE'),('ROHAN','PAWAR','ROHAN@GMAIL.COM','4444444444','2022/09/22',16,'JIO','5-02-2021','JIO','AKLUJ'),('AKASH','PAWAR','AKASH@GMAIL.COM','5555555555','2022/09/22',16,'APPLE','5-02-2021','APPLE','DELHI');

SELECT * FROM STUDENTS;

CREATE TABLE COURSES(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(30) NOT NULL,
COURSE_DURATION_MONTH INT NOT NULL,
COURSE_FEE INT NOT NULL,
PRIMARY KEY(COURSE_ID)
)
INSERT INTO COURSES VALUES(1,'BIG DATA',6,50000);
INSERT INTO COURSES VALUES(2,'DATA SCIENCE',10,20000);
INSERT INTO COURSES VALUES(3,'WEB DEVELOPMENT',5,40000);
INSERT INTO COURSES VALUES(4,'DEVOPS',1,10000);
SELECT * FROM COURSES;
DROP TABLE STUDENTS;

create table students (
STUD_ID int AUTO_INCREMENT,
STUD_NAME VARCHAR(50)NOT NULL,
MIDDLE_NAME VARCHAR(50),
LAST_NAME VARCHAR(50)NOT NULL,
STUD_EMAIL VARCHAR(50)NOT NULL,
STUD_PHONE VARCHAR(50)NOT NULL,
STUD_ALTERNATE_PHONE VARCHAR(50),
ENROLLMENT_DATE TIMESTAMP NOT NULL,
SELECTED_COURSE INT NOT NULL DEFAULT 1,
YEARS_OF_EXP INT NOT NULL,
STUD_COMPANY VARCHAR(50),
BATCH_DATE VARCHAR(50)NOT NULL,
SOURCE_OF_JOINING VARCHAR(50)NOT NULL,
LOCATION VARCHAR(50)NOT NULL,
PRIMARY KEY (STUD_ID),
UNIQUE KEY (STUD_EMAIL)
);

SELECT * FROM STUDENTS;
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('RAJU','PAWAR','RAJU@GMAIL.COM','2222222222','2022/09/22',16,'GOOGLE','5-02-2021','TCS','MUMBAI'),('AJIT','PAWAR','AJIT@GMAIL.COM','3333333333','2022/08/22',16,'IDEA','5-02-2021','IDEA','PUNE'),('ROHAN','PAWAR','ROHAN@GMAIL.COM','4444444444','2022/07/22',16,'JIO','5-02-2021','JIO','AKLUJ'),('AKASH','PAWAR','AKASH@GMAIL.COM','5555555555','2022/05/22',16,'APPLE','5-02-2021','APPLE','DELHI');  
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,SELECTED_COURSE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('SOMA','PAWAR','SOMA@GMAIL.COM','2222222222','2022/09/22',2,16,'GOOGLE','5-02-2021','TCS','MUMBAI');
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,SELECTED_COURSE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('NIKHIL','PAWAR','NIKHIL@GMAIL.COM','6666666666','2022/09/15',5,10,'iNeuron','5-02-2021','iNeuron','NASHIK');
DROP TABLE STUDENTS;
SELECT * FROM COURSES;
DROP TABLE STUDENTS;
create table students (
STUD_ID int AUTO_INCREMENT,
STUD_NAME VARCHAR(50)NOT NULL,
MIDDLE_NAME VARCHAR(50),
LAST_NAME VARCHAR(50)NOT NULL,
STUD_EMAIL VARCHAR(50)NOT NULL,
STUD_PHONE VARCHAR(50)NOT NULL,
STUD_ALTERNATE_PHONE VARCHAR(50),
ENROLLMENT_DATE TIMESTAMP NOT NULL,
SELECTED_COURSE INT NOT NULL DEFAULT 1,
YEARS_OF_EXP INT NOT NULL,
STUD_COMPANY VARCHAR(50),
BATCH_DATE VARCHAR(50)NOT NULL,
SOURCE_OF_JOINING VARCHAR(50)NOT NULL,
LOCATION VARCHAR(50)NOT NULL,
PRIMARY KEY (STUD_ID),
UNIQUE KEY (STUD_EMAIL),
FOREIGN KEY(SELECTED_COURSE) REFERENCES COURSES(COURSE_ID) # PARENT-COURSES, CHILD-STUDENTS. 
);

DESC STUDENTS;

INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('RAJU','PAWAR','RAJU@GMAIL.COM','2222222222','2022/09/22',16,'GOOGLE','5-02-2021','TCS','MUMBAI'),('AJIT','PAWAR','AJIT@GMAIL.COM','3333333333','2022/08/22',16,'IDEA','5-02-2021','IDEA','PUNE'),('ROHAN','PAWAR','ROHAN@GMAIL.COM','4444444444','2022/07/22',16,'JIO','5-02-2021','JIO','AKLUJ'),('AKASH','PAWAR','AKASH@GMAIL.COM','5555555555','2022/05/22',16,'APPLE','5-02-2021','APPLE','DELHI');  
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,SELECTED_COURSE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('NIKHIL','PAWAR','NIKHIL@GMAIL.COM','6666666666','2022/09/15',5,10,'iNeuron','5-02-2021','iNeuron','NASHIK'); 
INSERT INTO STUDENTS (STUD_NAME,LAST_NAME,STUD_EMAIL,STUD_PHONE,ENROLLMENT_DATE,SELECTED_COURSE,YEARS_OF_EXP,STUD_COMPANY,BATCH_DATE,SOURCE_OF_JOINING,LOCATION) VALUES('NIKHIL','PAWAR','NIKHIL@GMAIL.COM','6666666666','2022/09/15',2,10,'iNeuron','5-02-2021','iNeuron','NASHIK'); 
DELETE FROM COURSES WHERE COURSE_ID = 2;
DELETE FROM COURSES WHERE COURSE_ID = 4;
SELECT * FROM STUDENTS;
# The foregin key constraint is used to prevent actions that would destroy links between two tables. 
# A foregin key is a field in one table that refers to the primary key in another table. 
# Selected_course is a foreign key in students table which refers to course_id (PRIMARY KEY) in courses table. 
# The table with FOREIGN KEY is called the CHILD TABLE, the table with PRIMARY KEY is called the PARENT or REFERENCED TABLE.
# Constraints are used to limit the type of data that can go into a table.  
# This means the accuracy and reliability of the data is maintained. 
# If there is any violation then the action is aborted. [ CHECK CONSTRAINT] NOT SUPPORTED IN MYSQL. 

--------------------------------------------------Session-6--------------------------------------------------------------------------------
show tables;
SELECT * FROM STUDENTS;
select location from students;
select DISTINCT location from students;
select DISTINCT stud_company from students;
select DISTINCT source_of_joining from students;
select stud_name from students;
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students order by years_of_exp;  
select stud_name from students order by stud_name;
select stud_name from students order by years_of_exp;
select stud_name,years_of_exp from students order by years_of_exp;
select stud_name,years_of_exp from students order by years_of_exp desc;
select stud_name,years_of_exp from students order by 2 desc;
select stud_name,years_of_exp from students order by years_of_exp,stud_name;
select * from students limit 3;
# Get 3 candidates with least experience. 
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students order by years_of_exp limit 3;  
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students order by years_of_exp desc limit 3;  
# want to know from which sources last 5 candidates have enrolled. 
select source_of_joining from students order by enrollment_date desc limit 3;
select DISTINCT source_of_joining from students order by enrollment_date desc limit 3;
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students order by ENROLLMENT_DATE DESC limit 1;  
SELECT * FROM STUDENTS ORDER BY ENROLLMENT_DATE LIMIT 0,3; # Give first 3 candidates we have enrolled with you. 
SELECT * FROM STUDENTS ORDER BY ENROLLMENT_DATE LIMIT 3,2; # 4th and 5th record you will get. 
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students where stud_name like '%ra%';
# % is a wildcard character. 
# _ means (exactly one character). 
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students where stud_name like 'ra%';
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students where stud_name like '%sh';
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students where stud_name like '_____';
select stud_id,enrollment_date, selected_course, stud_name,years_of_exp,stud_company,batch_date,source_of_joining,location from students where stud_name like '____';
# ume%sh how to correct it = ume\%sh. \ is escape character in order to tell system do not consider wild card character. 
                   
-------------------------------------------------------Session-7---------------------------------------------------------------------------------
select DISTINCT source_of_joining from students ORDER BY enrollment_date desc;
# DISTINCT & ORDER BY 
SELECT source_of_joining FROM students;
# ORDER OF EXECUTION : 
FROM (LOADING THE TABLE) 
SELECT (PROJECTING source_of_joining) 

SELECT source_of_joining,enrollment_date FROM students;
# ORDER OF EXECUTION : 
FROM (LOADING THE TABLE) 
SELECT (PROJECTING source_of_joining,enrollment_date) 
 
SELECT source_of_joining,enrollment_date FROM students ORDER BY enrollment_date;

# ORDER OF EXECUTION : 
FROM (LOADING THE TABLE) 
SELECT (PROJECTING source_of_joining,enrollment_date) 
SELECT source_of_joining,enrollment_date from students;

ORDER BY (based on ENROLLMENT DATE it will ORDER BY)
SELECT source_of_joining,enrollment_date from students ORDER BY enrollment_date;
SELECT source_of_joining from students ORDER BY enrollment_date;
SELECT DISTINCT source_of_joining from students ORDER BY enrollment_date;
SELECT DISTINCT source_of_joining,enrollment_date from students ORDER BY enrollment_date;

-------------------------------------------------------------Session-8--------------------------------------------------------------------------
# Aggregate Function. 
select count(*) from students; 
select count(stud_company) from students;
select count(DISTINCT(stud_company)) AS Num_Companies from students;
select count(DISTINCT(location)) AS Num_Location from students;
select count(DISTINCT(source_of_joining)) AS Num_source from students;
select batch_date from students;
select count(*) from students where batch_date like '%-02-%';
select count(*) from students where batch_date like '19-%';
select count(*) from students where batch_date like '5-%';
# how many people have joined my course got to know about me through. 
select source_of_joining from students;
select source_of_joining, count(*) from students group by source_of_joining;
select location, count(*) from students group by location;
select location, count(*) from students group by source_of_joining; # This will not work. 
select location,source_of_joining, count(*) from students group by source_of_joining;
select selected_course, count(*) from students group by selected_course;
select batch_date,selected_course, count(*) from students group by batch_date,selected_course; 
select min(years_of_exp) from students;
select max(years_of_exp) from students;
select min(years_of_exp), stud_name from students; # This will not work. 
select stud_name, years_of_exp from students order by years_of_exp limit 1;

# Each source of joining i want to get max experience. 
select source_of_joining, MAX(years_of_exp) from students group by source_of_joining;
select source_of_joining, SUM(years_of_exp) from students group by source_of_joining;
select source_of_joining, AVG(years_of_exp) from students group by source_of_joining;
select LOCATION, AVG(years_of_exp) from students group by LOCATION;
select STUD_COMPANY, AVG(years_of_exp) from students group by STUD_COMPANY;

------------------------------------------------------------Session-9--------------------------------------------------------------------------

desc students;
insert into courses values(4,'DataStructure',3.5,30000);
select * from courses;

CREATE TABLE COURSES_NEW(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(30) NOT NULL,
COURSE_DURATION_MONTH DECIMAL(3,1) NOT NULL,
COURSE_FEE INT NOT NULL,
PRIMARY KEY(COURSE_ID)
)
DESC COURSES_NEW;
insert into courses_new values(1,'DataStructure',3.5,30000),(2,'Big Data',6.5,50000),(3,'Web Development',2.7,20000),(4,'Data Science',6,60000);
update courses_new set course_fee = 10000 where course_id = 4;
select * from courses_new;
drop table courses_new;

CREATE TABLE COURSES_NEW(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(30) NOT NULL,
COURSE_DURATION_MONTH DECIMAL(3,1) NOT NULL,
COURSE_FEE INT NOT NULL,
CHANGED_AT TIMESTAMP DEFAULT NOW(),
PRIMARY KEY(COURSE_ID)
)
insert into courses_new (COURSE_ID,COURSE_NAME,COURSE_DURATION_MONTH,COURSE_FEE) values(1,'DataStructure',3.5,30000),(2,'Big Data',6.5,50000),(3,'Web Development',2.7,20000),(4,'Data Science',6,60000);
SELECT * FROM COURSES_NEW;
insert into courses_new (COURSE_ID,COURSE_NAME,COURSE_DURATION_MONTH,COURSE_FEE) values(6,'DATA ENGINEER',4.7,45000);
UPDATE COURSES_NEW SET COURSE_FEE = 25000 WHERE COURSE_ID = 3;
drop table courses_new;
CREATE TABLE COURSES_NEW(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(30) NOT NULL,
COURSE_DURATION_MONTH DECIMAL(3,1) NOT NULL,
COURSE_FEE INT NOT NULL,
CHANGED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
PRIMARY KEY(COURSE_ID)
)
# CURRENT_TIMESTAMP IS SAME AS NOW(). 
insert into courses_new (COURSE_ID,COURSE_NAME,COURSE_DURATION_MONTH,COURSE_FEE) values(1,'DataStructure',3.5,30000),(2,'Big Data',6.5,50000),(3,'Web Development',2.7,20000),(4,'Data Science',6,60000);
insert into courses_new (COURSE_ID,COURSE_NAME,COURSE_DURATION_MONTH,COURSE_FEE) values(6,'DATA ENGINEER',4.7,45000);
UPDATE COURSES_NEW SET COURSE_FEE = 25000 WHERE COURSE_ID = 3;
SELECT * FROM COURSES_NEW;

-------------------------------------------------------------------Session-10-----------------------------------------------------------------------;
# LOGICAL OPERATOR :

select * from students where location = 'MUMBAI';
select * from students where location != 'MUMBAI';
SELECT * FROM COURSES WHERE COURSE_NAME LIKE '%DATA%';
SELECT * FROM COURSES WHERE COURSE_NAME NOT LIKE '%DATA%';
SELECT * FROM STUDENTS WHERE YEARS_OF_EXP < 20 AND SOURCE_OF_JOINING = 'TCS' AND LOCATION = 'MUMBAI';
SELECT * FROM STUDENTS WHERE YEARS_OF_EXP < 10 OR YEARS_OF_EXP > 12;
SELECT * FROM STUDENTS WHERE YEARS_OF_EXP BETWEEN 8 AND 12;
SELECT * FROM STUDENTS WHERE YEARS_OF_EXP NOT BETWEEN 8 AND 12;
SELECT * FROM STUDENTS WHERE STUD_COMPANY = 'GOOGLE' OR STUD_COMPANY = 'JIO' OR STUD_COMPANY = 'APPLE';
SELECT * FROM STUDENTS WHERE STUD_COMPANY IN ('GOOGLE','JIO','APPLE');
SELECT * FROM STUDENTS WHERE STUD_COMPANY NOT IN ('GOOGLE','JIO','APPLE');
SELECT * FROM COURSES;
SELECT COURSE_ID,COURSE_NAME,COURSE_FEE,
CASE
WHEN COURSE_DURATION_MONTH > 5 THEN 'MASTERS'
ELSE 'DIPLOMA'
END AS COURSE_TYPE 
FROM COURSES;

SELECT STUD_ID, STUD_NAME, LAST_NAME, STUD_COMPANY, 
CASE 
WHEN STUD_COMPANY IN ('GOOGLE','APPLE') THEN 'PRODUCT BASED' 
ELSE 'SERVICE BASED' 
END AS COMPANY_TYPE 
FROM STUDENTS;

SELECT STUD_ID, STUD_NAME, LAST_NAME, STUD_COMPANY, 
CASE 
WHEN STUD_COMPANY IN ('GOOGLE','APPLE') THEN 'PRODUCT BASED' 
WHEN STUD_COMPANY IS NULL THEN 'INVALID COMPANY'
ELSE 'SERVICE BASED' 
END AS COMPANY_TYPE 
FROM STUDENTS; 

----------------------------------------------------------------Session-11---------------------------------------------------------------------- 
# JIONS : 
SELECT STUD_NAME,SELECTED_COURSE FROM STUDENTS;
SELECT * FROM COURSES;
SELECT COURSE_NAME FROM COURSES WHERE COURSE_ID = (
SELECT SELECTED_COURSE FROM STUDENTS WHERE STUD_NAME = 'RAJU');

# IN students table selected_course. 
# IN courses table course_id. 
# BY DEFAULT INNER JOIN. ONLY MATCHING RECORDS IS VISIBLE. NON MATCHING RECORDS ARE IGNORED. 
select stud_name,last_name,course_name from students join courses on students.selected_course = courses.course_id;
select students.stud_name,students.last_name,courses.course_name from students join courses on students.selected_course = courses.course_id;
SELECT STUD_NAME,SELECTED_COURSE FROM STUDENTS;
SELECT COURSE_ID FROM COURSES;

# LEFT OUTER JOIN. 
# LEFT SIDE ALL records and RIGHT SIDE MATCHING RECORDS, UNMATCHING WILL BE NULL.
DELETE FROM COURSES WHERE COURSE_ID = 2;  
CREATE TABLE STUDENTS_LASTEST AS SELECT * FROM STUDENTS;
CREATE TABLE COURSES_LASTEST AS SELECT * FROM COURSES;
DELETE FROM COURSES_LASTEST WHERE COURSE_ID = 2;  
select students_LASTEST.stud_name,students_LASTEST.last_name,courses_LASTEST.course_name from students_LASTEST join courses_LASTEST on students_LASTEST.selected_course = courses_LASTEST.course_id;
select students_LASTEST.stud_name,students_LASTEST.last_name,courses_LASTEST.course_name from students_LASTEST LEFT join courses_LASTEST on students_LASTEST.selected_course = courses_LASTEST.course_id;

# RIGHT OUTER JOIN. 
# RIGHT SIDE ALL RECORDS AND LEFT SIDE MATCHING RECORDS. UNMATCHING WILL BE NULL. 
select students_LASTEST.stud_name,students_LASTEST.last_name,courses_LASTEST.course_name from students_LASTEST RIGHT join courses_LASTEST on students_LASTEST.selected_course = courses_LASTEST.course_id;

# FULL OUTER JOIN 
# COMBINATION OF BOTH, ALL matching records, NON matching records from left, NON matching records from right. 
# We do not have FULL OUTER JOIN WORD, Instead we can use UNION. 
select students_LASTEST.stud_name,students_LASTEST.last_name,courses_LASTEST.course_name from students_LASTEST LEFT join courses_LASTEST on students_LASTEST.selected_course = courses_LASTEST.course_id
UNION 
select students_LASTEST.stud_name,students_LASTEST.last_name,courses_LASTEST.course_name from students_LASTEST RIGHT join courses_LASTEST on students_LASTEST.selected_course = courses_LASTEST.course_id;

# CROSS JOIN RIGHT TABLE ROWS * LEFT TABLE ROWS. 
SELECT COUNT(*) FROM STUDENTS;
SELECT COUNT(*) FROM COURSES;
SELECT COUNT(*) FROM STUDENTS,COURSES; 
SELECT COUNT(*) FROM STUDENTS JOIN COURSES; 

----------------------------------------------------Session-12------------------------------------------------------------------------------------- 
# WHERE VS HAVING CLAUSE IN SQL. 

SELECT * FROM STUDENTS;
SELECT SOURCE_OF_JOINING ,COUNT(*) AS TOTAL FROM STUDENTS GROUP BY SOURCE_OF_JOINING;
# I WANT TO KNOW THE LEAD SOURCES THROUGH WITH MORE THAN 1 PERSON HAS REGISTERED. 
SELECT SOURCE_OF_JOINING ,COUNT(*) AS TOTAL FROM STUDENTS GROUP BY SOURCE_OF_JOINING HAVING TOTAL > 1 ;

# I want to know the count of people who registered through GOOGLE. 
SELECT SOURCE_OF_JOINING,COUNT(*) AS TOTAL FROM STUDENTS GROUP BY SOURCE_OF_JOINING HAVING SOURCE_OF_JOINING = 'APPLE';
SELECT SOURCE_OF_JOINING,COUNT(*) AS TOTAL FROM STUDENTS WHERE SOURCE_OF_JOINING = 'APPLE';
# CAN WE USE WHERE AND HAVING IN SAME QUERY ? = YES. 
# The locations from whcih more than 1 student has joined & the students experience is more than 10 years. 
select location, count(*) as total from students where years_of_exp > 5 group by location having total > 1;
select location, count(*) as total from students where years_of_exp > 5 group by location having total >= 1;
# Where is used before group by and do filtering on individual records. Having is used after group by and do filtering on aggregated records. 
# We can use where and having in the same query also. Where is more performed than having. 

-----------------------------------------------------------Session-13-----------------------------------------------------------------------------
# OVER, PARTITION BY is used to club the non-aggregated columns along with the aggregated columns. 
CREATE TABLE EMPLOYEE( 
FIRSTNAME VARCHAR(20),
LASTNAME VARCHAR(20),
AGE INT,
SALARY INT,
LOCATION VARCHAR(20)
);
INSERT INTO EMPLOYEE VALUES('SACHIN','TENDULKAR',28,10000,'BANGALORE');
INSERT INTO EMPLOYEE VALUES('SHANE','WARN',30,20000,'BANGALORE');
INSERT INTO EMPLOYEE VALUES('ROHIT','SHARMA',32,30000,'HYDERABAD');
INSERT INTO EMPLOYEE VALUES('SHAKHAR','DHAWAN',32,25000,'HYDERABAD');
INSERT INTO EMPLOYEE VALUES('RAHUL','DRAVID',31,20000,'BANGALORE');
INSERT INTO EMPLOYEE VALUES('SAURABH','GANGULY',32,15000,'PUNE');
INSERT INTO EMPLOYEE VALUES('KAPIL','DEV',34,10000,'PUNE');
# HOW MANY PEOPLE ARE FROM EACH LOCATION AND AVG SALARY AT EACH LOCATION. 
SELECT LOCATION,COUNT(LOCATION) AS TOTAL,AVG(SALARY) AS AVERAGE FROM EMPLOYEE GROUP BY LOCATION;
SELECT FIRSTNAME,LASTNAME, LOCATION,COUNT(LOCATION) AS TOTAL,AVG(SALARY) AS AVERAGE FROM EMPLOYEE GROUP BY LOCATION;
# WE CAN TRY ACHIEVING IT USING A JOIN. 
SELECT FIRSTNAME,LASTNAME,EMPLOYEE.LOCATION,TOTAL_COUNT, AVG_SALARY FROM EMPLOYEE JOIN (SELECT LOCATION, COUNT(LOCATION) AS TOTAL_COUNT, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEE GROUP BY LOCATION) TEMPTABLE ON EMPLOYEE.LOCATION = TEMPTABLE.LOCATION;
# WE CAN USE OVER, PARTITION BY to achieve this easily. 
select firstname,lastname,location,count(location) over (partition by location) as total, avg(salary) over (partition by location) as average from employee;
SELECT * FROM EMPLOYEE;

--------------------------------------------Session-14------------------------------------------------------------------------------
# ROW NUMBER FUNCTION. VERY VERY IMP FOR INTERVIEW. WHEN THERE ARE NOT DUPLICATE RECORDS THEN ONLY USE ROW NUMBER FUNCTION. ROW NUMBER DO NOT SOLVE DUPLICATE RECORDS. CAN NOT HANDLE DUPLICATE PROPERLY. 
# ROW NUMBER CAN NOT WORK IF YOU DO NOT GIVE ORDER BY. ORDER BY IS MANDATORY WHEN WE ARE TALKING ABOUT ROW NUMBER. 
SELECT FIRSTNAME,LASTNAME,SALARY,ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE;
SELECT * FROM (SELECT FIRSTNAME,LASTNAME,SALARY,ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE) TEMPTABLE WHERE ROWNUM = 5;
# I WANT TO ASSIGN ROW NUMBERS FOR EACH PARTITION BASED ON EACH LOCATION. 
SELECT FIRSTNAME,LASTNAME,SALARY,LOCATION,ROW_NUMBER() OVER (PARTITION BY LOCATION ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE;
# I WANT TO FIND THE HIGHEST SALARY GETTERS AT EACH LOCATION. 
SELECT * FROM (SELECT FIRSTNAME,LASTNAME,LOCATION,SALARY,ROW_NUMBER() OVER (PARTITION BY LOCATION ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE) TEMPTABLE WHERE ROWNUM = 1;
# When we use row number, we should be using the order by clause, We can also use the partition by - optional. The rownumber starts from 1 for every partition. 

---------------------------------------------------------Session-15-------------------------------------------------------------------------- 
# RANK & DENSE RANK. ORDER BY MANDATORY, PARTITION IS OPTION. 
SELECT FIRSTNAME,LASTNAME,SALARY,ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE;
SELECT FIRSTNAME,LASTNAME,SALARY,RANK() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE;
SELECT FIRSTNAME,LASTNAME,SALARY,DENSE_RANK() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE;
# IF there are no duplicates then row number,rank,dense rank lead to similar results. 
# Only the difference comes when there are duplicates. 
# RANK - FOR duplicates same rank is assigned and for the next entry it skips the ranks. 
# DENSE_RANK - IT does not skip any ranks in between. 
# Whenever you do not have any duplicates values use row_num. 
SELECT * FROM (SELECT FIRSTNAME,LASTNAME,SALARY,RANK() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE) TEMPTABLE WHERE ROWNUM = 4;
SELECT * FROM (SELECT FIRSTNAME,LASTNAME,SALARY,DENSE_RANK() OVER (ORDER BY SALARY DESC) AS ROWNUM FROM EMPLOYEE) TEMPTABLE WHERE ROWNUM = 4;








