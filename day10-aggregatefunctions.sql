use aits;


create table student_data( id int not null,
stuname varchar(50) not null,
stusubject varchar(10) not null,
marks int default 0
);

desc student_data;

insert into student_data values(1,"sai","english",90),(1,"sai","maths",80),(1,"sai","social",70);
insert into student_data values(2,"kumar","english",92),(2,"kumar","maths",82),(2,"kumar","social",72);
insert into student_data values(3,"sri","english",94),(3,"sri","maths",84),(3,"sri","social",74);
insert into student_data values(4,"saila","english",96),(4,"saila","maths",86),(4,"saila","social",76);
insert into student_data values(5,"krish","english",9),(5,"krish","maths",8),(5,"krish","social",7);
insert into student_data values(6,"raj","english",99),(6,"raj","maths",89),(6,"raj","social",79);

select * from student_data;


select sum(id) from student_data ;

select count(id) from student_data ;

select sum(marks) from student_data ;

select max(marks) from student_data ;

select min(marks) from student_data ;

select avg(marks) from student_data ;

-- i need total marks records for each student

select id,sum(marks) from student_data group by id;

select id,sum(marks) as total_marks from student_data group by id;

select id,marks as english_marks from student_data where stusubject="english";
select id,marks as maths_marks from student_data where stusubject="maths";
select id,marks as social_marks from student_data where stusubject="social";
create table finalmarks(id int primary key,
studentname varchar(50),
studentmarks int);


select id,stuname,sum(marks) as total_marks from student_data group by id,stuname;


insert into finalmarks select id,stuname,sum(marks) as total_marks from student_data group by id,stuname;


select id,stuname,sum(marks) as total_marks from student_data group by id,stuname having total_marks>=250; 


select id,stuname,sum(marks) as total_marks from student_data group by id,stuname having total_marks<=200 order by total_marks;
