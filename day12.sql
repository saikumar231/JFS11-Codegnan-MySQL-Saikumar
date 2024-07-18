use aits;

create table employee1 (id int, name varchar(50),salary int);

insert into employee1 values(1,"sai",10000),(2,"sai 2",15000),(3,"sai 3",20000),(4,"sai 4",50000),(5,"sai 5",10000);

select * from employee1;

select * from employee1 where salary=10000;

select * from employee1 where salary!=10000;

select * from employee1 where salary <15000;

select * from employee1 where salary<=15000;

select * from employee1 where salary>15000;

select * from employee1 where salary>=15000;

-- logical operator

select * from employee1 where salary =10000 and name="sai";

select * from employee1 where salary=10000 or name="sai";

alter table employee1 add column age int;

select * from employee1;
 
set sql_safe_updates=0;

update employee1 set age=20 where salary>15000;

-- null operator

select * from employee1 where age is null;

select  * from employee1 where age is not null;

-- between operator

select * from employee1 where salary between 10000 and 20000;

select * from employee1 where salary between 15000 and 20000;

-- in operator

select * from employee1 where salary in(10000,50000);

select * from employee1 where salary in (10000);

alter table employee1 add column bonus varchar(30);

select * from employee1;

-- case operator

select *,
       case
       when salary<=10000 then "0x"
       when salary<=20000 then "2x"
       when salary<=50000 then "3x"
       end as bonus
  from employee1;
  
  select *,
        case
           when salary>=20000 then "2x"
           when salary>=50000 then "3x"
		else "0x"
  end as newdata
  from employee1;
  
  select * from employee1;
  
  create table student1(firstname varchar(50),lastname varchar(40),age int);
  
  insert into student1 values("sai","D",21),("sai 1","T",22),("sai 2","V",23);
  
  select * from student1;
  
  select concat(firstname," ",lastname) as fullname from student1;
  
  select firstname,lastname,concat(firstname," ",lastname,"(",age,")") as newdata from student1;
  
  select firstname,lastname,concat(firstname," ",lastname,"  ",age) as data from student1; 