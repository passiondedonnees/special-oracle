select *
from emp;


select empno,
    deptno
    , count(1) over (partition by deptno) dept_count
    , count(1) over (partition by null) emp_total
    , count(1) over () total
from emp;


select empno
    ,deptno
    ,first_value(ename) over (partition by deptno) first_ename
    ,last_value(ename) over (partition by deptno) last_name
from emp;

select deptno
    ,row_number() over (partition by deptno order by hiredate) nbr_hd
    ,empno
    ,ename
    ,hiredate
from emp;

with src as (
    select deptno
        ,empno
        ,sal
        ,max(sal) over (partition by deptno) max_sal_dept
    from emp
)
select deptno
    ,empno
    ,sal
    ,max_sal_dept
    ,round((sal/max_sal_dept) * 100, 2) sal_prct
from src
order by 1;


select deptno
    ,empnum
    ,ename
from (select deptno
            ,ename
            ,row_number() over (partition by deptno order by hiredate) empnum
      from emp)
where empnum < 3;


with src as (select deptno
                    ,ename
                    ,row_number() over (partition by deptno order by hiredate) empnum
             from emp)
select deptno
    ,empnum
    ,ename
from src
where empnum < 3;
