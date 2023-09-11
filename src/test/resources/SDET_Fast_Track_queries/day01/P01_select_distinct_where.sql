select * from employees;

select * from COUNTRIES;

select COMMISSION_PCT from EMPLOYEES;

/*
 it show different values from query result based provided column
 Original data still stays in database
 */

select FIRST_NAME from EMPLOYEES;
-- it returns  107

-- display all different names from employees
select distinct FIRST_NAME from EMPLOYEES;
-- it return 91 result as a different names

--display different department_ids from employees table
select distinct DEPARTMENT_ID from EMPLOYEES;

--========================================================================================

--- WHERE ---

/*
 -- Which keyword we are using in JAVA to filter ?
    -- if statement


 -- To filter individual results from database while we are running query
     we are gonna use WHERE keyword
 */

select * from EMPLOYEES
where FIRST_NAME='David';

--> '' it is case SENSITIVE

-- display firstname,lastname,salary where firstname is Peter
select first_name,last_name,salary from employees
where first_name='Peter';

-- display firstname,lastname,salary where firstname is David and last_name is Austin
select first_name,last_name,salary from EMPLOYEES
where first_name='David' and last_name='Austin';

-- display all information from employees where salary is bigger than 3000
select * from EMPLOYEES
where SALARY>3000;

-- display all info from employees  who is making more than 3000 and department id is 10 ;
select * from EMPLOYEES
where SALARY>3000 and DEPARTMENT_ID=10;

-- display all info from employees where salary  equals or more than 5000  and salary  equals or less than 8000
select * from EMPLOYEES
where SALARY>=5000 and SALARY<=8000;

-- BETWEEN lower and upper --> boundries are INCLUDED
-- it will give result within this range
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY between 5000 and 8000;

-- display all info from employees where employee_id between 100 and 120
select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120;  --> range is included

-- OR --
-- display all info from employees who is working as IT_PROG or MK_MAN or SA_REP
-- solution 1
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='MK_MAN' or JOB_ID='SA_REP';

-- IN CLAUSES --
-- it uses or logic
-- it checks jobIDs from IN paranthesis to see condition is matching
-- solution 2
select * from EMPLOYEES
where JOB_ID IN('IT_PROG','MK_MAN','SA_REP');


-- display all employees name except who is working as IT_PROG or MK_MAN or SA_REP
select FIRST_NAME,JOB_ID from EMPLOYEES
where JOB_ID NOT IN('IT_PROG','MK_MAN','SA_REP');
-- 107 --> 36 of thm working as IT_PROG / MK_MAN / SA_REP
-- 71 employees

-- IS NULL
-- display all information from employees where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null;
--> 1 result it is Steven King

-- IS NOT NULL
-- display all information from employees where manager id is not null
select * from EMPLOYEES
where MANAGER_ID is not null ;
--> 106 employees has manager

--======================================================================================

/*ORDERBY

    - It allows us to sort data based on provided column
    - AS A DEFAULT it will order the result ASCENDING ORDER (A-Z,0-9)
    - If you wanna sort it DESCENDING order we need specify right after column name

 */
-- display all employees based salary in asc order
select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by SALARY asc;
-- NOTE :BOTH query will give same result

-- display all employees based salary in desc order (9-0 ) ( high to low )
select * from EMPLOYEES
order by salary desc ;

-- display all employees based firstname in desc order (Z-A)
select * from EMPLOYEES
order by FIRST_NAME desc ;

-- display all information from employees
-- where job ids are IT_PROG and order them based on salary asc order
select * from EMPLOYEES
where JOB_ID='IT_PROG'
order by salary ;

-- display all information from employees and order them based firstname asc
select * from EMPLOYEES
order by FIRST_NAME  ;

--IQ -->  display all information from employees and order them based firstname asc and based on lastname desc
select * from  EMPLOYEES
order by FIRST_NAME,LAST_NAME DESC;

/*
 it will first order result based on firstname
 after getting result if we have same names it will order them based lastname in desc order

 David Austin
 David Berstein
 David Lee

 --After execution
 David Lee
 David Berstein
 David Austin

 */

 --==================================================================================




