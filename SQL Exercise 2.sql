-- joins: select all the computers from the products table: using the products table and the categories table, return the product name and the category name
 select p.Name, c.Name
 from bestbuy.products as p 
 join bestbuy.categories as c
 on p.CategoryID = c.CategoryID
 where c.Name = 'computers';
 
-- joins: find all product names, product prices, and products ratings that have a rating of 5
 select p.Name, p.Price, r.Rating
 from bestbuy.products as p 
 join bestbuy.reviews as r
 on p.ProductID = r.ProductID
 where r.Rating = 5;
 
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
 select e.FirstName, e.MiddleInitial, e.LastName, sum(s.Quantity) as TotalSales
 from bestbuy.employees as e 
 join bestbuy.sales as s
 on e.EmployeeID = s.EmployeeID
 group by e.EmployeeID
 order by TotalSales desc;
 
-- joins: find the name of the department, and the name of the category for Appliances and Games
 select d.Name as Department, c.Name as Category
 from bestbuy.departments as d
 join bestbuy.categories as c
 on d.DepartmentID = c.DepartmentID
 where c.Name = 'Appliances' or c.Name = 'Games';
 
-- joins: find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM()
 select p.Name as Product, sum(s.Quantity) as TotalNumberSold, sum(s.Quantity * s.PricePerUnit) as TotalRevenueFromProduct
 from bestbuy.products as p
 join bestbuy.sales as s
 on p.ProductID = s.ProductID
 where p.Name = 'Eagles: Hotel California'
 group by p.ProductID;
 
-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
 select p.Name as Product, r.Reviewer, min(r.Rating) as LowestRating, r.Comment
 from bestbuy.products as p
 join bestbuy.reviews as r
 on p.ProductID = r.ProductID
 where p.Name = 'Visio TV'
 group by p.ProductID;