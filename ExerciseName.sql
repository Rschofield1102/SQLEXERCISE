/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the 
category name */

 /*SELECT * 
 FROM products
 INNER JOIN categories
 ON products.CategoryID = categories.CategoryID
 WHERE categories.Name = "Computers";
 */
 
 
 
 
			  
 
/* joins: find all product names, product prices,
 and products ratings that have a rating of 5 */
 /*
 SELECT products.Name, products.Price, reviews.Rating
 FROM products
 INNER JOIN reviews
 ON products.ProductID = reviews.ProductID
 WHERE reviews.Rating = 5;
 */
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

/*
SELECT employees.LastName, employees.FirstName, Sum(sales.Quantity) AS "total"
FROM employees
INNER JOIN sales
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID 
ORDER BY total DESC
LIMIT 2;

*/


/* joins: find the name of the department, and the name of the category for Appliances and Games */

/*
SELECT categories.Name, departments.Name 
FROM categories
INNER JOIN departments
ON categories.DepartmentID = departments.DepartmentID
Where Categories.Name ="Appliances"
OR Categories.Name = "Games";
*/

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/*
SELECT products.Name, sum(sales.Quantity), Sum(sales.PricePerUnit)
FROM products
INNER JOIN sales
ON sales.productID = products.ProductID
Where sales.productID = 97;

/*

/* joins: find Product name, reviewer name, rating, 
and comment on the Visio TV. (only return for the lowest rating!) */

SELECT products.Name, MIN(reviews.Rating)
FROM products
INNER JOIN reviews
ON reviews.ProductID = products.ProductID
WHERE products.ProductID = 857 
GROUP BY products.productID;



-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
