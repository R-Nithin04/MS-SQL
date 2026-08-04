-->WHERE Clause

--Display all employees whose salary is greater than 3000.
SELECT * FROM EMP WHERE SAL>3000;

--Display employees working in department 30.
SELECT * FROM EMP WHERE DEPTNO=30;

--Display employees whose job is MANAGER or ANALYST.
SELECT * FROM EMP WHERE JOB IN('MANAGER','ANALYST');

--Display employees whose name starts with 'S'.
SELECT * FROM EMP WHERE ENAME LIKE 'S%'

--Display employees hired after 01-JAN-1982.
SELECT * FROM EMP WHERE HIREDATE>'1982-01-01';

-->ORDER BY

--Display all employees sorted by salary in descending order.
SELECT * FROM EMP ORDER BY SAL DESC

--Display employee names and hire dates sorted by hire date (oldest to newest).
SELECT ENAME FROM EMP ORDER BY HIREDATE; 

--Display employees sorted first by department number and then by salary (highest first).
SELECT * FROM EMP ORDER BY DEPTNO,SAL DESC;

-->Aggregate Functions

--Find the highest, lowest, and average salary of all employees.
SELECT MAX(SAL) HIGH_SAL,MIN(SAL) LOW_SAL,AVG(SAL) AVG_SAL FROM EMP; 

--Find the total salary paid to all employees.
SELECT SUM(SAL) TOT_SAL FROM EMP;

--Find the total number of employees in the EMP table.
SELECT COUNT(*) TOT_CNT FROM EMP;

-->GROUP BY

--Find the number of employees in each department.
SELECT DEPTNO,COUNT(*) FREQ FROM EMP GROUP BY DEPTNO;

--Find the average salary of each department.
SELECT DEPTNO,AVG(SAL) AVG_sAL FROM EMP GROUP BY DEPTNO;

--Find the maximum salary for each job role.
SELECT JOB,MAX(SAL) MAX_SAL FROM EMP GROUP BY JOB;

--Find the total salary paid for each job.
SELECT JOB,SUM(SAL) SUM_SAL FROM EMP GROUP BY JOB;

-->HAVING

--Display departments having more than 3 employees.
SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>3;

--Display job roles whose average salary is greater than 2500.
SELECT JOB FROM EMP GROUP BY JOB HAVING AVG(SAL)>2500;

--Display departments whose total salary exceeds 9000.
SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING SUM(SAL)>9000;

-->JOINS

--Display employee name along with department name.
SELECT E.ENAME AS EMPNAME,D.DNAME AS DEPTNAME FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO;

--Display employee name, job, department name, and department location.
SELECT E.ENAME AS EMPNAME,E.JOB,D.DNAME,D.LOC FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO;

--Display employees who work in the SALES department.
SELECT E.* FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE D.DNAME='SALES';

--Display employees whose department is located in DALLAS.
SELECT E.* FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE D.LOC='DALLAS';

-->Subqueries

--Display employees earning more than the average salary.
SELECT * FROM EMP WHERE SAL>(SELECT AVG(SAL) FROM EMP);

--Display employees who earn the highest salary in the company.
SELECT * FROM EMP WHERE SAL IN(SELECT MAX(SAL) FROM EMP);

--Display employees who earn the highest salary in their respective department