-- Initialization of database 
-- create database Day1;
-- use Day1;

-- Assignment 1
CREATE TABLE JOBS (
	-- In college no need to use primary key
    JOB_ID VARCHAR(9) PRIMARY KEY,
    JOB_TITLE VARCHAR(31),
    MIN_SALARY INTEGER, -- In college no need to use INTEGER just do like this number(length) i.e. number(4) 
    MAX_SALARY INTEGER
);
INSERT INTO JOBS VALUES('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO JOBS VALUES('ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO JOBS VALUES('SH_CLERK','Shipping Clerk',2500,5500);
INSERT INTO JOBS VALUES('IT_PROG','Programmer',4000,10000);
INSERT INTO JOBS VALUES('MK_MAN','Marketing Manager',9000,15000);
INSERT INTO JOBS VALUES('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO JOBS VALUES('HR_REP','Human Resource Representative',4000,9000);
INSERT INTO JOBS VALUES('PR_REP', 'Public Relations Representative', 4500, 10500);
DESC JOBS;
SELECT * FROM JOBS;

-- Assignment 2
CREATE TABLE JOB_HISTORY(
	EMPLOYEE_ID integer PRIMARY KEY,
    START_DATE date,
    END_DATE date,
    JOB_ID varchar(10),
    DEPARTMENT_ID integer
);
-- In college this line will work fine
-- INSERT INTO JOB_HISTORY VALUES(102, '13-JAN-93', '04-JUL-98', 'IT-PROG', 60);
INSERT INTO JOB_HISTORY VALUES(102, '1993-01-13', '1998-07-04', 'IT-PROG', 60);
INSERT INTO JOB_HISTORY VALUES(101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110);
INSERT INTO JOB_HISTORY VALUES(201, '1996-02-17', '1999-12-19', 'MK_REP', 20);
INSERT INTO JOB_HISTORY VALUES(114, '1998-03-04', '1999-12-31', 'ST_CLERK', 50);
INSERT INTO JOB_HISTORY VALUES(200, '1987-09-17', '1993-06-17', 'AD_ASST', 90);
-- Please insert rest of the data from your own
SELECT * FROM JOB_HISTORY;