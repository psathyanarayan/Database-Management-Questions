drop database emp;
create database emp;
use emp;
CREATE TABLE employee (emp_id INT PRIMARY KEY, name varchar(20), Dob date, Salary INT, check (Salary>=5000));
CREATE TABLE department(dept_id varchar(6) PRIMARY KEY,dept_name VARCHAR(20),manager_id INT, FOREIGN KEY(manager_id) REFERENCES employee(emp_id), CHECK (dept_id LIKE "D%"));
CREATE TABLE works(emp_id INT,dept_id VARCHAR(20), FOREIGN KEY(emp_id) REFERENCES employee(emp_id), FOREIGN KEY(dept_id) REFERENCES department(dept_id));
CREATE TABLE loc(location_id INT PRIMARY KEY NOT NULL,city VARCHAR(15),postal_code INT);

insert into employee values(1,'arun',date('1996-01-01'),12500);
insert into employee values(2,'Billy',date('1996-01-01'),15000);
insert into employee values(3,'catherin',date('1996-01-01'),23000);
insert into employee values(4,'david',date('1996-01-01'),75000);
insert into employee values(5,'PQR',date('1996-01-01'),5000);
insert into employee values(6,'fill',date('1996-01-01'),5000);
insert into employee values(7,'george',date('1996-01-01'),5000);
insert into employee values(8,'henry',date('1996-01-01'),5000);
insert into employee values(9,'irine',date('1996-01-01'),5000);
insert into employee values(10,'john',date('1996-01-01'),5000);


insert into department values('D1','ABC',1);
insert into department values('D2','IT',2);
insert into department values('D3','Finance',3);
insert into department values('D4','Marketing',4);
insert into department values('D5','Sales',5);
insert into department values('D6','R&D',6);
insert into department values('D7','Admin',7);
insert into department values('D8','Production',8);
insert into department values('D9','QA',9);
insert into department values('D10','Accounts',10);


-- insert 10 values in works table
insert into works values(1,'D1');
insert into works values(1,'D2');
insert into works values(3,'D3');
insert into works values(4,'D2');
insert into works values(5,'D4');
insert into works values(6,'D2');
insert into works values(7,'D1');
insert into works values(8,'D1');
insert into works values(1,'D3');
insert into works values(10,'D9');

-- insert 10 different values in loc table with indian cities
insert into loc values(1,'Mumbai',4000);
insert into loc values(2,'Delhi',4000);
insert into loc values(3,'Bangalore',4000);
insert into loc values(4,'Chennai',4000);
insert into loc values(5,'Kolkata',4000);
insert into loc values(6,'Hyderabad',4000);
insert into loc values(7,'Ahmedabad',4000);
insert into loc values(8,'Pune',4000);
insert into loc values(9,'Jaipur',4000);
insert into loc values(10,'Lucknow',4000);

-- Display all tables
select * from employee;
select * from department;
select * from works;
select * from loc;

-- Display the details of employees in descending order of emp_id, working in the department "ABC"
SELECT emp_id from department,works where department.dept_id = works.dept_id and department.dept_name = "ABC" order by emp_id desc;

-- Display Find the number of employees working in the department where "john" and "arun" are working.
SELECT COUNT(emp_id) from employee,works,department where department.dept_id = works.dept_id and employee.emp_id = works.emp_id and employee.name in ("john","arun") ;

-- Display the details of employees whose salary is between 12000 and 25000.
SELECT * FROM employee where employee.salary BETWEEN 12000 AND 25000;

-- Display the details of department managed by the employee named "PQR‟.
SELECT department.dept_id,dept_name,manager_id FROM employee,department,works where employee.emp_id = works.emp_id and works.dept_id = department.dept_id and employee.name = "PQR";

-- Display the details of department where the maximum number of employees are working.
CREATE VIEW count AS SELECT department.dept_id,dept_name,manager_id,count(employee.emp_id) as cn FROM employee,department,works where employee.emp_id = works.emp_id and works.dept_id = department.dept_id group by department.dept_id,dept_name,manager_id order by COUNT(employee.emp_id) desc;
SELECT * FROM count;
SELECT dept_id,dept_name,manager_id FROM count WHERE cn =  (SELECT MAX(cn) FROM count group by dept_id ORDER BY cn DESC LIMIT 1);

-- Create a package with functions and procedures to do the following
-- Find the number of employees whose salary is greater than the average salary using procedures.
DELIMITER //
CREATE PROCEDURE avg_salary()
BEGIN
    SELECT AVG(salary) FROM employee;
END //
DELIMITER ;

CALL avg_salary();