create schema lms;
use lms;
create table member (memberId Integer primary key,  firstName Varchar(30),lastName varchar(30),emailAddress varchar(50),phoneNumber bigint);
insert into member (memberId,firstName,lastName,emailAddress,phoneNumber) Values (1234,"Ramya","majjigapu","ramya@gmail.com",0987654321);
alter table member add level varchar(30);
drop table member;


create table Books (bookId integer primary key,title varchar(30),author varchar(30),isbn bigint);
insert into Books(bookId,title,author,isbn) values (12,"Database Syatems","xyz",234567);
alter table Books add price Double;
drop table Books;

