# sql-challenge
SQL Homework

MODELING
  - Created a relational model database schema from Column headers and data types attained and observed in the homework CSV files.  

DATA ENGINEERING
  - IncludeD all details and properties in schema; data types, primary keys, foreign keys, and other constraints.
  
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
  
  - Imported each CSV file into the corresponding SQL table *in the same order that the tables were created and account for the headers when importing to avoid errors.

DATA ANALYSIS
  - Complete steps 1-8
      1. List the following details of each employee: employee number, last name, first name, sex, and salary.

      2. List first name, last name, and hire date for employees who were hired in 1986.

      3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

      4. List the department of each employee with the following information: employee number, last name, first name, and department name.

      5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

      6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

      7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

      8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

  I had some difficulty with capitalization.  in the future i will not use caps EVER again...
    - Fixed in pgAdmin

Files Folder Contains:
  - Diagram created in Quick DBD (https://www.quickdatabasediagrams.com/).  Exported visual "QuickDBD-sql-challenge (1).png" of diagram.
  - SQLSchemataTables.sql exported from Quicl DBD (https://www.quickdatabasediagrams.com/) and opened in pgAdmin Query tool (drag & dropped).
  - SQLQueries.sql file generated in query tool to run queiries of the required analysis steps 1-8.
  
Data Folder Contains:
  - Six CSV files that were imported into PostgreSQL pgAdmin
    - Departments
    - Dept Emp
    - Dept Managers
    - Employees
    - Salaries
    - Titles