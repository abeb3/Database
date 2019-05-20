select * from emp;
select empno, ename, deptno from emp;
select empno, deptno from emp;
-- asd 
select distinct deptno from emp;

select distinct job, deptno from emp;

select all job, deptno from emp;

select ename, sal, sal+12+comm, comm from emp;

select ename, sal, sal * 12 + comm as ansal, comm from emp;

select * from emp order by empno;

select * from emp order by sal desc;

select * from emp order by empno desc;

select * from emp order by deptno asc, sal desc;

select DISTINCT job from emp;

select empno as employee_no, ename as emplotee_name,
mgr as manager, sal as salary, comm as commission, deptno as department_no 
from emp order by department_no asc, emplotee_name desc;