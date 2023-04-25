# Store procedures and Function in SQL

## Analogy
A **function** can be compared to a function in any programing language, it can take inputs but only return singular results or single tables.

**Stored procedures** on the other hand can be compared to an entire program, where you can do all sorts of things that is possible in SQL and keep the entired script saved as a stored procedure.

## Functions

1. A function has a return type and returns a value.
2. A function does not allow output parameters
3. You cannot use a function with DML queries. Only Select queries are allowed in functions.
4. You cannot manage transactions inside a function.
5. You cannot call stored procedures from a function
6. You can call a function using a select statement.


## Stored Procedures
1. A procedure does not have a return type. But it can returns values using the OUT parameters.
2. A procedure allows both input and output parameters.
3. You can use DML queries such as insert, update, select etc… with procedures.
4. You can manage transactions inside a procedure.
5. You can call a function from a stored procedure.
6. You cannot call a procedure using select statements.


## Usage
1. Functions

2. Stored Procedures

