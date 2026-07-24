-->COUNT()
--Display the total number of employees.
SELECT COUNT(*) AS TOTAL_COUNT FROM EMP

--Display the number of employees working in department 10.
SELECT COUNT(*) AS TOTAL_COUNT FROM EMP WHERE DEPTNO=10

--Display the number of employees whose salary is greater than 3000.
SELECT COUNT(*) AS TOTAL_COUNT FROM EMP WHERE SAL>3000

--Display the number of employees whose commission is not NULL.
SELECT COUNT(*) AS TOTAL_COUNT FROM EMP WHERE COMM IS NOT NULL

--Display the number of distinct job roles in the company.
SELECT COUNT(DISTINCT(JOB)) AS TOTAL_COUNT FROM EMP 

-->SUM()

--Display the total salary paid to all employees.
SELECT SUM(SAL) AS TOTAL_SAL FROM EMP 

--Display the total salary paid to employees in department 20.
SELECT SUM(SAL) AS TOTAL_SAL FROM EMP WHERE DEPTNO=20

--Display the total commission paid to employees.
SELECT SUM(COMM) AS TOT_COMM FROM EMP 

--Display the total salary of employees whose job is 'SALESMAN'.
SELECT SUM(SAL) TOT_SAL FROM EMP WHERE JOB='SALESMAN'

--Display the total salary of employees earning more than 2500.
SELECT SUM(SAL) TOT_SAL FROM EMP WHERE SAL>2500

-->AVG()
--Display the average salary of all employees.
SELECT AVG(SAL) AS AVG_SAL FROM EMP

--Display the average salary of employees in department 30.
SELECT AVG(SAL) AVG_SAL FROM EMP WHERE DEPTNO=30

--Display the average commission of employees.
SELECT AVG(COMM) AVG_COMM FROM EMP 

--Display the average salary of managers.
SELECT AVG(SAL) AS AVG_SAL FROM EMP WHERE JOB='MANAGER'

--Display the average salary of employees hired after 1981.
SELECT AVG(SAL) AVG_SAL FROM EMP WHERE YEAR(HIREDATE)>1981

-->MIN()
--Display the minimum salary in the company.
SELECT MIN(SAL) AS MIN_SAL FROM EMP 

--Display the minimum salary among clerks.
SELECT MIN(SAL) AS MIN_SAL FROM EMP WHERE JOB='CLERK'

--Display the employee(s) receiving the minimum salary.
SELECT * FROM EMP WHERE SAL=(SELECT MIN(SAL) FROM EMP)

--Display the earliest hire date.
SELECT MIN(HIREDATE) FROM EMP

--Display the smallest commission received by any employee.
SELECT * FROM EMP WHERE COMM=(SELECT MIN(COMM) FROM EMP)

-->MAX()
--Display the maximum salary in the company.
SELECT MAX(SAL) FROM EMP

--Display the employee(s) receiving the highest salary.
SELECT * FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP)

--Display the latest hire date.
SELECT MAX(HIREDATE) FROM EMP

--Display the highest commission received by any employee.
SELECT MAX(COMM) FROM EMP

--Display the highest employee number.
SELECT MAX(EMPNO) FROM EMP 

-->Mixed Aggregate Functions
--Display the total number of employees, total salary, average salary, minimum salary, and maximum salary in a single query.
SELECT COUNT(*) TOT_CONT,SUM(SAL) AS TOT_SAL,AVG(SAL) AS AVG_SAL,MIN(SAL) AS MIN_SAL,MAX(SAL) MAX_SAL FROM EMP 

--Display the total number of employees and total salary for employees earning more than 2000.
SELECT COUNT(*) TOT_COUNT,SUM(SAL) TOT_SAL FROM EMP WHERE SAL>2000

--Display the minimum, maximum, and average salary of employees working in department 10.
SELECT MIN(SAL) MIN_SAL,MAX(SAL) MAX_SAL,AVG(SAL) AVG_SAL FROM EMP WHERE DEPTNO=10

--Display the total salary and average commission of employees whose job is not 'CLERK'.
SELECT SUM(SAL) AS TOT_SAL,AVG(COMM) AS AVG_COMM FROM EMP WHERE JOB<>'CLERK'

--Display the total number of employees, highest salary, lowest salary, and average salary of employees hired before January 1, 1982.
SELECT COUNT(*) TOT_EMP,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL,AVG(SAL) AVG_SAL FROM EMP WHERE HIREDATE<'1982-01-01'