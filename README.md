# Database-Management-Questions

**DBMS LAB UNIVERSITY QUESTIONS** 

1.  Consider the following schema: 

**Employee** (Emp\_id integer, Name varchar2 (20), Dob date, Salary real>=5000). 

**Department** (Dep\_id varchar2 (6) begins with „D‟, dept\_name varchar2 (20), manager\_id integer references employee, Location\_id integer references Location). 

**Works** (Emp\_id integer references Employee, Dep\_id varchar2 (6) references department). 

**Location** (location\_id integer, city notnull varchar2 (15), postalcode integer).

 Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the following queries using SQL. 

1. Display the details of employees in descending order of emp\_id, working in the department „ABC‟. 
2. Find the number of employees working in the department where „john‟ and „arun‟ are working. 
3. Display the details of employees whose salary is between 12000 and 25000. 
4. Display the details of department managed by the employee named „PQR‟. 
5. Display the details of department where the maximum number of employees are working. 

Create a package with functions and procedures to do the following: 

6. Find the number of employees whose salary is greater than the average salary. 
7. Display the department details along with the average salary of employees working in that department. 
8. Display the details of employees whose salary are less than 12000 and managed by a manger whose salary is greater than 30000. 
9. Draw ER Diagram. ![](Aspose.Words.b34ed4f7-45ff-44b4-a3f7-df11516d9c64.001.png)
```
2.  Consider the following schema: 

**Salesman** (sid varchar2 (6) begins with „S‟, sname varchar2 (15), city varchar2 (20), age integer>18). 

**Stock** (Icode varchar2 (6), Item\_name varchar2 (15), unit\_price real). 

**Order** (ord\_no varchar2 (6) begins with „O‟, Sid varchar2 (6) references salesman). **Orderline** (ord\_no references Order, Icode varchar2 (6) references stock, quantity real>0). 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the following queries using SQL. 

1. List the names of salespersons who have some orders, and the order numbers of their orders in ascending order of name the order number. 
2. Find the names of salespersons who do not have any orders. 
3. Display the details of order which is placed for max\_ordered items. 
4. Display the order number and the order value of each order. (The order value of an order is calculated by totaling the product of the qty and the unit\_price of each order line). 

Create a package with functions and procedures to do the following: 

5. Display the order number and the total number of order lines of every order which has two or more orderlines. 
6. Display the order details placed by sales man whose name begins with B and age<40. 
7. Create a trigger on stock such that insertion is possible if new unit\_price is 30% greater than old unit price. 
8. Draw ER Diagram. ![](Aspose.Words.b34ed4f7-45ff-44b4-a3f7-df11516d9c64.002.png)
```
3. Consider the following schema: 

**Actor** (Actor\_id integer, name varchar2 (15), Gender varchar2 (1) values „F‟ or „M‟). **Actor\_dates** (actor\_id integer references Actor, available\_from date, available\_till date) 

**Cinema** (film\_id varchar2 (6), begins with „F‟, filmname varchar2 (15), start\_date date, end\_date date, release\_date date, budget\_allocated real). 

**Actor\_films** (actor\_id integer references Actor, film\_id varchar2 (6) references cinema, actor\_contract\_amount real). 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the following queries using SQL 

1. Display the details of actors who have acted in the film „ABC‟. 
2. Find the number of films acted by the actor „XYZ‟. 
3. Display the details of film in which actor „PQR‟ and „XYZ‟ are not acting. 
4. Find the details of actors actress in the film releasing on „February‟. 
5. Find the details of actress acting in the film which has taken minimum amount of time for shooting. 

Create a package with functions and procedures to do the following: 

6. Display the details of actors acting in the film for which budget allocated is less than 40 lakhs. 
7. Find number of actors available from March to August. 
8. Create a trigger for insertion and updation on cinema which allows the operation if the start\_date is less than end\_date. 
9. Draw ER Diagram. 
```
**Department** (dep\_id varchar2 (6) begins with „D‟, deptname varchar2 (15), no\_of\_faculty integer) 

**Student** (Rollno \_integer, name varchar2 (15), age integer>16, dep\_id varchar2 (6) references department); 

**Faculty** (Faculty\_id varchar2 (6) begins with „F‟, designation varchar2 (10) (values can be Lecturer, Professor, Reader), salary real> 8000, dep\_id varchar2 (6) references department) **Course** (Rollno integer references student, faculty\_id varchar2 (6) references faculty, subject varchar2 (15)) 

Create the tables for the above relations and insert data into these tables so that all queries may be answered 
```
Answer the queries using SQL 

1. Display the details of students (ascending order of name) in the department CSE. 
2. Find the highest salary of faculty working in the department where maximum numbers of faculties are working. 
3. Display the details of department along with average salary of each department. 
4. Find the details of professor who is taking the subjects „OS‟ and “DSPM‟ and not teaching the student ‟ABC‟. 
5. Display the details of students in the department where the faculty with the highest salary works. 

Create a package with functions and procedures to do the following: 

6. Find the details of students who take sources from more than one department. 
7. Find the number of professors not teaching any subject. 
8. Create a trigger on faculty such that updation is possible if the designation is professor and new salary>average salary. 
9. Draw ER Diagram. 
```
5. Consider the following schema: 

**Students** (sno integer, sname varchar2 (20), birthdate date, sex varchar2 (1)) **Departments** (dno varchar2 (6) begins with„d‟, dname varchar2 (20)) 

**Registrations** (sno integer references Student, dno varchar2(6), references Department, regdate date) 

**Courses** (cno varchar2 (6) begins with‟c‟, dno varchar2 (6) references Department, credit integer, titile varchar2 (15)). 

**Options** (cno varchar2 (6) references Course, sno integer references Student, mark real). 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the queries using SQL. 

1. Display the student number, name and gender of all students, stored by gender ascending then name descending then number ascending. 
2. Display the unique names of departments in which any students has registered. 
3. The student number and name of students taking a course worth 3 credits in the department of Biology. 
4. The numbers and names of all students, together with the department numbers of the departments in which they have registered, if any. 
5. Create a view of the student numbers, names and colleges of all male students enrolled on courses run by department d01. 

Create a package with functions and procedures to do the following: 

6. For each course, display its title and the average mark. 
7. Find sno of students getting above average marks in course c00. 
8. Create a trigger for insertion and updation such that insertion is possible on table option if the mark given now is greater than the minimum mark in the table. 
9. Draw ER Diagram. 
```
**Users** (user\_id integer, name varchar2 (20), mail\_box\_size integer>2, no\_mails integer); **Contacts** (user\_id integer references users, contact\_id integer references users); 

**Mail** (from\_user\_id integer references users, to\_user\_id integer references users, send\_date date); 

**Trash** (from\_user\_id integer, to\_user\_id integer, send\_date date, delete \_date date) 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the queries using SQL. 

1. Display the details of user in the ascending order of mail\_box\_size and then in the descending order of user\_id. 
2. Find the month on which maximum number of mails are deleted. 
3. Find the details of users who have not deleted the mails send by the user „ABC‟. 
4. Find the details of users who have send mail to the user having maximum number of mails. 

Create a package with functions and procedures to do the following: 

5. Display the details of users ( in ascending order of name), who has send mail to the users whose user\_id is not in contacts. 
6. Find the number of users who have send more mails than the mails send by the user ”ABC”. 
7. Find the details of user having maximum number of contents. 
8. Draw ER Diagram. 
```
7. Consider the following schema: 

**Search\_data** (site\_id integer>1000, sitename varchar2 (20), subject varchar2 (15), last\_searchdate date). 

**Site\_media** (site\_id integer references search\_data, media\_type varchar2 (15) (can take values video, audio, text, animation), link varchar2 (20); 

**Hyper\_link** (site\_id integer references search\_data, linkname varchar2 (20), link\_address varchar2 (30) begins with “www”. 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 
```
Answer the queries using SQL. 

1. Display the details of site which has media type both text and animation. 
2. Find the details of site whose information is not available in hyper\_link. 
3. Find the hyperlink information of sites which have media type animation and searched in the current month.  
4. Display the site\_id „s „of the site with the subject that is specified maximum number of times in search\_data table, along with hyper link information of that sites. 

Create a package with functions and procedures to do the following: 

5. Find the number of sites searched for the subject “maths“on the month of „April‟. 
6. Display the details of sites searched between 1/1/2009 and 31/1/2009. 
7. Create a trigger on search \_data for insertion such that when we insert a row into the search\_data record, a new record is inserted into site\_media by accepting required information from user if needed. 
8. Draw ER Diagram. 
```
8. Consider the following schema: 

**Customers** (C\_id) varchar2 (6) begins with „C‟, name varchar2 (10), DOB date, martial\_status varchar2 (1) values „Y‟ Or „N‟) 

**Orders** (O\_id varchar2 (6) begins with‟O‟, order\_ date date, C\_id varchar2 (6) references Customer) 

**Product** (P\_id varchar2 (6) begins with‟P‟, product-name varchar2 (6), quantity\_on\_hand real) 

**OrderItem**  (O\_id  varchar2  (6)  references  orders,  P\_id  varchar2  (6)  references  product, unit\_price real, quantity real>0) 

Create the tables for the above relations and insert data into these tables so that all queries may be answered. 

Answer the queries using SQL 

1. Display the details of customers in the ascending order of name whose name ends with „h‟. 
1. Find out the  product id and quantity ordered that is ordered in the month of „July‟ 
1. Find out the names of customers who have orders the product other than „XYZ‟ and „ABC‟. 
1. Display the details of products along with the total quality ordered for each product. Create a package with functions and procedures do the following 
1. Find the number of orders placed for the product with id P00001. 
1. Find the details of customers who have ordered the fast moving product. 
1. Create a trigger such that insertion is possible in Order Item if quantity in order item is less than the quantity\_ on \_ hand  in the product table. 
1. Draw ER Diagram. 
