CREATE DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;
CREATE TABLE Authors(
author_id int primary key auto_increment,
author_name varchar(215)
);
CREATE TABLE Books(
book_id int primary key auto_increment,
title varchar(130),
author_id int,
price double, 
publication_date date,
foreign key (author_id) references Authors(author_id)
);

CREATE TABLE Customers(
customer_id int primary key auto_increment,
customer_name varchar(215),
email varchar(215),
address text
);

CREATE TABLE Orders(
order_id int primary key auto_increment,
customer_id int,
order_date date,
foreign key (customer_id) references Customers(customer_id)
);

CREATE TABLE Order_Details(
orderdetailid int primary key auto_increment,
order_id int,
book_id int,
quantity double,
foreign key (order_id) references Orders(order_id),
foreign key (book_id) references Books(book_id)
);