-- For every project located in 'Stafford', list the project number, the controlling department number, 
-- and the department manager's last name, address, and birth date.
SELECT pnumber, dnum, lname, address, bdate 
FROM PROJECT p, DEPARTMENT d, EMPLOYEE e 
WHERE p.dnum = d.dnumber and d.mgrssn = e.SSN and p.PLOCATION = 'Stafford';

-- Retrieve the name of each employee who works on all the projects controlled by department number 5.
SELECT fname || ' ' || lname as name 
FROM EMPLOYEE 
WHERE ssn in (
    SELECT essn 
    FROM works_on 
    WHERE pno in (SELECT pnumber from PROJECT WHERE DNUM = 5)
);

-- Make a list of all project numbers for projects that involve an employee whose last name is 'Smith', 
-- either as a worker or as a manager of the department that controls the project.
(SELECT DISTINCT pname
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE DNUM = DNUMBER AND MGRSSN = SSN AND LNAME = 'Smith')
UNION
(SELECT DISTINCT pname
FROM PROJECT, WORKS_ON, EMPLOYEE
WHERE PNUMBER = PNO AND ESSN = SSN AND LNAME = 'Smith');

-- Retrieve the names of employees who have no dependents.
SELECT FNAME, LNAME
FROM EMPLOYEE
WHERE NOT EXISTS (SELECT *
FROM DEPENDENT
WHERE SSN = ESSN);

-- List the names of managers who have at least one dependent.
SELECT FNAME, LNAME
FROM EMPLOYEE
WHERE EXISTS (SELECT *
FROM DEPENDENT
WHERE SSN = ESSN)
AND
EXISTS (SELECT *
FROM DEPARTMENT
WHERE SSN = MGRSSN);

-- For each employee, retrieve the employee's first and last name and the first and last name 
-- of his or her immediate supervisor.
SELECT e1.fname, e1.lname, e2.fname, e2.lname 
FROM EMPLOYEE e1 JOIN EMPLOYEE e2 ON e1.superssn = e2.ssn;

-- Show the resulting salaries if every employee working on the
-- 'ProductX' project is given a 10 percent raise
SELECT FNAME, LNAME, 1.1*SALARY as hiked_salary
FROM EMPLOYEE, WORKS_ON, PROJECT
WHERE SSN = ESSN AND PNO = PNUMBER AND PNAME = 'ProductX';

-- Retrieve a list of employees and the projects they are working on, ordered by department and, 
-- within each department, ordered alphabetically by last name, first name.
SELECT fname || ' ' || lname as name, pname 
FROM EMPLOYEE e, WORKS_ON w, PROJECT p, DEPARTMENT d
WHERE ESSN = SSN and PNUMBER = PNO and DNUMBER = DNO
ORDER BY d.DNAME DESC, e.LNAME ASC, e.fname ASC;

-- Retrieve the names of all employees who do not have supervisors.
SELECT fname, lname as name from EMPLOYEE WHERE superssn is null;

-- Retrieve the name of each employee who has a dependent with the same last name as the employee
SELECT E.FNAME, E.LNAME
FROM EMPLOYEE E
WHERE E.SSN IN (SELECT ESSN
FROM DEPENDENT
WHERE E.LNAME = DEPENDENT_NAME);

-- Retrieve the social security numbers of all employees who work on project numbers 1,2
SELECT DISTINCT ESSN FROM WORKS_ON WHERE PNO IN (1,2);

-- Returns the names of employees whose salary is greater than the salary 
-- of all the employees in department 5
select fname, lname from employee where salary > (select max(salary) from employee where dno = 5);

-- Find the sum of the salaries of all employees, the maximum salary, the minimum salary, and the average salary
SELECT SUM(salary) as sum_of_salary, max(salary) as max_salary, 
min(salary) as min_salary,  avg(salary) as average_salary from employee;

-- Find the sum of the salaries of all employees of the 'Research' department, as well as the maximum salary, 
-- the minimum salary, and the average salary in this department.
SELECT SUM(salary) as sum_of_salary, max(salary) as max_salary, 
min(salary) as min_salary,  avg(salary) as average_salary from employee 
JOIN DEPARTMENT ON dnumber = dno and dname = 'Research';

-- Retrieve the names of all employees who have two or more dependents.
SELECT LNAME, FNAME
FROM EMPLOYEE
WHERE (SELECT COUNT (*)
FROM DEPENDENT
WHERE SSN = ESSN) >= 2;

-- Count the total number of employees whose salaries exceed $40,000 in each department, but only for departments 
-- where more than five employees work.
SELECT count(*) as no_of_emp from EMPLOYEE
where dno in (SELECT dnumber from employee 
JOIN DEPARTMENT ON dnumber = dno
GROUP BY dnumber 
HAVING COUNT(*) > 5) and salary > 40000;

-- For each project, retrieve the project number, the project name, and the number of employees who work on that project.
SELECT pnumber, pname, count(essn) as working_emp
FROM PROJECT p, WORKS_ON w 
WHERE p.PNUMBER = w.PNO 
GROUP BY pnumber, pname; 

-- For each project on which more than two employees work, retrieve the project number, the project name, and the 
-- number of employees who work on the project.
SELECT pnumber, pname, count(essn) as working_emp
FROM PROJECT p, WORKS_ON w 
WHERE p.PNUMBER = w.PNO 
GROUP BY pnumber, pname
HAVING count(essn) > 2; 

-- For each project, retrieve the project number, the project name, and the number of employees from 
-- department 5 who work on the project.
SELECT pnumber, pname, count(essn) as working_emp
FROM PROJECT, WORKS_ON, EMPLOYEE  
WHERE PNUMBER = PNO AND SSN = ESSN AND DNO = 5
GROUP BY pnumber, pname;

-- For each department that has more than five employees, retrieve the department number and the number of its 
-- employees who are making more than $40,000.
SELECT dno, count(*) as no_of_emp from EMPLOYEE
where dno in (SELECT dnumber from employee 
JOIN DEPARTMENT ON dnumber = dno
GROUP BY dnumber 
HAVING COUNT(*) > 5) and salary > 40000
GROUP BY dno;