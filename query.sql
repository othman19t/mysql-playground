/**

This query will return a table of recoreds of all employees from all over the world with some specification and conditions such as the following 

before running the following script please first run tables.sql file first to create all the needed tables as well as inserting all records  

1) postion column should match either Web Developer or front-end Web Developer
2) relationship_status should be single
3) hire_date should be start or after 2019-05-01
4) the preferred employees would be working in vancouver so we create a column has value of hight chance if the employee from vancouver otherwise the value is low chance
5) the result of the query is a combination of columns come from 3 joined tables.
6) the order is according to the value of rate 

***/

SELECT employees.employee_id, first_name, last_name, email, phone_num, department, position, job_type, age, salary, relationship_status, children, hire_date, cities.city_name, cities.num_of_employees, 
if(cities.city_name = 'Vancouver', 'High chance', 'low chance')AS rate,
CASE children
    WHEN '0' THEN 'has no childern' 
    WHEN '1' THEN 'has one child only' 
    ELSE 'has 2 or more childern'
END children
FROM employees
INNER JOIN cities ON employees.city_id=cities.city_id
LEFT OUTER JOIN teams ON employees.city_id=teams.city_id 
WHERE (position = 'Web Developer'
       OR position = 'front-end Web Developer')
       AND relationship_status = 'single' 
       AND job_type = 'full time' 
       AND DATE(hire_date) >= '2019-05-01' 
       ORDER BY rate
