use aits;

create table family (id int primary key auto_increment,
name varchar(50),
age int,
salary int);

insert into family(name,age,salary)values("sai",18,50000),("kumar",20,60000),("saikumar",23,98765),("devi",40,70000),("usha",25,80000);

select* from family;

select id,name,age,salary,(age*10) as newdata from family;

select id,name,age,salary,(age*salary) as newdata from family;

select id,name,age,salary,(salary*10) as newdata from family;

select id,name,age,salary,(age%salary) as newdata from family;

select id,name,age,salary,(salary%20) as newdata from family;

