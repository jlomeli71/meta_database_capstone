<h1>Common SQL Commands</h1>

<p>The objective of this reading is to teach you how to name and explain the main commands in SQL. SQL is the most widely used database query language. It is designed for retrieving and managing data in a relational database. SQL can be used to perform different types of operations in the database such as accessing data, describing data, manipulating data and setting users roles and privileges (permissions).</p>

<p>Here you will learn about the main commands used in SQL. At a later stage you will explore relevant examples of how to use these commands with a detailed explanation of the SQL syntax for key operations such as to create, insert, update and delete data in the database.</p> 

<p>The SQL Commands are grouped into four categories known as DDL, DML, DCL and TCL depending on their functionality, namely the type of operation they’re used to perform.  Let’s explore these commands in greater detail.</p>


<h3>Data Definition Language (DDL)</h3>
<p>The SQL DDL category provides commands for defining, deleting and modifying tables in a database. Use the following commands in this category.</p>

<ul>
<li>CREATE Command</li>
    <ul>
        <li><strong>Purpose:</strong>To create the database or tables inside the database</li>
        <li>Syntax to create a table with three columns:</li>
        <code>CREATE TABLE table_name (column_name1 datatype(size), column_name2 datatype(size), column_name3 datatype(size));</code>
    </ul>
<li>DROP Command</li>
    <ul>
        <li><strong>Purpose:</strong>To delete a database or a table inside the database.</li>
        <li>Syntax to drop a table:</li>
        <code>DROP TABLE table_name;</code>
    </ul>
<li>ALTER Command</li>
    <ul>
        <li><strong>Purpose:</strong>To change the structure of the tables in the database such as changing the name of a table, adding a primary key to a table, or adding or deleting a column in a table.</li>
        <li>Syntax to add a column into a table:</li>
        <li><code>ALTER TABLE table_name ADD (column_name datatype(size));</code></li>
        <li>Syntax to add a primary key to a table:</li>
        <code>ALTER TABLE table_name ADD primary key (column_name);</code>
    </ul>
<li>TRUNCATE Command</li>
    <ul>
        <li><strong>Purpose:</strong>To remove all records from a table, which will empty the table but not delete the table itself.</li>
        <li>Syntax to truncate a table:</li>
        <code>TRUNCATE TABLE table_name;</code>
    </ul>
<li>COMMENT Command</li>
    <ul>
        <li><strong>Purpose:</strong>To add comments to explain or document SQL statements by using double dash (--) at the start of the line. Any text after the double dash will not be executed as part of the SQL statement. These comments are not there to build the database. They are only for your own use.</li>
        <li>Syntax to COMMENT a line in SQL:</li>
        <code>--Retrieve all data from a table
              SELECT * FROM table_name;</code>
    </ul>
</ul>

<h3>Data Manipulation Language (DML)</h3>
<p>The SQL DML commands provide the ability to query, delete and update data in the database.  Use the following commands in this category.</p>

<ul>
<li>SELECT Command</li>
    <ul>
        <li><strong>Purpose:</strong>To retrieve data from tables in the database.</li>
        <li>Syntax to select data from a table:</li>
        <code>SELECT * FROM table_name;</code>
    </ul>
<li>Insert Command</li>
    <ul>
        <li><strong>Purpose:</strong>To add records of data into an existing table.</li>
        <li>Syntax to insert data into three columns in a table:</li>
        <code>INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);</code>
    </ul>
<li>UPDATE Command</li>
    <ul>
        <li><strong>Purpose:</strong>To modify or update data contained within a table in the database.</li>
        <li>Syntax to update data in two columns:</li>
        <code>UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;</code>
    </ul>
<li>DELETE Command</li>
    <ul>
        <li><strong>Purpose:</strong>To delete data from a table in the database.</li>
        <li>Syntax to delete data:</li>
        <code>DELETE FROM table_name WHERE condition;</code>
    </ul>

<h3>Data Control Language (DCL)</h3>
<p>You use DCL to deal with the rights and permissions of users of a database system. You can execute SQL commands to perform different types of operations such as create and drop tables. To do this, you need to have user rights set up. This is called user privileges. This category deals with advanced functions or operations in the database. Note that this category can have a generic description of the two main commands. Use the following commands in this category:</p>

<ul>
    <li><strong>GRANT</strong> Command to provide the user of the database with the privileges required to allow users to access and manipulate the database.</li>
    <li><strong>REVOKE</strong> Command to remove permissions from any user.</li>
</ul>

<h3>Transaction Control Language (TCL)</h3>
<p>The TCL commands are used to manage transactions in the database. These are used to manage the changes made to the data in a table by utilizing the DML commands. It also allows SQL statements to be grouped together into logical transactions. This category deals with advanced functions or operations in a database. Note that this category can have a generic description of the two main commands. Use the following commands in this category:</p>

<ul>
    <li><strong>COMMIT</strong> Command to save all the work you have already done in the database.</li>
     <li><strong>ROLLBACK</strong> Command to restore a database to the last committed state.</li>
<ul>