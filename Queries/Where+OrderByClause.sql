--Display all employees working in department 20 sorted by salary in ascending order.
SELECT * FROM EMP WHERE DEPTNO=20 ORDER BY SAL

--Display all employees working in department 30 sorted by salary in descending order.
SELECT * FROM EMP WHERE DEPTNO=30 ORDER BY SAL DESC 

--Display employees whose salary is greater than 2000 sorted by employee name alphabetically.
SELECT * FROM EMP WHERE SAL>2000 ORDER BY ENAME

--Display all clerks sorted by hire date (oldest to newest).
SELECT * FROM EMP WHERE JOB='CLERK' ORDER BY HIREDATE

--Display all managers sorted by salary in descending order.
SELECT * FROM EMP WHERE JOB='MANAGER' ORDER BY SAL DESC

--Display employees who joined after 1981-01-01 sorted by hire date.
SELECT * FROM EMP WHERE HIREDATE>'1981-01-01' ORDER BY HIREDATE

--Display employees whose commission is not NULL sorted by commission in descending order.
SELECT * FROM EMP WHERE COMM IS NOT NULL ORDER BY COMM DESC

--Display employees whose salary is between 1000 and 3000 sorted by salary in ascending order.
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 3000 ORDER BY SAL

--Display employees whose name starts with S sorted by employee number.
SELECT * FROM EMP WHERE ENAME LIKE 'S%' ORDER BY EMPNO 

--Display employees whose name contains the letter A sorted alphabetically.
SELECT * FROM EMP WHERE ENAME LIKE '%A%' ORDER BY ENAME

--Display employees whose job is SALESMAN sorted by commission in descending order.
SELECT * FROM EMP WHERE JOB='SALESMAN' ORDER BY COMM DESC 

--Display employees who belong to department 20 or 30 sorted by department number and then salary.
SELECT * FROM EMP WHERE DEPTNO IN(20,30) ORDER BY DEPTNO,SAL

--Display employees who do not belong to department 10 sorted by department number.
SELECT * FROM EMP WHERE DEPTNO<>10 ORDER BY DEPTNO 

--Display employees whose salary is not equal to 3000 sorted by salary in descending order.
SELECT * FROM EMP WHERE SAL<>3000 ORDER BY SAL DESC 

--Display employees whose manager number is 7698 sorted by employee name.
SELECT * FROM EMP WHERE MGR=7698 ORDER BY ENAME

--Display employees who do not have a manager sorted by salary.
SELECT * FROM EMP WHERE MGR IS NULL ORDER BY SAL

--Display employees whose commission is greater than 0 sorted by commission.
SELECT * FROM EMP WHERE COMM>0 ORDER BY COMM

--Display employees whose commission is equal to 0 sorted by employee name.
SELECT * FROM EMP WHERE COMM=0 ORDER BY ENAME

--Display employees who joined during the year 1981 sorted by hire date in descending order.
SELECT * FROM EMP WHERE YEAR(HIREDATE)=1981 ORDER BY HIREDATE DESC 

--Display employees whose salary is greater than or equal to 2500 sorted by salary in descending order.
SELECT * FROM EMP WHERE SAL>=2500 ORDER BY SAL DESC

--Display employees whose salary is less than or equal to 1000 sorted by salary.
SELECT * FROM EMP WHERE SAL<=1000 ORDER BY SAL

--Display employees whose employee number is between 7500 and 7900 sorted by employee number in descending order.
SELECT * FROM EMP WHERE EMPNO BETWEEN 7500 AND 7900 ORDER BY EMPNO DESC

--Display employees whose job is not SALESMAN sorted by job name.
SELECT * FROM EMP WHERE JOB<>'SALESMAN' ORDER BY JOB

--Display employees whose name does not contain the letter E sorted by employee name.
SELECT * FROM EMP WHERE ENAME NOT LIKE '%E%' ORDER BY ENAME

--Display employees who work in department 20 and earn more than 2500 sorted by salary in descending order.
SELECT * FROM EMP WHERE DEPTNO=20 AND SAL>2500 ORDER BY SAL DESC

--Display employees whose salary is greater than 1000 and whose job is CLERK, sorted first by salary and then by employee name.
SELECT * FROM EMP WHERE SAL>1000 AND JOB='CLERK' ORDER BY SAL,ENAME

--Display employees working in department 30 with a salary greater than 1200 sorted by salary in descending order.
SELECT * FROM EMP WHERE DEPTNO=30 AND SAL>1200 ORDER BY SAL DESC 

--Display employees whose names end with R sorted by hire date.
SELECT * FROM EMP WHERE ENAME LIKE '%R' ORDER BY HIREDATE

--Display employees whose salary is between 1200 and 3000 and whose department is not 10, sorted by department number and then by salary in descending order.
SELECT * FROM EMP WHERE SAL BETWEEN 1200 AND 3000 AND DEPTNO<>10 ORDER BY DEPTNO,SAL DESC

--Display employees whose job is either CLERK or ANALYST and whose salary is greater than 1000, sorted by job and then by salary in descending order.
SELECT * FROM EMP WHERE JOB IN('CLERK','ANALYST') AND SAL>1000 ORDER BY JOB, SAL DESC