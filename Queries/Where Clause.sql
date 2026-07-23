--Find all employees who work in department 10.
SELECT * FROM EMP WHERE DEPTNO=10

--Find all employees whose salary is greater than 2000.
SELECT * FROM EMP WHERE SAL>2000

--Find employees whose salary is less than 1500.
SELECT * FROM EMP WHERE SAL<1500

--Display employees whose job is CLERK.
SELECT * FROM EMP WHERE JOB='CLERK'

--Display employees whose job is MANAGER.
SELECT * FROM EMP WHERE JOB='MANAGER'

--Find employees who joined after 1981-01-01.
SELECT * FROM EMP WHERE HIREDATE>'1981-01-01'

--Find employees who joined before 1982-01-01.
SELECT * FROM EMP WHERE HIREDATE<'1982-01-01'

--Display employees whose commission is NULL.
SELECT * FROM EMP WHERE COMM IS NULL

--Display employees whose commission is not NULL.
SELECT * FROM EMP WHERE COMM IS NOT NULL

--Find employees whose salary is between 1000 and 2000.
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2000

--Display employees who belong to department 20 or 30.
SELECT * FROM EMP WHERE DEPTNO IN(20,30)

--Find employees who are not in department 30.
SELECT * FROM EMP WHERE DEPTNO<>30

--Display employees whose name starts with S.
SELECT * FROM EMP WHERE ENAME LIKE 'S%'

--Display employees whose name ends with R.
SELECT * FROM EMP WHERE ENAME LIKE '%R'

--Find employees whose name contains the letter A.
SELECT * FROM EMP WHERE ENAME LIKE '%A%'

--Display employees whose name has exactly five letters.
SELECT * FROM EMP WHERE ENAME LIKE '_____'

--Find employees whose job is either CLERK or ANALYST.
SELECT * FROM EMP WHERE JOB='CLERK' OR JOB='ANALYST'

--Display employees whose salary is not equal to 3000.
SELECT * FROM EMP WHERE SAL<>3000

--Find employees whose manager number is 7698.
SELECT * FROM EMP WHERE MGR=7698

--Display employees who do not have a manager.
SELECT * FROM EMP WHERE MGR IS NULL

--Find employees whose commission is greater than 0.
SELECT * FROM EMP WHERE COMM>0

--Display employees whose commission is equal to 0.
SELECT * FROM EMP WHERE COMM=0

--Find employees who joined during the year 1981.
SELECT * FROM EMP WHERE YEAR(HIREDATE)=1981

--Display employees whose salary is greater than or equal to 2500.
SELECT * FROM EMP WHERE SAL>=2500

--Find employees whose salary is less than or equal to 1000.
SELECT * FROM EMP WHERE SAL<=1000

--Display employees whose employee number is greater than 7800.
SELECT * FROM EMP WHERE EMPNO>7800

--Find employees whose employee number is between 7500 and 7900.
SELECT * FROM EMP WHERE EMPNO BETWEEN 7500 AND 7900

--Display employees whose job is not SALESMAN.
SELECT * FROM EMP WHERE JOB<>'SALESMAN'

--Find employees whose name does not contain the letter E.
SELECT * FROM EMP WHERE ENAME NOT LIKE '%E%'

--Display employees who work in department 20 and earn more than 2500.
SELECT * FROM EMP WHERE DEPTNO=20 AND SAL>2500