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
--���հ� BETWEEN 2000���� 3000����
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;

SELECT * FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;
--���ڿ� �� ENAME�� ù��° ���ڰ� S�� �����ϴ� ���� ��ȸ�Ҷ� ���
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

--_�� ��� ���ڰ� �ü� �ִٴ� �� �� ENAME�� �ι�° ���ڰ� L�� �����ϴ� ���� ����
SELECT * FROM EMP WHERE ENAME LIKE '_L%';

--��� �̸��� AM�� ���� ���ִ��� ����
SELECT * FROM EMP WHERE ENAME LIKE '%AM%';

--��� �̸��� AM�� ���ԵǾ� ���� ���� ��� ������ ����ϱ�
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

--EMP ���̺��� ����̸��� S�� ������ ��� ������ ���
SELECT * FROM EMP WHERE ENAME LIKE '%S';

--EMP ���̺��� 30�� �μ����� �ٹ��ϰ� �ִ� ����߿� ��å�� SALESMAN�� ����� ��ü�� ���
SELECT EMPNO, ENAME, JOB, SAL,DEPTNO FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';