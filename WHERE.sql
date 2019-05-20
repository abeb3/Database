select * from emp
where deptno = 30;

select * from emp where empno = 7782;

select * from emp
where deptno = 30 and job = 'SALESMAN';

select * from emp where empno = 7499 and deptno = 30;


select * from emp where deptno = 30 or job = 'CLERK';

select * from emp  where deptno = 20 or job = 'SALESMAN';

SELECT * FROM EMP WHERE SAL * 12 = 36000;

SELECT * FROM EMP WHERE SAL >= 3000;

SELECT * FROM EMP WHERE SAL >= 2500 AND JOB = 'ANALYST';

SELECT * FROM EMP WHERE ENAME >= 'F';

SELECT * FROM EMP WHERE SAL != 3000;

SELECT * FROM EMP WHERE SAL <> 3000;

SELECT * FROM EMP WHERE SAL ^= 3000;

SELECT * FROM EMP WHERE NOT SAL = 3000;

SELECT * FROM EMP WHERE JOB = 'MANAGER'
OR JOB = 'SALESMAN' OR JOB = 'CLERK';

SELECT * FROM EMP WHERE JOB NOT IN('MANAGER','SALESMAN','CLERK');

SELECT * FROM EMP WHERE DEPTNO IN ('10','20');

SELECT * FROM EMP WHERE SAL >= 2000
AND SAL <= 3000;
--사잇값 BETWEEN 2000에서 3000사이
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;

SELECT * FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;
--문자열 값 ENAME의 첫번째 글자가 S로 시작하는 값을 조회할때 사용
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

--_는 어떠한 글자가 올수 있다는 뜻 즉 ENAME의 두번째 글자가 L로 시작하는 값을 말함
SELECT * FROM EMP WHERE ENAME LIKE '_L%';

--사원 이름에 AM이 포함 되있는지 여부
SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

--사원 이름에 AM이 포함되어 있지 않은 사원 데이터 출력하기
SELECT * FROM EMP WHERE ENAME NOT LIKE '%AM%';

SELECT * FROM EMP WHERE COMM = NULL;

SELECT * FROM EMP WHERE COMM IS NULL;

SELECT * FROM EMP WHERE MGR IS NOT NULL;

SELECT * FROM EMP WHERE SAL > NULL 
AND COMM IS NULL;


SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP
WHERE DEPTNO = 10
UNION 
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP WHERE DEPTNO = 20 ORDER BY SAL;

--EMP 테이블의 사원이름이 S로 끝나는 사원 데이터 출력
SELECT * FROM EMP WHERE ENAME LIKE '%S';

--EMP 테이블의 30번 부서에서 근무하고 있는 사원중에 직책이 SALESMAN인 사원의 전체를 출력
SELECT EMPNO, ENAME, JOB, SAL,DEPTNO FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';