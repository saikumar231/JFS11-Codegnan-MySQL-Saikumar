use aits;

create table student123(id int, name varchar(50));

insert into student123 values(1,"sai1"),(2,"sai2"),(3,"sai3"),(4,"sai4");

create table course123(cid int,cname varchar(50));

insert into course123 values(1,"ece"),(2,"eee"),(1,"cse"),(4,"sai4");

set sql_safe_updates=0;

delete  from course123 where cname="sai4";

insert into course123 values(3,"abc");

select* from student123;

select * from course123;
 
 -- inner join 
 
 select id,name from student123
 inner join course123
 on student123.id=course123.cid;
 
 -- left join

 select id,name from student123
 left join course123
 on student123.id=course123.cid;
 
 -- right join
 
 select id,name from student123
 right join course123
 on student123.id=course123.cid;
 
 -- full outer join 
-- here we use left join+ union + right join 
-- there is no keyword like full outer join

select id,name from student123
left join course123
on student123.id=course123.cid
union
select id,name from student123
right join course123
on student123.id=course123.cid;

-- self join

create table clr (color1 varchar(10),ename varchar(10),color2 varchar(10));

insert into clr values ("blue","sai 1","Red"),("green","alex","blue"),("red","simon","green");

select * from clr;

select a.ename,b.ename as secret_santa
from clr as a,clr as b
where a.color1=b.color2;

-- cross join

create table hairstylee(hname varchar(50));

insert into hairstylee values("straight"),("curly");

select * from hairstylee;

create table hairtypee (uname varchar(10));

insert into hairtypee values("A"),("B"),("C"),("D"),("E");

select * from hairtypee;

set sql_safe_updates=0;

select hname,uname from hairstylee
cross join hairtypee;

select hname,uname from hairstylee
cross join hairtypee
limit 3;

