SELECT * FROM public."Employees"
ORDER BY emp_no ASC LIMIT 100


--Answering Question 1
DROP VIEW Question_1
	
CREATE VIEW Question_1 AS
SELECT public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".sex, public."Salaries".Salary
FROM public."Employees"
INNER JOIN public."Salaries" ON
public."Employees".emp_no=public."Salaries".emp_no;

Select *
FROM Question_1

--Answering Question 2
DROP VIEW Question_2
	
CREATE VIEW Question_2 AS
SELECT public."Employees".first_name, public."Employees".last_name, public."Employees".hire_date
FROM public."Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

Select *
FROM Question_2

--Answering Question 3
DROP VIEW Question_3
	
CREATE VIEW Question_3 AS
SELECT public."Dept_Manager".dept_no,
	public."Departments".dept_name,
	public."Dept_Manager".emp_no,
	public."Employees".last_name, 
	public."Employees".first_name 
	
FROM public."Dept_Manager"
INNER JOIN public."Employees" ON
public."Dept_Manager".emp_no=public."Employees".emp_no
INNER JOIN public."Departments" ON
public."Dept_Manager".dept_no=public."Departments".dept_no;

Select *
FROM Question_3

--Answering Question 4
DROP VIEW Question_4
	
CREATE VIEW Question_4 AS
SELECT public."Dept_Emp".dept_no,
	public."Departments".dept_name,
	public."Dept_Emp".emp_no,
	public."Employees".last_name, 
	public."Employees".first_name 
	
FROM public."Dept_Emp"
INNER JOIN public."Employees" ON
public."Dept_Emp".emp_no=public."Employees".emp_no
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no=public."Departments".dept_no;

Select *
FROM Question_4

--Answering Question 5
DROP VIEW Question_5
	
CREATE VIEW Question_5 AS
SELECT public."Employees".first_name, public."Employees".last_name, public."Employees".sex
FROM public."Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

Select *
FROM Question_5

--Answering Question 6
DROP VIEW Question_6
	
CREATE VIEW Question_6 AS
SELECT public."Dept_Emp".dept_no,
	public."Departments".dept_name,
	public."Dept_Emp".emp_no,
	public."Employees".last_name, 
	public."Employees".first_name 
	
FROM public."Employees"
INNER JOIN public."Dept_Emp" ON
public."Employees".emp_no=public."Dept_Emp".emp_no
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no=public."Departments".dept_no
WHERE dept_name = 'Sales';

Select *
FROM Question_6

--Answering Question 7
DROP VIEW Question_7
	
CREATE VIEW Question_7 AS
SELECT public."Dept_Emp".dept_no,
	public."Departments".dept_name,
	public."Dept_Emp".emp_no,
	public."Employees".last_name, 
	public."Employees".first_name 
	
FROM public."Employees"
INNER JOIN public."Dept_Emp" ON
public."Employees".emp_no=public."Dept_Emp".emp_no
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no=public."Departments".dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

Select *
FROM Question_7

--Answering Question 8
DROP VIEW Question_8
	
CREATE VIEW Question_8 AS
Select public."Employees".last_name, COUNT (last_name) AS COUNT

FROM public."Employees"
GROUP BY last_name
ORDER BY COUNT DESC;

Select *
FROM Question_8

