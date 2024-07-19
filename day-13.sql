use aits;

create table emp5 (id int,empname varchar(50),city varchar(50));

insert into emp5 values(1,"sai kumar","andhrapradesh"),(2,"sai venkat","himachalpradesh"),(3,"sai vinay","arunapradesh"),(1,"sai vineeth","madhyapradesh");

select * from emp5;

-- concat

select concat("sai"," ","kumar") as fullname;
select concat("sai"," from ","andhrapradesh") as fullname;

select concat(empname, " place is ",city) as details from emp5;

select concat(id," ",empname," from ",city)as details from emp5; 

-- concat_ws

select concat_ws(" ","sai","sai1","sai2")as concatdetails;

select concat_ws(" ",empname,city) as details from emp5;


select concat_ws("/","cdrive","users","onedrive","cloud","files") as files;


-- lower and upper

select upper("hello") as upperacse;

select lower("SAIKUMAR") as smallletters;

select empname,upper(empname) as uppercase,city,upper(city)as uppercity from emp5;

select upper(empname) as uppername from emp5;

select upper(city) as uppercity from emp5;

select upper(city) ,upper(empname) from emp5;

-- length and char_length

select length("hello") as length;

select char_length("hello") as length;

select id,empname,length(empname) as namelength,city,char_length(city) as citylength from emp5;

select id,empname,length(empname) as namelength,char_length(empname) as charlength from emp5;

select id,length(id) from emp5;

-- substring

-- select substring(string,position,length);

select substring("venkatesh",2,5);

select substr("venkatesh",2,5);

select id,empname,substring(empname,2,5) as details from emp5;

select id,empname,substring(empname,1,3),city,substring(city,6,5) from emp5;

-- reverese

select reverse("sai") as revname;

select  id,empname,reverse(empname) as revname from emp5;

select id, city, reverse(city) as revcity from emp5;

select reverse(empname),reverse(city) from emp5;

select id,empname,reverse(empname),city,reverse(city) from emp5;

-- replace 

select replace("sai kumar","sai","I") as replacedname;

select empname,replace(empname,"sai","I") as repname from emp5;
 
select id,empname,replace(empname,"sai","sri")as repname,city,replace(city,"pradesh","state") as repcity from emp5;

select id,empname,replace(empname,"sai","sri")as repname from emp5 ;

-- like

select "sai kumar" like "sai%" as xyz;

select "sai kumar" like "s_i kumar" as abc;

select  * from emp5 where city like "%pradesh"  ;

 select * from emp5 where empname like "sai%";
 
 select *  from emp5 where city like "m%";
 
 select city from emp5 where city like"%h";
 
 