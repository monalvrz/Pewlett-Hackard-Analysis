-- Employee Database challenge

-- Deliverable 1: The Number of Retiring Employees by Title
-- Retirement Titles Table
SELECT e.emp_no,
	   e.first_name, 
	   e.last_name, 
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles
FROM employees AS e
     INNER JOIN titles AS t
	 ON(e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
-- Unique Titles Table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Retrieve the number of employees by their most recent job title
-- Retiring Titles Table
SELECT COUNT(title), title
INTO retiring_titles 
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable 2: The Employees Eligible for Mentorship Program 
-- Create a Mentorship Eligibility table
SELECT DISTINCT ON (emp_no) e.emp_no, 
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
	  ON(e.emp_no = de.emp_no)	
    INNER JOIN titles AS t
	  ON(e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
	AND de.to_date = '9999-01-01'
ORDER BY e.emp_no;

SELECT * FROM departments;

-- Deliverable 3:
-- Titles per Department
SELECT de.emp_no,
	   de.dept_no,
	   t.title,
	   d.dept_name
INTO departments_titles
FROM dept_emp AS de
	INNER JOIN titles AS t
	 ON (de.emp_no = t.emp_no)
	INNER JOIN departments AS d
	 ON (de.dept_no = d.dept_no)
ORDER BY de.dept_no;

SELECT *
INTO unique_dept_titles
FROM (
  SELECT DISTINCT ON (dept_name, title) dept_no, 
	   title, 
	   dept_name
  FROM departments_titles
	) p
ORDER BY dept_no 

SELECT * FROM unique_dept_titles;

-- Retirements per Departments
SELECT e.emp_no,
	   e.first_name, 
	   e.last_name, 
	   t.title,
	   t.from_date,
	   t.to_date,
	   de.dept_no,
	   d.dept_name
INTO retirement_departments
FROM employees AS e
     INNER JOIN titles AS t
	 ON(e.emp_no = t.emp_no)
	 INNER JOIN dept_emp AS de
	 ON(e.emp_no = de.emp_no)
	 INNER JOIN departments AS d
	 ON(d.dept_no = de.dept_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	dept_no,
	dept_name
INTO unique_departments
FROM retirement_departments
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT dept_name, COUNT(dept_name) as "Retirements by Department"
INTO retirements_by_department
FROM unique_departments
GROUP BY dept_name
ORDER BY "Retirements by Department" DESC;

-- Retirements by gender
SELECT e.emp_no,
	   e.first_name, 
	   e.last_name, 
	   e.gender,
	   t.from_date,
	   t.to_date
INTO retirements_by_gender
FROM employees AS e
     INNER JOIN titles AS t
	 ON(e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	gender
INTO by_gender
FROM retirements_by_gender
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(gender), gender
INTO gender_count
FROM by_gender
GROUP BY gender;

-- Titles count on mentorship eligibility candidates
SELECT COUNT (title) as "Titles count", title
INTO mentorship_titles_count
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;