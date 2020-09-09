drop database library;
# Database create/use
create database library character set utf8mb4 COLLATE utf8mb4_unicode_ci;
use library;

# Creates
create table author (
                        id int not null auto_increment primary key,
                        author_name varchar(255)
);

create table book_type (
                           id int not null auto_increment primary key,
                           type varchar(255)
);

create table books (
                       id int not null auto_increment primary key,
                       book_name varchar(255),
                       book_edition int(25),
                       author int,
                       type int,
                       foreign key (author) references author(id),
                       foreign key (type) references book_type(id)
);
create table user (
                      id tinyint not null auto_increment primary key,
                      first_name varchar(255),
                      last_name varchar(255),
                      adress varchar(255),
                      joined_at timestamp
);

create table loan (
                      loan_date timestamp,
                      user tinyint,
                      book int,
                      foreign key (user) references user(id),
                      foreign key (book) references books(id)
);

# Inserts
insert into author (author_name) values
('George Sansom'),
('Andew Gordon'),
('J.R.R. Tolkien'),
('Stephen Hawking'),
('Samuel Shem'),
('Stephen King'),
('Truman Capote'),
('Agatha Cristie'),
('Robert B.Parker'),
('Jo Nesbo'),
('David Icke'),
('Nelson Mandela'),
('Kobe Bryant'),
('Richard Williams'),
('William Shakespeare'),
('Edgar Allan Poe'),
('Mark Twain'),
('Fyodor Dostoevsky'),
('Leo Tolstoy'),
('Ernest Hemingway'),
('Oscar Wilde');
select * from author;

insert into book_type (type) values
('History'),
('Fiction'),
('Science'),
('Crime'),
('Mistery'),
('Horror'),
('Conspiracy'),
('Autobiography'),
('Sport'),
('Tragedy'),
('Poetry'),
('Novel'),
('Poem'),
('Short Story'),
('Fairy Stories');
select * from book_type;

insert into books (book_name, book_edition, author, type) values
('In Cold Blood', 2, 7, 4),
('The Happy Prince and Other Stories', 2, 21, 14),
('A House of Pomegranates', 1, 21, 15),
('The Ballad of Reading Gaol', 2, 21, 13),
('War and Peace', 5, 19, 12),
('Ana Karenina', 9, 19, 12),
('The Old Man and the Sea', 10, 20, 12),
('In our Time', 22, 20, 14),
('The Idiot', 4, 18, 12),
('Crime and Punishment', 19, 18, 12),
('White Nights', 3, 18, 14),
('Another men wife and a husband under the bed', 3, 18, 14),
('The Death of Ayrton Senna', 3, 14, 10),
('The Mamba Mentality : How to Play', 1, 13, 9),
('Long Walk to Freedom',2, 12, 8),
('Phantom Self', 3, 11, 7),
('The Trigger : The Lie That Changed the World', 1, 11, 7),
('Knife', 1, 10, 5),
('The Snowman', 3, 10, 5),
('The Redeemer', 2, 10, 5),
('Blood on Snow', 1, 10, 5),
('Harry Hole Mysteries', 5, 10, 5),
('The Bitterset Pill', 1, 9, 5),
('A History of Japan', 1, 1, 1),
('A Modern History Of Japan', 1, 2, 1),
('The Lord of the Rings trilogy', 2, 3, 2),
('The Hobbit', 2, 3, 2),
('The Silmarillion', 2, 3, 3),
('A Brief History of Time', 1, 4, 3),
('The House of God', 3, 5, 3),
('Doctor Sleep', 1, 6, 4),
('Murder at the Vicarage', 4, 8, 5),
('Murder on the Orient Express', 2, 8, 5),
('Endless Night', 10, 8, 5),
('The Grand Design', 6, 4, 6),
('My Brief History', 2, 4, 3),
('Black Holes and Baby Universes', 1, 4, 3),
('It', 1, 6, 6),
('The Outsider', 4, 6, 6),
('Childen of the Matrix', 1, 11, 7),
('The Adventures of Huckleberry Finn', 15, 17, 12),
('The Adventures of Tom Sawyer', 2, 17, 12),
('Annabel Lee', 9, 16, 12),
('The Raven', 10, 16, 12),
('Unfinished Tales', 8, 3, 2),
('The History of Middle-Earth', 6, 3, 2),
('Macbeth', 16, 15, 11),
('Othello', 16, 15, 11),
('Hamlet', 20, 15, 11),
('Romeo and Juliet', 19, 15, 11);
select * from books;

insert into user (first_name, last_name, adress, joined_at) values
('Pero', 'Perić', 'Perina Ulica 21', current_timestamp),
('Han', 'Solo', 'Skywalk 20', current_timestamp),
('Darth', 'Vader', 'DeathStar 0', current_timestamp),
('Iva', 'Ivić', 'Ivina 28', current_timestamp),
('Ivica', 'Ivovski', 'Ivina 8', current_timestamp),
('Mike', 'Tyson', 'Ring 12', current_timestamp),
('Lennox', 'Lewis', 'ring 66', current_timestamp),
('Eduardo', 'Da Silva', 'Unkown', current_timestamp),
('Luka', 'Modrić', 'Santiago Bernabeu', current_timestamp),
('Steve', 'Urkel', 'Urkels 8', current_timestamp),
('Chandler', 'Bing', 'Friends 4', current_timestamp);
select * from user;

insert into loan (loan_date, user, book) values
(current_timestamp, 1, 47),
(current_timestamp, 5, 47),
(current_timestamp, 3, 33),
(current_timestamp, 1, 1),
(current_timestamp, 2, 50),
(current_timestamp, 2, 27),
(current_timestamp, 9, 31),
(current_timestamp, 4, 24),
(current_timestamp, 7, 11),
(current_timestamp, 1, 41),
(current_timestamp, 5, 32),
(current_timestamp, 11, 33),
(current_timestamp, 10, 35),
(current_timestamp, 7, 50),
(current_timestamp, 8, 2),
(current_timestamp, 6, 3),
(current_timestamp, 9, 4);
select * from loan;

# Select
select CONCAT(u.first_name, ' ', u.last_name), u.adress, b.book_name, bt.type, l.loan_date from loan l
                                                                                                    inner join books b on l.book = b.id
                                                                                                    inner join book_type bt on b.type = bt.id
                                                                                                    inner join user u on l.user = u.id
ORDER BY loan_date asc;

select DISTINCT a.author_name, b.book_name, bt.type from books b
                                                             inner join author a on b.author = a.id
                                                             inner join book_type bt on b.type = bt.id;

select b.book_name, b.book_edition from books b
                                            left join book_type bt on b.type = bt.id
group by book_edition desc;

select l.loan_date, UPPER(b.book_name) from loan l
                                                left join books b on l.book = b.id where loan_date > date('2020/08/09');

select date(avg(loan_date)) from loan;
select round(avg(book_edition)) from books;

select b.book_name from books b order by LENGTH(b.book_name) asc;

select DISTINCT CONCAT(b.book_name, ' by ',  a.author_name) from books b
                                                                     inner join book_type bt on b.type = bt.id
                                                                     inner join author a on b.author = a.id;

select count(*) from books;
select count(*) from book_type;
select count(*) from author;

# Delete
delete from loan where user = 1;
delete from loan where user = 2;
delete from loan where book = 'Murder on the Orient Express';
delete from loan where book = 'The Grand Design';
delete from books where book_name = 'The House of God';
delete from loan where user = 5;

# Update

update user set adress = 'Random adress' where id = 2;
update books set type = 2 where book_name = 'The Silmarillion';
update books set type = 9 where book_name = 'The Death of Ayrton Senna';
update books set type = 13 where book_name  = 'Annabel Lee';
update books set type = 13 where book_name  =  'The Raven';
update books set type = 15 where book_name = 'The Happy Prince and Other Stories';
