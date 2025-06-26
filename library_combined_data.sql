use library
select * from Members
select * from IssuedBooks
select * from BOOKS

SELECT members.member_id,
members.name,
members.membership_date,
IssuedBooks.transaction_id,
IssuedBooks.book_id,
IssuedBooks.return_date
into combined_data
from Members inner join
IssuedBooks on Members.member_id = IssuedBooks.member_id

select * from combined_data

--Apply WHERE, AND, OR, LIKE, BETWEEW
 
 SELECT TOP 5 NAME FROM Members
 select top 5 transaction_id from IssuedBooks

 select * from combined_table
 truncate table combined_table
 drop table combined_table


SELECT NAME,BOOK_ID FROM combined_data
--WHERE, AND, OR, LIKE, BETWEEN
SELECT * FROM combined_data
WHERE transaction_id IN (503, 505, 506)
  AND return_date = '2025-06-26';

select * from combined_data
 where name = 'krishna' 
 or return_date = '2025-06-26';

 SELECT * FROM combined_data 
 WHERE name LIKE '%A'

 SELECT * FROM combined_data 
 WHERE name LIKE '%I%'

 SELECT * FROM combined_data 
 WHERE book_id BETWEEN 5 and  9


 SELECT * FROM combined_data
 order by member_id asc

 SELECT * FROM combined_data
 order by member_id desc







