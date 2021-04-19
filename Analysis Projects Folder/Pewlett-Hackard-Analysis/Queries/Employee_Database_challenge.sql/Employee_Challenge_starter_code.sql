-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
--INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (title) e.emp_no,
e.first_name,
e.last_name,
rt.title
--INTO unique_titles
FROM retirement_titles as rt
ORDER BY e.emp_no  DESC, ti.to_date ASC;

SELECT COUNT(ce.emp_no), ut.titles
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.titles DESC;

SELECT DISTINCT ON (e.emp_no),
e.first_name,
e.last_name,
e.birth_date,
ti.title,
de.from_date,
de.to_date
--INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no);
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;