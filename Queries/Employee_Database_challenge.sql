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

--deliverable 1
select distinct e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e 
left join titles as t 
on (e.emp_no = t.emp_no)
where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no;

--deliverable1.1
select distinct on(e.emp_no) e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into unique_titles
from employees as e 
left join titles as t 
on (e.emp_no = t.emp_no)
where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no, to_date desc;

--- deliverable 1.1
Select count, title 
into retiring_titles
From
(select distinct on(t.title) count(e.emp_no) as count, t.title
from employees as e 
left join unique_titles as t 
on (t.emp_no = e.emp_no)
where e.birth_date between '1952-01-01' and '1955-12-31'
group by t.title) as x
order by count  desc;


--- deliverable 2
Select distinct on(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibility
from employees as e
left join dept_emp as de
on (e.emp_no = de.emp_no)
left join titles as t
on (de.emp_no = t.emp_no)
where (de.to_date = '9999-01-01') and (e.birth_date between '1965-01-01' and '1965-12-31');