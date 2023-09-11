select  * from EMPLOYEES order by FIRST_NAME,LAST_NAME desc ;

select  * from EMPLOYEES where EMPLOYEE_ID< 120 order by SALARY desc ;

SELECT  * from EMPLOYEES order by FIRST_NAME asc , LAST_NAME desc ;

select *  from employees where SALARY =20000 order by 10 desc ;

select * from EMPLOYEES order by FIRST_NAME asc ,LAST_NAME desc ;

select * from COUNTRIES where COUNTRY_NAME like 'A%a';

select * from COUNTRIES where COUNTRY_NAME like '%b%';

select * from COUNTRIES where COUNTRY_NAME like 'A%'or COUNTRY_NAME like '%a';

select  * from COUNTRIES where  COUNTRY_NAME like '____a%';

SELECT count (*) from EMPLOYEES where JOB_ID= 'IT_PROG';

SELECT  count(*) from COUNTRIES where COUNTRY_NAME like 'B%';


select JOB_ID, count(*) from EMPLOYEES group by JOB_ID;

select JOB_ID, avg (SALARY) from EMPLOYEES  group by JOB_ID;

---=========================================================================

/*
 ORDER BY --> use for sorting result

 - by default it will sort data in ASC (0-9 , A-Z)

 */

--ASC

select * from COUNTRIES order by COUNTRY_NAME asc ;

--DESC

select * from COUNTRIES order by REGION_ID desc;

-- use where to order by

SELECT * from COUNTRIES where REGION_ID =3 order by COUNTRY_NAME ; -- by default sort ASC
SELECT * from COUNTRIES where REGION_ID =3 order by COUNTRY_NAME DESC ;

SELECT COUNTRY_ID,COUNTRY_NAME,REGION_ID FROM COUNTRIES
WHERE REGION_ID IN(2,4)
ORDER BY REGION_ID DESC,COUNTRY_NAME ASC;


