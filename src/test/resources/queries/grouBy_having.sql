select * from Employees;

--Group By -- Divides rows into small groups

select count(*) from EMPLOYEES;

--How many employees for job ID
select JOB_ID, count(*) from EMPLOYEES group by JOB_ID ;



select JOB_ID, count(*),avg(SALARY) from EMPLOYEES group by JOB_ID ;



select JOB_ID, count(*),max(salary), min(SALARY),avg(SALARY) from EMPLOYEES group by JOB_ID;


--HAVING --> it will work after roup by

select JOB_ID, count(*),max(salary), min(SALARY),avg(SALARY) from EMPLOYEES group by JOB_ID
                                                                            having max(SALARY) <5000;

select JOB_ID, count(*),max(salary), min(SALARY),avg(SALARY) from EMPLOYEES group by JOB_ID
                                                                            having count(*)>5;

select JOB_ID, count(*),max(salary), min(SALARY),avg(SALARY) from EMPLOYEES group by JOB_ID having max(SALARY)> 10000;