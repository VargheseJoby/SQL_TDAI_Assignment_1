#Section 01: AND/ OR & Operator precedence
#In the table “Employee”, choose all the Female employees whose employee ID is more than 10200 – list all columns and get only 50 results

 SELECT 
    *
FROM
    employees.employees
WHERE
    gender = 'F' AND emp_no > 10200
LIMIT 50;

##Section 01: AND/ OR & Operator precedence
##In the table “Employee”, choose all the employees whose name is either Denis/ Giri – list all columns

SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IN ('Denis' , 'Giri');
    

SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Denis'
        OR first_name = 'Giri';

    
##Section 01: AND/ OR & Operator precedence
##In the table “Employee”, choose all the employees whose name is “Shen” & Gender is either Males/ Females – list only first, last names and gender

SELECT 
    first_name, last_name, gender
FROM
    employees.employees
WHERE
    (first_name = 'Shen' AND gender = 'M')
    OR
    (first_name = 'Shen' AND gender = 'F');

##Section 02: IN/ NOT IN & Wildcard Characters
##In the table “Employee”, choose all the Female employees whose first name is either Denis/ Elvis – list all columns

SELECT 
    *
FROM
    employees.employees
WHERE
    gender IN ('F')
        AND first_name IN ('Denis','Elvis');

##Section 02: IN/ NOT IN & Wildcard Characters
##In the table “Employee”, choose all the employees except for those whose first name is either John/ Mark/ Jacob – list all column and get only 200 results observations

SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob')
LIMIT 200;


##Section 03: LIKE/ NOT LIKE and wildcard characters
##In the “Employees” table, retrieve a list with all employees who were born in 1950s

SELECT 
    *
FROM
    employees.employees
WHERE
    birth_date LIKE ('195%');
    

##Section 03: LIKE/ NOT LIKE and wildcard characters
##In the “Employees” table, choose all individuals whose first name does not start with “M”

SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT LIKE ('M%');
    

##Section 03: LIKE/ NOT LIKE and wildcard characters
##In the “Titles” table, retrieve the list that has “engineer” in the title

SELECT 
    *
FROM
    employees.titles
WHERE
    title LIKE ('%Engi%');


##Section 03: LIKE/ NOT LIKE and wildcard characters
##In the “Employees” tables, retrieve a list with all employees whose employee number is written with 5 characters, and start with “100”

SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no LIKE ('100__');


##Section 04: BETWEEN/ NOT BETWEEN
##In the “Employees” table, retrieve a list with all employees who were born between Jan 1950 to Oct 1956 – select only birth_date, first, last names and gender and get only 500 results

SELECT 
    birth_date, first_name, last_name, gender
FROM
    employees.employees
WHERE
    birth_date BETWEEN '1950-01-01' AND '1956-10-31'
LIMIT 500;


##Section 04: BETWEEN/ NOT BETWEEN
##In the “salaries” table, retrieve a list with all employees whose salary is not in 60000s

SELECT 
    *
FROM
    employees.salaries
WHERE
    salary NOT BETWEEN 60000 AND 69999;


##Section 05: SELECT DISTINCT
##In the “titles” table, retrieve the list of all the titles unduplicated which has “staff” in the title unduplicated


SELECT DISTINCT
    title
FROM
    employees.titles
WHERE
    title LIKE '%staff%';


##Section 05: SELECT DISTINCT
##In the “titles” table, Count the number of unique titles there are

SELECT 
    COUNT(DISTINCT title) AS unique_titles_count
FROM
    employees.titles;


##Section 06: GROUP BY, ORDER BY and ALIAS
##From the “salaries” table, retrieve the average salary of first 200 employees sort this in descending order (there are multiple entries for each employee because of the yearly increments) – also, rename the average salary column to “average_sal”

SELECT * from employees.salaries;


SELECT 
    emp_no, AVG(salary) AS 'average_sal'
FROM
    employees.salaries
GROUP BY emp_no
ORDER BY emp_no
LIMIT 200;


##Section 06: GROUP BY, ORDER BY and ALIAS
##From the “employees” table, retrieve the number of Female hires on each date of the year 1986 and sort them by hire date – rename the count of female hires column to “number_of_female_hires”

select * from employees.employees;

SELECT 
    hire_date, COUNT(emp_no) AS number_of_female_hires
FROM
    employees.employees
WHERE
    gender = 'F' AND YEAR(hire_date) = 1986
GROUP BY hire_date
ORDER BY hire_date;


SELECT 
    hire_date, COUNT(emp_no) AS number_of_female_hires
FROM
    employees.employees where gender = 'F' and year(hire_date) = 1986
    group by hire_date
    order by hire_date;







