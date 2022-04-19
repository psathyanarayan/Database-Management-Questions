drop database emp;
create database emp;
use emp;
CREATE TABLE employee (emp_id INT PRIMARY KEY, name varchar(20), Dob date, Salary INT, check (Salary>=5000));
CREATE TABLE department(dept_id varchar(6) PRIMARY KEY,dept_name VARCHAR(20),manager_id INT, FOREIGN KEY(manager_id) REFERENCES employee(emp_id), CHECK (dept_id LIKE "D%"));
CREATE TABLE works(emp_id INT,dept_id VARCHAR(20), FOREIGN KEY(emp_id) REFERENCES employee(emp_id), FOREIGN KEY(dept_id) REFERENCES department(dept_id));
CREATE TABLE loc(location_id INT PRIMARY KEY NOT NULL,city VARCHAR(15),postal_code INT);

insert into employee values(1,'arun',date('1996-01-01'),5000);
insert into employee values(2,'Billy',date('1996-01-01'),5000);
insert into employee values(3,'catherin',date('1996-01-01'),5000);
insert into employee values(4,'david',date('1996-01-01'),5000);
insert into employee values(5,'emily',date('1996-01-01'),5000);
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
insert into department values('D11','ABC',11);
insert into department values('D12','ABC',12);
insert into department values('D13','ABC',13);

-- insert 10 values in works table
insert into works values(1,'D1');
insert into works values(2,'D2');
insert into works values(3,'D3');
insert into works values(4,'D2');
insert into works values(5,'D4');
insert into works values(6,'D2');
insert into works values(7,'D1');
insert into works values(8,'D1');
insert into works values(9,'D3');
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

SELECT works.dept_id from employee,works,department where department.dept_id = works.dept_id and employee.emp_id = works.emp_id and employee.name = "john" or employee.name = "arun" ;
SELECT COUNT(emp_id) from employee,works,department where employee.emp_id = works.emp_id and department.dept_id = works.dept_id and employee.emp_name = "john" and "arun";