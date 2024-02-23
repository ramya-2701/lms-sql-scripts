create schema lms;
use lms;
create table member (member_id Integer primary key,  first_name Varchar(30),last_name varchar(30),email_address varchar(50),phone_number bigint);
insert into member (member_id,first_name,last_name,email_address,phone_number) Values (1234,"Ramya","majjigapu","ramya@gmail.com",0987654321);
alter table member add membership_level varchar(30);
drop table member;


create table books (book_id integer primary key,title varchar(30),author varchar(30),isbn bigint);
insert into books(book_id,title,author,isbn) values (12,"Database Syatems","xyz",234567);
alter table books add price Double;
drop table books;



