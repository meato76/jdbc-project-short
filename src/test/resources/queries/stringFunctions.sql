select  * from employees;

/*
 concatenation operator :||

 firstName LastName
 Steven     King

 JAVA --> firstName +" "+ lastName --.Steven King
 SQL  --> firstName ||' '||lastName --Steven King

 */

 SELECT FIRST_NAME||' '||LAST_NAME from EMPLOYEES;
-- Add @gmail.com to email
--SKING@gmail.com
select EMAIL||'@gmail.com' from EMPLOYEES;

-- CONCAT(value1,value2)
--steven King info
select concat(concat(FIRST_NAME,' '),LAST_NAME) from EMPLOYEES;

--SKING@gmail.com
select concat(EMAIL,'@gmail.com') from EMPLOYEES;

--Upper(value)

select upper(FIRST_NAME) from EMPLOYEES;

--LOWER(value)
select lower(FIRST_NAME) from EMPLOYEES;

--INITCAP(value)

select initcap (EMAIL) from EMPLOYEES;


--LENGTH(value)
/*
 SUBSTR(columnName, beginningIndex, numberOfChar)
 if beginning index 0, it is treated as 1

 */

--LENGTH

SELECT FIRST_NAME ,LENGTH(FIRST_NAME) from EMPLOYEES;

/*
 SUBSTR(columnName, beginningIndex, numberOfChar)
 if beginning index 0, it is treated as 1

 */

 --String King --> S.K. --> Initials

select substr(FIRST_NAME,0,1)||'.'|| substr(LAST_NAME,0,1)||'.' from EMPLOYEES;

select substr(FIRST_NAME,1,1)||'.'|| substr(LAST_NAME,1,1)||'.' from EMPLOYEES;



