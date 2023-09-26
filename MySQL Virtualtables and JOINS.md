# Recap: MySQL virtual tables and JOINS

### Introduction 

To manage your data in a relational database, you must have a good understanding of how to access, extract, process and manipulate information using various SQL queries. 

In this reading you will recap different SQL queries with a particular focus on subqueries, virtual tables and JOINS.

### Overview of SQL queries

To extract all data existing in a table, you can use the primary form of SQL query as follows:

``` 
SELECT * FROM table;  
```

To perform more specific queries, you may need to filter data, and use operators, aliases and aggregate functions. 

For instance, sometimes you need to extract specific information from your database. This involves writing SQL queries with specific filtering criteria.

For example, to obtain data from a table with specific dates you can use the following syntax.:

``` 
SELECT column_name 
FROM table_name 
WHERE date_column > date_value;  
```

In some cases, existing data is labelled with long, complicated or less meaningful names, which may confuse users. In this situation, you can use an alias to display a particular column with a more meaningful name. 

An alias is created by using the AS keyword as shown in the following syntax:

``` 
SELECT column_a AS 'Column A' 
FROM table_name; 
```

Also, using aliases can be very important when making use of JOIN statements. 

You can also use the aggregate functions to summarize data in your database such as **COUNT**, **SUM**, **MIN**, **MAX**, and **AVERAGE**. For example, you can use the following syntax to count all values in a particular column. 

``` 
SELECT COUNT(column_name) 
FROM table_name;
```

To perform more sophisticated SQL queries, you need to be familiar with subqueries, JOINS and virtual tables. 

### Subqueries

A subquery is a query within another query. You can create a subquery as an inner query and include it in another query called outer query. The inner query can be thought of as the child query and the outer query as the parent query.

Subqueries, also called nested queries, can be placed in the **SELECT,** **FROM** or **WHERE** clause to return relevant data. In a subquery you can use several types of operators including **ANY**, **ALL**, **EXIST** and **NOT EXISTS**. 

The following syntax makes use of the **EXISTS** operator to test for the existence of any records in the subquery:

``` 
SELECT column_name(s) 
FROM table_name 
WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);
```

### Joins

JOINS are important for obtaining data from multiple tables in relational databases. You can use different types of JOIN to explore the relationships between different records of data that exist in different tables. 

The main JOINS supported in MySQL include the INNER JOIN, the LEFT JOIN and the RIGHT JOIN.

``` 
SELECT columns 
FROM table1 INNER JOIN table2 
ON table1.column = table2.column;
```

### Virtual tables

Virtual tables are very helpful for summarizing data. The SQL view creates a virtual table from existing tables in the database. Key advantages of virtual tables include:
- Focus on specific data in the database.
- Reduce data returned from a query. 
- Include complex calculations and functions. 
- Save time in querying data.
- Reduce report complexity.

``` 
CREATE VIEW virtual_table AS SELECT column FROM table;

SELECT * FROM virtual_table;

RENAME TABLE virtual_table TO new_virtual_table;

DROP VIEW virtual_table;
```
