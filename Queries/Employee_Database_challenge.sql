-- MODULE 7 PART 1:
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_titles;

-- Create a new table that pulls only the most recent title from the retiring employee

SELECT DISTINCT ON (rt.emp_no)
	   rt.emp_no,
	   rt.first_name,
	   rt.last_name,
	   rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;

-- Create a table where you list out the quantity of each position that is retiring. 
SELECT COUNT (ut.title), ut.title
FROM unique_titles as UT
GROUP BY ut.title
ORDER BY COUNT DESC;

-- MODULE 7 PART 2: MENTORSHIP PROGRAM ELIGIBILITY 
SELECT DISTINCT ON (emp_no)
	   e.emp_no,
       e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibility
FROM employees AS e
	LEFT JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	LEFT JOIN titles as ti
		ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- PULL UP THE NEW 'MENTORSHIP ELIGIBILITY' TABLE
SELECT * FROM mentorship_eligibility;