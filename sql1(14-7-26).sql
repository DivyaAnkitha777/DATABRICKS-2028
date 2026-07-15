CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    experience INT
);

INSERT INTO Employees VALUES
(101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
(102, 'Anjali', 'HR', 45000, 'Chennai', 3),
(103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
(104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
(105, 'Aman', 'HR', 39000, 'Pune', 2),
(106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
(107, 'Divya', 'IT', 55000, 'Chennai', 3),
(108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
(109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
(110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
(111, 'Vikas', 'HR', 52000, 'Pune', 3),
(112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
(113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
(114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
(115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);
select * from Employees;
select emp_name,salary  from Employees; 
select emp_name,department from Employees;
select * from Employees where department='IT';
select emp_name,experience from Employees;

select * from Employees where salary>70000;
select * from Employees where city='Hyderabad';
select * from Employees where experience<4;
select * from Employees where department='Finance';
select * from Employees where salary=52000;

select sum(salary) as totalsalary from Employees group by department;
select AVG(salary) as averagesalary from Employees group by department;
select COUNT(emp_id) as employeecount from Employees group by city;
select MAX(salary) as maximumsalary from Employees group by department;
select MIN(experience) as minimumexperience from Employees group by department;

select department from Employees  group by department having COUNT(emp_id)>3;
select department from Employees  group by department having AVG(salary)>60000;
select city from Employees group by city having COUNT(emp_id)>2;
select department,sum(salary) as totalsalary from Employees group by department having sum(salary)>200000;
select department,MAX(salary) as maximumsalary from Employees group by department having MAX(salary)>90000;

select distinct department from Employees;
select distinct city from Employees;
select distinct salary from Employees;
select distinct department,city from Employees;
select distinct experience from Employees;

Select * from Employees order by salary desc fetch first 5 rows only;
Select * from Employees order by experience desc fetch first 3 rows only;
Select * from Employees where department='Finance' order by salary desc fetch first 2 rows only;
Select * from Employees  where city='Hyderabad' order by salary desc fetch first 4 rows only;
Select * from Employees order by salary desc fetch first 1 rows only;

select * from Employees where salary >= 80000;
select * from Employees where experience <= 3;
select * from Employees where salary !=45000;
select * from Employees where salary <50000;
select * from Employees where experience >5;

select * from Employees where department='IT' and salary > 70000;
select * from Employees where city ='Hyderabad' or city='Bangalore';
select * from Employees where department='HR' and experience < 3;
select * from Employees where salary > 60000 or experience > 6;
select * from Employees where department!='Sales';

select * from Employees where city in ('Hyderabad','Mumbai');
select * from Employees where department in ('IT','Finance');
select * from Employees where city in ('Chennai','Pune');
select * from Employees where salary not in (45000, 75000, 91000);
select * from Employees where department not in ('HR','Finance');

select * from Employees where salary between  50000 AND 80000;
select * from Employees where experience between  3 AND 6;
select * from Employees where emp_id between  105 and 112;
select * from Employees where salary not between  40000 AND 60000;
select * from Employees where experience between  2 AND 4;

select * from Employees where emp_name like 'R%';
select * from Employees where emp_name like '%a';
select * from Employees where emp_name like '%v%';
select * from Employees where emp_name like 'B%';
select * from Employees where emp_name like '%s';
