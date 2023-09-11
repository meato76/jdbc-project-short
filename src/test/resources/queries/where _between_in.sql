select * from EMPLOYEES;


-- WHERE CLAUSE : used to filter result
select  * from EMPLOYEES where FIRST_NAME = 'David' and LAST_NAME='Lee';


select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME = 'Peter';

select * from EMPLOYEES where SALARY > 6000;

select EMAIL from  EMPLOYEES where SALARY<5000;

select * from EMPLOYEES where SALARY >7000 and DEPARTMENT_ID=60;

select * from EMPLOYEES where SALARY >= 3000 and SALARY <=7000;

select * from EMPLOYEES where SALARY between 3000 and 7000;

select * from EMPLOYEES where JOB_ID = 'IT_PROG' or JOB_ID = 'MK_MAN';

select  * from EMPLOYEES where EMPLOYEE_ID in (121,142,154,165,187,100) ;

select * from COUNTRIES where COUNTRY_ID in ('US', 'IT');

--=======================================================================================================================

    --Display firstname and salary information where firstname is James
    select FIRST_NAME, SALARY from employees where FIRST_NAME = 'James';

--Display firstname and salary information who is making less than 500
select distinct FIRST_NAME ,SALARY from EMPLOYEES where SALARY <5000;

--Display all information who is making less than 5000 and manager id is 114
select  * from  EMPLOYEES where SALARY <5000 and MANAGER_ID = 114;


-- Display firstname, lastname info who is making less than and equal 5000
-- and more than and equal 3000
SELECT FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES where SALARY <= 5000 and SALARY>= 3000;

-- BETWEEN --> used to filter result with range
SELECT FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES where SALARY between 3000 and 5000;


-- Display firstname, lastname, salary where firstname is 'David' pr 'Peter'

SELECT FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME = 'David' or FIRST_NAME= 'Peter' ;

--Using IN

SELECT FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES where FIRST_NAME in('David','James','Peter') ;







