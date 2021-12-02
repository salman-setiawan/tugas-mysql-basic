-- Show Database --
show databases;

-- Create Database --
create database bookstore;

-- Go to Database --
use bookstore;

-- Show Table --
show tables;

-- Create Table --
create table books ( 
    id int auto_increment primary key, 
    author1 varchar(100) not null, 
    author2 varchar(100), 
    author3 varchar(100), 
    title varchar(100), 
    description varchar(100), 
    place_sell varchar(3), 
    stock int default 0, 
    creation_date datetime  default  current_timestamp  on update current_timestamp 
);

-- Update Column from Table --
alter table books 
    add price int default 0,
    add status enum('available','out of stock','limited'),
    drop column place_sell;

-- Insert Data on Table --
insert into books (author1, author2, author3, title, description, stock, creation_date, price, status)
values ('salman','maman','bujank','mas-mas biasa','cerita si mas-mas biasa',20,'2018/06/09 11:11:11',69000,'limited'),
       ('rapidi','kurni','bujang','mas-mas biasa part 2','lanjutan cerita dari mas-mas biasa',200,'2019/06/09 10:10:10',69000,'available'),
       ('muhlis','gusti','bujanx','mas-mas biasa part 3','cerita akhir dari mas-mas biasa',269,'2021/06/09 12:12:12',96000,'available');

-- Select Table --
select * from books;

-- Select Alias --
select id as ID, author1 as A1, author2 as A2, author3 as A3 from books;

-- Select Where ID --
select * from books where ID = 1;

-- Select Where ID Using Operator AND --
select * from books where ID = 1 and author1 = 'salman' ;

-- Select Where ID Using Operator OR --
select * from books where ID = 1 or author2 = 'maman' ;

-- Select Where ID Using Operator NOT --
select * from books where not ID = 1; 

--- Select Table and Order by ASC based id ---
select * from books order by id asc;

--- Select and give Limit ---
select * from books limit 2;

--- Update author1 and price ---
update books set author1 = 'cicink', price = 55500
where id = 1;

--- Delete Row from ID ---
delete from books where id = 3;




