create database pizzawala;

use pizzawala;

# Importing Pizza table from csv file (E:\sql pizza sales project\pizza_sales\pizzas.csv)
# Importing Pizza Type table from csv file 

# Importing Orders table, but first we need to create a table Manually and then insert/import data in that table

create table orders (
order_id int not null,
order_date date not null,
order_time time not null,
primary key (order_id));

# Importing order_details table, but again, first we need to create a table Manually and then insert/import data in that table

create table order_details(
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key (order_details_id));
