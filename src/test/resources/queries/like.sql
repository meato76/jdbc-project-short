SELECT * from COUNTRIES;


/*
LIKE

- Percent ( % ) for matching any sequence of characters. (0 or more )
-Underscore ( _ ) for matching any single character

    -contains
    -startswith
    -endwith

 */

 -- startwith
-- Get me all countries where country_name start with 'A';

SELECT * from COUNTRIES where COUNTRY_NAME like 'A%';

-- endstwith
-- Get me all countries where country_name ends with 'a';

select * from COUNTRIES where COUNTRY_NAME like  '%a';


-- Get me all countries where country_name start with 'A' and ends with 'a';

select * from COUNTRIES where COUNTRY_NAME like 'A%a' order by COUNTRY_NAME desc ;

-- Get me all countries where country_name start with 'A' or ends with 'a';

select * from COUNTRIES where COUNTRY_NAME like  'A%' or COUNTRY_NAME like  '%a';

-- Get me all countries where country_name contains 'b'

select * from COUNTRIES where COUNTRY_NAME like '%b%';


--Get me all countries where country name ends with 'a' and 6 letters

select  * from COUNTRIES where COUNTRY_NAME like '_____a' ;

-- Get me all countries where country names 5th letters is a

SELECT * from COUNTRIES where COUNTRY_NAME like '____a%';



