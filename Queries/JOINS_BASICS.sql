--Display employee name and department name.
SELECT E.ENAME,D.DNAME FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO


--Display employee name, salary, and department location.
SELECT E.ENAME,E.SAL,D.LOC FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO

--Display all employees working in the SALES department.
SELECT E.* FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE D.DNAME='SALES'

--Display all employees along with their department names (include employees without a department).
SELECT E.*,D.DNAME FROM EMP E LEFT JOIN DEPT D ON E.DEPTNO=D.DEPTNO


--Display all departments along with their employees (include departments with no employees).
SELECT D.*,E.ENAME FROM EMP E RIGHT JOIN DEPT D ON E.DEPTNO=D.DEPTNO


--Display employee name along with their manager's name (Self Join).
SELECT E.ENAME,M.ENAME FROM EMP E JOIN EMP M ON E.MGR=M.EMPNO

--Display employee name, salary, and manager's name.
SELECT E.ENAME,E.SAL,M.ENAME FROM EMP E JOIN EMP M ON E.MGR=M.EMPNO

--Display the names of employees who earn more than their managers.
SELECT E.ENAME FROM EMP E JOIN EMP M ON E.MGR=M.EMPNO WHERE E.SAL>M.SAL

--Display department names where no employees are working.
SELECT D.DNAME FROM EMP E FULL OUTER JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE E.EMPNO IS NULL

--Display employee name, department name, and department location sorted by department name.
SELECT E.ENAME,D.DNAME,D.LOC FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DEPTNO ORDER BY D.DNAME
