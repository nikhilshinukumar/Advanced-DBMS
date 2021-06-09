CREATE TABLE EMP
(
EMPNO INT,
ENAME VARCHAR(25),
JOB VARCHAR(12),
SALARY INT,
COMMISSION INT,
DEPTNO INT
);
DESCRIBE EMP;
INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,COMMISSION,DEPTNO)VALUES
(7369,'SMITH','CLERK',800,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,COMMISSION,DEPTNO)VALUES
(7499,'ALLEN','SALESMAN',1600,300,30),
(7521,'WARD','SALESMAN',1250,500,30),
(7566,'JONES','MANAGER',2975,NULL,20),
(7654,'MARTIN','SALESMAN',1250,1400,30),
(7698,'BLAKE','MANAGER',2850,NULL,30),
(7782,'CLARK','MANAGER',2450,NULL,10),
(7788,'SCOTT','ANALYST',3000,NULL,20),
(7839,'KING','PRESIDENT',5000,NULL,10),
(7844,'TURNER','SALESMAN',1500,NULL,30),
(7876,'ADAMS','CLERK',1100,NULL,20),
(7900,'JAMES',NULL,950,NULL,30),
(7902,'FORD','ANALYST',3000,NULL,20),
(7934,'MILLER','CLERK',1300,NULL,10);
SELECT * FROM EMP;
UPDATE EMP SET JOB ='CLERK' WHERE JOB is NULL; 
ALTER TABLE EMP
ADD DATE_JOIN DATE NOT NULL;
DESCRIBE EMP;
UPDATE EMP 
SET DATE_JOIN='1980-12-17' WHERE EMPNO='7369';
UPDATE EMP 
SET DATE_JOIN='1981-02-20' WHERE EMPNO='7499';
UPDATE EMP 
SET DATE_JOIN='1981-02-22' WHERE EMPNO='7521';
UPDATE EMP 
SET DATE_JOIN='1981-04-02' WHERE EMPNO='7566';
UPDATE EMP 
SET DATE_JOIN='1981-09-28' WHERE EMPNO='7654';
UPDATE EMP 
SET DATE_JOIN='1981-05-01' WHERE EMPNO='7698';
UPDATE EMP 
SET DATE_JOIN='1981-06-09' WHERE EMPNO='7782';
UPDATE EMP 
SET DATE_JOIN='1987-04-19' WHERE EMPNO='7788';
UPDATE EMP 
SET DATE_JOIN='1981-11-17' WHERE EMPNO='7839';
UPDATE EMP 
SET DATE_JOIN='1981-09-08' WHERE EMPNO='7844';
UPDATE EMP 
SET DATE_JOIN='1987-05-23' WHERE EMPNO='7876';
UPDATE EMP 
SET DATE_JOIN='1981-12-03' WHERE EMPNO='7900';
UPDATE EMP 
SET DATE_JOIN='1981-12-03' WHERE EMPNO='7902';
UPDATE EMP 
SET DATE_JOIN='1982-01-23' WHERE EMPNO='7934';
SELECT * FROM EMP;
SELECT DISTINCT JOB FROM EMP;
SELECT ENAME FROM EMP WHERE DEPTNO=20 OR DEPTNO=30;
SELECT ENAME,SALARY+COMMISSION AS TOTAL_0F_SALARY FROM EMP;
SELECT ENAME,SALARY*12 AS ANNUAL_SALARY FROM EMP;
SELECT ENAME FROM EMP WHERE DATE_JOIN='1981-12-03';
SELECT SALARY+COMMISSION AS TOTAL_OF_SALARY FROM EMP WHERE ENAME='MILLER';
DELETE FROM EMP WHERE ENAME='MILLER';
SELECT * FROM EMP;
SELECT ENAME,DEPTNO FROM EMP ;
ALTER TABLE EMP
ADD COLUMN TOTAL_SALARY INT; 
UPDATE EMP SET COMMISSION=0 WHERE COMMISSION IS NULL;
UPDATE EMP SET TOTAL_SALARY=(SELECT SALARY+COMMISSION AS TOTAL_SALARY);
SELECT * FROM EMP;
ALTER TABLE EMP
DROP COLUMN COMMISSION;
SELECT * FROM EMP;
SELECT TOTAL_SALARY, GROUP_CONCAT(ENAME ORDER BY DATE_JOIN) AS ENAME
FROM EMP
GROUP BY TOTAL_SALARY
HAVING COUNT(*) > 1;
SELECT EMPNO AS EMP_ID, ENAME AS 'NAME'
FROM EMP;
ALTER TABLE EMP
RENAME TO EMPLOYEEE;
CREATE TABLE EMP_TABLE AS SELECT * FROM EMPLOYEEE;
DESCRIBE EMP_TABLE;
SELECT * FROM EMP_TABLE;
SELECT * FROM EMP_TABLE FULL JOIN EMPLOYEEE;
TRUNCATE TABLE EMPLOYEEE;
TRUNCATE TABLE EMP;
DROP TABLE EMPLOYEEE;