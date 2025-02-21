--  Creating Database e_commerce

create database e_commerce;
use e_commerce;

-- creating table Customers

create table Customers (customer_id int auto_increment primary key, name varchar(50), email varchar(50), mobile varchar(50));
select * from Customers;

-- creating table products
create table Products (id int, name varchar(50) not null, description varchar(200), price decimal(10,2) not null, category varchar(50));
select * from Products;

-- Modification in Customer Table
ALTER TABLE Customers MODIFY COLUMN name VARCHAR(50) NOT NULL, MODIFY COLUMN email VARCHAR(50) NOT NULL; -- Updating not null in name and email 
alter table Customers add constraint unique_email unique (email); -- adding unique key on email
alter table Customers add column age int; -- adding age column
alter table Products change column id product_id int; -- changing id column to product_id
alter table Products modify column product_id int auto_increment primary key; -- updating auto_increament and primary key as product_id
alter table Products modify column description text; -- updating description column as text

-- Creating Table Order

CREATE TABLE Orders (order_id INT AUTO_INCREMENT PRIMARY KEY, customer_id INT, product_id INT, quantity INT NOT NULL, order_date DATE NOT NULL, 
	status ENUM('Pending', 'Success', 'Cancel'), payment_method ENUM('Credit', 'Debit', 'UPI'), total_amount DECIMAL(10,2) NOT NULL, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id), FOREIGN KEY (product_id) REFERENCES Products(product_id));






