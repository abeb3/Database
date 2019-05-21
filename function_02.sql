select substr(ename,3) from emp;

select job,
substr(job, -length(job)),
substr(job, -length(job),2),
substr(job,-3)
from emp;

select * from emp
where instr(ename, 'S') >0;

select * from emp
where ename like '%S%';