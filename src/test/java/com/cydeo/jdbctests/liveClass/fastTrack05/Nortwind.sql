-- BASICS
select * from Employees;

-- 1.Give me List of male employees living in London ?

select * from employees where TitleOfCourtesy='Mr.' and  City ='London';

-- 2.Get me all employees information in following format with columnName ContactInfo
-- FirstName LastName can be reached at Extension
-- Nancy Davolio can be reached at 5467
select FirstName||' '||LastName||' '|| 'can be reached at '|| Extension from Employees;


-- 3.Get me all the CustomerID in lowercase letter and renamed as ID from the customers table.
select lower(CustomerID) as ID from Customers;


-- 4.Give me List of customers  in Germany,France,Argentina ?
select * from Customers where Country in ('Germany','France','Argentina');

-- 5.Get me all the even numbers employeeID from employeesTable
select * from Employees where EmployeeID %2=0;

-- 6.Get me  top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted by Freight in descending order.
-- 7.Get me ten most expensive products
-- LIKE
-- 8.Get me all employees who knows French
-- Group BY
-- 9.How many  customers  we have  in Germany,France,Argentina ?
-- 10.How many sales did each of my employees make ?
-- 11.Which of our personnel made more than 75 sales ?
-- JOIN
/*
 12.Transported to France by a cargo company called United Package
and the sales for which we paid more than 35 dollars for shipping were made by which personnel at what time?
 */

-- 13.From which supplier companies did we purchase products with
-- a unit price of more than 20 in the Beverages category?
-- 14.Get me  customers  we have never sold  before
-- SELF JOIN
-- 15.Get me all employees and their managers
--SET OPS
-- 16.Get me all customers and employees phone numbers
-- 17.Get me all suppliers and customers city,companyName,ContactName