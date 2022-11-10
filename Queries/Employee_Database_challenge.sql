-- Deliverable 1: The Number of Retiring Employees by Title
SELECT employees.emp_no, employees.first_name, employees.last_name,
titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles 
ON (employees.emp_no = titles.emp_no)
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY count DESC;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT * FROM mentorship_eligibility;