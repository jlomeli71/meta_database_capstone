# Create a virtual table to summarize data

### Scenario

Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:
- Create a virtual table to summarize data.
- Use a JOIN statement to query data from multiple tables.
- Create a SQL statement with a subquery.

You can carry out these steps using your knowledge of virtual tables, JOIN statements and SQL queries. Review the instructions that follow for guidance on completing these tasks.

### Task instructions

Little Lemon need you to create some reports on the orders placed in the restaurant. Complete the following tasks to help Little Lemon obtain the relevant information about the menu’s orders.

### Task 1

In the first task, Little Lemon need you to create a virtual table called OrdersView that focuses on OrderID, Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2. 

Here’s some guidance around completing this task: 
- Use a CREATE VIEW statement.
- Extract the order id, quantity and cost data from the Orders table.
- Filter data from the orders table based on orders with a quantity greater than 2. 

You can query the OrdersView table using the following syntax:

``` 
CREATE VIEW OrdersView AS SELECT OrderId, Quantity, TotalCost FROM Orders WHERE Quantity > 2;

SELECT * FROM OrdersView;
```

### Task 2

For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 

- Customers table: The customer id and full name.
- Orders table: The order id and cost.
- Menus table: The menus name.
- MenusItems table: course name and starter name.

The result set should be sorted by the lowest cost amount.

``` 
SELECT customers.CustomerId AS 'Customer Id', customers.Name AS 'Full Name', orders.OrderId AS 'Order Id', orders.TotalCost AS Cost, menu.MenuName AS 'Menu Name', menuitems.Course AS 'Course Name'
FROM customers
    INNER JOIN orders
        ON customers.CustomerId = orders.OrderId
    INNER JOIN menu
        ON orders.OrderId = menu.MenuId
    INNER JOIN menuitems
        ON menu.MenuId = menuitems.MenuItemsId
ORDER BY Cost ASC;     
``` 

### Task 3

For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

Here’s some guidance around completing this task: 
- Use the ANY operator in a subquery
- The outer query should be used to select the menu name from the menus table.
- The inner query should check if any item quantity in the order table is more than 2. 

``` 
SELECT MenuName
FROM `menu`
WHERE MenuId = ANY (SELECT MenuId FROM `orders` WHERE Quantity > 2);
``` 
