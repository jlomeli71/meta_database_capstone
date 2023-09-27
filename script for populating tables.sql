SHOW TABLES FROM `littlelemondb`;
USE `littlelemondb`;

# Populating menuitems table
SELECT * FROM `menuitems`;
INSERT INTO `menuitems` (MenuItemsId, Course, Starter, Dessert, Drink)
VALUES 
(1, 'La Italian pasta', 'a', 'b', 'c'),
(2, 'Le Greek salad', 'a', 'b', 'c'),
(3, 'La Japanese sushi', 'a', 'b', 'c'),
(4, 'Le American sandwidth', 'a', 'b', 'c'),
(5, 'La Mexican taco', 'a', 'b', 'c');
COMMIT;
SELECT * FROM `menuitems`;

# Populating menu table
SELECT * FROM `menu`;
INSERT INTO `menu` (MenuId, Cuisine, MenuName, MenuItemsId)
VALUES 
(1, 'Italian', 'La Italian Dancer', 1),
(2, 'Greek', 'Le Greek Dance', 2),
(3, 'Japanese', 'La Japonais Saks', 3),
(4, 'American', 'Le American Mix', 4),
(5, 'Mexican', 'Le Mexican Mariachi', 5);
COMMIT;
SELECT * FROM `menu`;

# Populating orders table
SELECT * FROM `orders`;
INSERT INTO `orders` (OrderId, Date, Quantity, TotalCost, MenuId)
VALUES 
(1, '2023-01-01', 1, 100, 1),
(2, '2023-02-02', 2, 200, 2),
(3, '2023-03-03', 3, 300, 3),
(4, '2023-04-04', 4, 400, 4),
(5, '2023-05-05', 5, 500, 5);
COMMIT;
SELECT * FROM `orders`;

# Populating customers table
SELECT * FROM `customers`;
INSERT INTO `customers` (CustomerId, Name, Contact)
VALUES 
(1, 'Nachito', '111-111'),
(2, 'Petrita', '222-222'),
(3, 'Marquino', '333-333'),
(4, 'Polinesio', '444-444'),
(5, 'Carambolas', '555-555');
COMMIT;
SELECT * FROM `customers`;

# Populating deliverystatus table
SELECT * FROM `deliverystatus`;
INSERT INTO `deliverystatus` (DeliveryId, Date, Status)
VALUES 
(1, '2023-01-01', 'Yes'),
(2, '2023-02-02', 'No'),
(3, '2023-03-03', 'Incomplete'),
(4, '2023-04-04', 'Yes'),
(5, '2023-05-05', 'No');
COMMIT;
SELECT * FROM `deliverystatus`;

# Populating staff table
SELECT * FROM `staff`;
INSERT INTO `staff` (StaffId, Role, Salary, Name)
VALUES 
(1, 'Manager', 3000.50, 'John Bolas'),
(2, 'Waiter', 1000.10, 'Peter Papitas'),
(3, 'Cashier', 5000.30, 'Mary Fresas'),
(4, 'Bar tender', 4000.40, 'Sobrio Morales'),
(5, 'The Boss', 120000.00, 'Pablo Gold');
COMMIT;
SELECT * FROM `staff`;

# Populating booking table
SELECT * FROM `bookings`;
INSERT INTO `bookings` (BookingsId, Date, TableId, CustomerId, StaffId, DeliveryId, OrderId)
VALUES 
(1, '2023-01-01', 1, 1, 1, 1, 1),
(2, '2023-02-02', 2, 2, 2, 2, 2),
(3, '2023-03-03', 3, 3, 3, 3, 3),
(4, '2023-04-04', 4, 4, 4, 4, 4),
(5, '2023-05-05', 5, 5, 5, 5, 5);
COMMIT;
SELECT * FROM `bookings`;

# Task 1
# In the first task, Little Lemon need you to create a virtual table called OrdersView that focuses on OrderID, 
# Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2. 

CREATE VIEW OrdersView AS SELECT OrderId, Quantity, TotalCost FROM `orders` WHERE Quantity > 2;
SELECT * FROM OrdersView;

# Task 2
# For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. 
# Extract the required information from each of the following tables by using the relevant JOIN clause: 

SELECT customers.CustomerId AS 'Customer Id', customers.Name AS 'Full Name', orders.OrderId AS 'Order Id', orders.TotalCost AS Cost, menu.MenuName AS 'Menu Name', menuitems.Course AS 'Course Name'
FROM customers
    INNER JOIN orders
        ON customers.CustomerId = orders.OrderId
    INNER JOIN menu
        ON orders.OrderId = menu.MenuId
    INNER JOIN menuitems
        ON menu.MenuId = menuitems.MenuItemsId
ORDER BY Cost ASC;    

# Task 3
# For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed. 
# You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

SELECT MenuName
FROM `menu`
WHERE MenuId = ANY (SELECT MenuId FROM `orders` WHERE Quantity > 2);

# Exercise: Create optimized queries to manage and analyze data

# Task 1
# In this first task, Little Lemon need you to create a procedure that displays the maximum ordered quantity in the Orders table. 
SELECT * FROM `orders`;

CREATE PROCEDURE GetMaxQuantity()  
SELECT MAX(Quantity) AS 'Max QUantity in Order'
FROM `orders`;

CALL GetMaxQuantity();

# Task 2
# In the second task, Little Lemon need you to help them to create a prepared statement called GetOrderDetail. 
# This prepared statement will help to reduce the parsing time of queries.
SELECT * FROM `orders`;

PREPARE GetOrderDetail FROM 'SELECT OrderId, Quantity, TotalCost FROM `orders` WHERE OrderId = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

# Task 3
# Your third and final task is to create a stored procedure called CancelOrder. 
# Little Lemon want to use this stored procedure to delete an order record based on the user input of the order id.

SELECT * FROM `orders`;

CREATE PROCEDURE CancelOrder(IN Id INT)
DELETE FROM `orders` WHERE OrderId = Id;

CALL CancelOrder(5);