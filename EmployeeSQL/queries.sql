-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- returns 300024 rows, one for each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on s.emp_no = e.emp_no
; 

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- returns 36,150 employees 
SELECT e.first_name, e.last_name, e.hire_date
from employees as e
where e.hire_date between '1986-01-01' and '1986-12-31'
; 

-- 3. List the manager of each department with the following information: department number, 
		--department name, the manager's employee number, last name, first name
 -- returns 24 rows
SELECT dmgr.dept_no, d.dept_name, dmgr.emp_no as mgr_emp_no, e.last_name, e.first_name  
from dept_manager as dmgr
inner join departments as d on d.dept_no = dmgr.dept_no
inner join employees as e on dmgr.emp_no = e.emp_no
;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- returns 331,603 records.  some employees work in more than one department  
SELECT demp.emp_no, e.last_name, e.first_name, d.dept_name  
from dept_emp as demp
inner join departments as d on d.dept_no = demp.dept_no
inner join employees as e on demp.emp_no = e.emp_no
;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex 
from employees as e
where e.first_name = 'Hercules' and e.last_name like 'B%' 
)
;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- returns 52245 rows
SELECT demp.emp_no, e.last_name, e.first_name, d.dept_name  
from dept_emp as demp
inner join departments as d on d.dept_no = demp.dept_no
inner join employees as e on demp.emp_no = e.emp_no
where d.dept_name = 'Sales'
;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, 
-- and department name.
-- returns 137952
SELECT demp.emp_no, e.last_name, e.first_name, d.dept_name  
from dept_emp as demp
inner join departments as d on d.dept_no = demp.dept_no
inner join employees as e on demp.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- returns 1638 rows
SELECT count(last_name), last_name
from employees 
group by last_name 
order by count(last_name) desc 
;