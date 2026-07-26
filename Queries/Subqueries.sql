--Display the employee(s) who earn the highest salary.
SELECT * FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP)

--Display the employee(s) who earn the second highest salary.
SELECT * FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP WHERE SAL<(SELECT MAX(SAL) FROM EMP)) 

--Display the employee(s) who earn the lowest salary.
SELECT * FROM EMP WHERE SAL=(SELECT MIN(SAL) FROM EMP)

--Display the employee(s) whose salary is greater than the average salary.
SELECT * FROM EMP WHERE SAL>(SELECT AVG(SAL) FROM EMP)

--Display the employee(s) whose salary is less than the average salary.
SELECT * FROM EMP WHERE SAL<(SELECT AVG(SAL) FROM EMP)

--Display the employee(s) earning more than SMITH.
SELECT * FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME='SMITH')

--Display the employee(s) earning less than ALLEN.
SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='ALLEN')


--Display employees working in the same department as SMITH.
SELECT * FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='SMITH')

--Display employees who have the same job as SMITH.
SELECT * FROM EMP WHERE JOB=(SELECT JOB FROM EMP WHERE ENAME='SMITH')

--Display employees who earn more than JONES.
SELECT * FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME='JONES')

--Display employees who earn less than KING.
SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='KING')

--Display employees whose salary equals the minimum salary.
SELECT * FROM EMP WHERE SAL=(SELECT MIN(SAL) FROM EMP)

--Display employees whose salary equals the maximum salary.
SELECT * FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP)

--Display employees whose salary is greater than the salary of employee 7566.
SELECT * FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE EMPNO=7566)

--Display employees whose department number is the same as ALLEN's department.
SELECT * FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='ALLEN' )

--Display employees who work in departments located in DALLAS.
SELECT * FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS')

--Display employees who work in the SALES department.
SELECT * FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM DEPT WHERE DNAME='SALES')

--Display employees who are managers.
SELECT * FROM EMP WHERE EMPNO IN(SELECT MGR FROM EMP WHERE MGR IS NOT NULL)

--Display employees who are not managers.
SELECT * FROM EMP WHERE MGR IN(SELECT EMPNO FROM EMP WHERE MGR IS NULL)

--Display employees whose salary is greater than the average salary of department 30.
SELECT * FROM EMP WHERE SAL>(SELECT AVG(SAL) FROM EMP WHERE DEPTNO=30)

--Display employees who work in departments where the average salary is greater than 2500.
SELECT * FROM EMP WHERE DEPTNO IN(SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING AVG(SAL)>2500)

--Display employees whose salary is greater than the minimum salary of department 20.
SELECT * FROM EMP WHERE SAL>(SELECT MIN(SAL) FROM EMP WHERE DEPTNO=20)

--Display employees whose salary is less than the maximum salary of department 10.
SELECT * FROM EMP WHERE SAL<(SELECT MAX(SAL) FROM EMP WHERE DEPTNO=10)

--Display employees who belong to the department having the highest average salary.
SELECT E.*,AVG(E.SAL) FROM EMP E WHERE E.SAL=

--Display departments whose average salary is greater than the company's average salary.

--Display employees whose commission is greater than the average commission.

--Display employees whose salary is between the average salary and maximum salary.

--Display employees working in the department that has the maximum number of employees.

--Display employees whose salary is greater than every employee in department 30.

--Display employees whose salary is less than at least one employee in department 10.