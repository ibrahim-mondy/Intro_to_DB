CREATE DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;
CREATE TABLE Authors(
author_id int PRIMARY KEY auto_increment,
author_name VARCHAR(215)
);
CREATE TABLE Books(
book_id int PRIMARY KEY auto_increment,
title VARCHAR(130),
author_id int,
price DOUBLE, 
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers(
customer_id int PRIMARY KEY auto_increment,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE Orders(
order_id int PRIMARY KEY auto_increment,
customer_id int,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
orderdetailid int PRIMARY KEY auto_increment,
order_id int,
book_id int,
quantity DOUBLE,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
);