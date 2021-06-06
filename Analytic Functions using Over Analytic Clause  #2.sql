select *
from emp;


select empno
    ,deptno
    ,ename
    ,sal
    ,hiredate
    ,lag(sal) over (partition by deptno order by hiredate) prev_sal
from emp
order by deptno, hiredate;

select empno
    ,deptno
    ,ename
    ,sal
    ,hiredate
    ,lead(sal) over (partition by deptno order by hiredate) next_sal
from emp
order by deptno, hiredate;

select empno
    ,deptno
    ,ename
    ,sal
    ,hiredate
    ,avg(sal) over (partition by deptno order by hiredate) avg_sal
from emp
order by deptno, hiredate;

select empno
    ,deptno
    ,ename
    ,sal
    ,hiredate
    ,median(sal) over (partition by deptno) median_sal
from emp
order by deptno;

select empno
    ,deptno
    ,ename
    ,sal
    ,hiredate
    ,rank() over (partition by deptno order by sal) rank_sal
from emp
order by deptno, rank_sal;
