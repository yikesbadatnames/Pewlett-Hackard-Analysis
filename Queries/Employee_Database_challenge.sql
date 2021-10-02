-- retirement_titles table
Select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
into retirement_titles
from employees as e
left join titles as t
on (e.emp_no = t.emp_no)
where e.birth_date between '1952-01-01' and '1952-12-31'


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;