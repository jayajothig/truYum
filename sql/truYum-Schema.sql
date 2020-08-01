create database truYum;

use truYum;

/*-----------create table menuitems----------*/
create table menu_Items(
menu_id int primary key,
menu_name varchar(50) not null,
price decimal (7,2) not null,
Active varchar(3) not null,
Date_of_launch date not null,
menu_Category varchar(30)not null,
Free_Delivery varchar(3));

/*------------ceate table cart----------*/
create table cart(
cart_id int primary key,
cart_name varchar(50) not null,
Free_Delivery varchar(3),
price decimal (7,2) not null,
user_id int references user.user_id,
menu_id int references menu_Items.menu_id
);

/*------------create table cart----------*/
create table user(
user_id int primary key,
user_name varchar(50) not null)
;


