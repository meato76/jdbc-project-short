

-- count() --> gives count of results
select  count(*) from employees;

select  count(*) from EMPLOYEES where JOB_ID = 'IT_PROG';

select count(*) from COUNTRIES where COUNTRY_NAME like 'B%';

-- max() -> gives max value of column

select max(SALARY) from  EMPLOYEES;


-- min() -> gives min value of column
select min(SALARY) from EMPLOYEES;

-- sum() -> gives total value of column
select  sum(SALARY) from EMPLOYEES;

select  sum(SALARY) from EMPLOYEES where JOB_ID ='IT_PROG' ;-- total salary for It_PROG

-- avg() -> gives avg of column

select  avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';


-- Round is not an AGGREGATE FUNC

--round --> Gives rounded version of number

select  round(avg(SALARY)) from EMPLOYEES;
select  round(avg(SALARY),2) from EMPLOYEES;


