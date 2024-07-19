-- Assume a table with the name employee consists of Sno, Name, Salary and age. 
-- Retrive all the names whose salary is greater than or equals to 50000 and age in between 20 to 30.
use caution;

create table employee (sno int,name varchar(50),age int);
alter table employee add column salary int;

desc employee;

INSERT INTO Employee (Sno, Name, Salary, Age)
VALUES
    (1, 'John', 60000, 25),
    (2, 'Alice', 55000, 28),
    (3, 'Michael', 70000, 30);
INSERT INTO Employee values(4,"sai",2000,36);

select name from employee where salary >=50000 and age between 20 and 30;