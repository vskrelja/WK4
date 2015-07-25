DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
     employee_id int PRIMARY KEY,
     employee_name varchar,
     employee_title varchar,
     manager_id int NULL
);

INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 1, 'Steve Jobs', 'CEO', NULL);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 2, 'Peter Oppenheimer', 'SVP CFO', 1);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 3, 'Tim Cook', 'COO', 1);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 4, 'Betsy Rafael', 'VP Controller', 2);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 5, 'Gary Wipfler', 'VP Treasurer', 2);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 6, 'John Couch', 'VP Education Sales', 3);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 7, 'John Brandon', 'VP Channel Sales', 3);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 8, 'Micheal Fenger', 'VP iPhone Sales', 3);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 9, 'Douglas Beck', 'VP Apple Japan', 3);
INSERT INTO employees ( employee_id, employee_name, employee_title, manager_id ) VALUES ( 10, 'Jennifer Bailey', 'VP Online Stores', 3);

SELECT employee.employee_name AS employee, employee.employee_title AS title, manager.employee_name AS manager, manager.employee_title AS manager_title
   FROM employees employee
      LEFT JOIN employees manager
      ON employee.manager_id = manager.employee_id
ORDER BY employee.employee_title;