--1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"
SELECT first_name AS "First Name", last_name AS "Last Name" FROM hr.employees;

--2. Write a query to get unique department ID from employee table
SELECT DISTINCT department_id FROM hr.employees;

--3. Write a query to get all employee details from the employee table order by first name, descending
SELECT * FROM hr.employees ORDER BY first_name DESC;

--4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary)
SELECT first_name, last_name, salary, (salary*0.15) AS "PF" FROM hr.employees;

--5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary
SELECT employee_id, first_name, last_name, salary FROM hr.employees ORDER BY salary ASC;

--6. Write a query to get the total salaries payable to employees
SELECT SUM(salary) AS "Total payable salaries" FROM hr.employees;

--7. Write a query to get the maximum and minimum salary from employees table
SELECT MAX(salary) AS "Maximum Salary", MIN(salary) AS "Minimum Salary" FROM hr.employees;

--8. Write a query to get the average salary and number of employees in the employees table
SELECT COUNT(*) AS "Total Num. of employees", TRUNC(AVG(salary),2) AS "Avg Salary" FROM hr.employees;

--9. Write a query to get the number of employees working with the company
SELECT COUNT(*) AS "Total Num. of Employees" FROM hr.employees;

--10. Write a query to get the number of jobs available in the employees table
SELECT COUNT (DISTINCT job_id) AS "Num. of Jobs" FROM hr.employees;

--11. Write a query get all first name from employees table in upper case
SELECT UPPER(first_name) AS "First Name" FROM hr.employees;

--12. Write a query to get first name from employees table after removing white spaces from both side
SELECT TRIM(first_name) AS "First Name" FROM hr.employees;

--13. Write a query to get the length of the employee names (first_name, last_name) from employees table
SELECT first_name,LENGTH(first_name),last_name, LENGTH(last_name) FROM hr.employees;

--14. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000
SELECT first_name, last_name, salary FROM hr.employees WHERE salary NOT BETWEEN 10000 AND 150000;

--15. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100
SELECT first_name, last_name, salary, department_id FROM hr.employees WHERE salary NOT BETWEEN 10000 AND 150000 AND department_id IN (30,100);