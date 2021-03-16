-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ZE9uk9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Employees] (
    [emp_no] int  NOT NULL ,
    [emp_title_id] varchar(30)  NOT NULL ,
    [birth_date] date  NOT NULL ,
    [first_name] varchar(30)  NOT NULL ,
    [last_name] varchar(30)  NOT NULL ,
    [sex] varchar(30)  NOT NULL ,
    [hire_date] date  NOT NULL 
)

CREATE TABLE [Dept_Emp] (
    [emp_no] int  NOT NULL ,
    [dept_no] varchar(30)  NOT NULL 
)

CREATE TABLE [Departments] (
    [dept_no] varchar(30)  NOT NULL ,
    [dept_name] varchar(30)  NOT NULL 
)

CREATE TABLE [Dept_Manager] (
    [dept_no] varchar(30)  NOT NULL ,
    [emp_no] int  NOT NULL 
)

CREATE TABLE [Salaries] (
    [emp_no] int  NOT NULL ,
    [salary] int  NOT NULL 
)

CREATE TABLE [Titles] (
    [title_id] varchar(30)  NOT NULL ,
    [title] varchar(30)  NOT NULL 
)

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Dept_Manager] ([emp_no])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_no]

ALTER TABLE [Dept_Emp] WITH CHECK ADD CONSTRAINT [FK_Dept_Emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_Emp] CHECK CONSTRAINT [FK_Dept_Emp_emp_no]

ALTER TABLE [Dept_Emp] WITH CHECK ADD CONSTRAINT [FK_Dept_Emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_Emp] CHECK CONSTRAINT [FK_Dept_Emp_dept_no]

ALTER TABLE [Dept_Manager] WITH CHECK ADD CONSTRAINT [FK_Dept_Manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_Manager] CHECK CONSTRAINT [FK_Dept_Manager_dept_no]

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_emp_no]

ALTER TABLE [Titles] WITH CHECK ADD CONSTRAINT [FK_Titles_title_id] FOREIGN KEY([title_id])
REFERENCES [Employees] ([emp_title_id])

ALTER TABLE [Titles] CHECK CONSTRAINT [FK_Titles_title_id]

COMMIT TRANSACTION QUICKDBD