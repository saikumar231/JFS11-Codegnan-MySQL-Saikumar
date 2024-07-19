-- 2.Assume a table with the name students which consists of Sno, Name, Branch and Age.
--  Retrive all the details whose age is not specified.
use caution;

create table students (sno int,name varchar(50),branch varchar(40),age int);


INSERT INTO students (Sno, Name, Branch, Age)
VALUES
    (1, 'Alice', 'Computer Science', NULL),
    (2, 'Bob', 'Electrical Engineering', 28),
    (3, 'Charlie', 'Mechanical Engineering', NULL);
    

    
select * from students where age is null;

