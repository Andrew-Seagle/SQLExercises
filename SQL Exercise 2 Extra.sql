/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
 select e.EmployeeID, e.FirstName, e.LastName, p.Name as Product, sum(s.Quantity) as NumberSold
 from bestbuy.employees as e 
 join bestbuy.sales as s 
 on e.EmployeeID = s.EmployeeID
 join bestbuy.products as p
 on s.ProductID = p.ProductID
 group by p.Name
 order by e.EmployeeID;