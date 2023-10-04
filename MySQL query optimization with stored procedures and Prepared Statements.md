# MySQL query optimization with stored procedures and Prepared Statements

### Create a stored procedure

The following syntax presents a block of code that represents the basic syntax of a stored procedure:

``` 
CREATE PROCEDURE ProcedureName()  
SELECT statements;
```

### Stored procedures with multiple parameters

You can also create a more sophisticated stored procedure with multiple parameters and statements. However, these procedures require additional steps to consider in the development process.

``` 
DELIMITER //  
CREATE PROCEDURE ProcedureName (OUT parameter INT, IN parameter INT)  
BEGIN   
SELECT statement1_name;
SELECT statement2_name;
END // 
DELIMITER;
``` 

### Invoke a stored procedure
Once you’ve created your stored procedure you need to invoke it. To invoke the stored procedure, you need to use the CALL command followed by the procedure name, as in the following example: 

``` 
CALL ProcedureName;
``` 
### Drop a stored procedure
Once you’ve created your stored procedure you can drop a procedure:
``` 
DROP PROCEDURE ProcedureName;
``` 
### Prepared statements
A prepared statement is a database optimization technique used to execute database queries faster and more securely. You can also invoke it to reuse the same SQL statements repeatedly. This leads to higher efficiency. 

### Creating a prepared statement
A prepared statement in MySQL is essentially a template that you create with a SQL statement that includes certain unspecified values which are used as parameters. 
``` 
PREPARE statement_Name FROM 'INSERT INTO table1 VALUES (?, ?, ?, ?)';
``` 

``` 
SET @variable = (10, 12, 13, 14);
``` 

### Calling a prepared statement
To call the prepared statement, you need to use the execute command as follows:
``` 
EXECUTE statement_name USING @variable;
``` 