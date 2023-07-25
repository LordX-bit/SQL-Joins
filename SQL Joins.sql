/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select p.Name AS productName, C.Name CategoryName 
 from products As p
 INNER Join categories As c
 On C.CategoryID = P.CategoryID
 Where C.Name = "computers";
 
 select products.Name, categories.Name
 from products
 Inner Join categories on categories.CategoryID = products. CategoryID
 where categories.Name = "computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select products.Name as "Products Name", products.Price, reviews.Rating
 from products
 inner join reviews on reviews.ProductID = products.ProductID
 where reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.LastName, sum(s.Quantity) As Total
from sales As s
inner join employees As e on e.EmployeeID = s.EmployeeID
group by total desc
limit 2;
select * from sales
where EmployeeID = 33809;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.Name as `Departments Name`, c.Name as `Category Name` From departments as d
inner join categories as c On c.DepartmentID = d.DepartmentID
where c.Name = `Appliances` or c.Name = `Games` ;
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select products.Name, sum(sales.Quantity) as `Total Sold`, Sum(s.Quantity * s.PricePerUnit) as `Total price`
 from products as p
 inner join sales as s on sales.ProductID = p.ProductID
 where p.ProductID = 97;
 select * from sales where ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select products.Name, sum(s.Quantity) as `Total Sold`, sum(s.Quantity * sales.priceperunit) as `Total Price`
from products as p
inner join reviews as r on r.productID = p.productID
where p.ProductID = 97;
select * from sales where ProductID = 97;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
select e.EmployeeID, e.FirstName, e.LastName, p.name, sum(s.Quantity) as TotalSold
from sales as s
inner join employees as e on e.EmployeeID = s.EmployeeID
inner join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID
order by e.FirstName;

