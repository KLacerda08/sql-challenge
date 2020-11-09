Upon original attempt to import csvs, got an error on the foreign key relating the dept_emp table
to the employees table.  

Upon inspection of the employees table through filtering in the csv, it seemed that employee ids were missing

Redesigned ERD to make the relationship from dept_emp.emp_no to employees.emp_no a many or zero to one 

imported tables, all worked.  

However, upon re-examination of the employees csv, realized that the filter display was misleading.  
There are no missing employee ids in employees.  The import error was originating from the order in 
which the tables were being imported.  

Will recreate tables using origial ERD (R1).  