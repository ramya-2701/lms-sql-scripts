-- inserting data into checkout table
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`,`checkout_date`,`due_date`, `is_returned` ) VALUES (' 20', '375706771','4', current_date(),DATE_ADD(CURRENT_DATE(), INTERVAL 15 DAY),false);
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`, `checkout_date`,`due_date`,`is_returned`) VALUES ('21', '140443330', '5', DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY),current_date(),true);
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`, `checkout_date`,`due_date`,`is_returned`) VALUES ('22', '679720200','11', DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY),DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY),false);
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`, `checkout_date`,`due_date`,`is_returned`) VALUES ('23','679720200', '10',DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY),DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), true);
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`, `checkout_date`,`due_date`,`is_returned`) VALUES ('25','140443330', '1',DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY),DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), false);

-- find memeber by name and mobile number
select * from library_member where first_name='James' and last_name='wilson' and phone_number=5556780987;

-- display all the members
select * from library_member;

-- checkout a book for a given member and given book
select member_id from library_member where first_name='James' and last_name='wilson';
select isbn from book_isbn join book on book_isbn.book_id=book.book_id where title='Head First Java';
INSERT INTO `lms`.`checkout` (`id`, `isbn`,`member_id`, `checkout_date`,`due_date`,`is_returned`) VALUES ('30','61120081', '11',current_date(),DATE_ADD(CURRENT_DATE(), INTERVAL 15 DAY), false);

-- list all the books a member has checked out
select title from book b join book_isbn a on b.book_id=a.book_id join checkout c on a.isbn=c.isbn join library_member l on l.member_id=c.member_id where l.first_name='James' and l.last_name='wilson';

-- list all the checkouts that are due in five days
select * from checkout where due_date=DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY);

-- list all the checkouts that are over due 
select * from checkout where due_date<CURRENT_DATE() and is_returned=0;

-- list all the books that are checked out today
select distinct title from book b join book_isbn a on a.book_id=b.book_id join checkout c on a.isbn=c.isbn where checkout_date=current_date();

-- display all isbns and their checkout status along with book information ( tital, author etc,.)
SELECT * FROM book b JOIN book_isbn bi ON b.book_id = bi.book_id LEFT JOIN checkout c ON bi.isbn = c.isbn;

-- list avaialble books and quantity that can be checked out
SELECT b.book_id,b.title,b.author_name,b.quantity - COUNT(c.id) AS available_quantity FROM book b JOIN book_isbn bi ON b.book_id = bi.book_id LEFT JOIN checkout c ON bi.isbn = c.isbn AND c.is_returned = 0 GROUP BY b.book_id, b.title, b.author_name, b.quantity;
 

