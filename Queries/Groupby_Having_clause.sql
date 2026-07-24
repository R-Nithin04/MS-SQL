--Display the total number of employees in each department.
SELECT DEPTNO,COUNT(*) FREQ FROM EMP GROUP BY DEPTNO

--Display the average salary of employees in each department.
SELECT DEPTNO,AVG(SAL) AVG_SAL FROM EMP GROUP BY DEPTNO

--Display the maximum salary in each department.
SELECT DEPTNO,MAX(SAL) MAX_SAL FROM EMP GROUP BY DEPTNO 

--Display the minimum salary in each department.
SELECT DEPTNO,MIN(SAL) MIN_SAL FROM EMP GROUP BY DEPTNO

--Display the total salary paid in each department.
SELECT DEPTNO,SUM(SAL) TOT_SAL FROM EMP GROUP BY DEPTNO

--Display the number of employees for each job role.
SELECT JOB,COUNT(*) FREQ FROM EMP GROUP BY JOB 

--Display the highest salary for each job.
SELECT JOB,MAX(SAL) MAX_SAL FROM EMP GROUP BY JOB 

--Display the lowest salary for each job.
SELECT JOB,MIN(SAL) MIN_SAL FROM EMP GROUP BY JOB 


--Display the average salary for each job.
SELECT JOB,AVG(SAL) AVG_SAL FROM EMP GROUP BY JOB

--Display the total commission paid in each department.
SELECT DEPTNO,SUM(COMM) AS TOT_COMM FROM EMP GROUP BY DEPTNO

--Display department number and total salary, sorted by total salary in descending order.
SELECT DEPTNO,SUM(SAL) TOT_SAL FROM EMP GROUP BY DEPTNO ORDER BY TOT_SAL DESC

--Display each manager and the number of employees working under them.
SELECT MGR,COUNT(*) FREQ FROM EMP WHERE MGR IS NOT NULL GROUP BY MGR 

--Display each department and the number of employees earning more than 2000.
SELECT DEPTNO,COUNT(*) FREQ FROM EMP WHERE SAL>2000 GROUP BY DEPTNO

--Display each job role with its maximum and minimum salary.
SELECT JOB,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL FROM EMP GROUP BY JOB

--Display departments where the average salary is greater than 2500.
SELECT DEPTNO,AVG(SAL) AVG_SAL FROM EMP GROUP BY DEPTNO HAVING AVG(SAL)>2500

--Display job roles where more than three employees work.
SELECT JOB,COUNT(*) FREQ FROM EMP GROUP BY JOB HAVING COUNT(*)>3

--Display departments having more than five employees.
SELECT DEPTNO,COUNT(*) FREQ FROM EMP GROUP BY DEPTNO HAVING COUNT(*)>5

--Display departments where the total salary exceeds 10000.
SELECT DEPTNO,SUM(SAL) TOT_SAL FROM EMP GROUP BY DEPTNO HAVING SUM(SAL)>10000

--Display each department along with the highest and lowest salary.
SELECT DEPTNO,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL FROM EMP GROUP BY DEPTNO 

--Display each department and the difference between highest and lowest salary.
SELECT DEPTNO,MAX(SAL)-MIN(SAL) AS DIFF FROM EMP GROUP BY DEPTNO

