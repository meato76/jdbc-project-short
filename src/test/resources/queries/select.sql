select  * from employees;

select * from DEPARTMENTS;


-- if we wanna get multiple column names we should use coma
select MANAGER_ID,DEPARTMENT_NAME from DEPARTMENTS;


select First_Name from EMPLOYEES;

select EMPLOYEES.FIRST_NAME,DEPARTMENTS.DEPARTMENT_NAME from DEPARTMENTS,EMPLOYEES;

/*
 DISTINCT --> Display only differance values from result

 */

 select FIRST_NAME from EMPLOYEES;
select distinct (FIRST_NAME) from EMPLOYEES;  -- remove duplicated name

select SALARY from EMPLOYEES;
select distinct (SALARY) from EMPLOYEES; -- remove duplicated salary

