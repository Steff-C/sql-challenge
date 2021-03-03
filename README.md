# sql-challenge
SQL Homework

MODELING
  - Create a relational model database schema from Column headers and data types attained and observed in the homework CSV files.  

DATA ENGINEERING
  - Include all details and properties in schema; data types, primary keys, foreign keys, and other constraints.
  
    Constraints are part of a database schema definition.
      A constraint is usually associated with a table and is created with a CREATE CONSTRAINT or CREATE ASSERTION SQL statement.
      They define certain properties that data in a database must comply with. They can apply to a column, a whole table, more 
      than one table or an entire schema. A reliable database system ensures that constraints hold at all times (except possibly 
      inside a transaction, for so called deferred constraints).
    Common kinds of constraints are:
      - not null - each value in a column must not be NULL
      - unique - value(s) in specified column(s) must be unique for each row in a table
      - primary key - value(s) in specified column(s) must be unique for each row in a table and not be NULL; normally each table 
        in a database should have a primary key - it is used to identify individual records
      - foreign key - value(s) in specified column(s) must reference an existing record in another table (via it's primary key or some other unique constraint)
      - check - an expression is specified, which must evaluate to true for constraint to be satisfied
  
  - Import each CSV file into the corresponding SQL table 

ADDITIONAL FOLDERS:
  - File folder contains Quick DBD export.
  -
  
