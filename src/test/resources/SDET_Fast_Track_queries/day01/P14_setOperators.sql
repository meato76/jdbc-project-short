/*
 UNION

 - to merge more then one table vertically
 - Remove DUPs
 - Make an order as default asc based on ID


 */

select * from developers
union
select * from testers;


select names from developers
union
select names from testers;



/*

 UNION ALL

 - Dont Remove DUPS
 - Dont sort the results
 */

select * from developers
union all
select * from testers;


select names,salary from developers
union all
select names,salary from testers;


/*
MINUS
 It removes same data from first table and gives result from first table

 */


select * from developers
                  minus
select * from testers;


select names from developers
    minus
select names from testers;

select * from employees;
/*
 INTERSECT

 */
select * from developers
intersect
select * from testers;


select names from developers
intersect
select names from testers;