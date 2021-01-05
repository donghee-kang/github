drop table member cascade constraint;

create table member(
id varchar2(25 byte) primary key,
pass varchar2(50 byte) not null,
name varchar2(30 byte),
age number
);
alter table member add grade number default 1;




create table GRADE_LIST(
grade number
);

select * from grade_list;

select id,name,pass,age,grade_name from MEMBER, grade_list where grade_no = grade;