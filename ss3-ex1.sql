create database ss3_ex1;

use ss3_ex1; 

create table product (
id int auto_increment primary key,
name varchar(100),
created date
);

create table size (
id int auto_increment primary key,
name varchar(100),
status bit
);

create table color (
id int auto_increment primary key,
name varchar(100),
status bit
);

create table  product_detail (
id int auto_increment primary key,
product_id int,
constraint productid foreign key (product_id)  references product(id),
color_id int,
constraint colorid foreign key (color_id) references color(id),
size_id int,
constraint sizeid foreign key ( size_id ) references size(id),
price double,
stock int,
status bit 
);

-- them chuc nang bang color

select * from color;

insert into color (name,status) values ('red',true);
insert into color (name,status) values ('blue',true),('green',true);

-- them du lieu cho bang size

select * from size;

insert into size(name,status) values ('X',1),('M',1),('L',1),('XL',1),('XXL',1);

select * from product;

insert into product(name,created) values ('Quần dài','1990/5/12') , ('Áo dài','2005/10/05'), ('Mũ phớt','1995/07/07');

select * from product_detail;

insert into product_detail(product_id,color_id,size_id,price,stock,status) values (4,1,1,1200,5,true);
insert into product_detail(product_id,color_id,size_id,price,stock,status) values (4,1,1,1500,2,true),(5,2,3,500,3,true);










