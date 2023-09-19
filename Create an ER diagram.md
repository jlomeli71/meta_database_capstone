<h1>Exercise: Create an ER diagram data model and implement it in MySQL</h1>
<h3>Scenario</h3>
<p>Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. This database system should maintain information about the following aspects of the business:</p>  
<ul>
    <li>Bookings.</li>
    <li>Orders.</li>
    <li>Order delivery status.</li>
    <li>Menu.</li>
    <li>Customer details.</li>
    <li>and Staff information.</li>
</ul>
<h3>Prerequisites</h3>
<p>Use MySQL Workbench to create the ER diagram and to implement it in your MySQL server.</p>

<h3>Task Instructions</h3> 
<p>Little Lemon wants you to use MySQL Workbench to develop a relational database system and implement it in MySQL server. Save your database capstone project files in a folder on your machine and name it db-capstone-project.</p>

<h3>Task 1</h3>
<p>In this task, you need to create a normalized ER diagram (that adheres to 1NF, 2NF and 3NF) with relevant relationships to meet the data requirements of Little Lemon. When creating your diagram, include the following tables:</p>
<ul>
    <li>Bookings: To store information about booked tables in the restaurant including booking id, date and table number.</li>
    <li>Orders: To store information about each order such as order date, quantity and total cost.</li>
    <li>Order delivery status: To store information about the delivery status of each order such as delivery date and status.</li>
    <li>Menu: To store information about cuisines, starters, courses, drinks and desserts.</li>
    <li>Customer details: To store information about the customer names and contact details.</li>
    <li>Staff information: Including role and salary.</li>
</ul>
<p>Here is some guidance for completing this task:</p>
<li>Identify entities and related attributes.</li> 
<li>Identify primary and foreign keys.</li>
<li>Define data types and constraints.</li> 
<p>Once you have designed your ER diagram inside your MySQL Workbench Model Editor you then need to save your data model as LittleLemonDM and export it as a PNG file.</p>

<h3>Task 2</h3>
<p>In this second task, you need to implement the Little Lemon data model inside your MySQL server. Here is some guidance for completing this task:</p>
<ul>
    <li>Use the forward engineer method in MySQL Workbench to implement the Little Lemon data model inside MySQL server.</li> 
    <li>Name your database LittleLemonDB.</li> 
    <li>Export the LittleLemonDB as a single contained SQL file and save it in the db-capstone-project folder.</li>


<h3>Task 3</h3>
<p>In the third and final task, you need to show the databases in the MySQL server. Write a SQL code inside MySQL Workbench SQL editor to show all your databases in MySQL server. Check if the Little Lemon database is included in the list.</p>

<h3>Conclusion</h3>
<p>In this exercise, you created a data model for Little Lemon, implemented it in MySQL and listed all databases in MySQL server.</p>