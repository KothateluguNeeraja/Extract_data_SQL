create database Library
use Library

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    total_copies INT
);
ALTER TABLE Books
ADD genre VARCHAR(50);

INSERT INTO Books (book_id, title, author, total_copies, genre)
VALUES
(1, 'Clean Code', 'Robert C. Martin', 3, 'Programming'),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 4, 'Biography'),
(3, 'Atomic Habits', 'James Clear', 6, 'Self-Help'),
(4, '1984', 'George Orwell', 4, 'Dystopian'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 5, 'Classic'),
(6, 'Python Crash Course', 'Eric Matthes', 3, 'Programming'),
(7, 'Sapiens', 'Yuval Noah Harari', 7, 'History'),
(8, 'The Power of Now', 'Eckhart Tolle', 4, 'Spirituality'),
(9, 'Think Like a Monk', 'Jay Shetty', 5, 'Self-Help');


select * from Books

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    membership_date DATE);

insert into Members values
(101,'shreetha','shreetha031@gmail.com','2024-01-15'),
(102,'Ravi','Ravi123@gmail.com','2023-11-10'),
(103,'Siddhu','Siddhu456@gmail.com','2025-06-07'),
(104,'Keerthi','Keerthi123@gmail.com','2024-02-13'),
(105,'Neeraja','Neeraja12@gmail.com','2023-12-12'),
(106,'Ushasri','ushasri123@gmail.com','2025-08-29'),
(107,'Indu','indu123@gmail.com','2024-10-20'),
(108,'pallavi','pallavi123@gmail.com','2023-04-30'),
(109,'Krishna','krishna@gmail.com','2025-02-21')

select *  from Members

create table IssuedBooks
(transaction_id INT PRIMARY KEY,book_id int,member_id int,issued_date date,return_date date,
FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id))

select * from IssuedBooks