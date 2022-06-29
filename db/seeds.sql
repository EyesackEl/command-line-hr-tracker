INSERT INTO departments (name)
    VALUES ('Administration'),
           ('Development'),
           ('Sales')
;

INSERT INTO roles (title, salary, department_id)
    VALUES ('Manager', 110000.00, 1),
           ('Engineer', 80000.00, 2),
           ('Intern', 40000.00, 2)
;

INSERT INTO employees (first_name, last_name, role_id, manager_id)
    VALUES ('Katlynn', 'Orchard', 3, null),
           ('Isaac', 'LaFlamme', 2, 1)
;

-- SELECT * FROM departments;

-- SELECT * FROM roles;

-- SELECT * FROM employees;

-- SELECT r.title AS 'Title', concat('$ ', r.salary) AS 'Salary', d.name AS 'Department'
-- FROM roles AS r
-- JOIN departments AS d
-- ON r.department_id = d.id;

-- SELECT concat(e1.first_name, ' ',e1.last_name) AS 'Name', concat(e2.first_name, ' ',e2.last_name) AS 'Manager Name'
-- FROM employees AS e1
-- JOIN employees AS e2
-- ON e2.id = e1.manager_id;

-- SELECT concat(e1.first_name, ' ',e1.last_name) AS 'Name', concat(e2.first_name,' ',e2.last_name) AS 'Manager Name', r.title AS 'Role'
-- FROM employees AS e1
-- INNER JOIN employees AS e2
-- ON e2.id = e1.manager_id
-- INNER JOIN roles AS r
-- ON r.id = e1.role_id;

-- SELECT r.id AS 'ID', r.title AS 'Role Name', r.salary AS 'Salary', d.name AS 'Department'
-- FROM roles AS r
-- JOIN departments AS d
-- ON d.id = r.department_id;

-- SELECT e1.id AS 'ID', concat(e1.first_name, ' ',e1.last_name) AS 'Name', r.title AS 'Role', d.name AS 'Department', r.salary AS salary, concat(e2.first_name,' ',e2.last_name) AS 'Manager'
-- FROM employees AS e1
-- INNER JOIN roles AS r
-- ON r.id = e1.role_id
-- INNER JOIN departments AS d
-- ON d.id = r.department_id
-- LEFT OUTER JOIN employees AS e2 
-- ON e2.id = e1.manager_id;

SELECT * FROM employees;

UPDATE employees AS e1 
SET role_id = '1'
WHERE id = 1;

SELECT * FROM employees;

UPDATE employees 

