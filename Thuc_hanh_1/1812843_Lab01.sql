create database 1812843_MySQL;
use 1812843_MySQL;

create table productlines(
productLine varchar(50),
textDescription varchar(4000),
htmlDescription mediumtext,
image mediumblob,
primary key(productLine)
);
create table products(
productCode varchar(15),
productName varchar(70),
productLine varchar(50),
productScale varchar(10),
productVendor varchar(50),
productDescription text,
quantityInStock smallint(6),
buyPrice double,
primary key(productCode),
foreign key(productLine) references productlines(productLine)
); 
create table orders(
orderNumber int(11) auto_increment,
orderDate datetime,
requiredDate datetime,
shippedDate datetime,
status varchar(15),
comments text,
customerNumber int(11),
primary key(orderNumber)
);
create table orderdetails(
orderNumber int(11) auto_increment,
productCode varchar(15),
quantityOrdered int(11),
priceEach double,
orderLineNumber smallint(6),
primary key(orderNumber,productCode),
foreign key(orderNumber) references orders(orderNumber) ON UPDATE
CASCADE,
foreign key(productCode) references products(productCode)ON UPDATE
CASCADE
);
alter table orderdetails modify orderLineNumber int(10);
alter table products rename column productLine to Branch;
insert into orders values (1,null,null,null,null,"1",null);
insert into orders values (2,null,null,null,null,"2",null);
insert into orders values (3,null,null,null,null,"3",null);
insert into orders values (4,null,null,null,null,"4",null);
insert into orders values (5,null,null,null,null,"5",null);
insert into orders values (6,null,null,null,null,"6",null);
insert into orders values (7,null,null,null,null,"7",null);
insert into orders values (8,null,null,null,null,"8",null);
insert into orders values (9,null,null,null,null,"9",null);
insert into orders values (10,null,null,null,null,"10",null);
insert into orders values (11,null,null,null,null,"11",null);
insert into orders values (12,null,null,null,null,"12",null);
insert into orders values (13,null,null,null,null,"13",null);
insert into orders values (14,null,null,null,null,"14",null);
insert into orders values (15,null,null,null,null,"15",null);
insert into orders values (16,null,null,null,null,"16",null);
insert into orders values (17,null,null,null,null,"17",null);
insert into orders values (18,null,null,null,null,"18",null);
insert into orders values (19,null,null,null,null,"19",null);
insert into orders values (20,null,null,null,null,"20",null);
insert into orders values (21,null,null,null,null,"21",null);
insert into orders values (22,null,null,null,null,"22",null);
insert into orders values (23,null,null,null,null,"23",null);
insert into orders values (24,null,null,null,null,"24",null);
insert into orders values (25,null,null,null,null,"25",null);
insert into orders values (26,null,null,null,null,"26",null);
insert into orders values (27,null,null,null,null,"27",null);
insert into orders values (28,null,null,null,null,"28",null);
insert into orders values (29,null,null,null,null,"29",null);
insert into orders values (30,null,null,null,null,"30",null);
insert into orders values (31,null,null,null,null,"31",null);
insert into orders values (32,null,null,null,null,"32",null);
insert into orders values (33,null,null,null,null,"33",null);
insert into orders values (34,null,null,null,null,"34",null);
insert into orders values (35,null,null,null,null,"35",null);
insert into orders values (36,null,null,null,null,"36",null);
insert into orders values (37,null,null,null,null,"37",null);
insert into orders values (38,null,null,null,null,"38",null);
insert into orders values (39,null,null,null,null,"39",null);
insert into orders values (40,null,null,null,null,"40",null);
insert into orders values (41,null,null,null,null,"41",null);
insert into orders values (42,null,null,null,null,"42",null);
insert into orders values (43,null,null,null,null,"43",null);
insert into orders values (44,null,null,null,null,"44",null);
insert into orders values (45,null,null,null,null,"45",null);
insert into orders values (46,null,null,null,null,"46",null);
insert into orders values (47,null,null,null,null,"47",null);
insert into orders values (48,null,null,null,null,"48",null);
insert into orders values (49,null,null,null,null,"49",null);
insert into orders values (50,null,null,null,null,"50",null);

insert into productlines values ("productline 1", "textDescription 1","html 1",null);
insert into productlines values ("productline 2", "textDescription 2","html 2",null);
insert into productlines values ("productline 3", "textDescription 3","html 3",null);
insert into productlines values ("productline 4", "textDescription 4","html 4",null);
insert into productlines values ("productline 5", "textDescription 5","html 5",null);
insert into productlines values ("productline 6", "textDescription 6","html 6",null);
insert into productlines values ("productline 7", "textDescription 7","html 7",null);
insert into productlines values ("productline 8", "textDescription 8","html 8",null);
insert into productlines values ("productline 9", "textDescription 9","html 9",null);
insert into productlines values ("productline 10", "textDescription 10","html 10",null);
insert into productlines values ("productline 11", "textDescription 11","html 11",null);
insert into productlines values ("productline 12", "textDescription 12","html 12",null);
insert into productlines values ("productline 13", "textDescription 13","html 13",null);
insert into productlines values ("productline 14", "textDescription 14","html 14",null);
insert into productlines values ("productline 15", "textDescription 15","html 15",null);
insert into productlines values ("productline 16", "textDescription 16","html 16",null);
insert into productlines values ("productline 17", "textDescription 17","html 17",null);
insert into productlines values ("productline 18", "textDescription 18","html 18",null);
insert into productlines values ("productline 19", "textDescription 19","html 19",null);
insert into productlines values ("productline 20", "textDescription 20","html 20",null);
insert into productlines values ("productline 21", "textDescription 21","html 21",null);
insert into productlines values ("productline 22", "textDescription 22","html 22",null);
insert into productlines values ("productline 23", "textDescription 23","html 23",null);
insert into productlines values ("productline 24", "textDescription 24","html 24",null);
insert into productlines values ("productline 25", "textDescription 25","html 25",null);
insert into productlines values ("productline 26", "textDescription 26","html 26",null);
insert into productlines values ("productline 27", "textDescription 27","html 27",null);
insert into productlines values ("productline 28", "textDescription 28","html 28",null);
insert into productlines values ("productline 29", "textDescription 29","html 29",null);
insert into productlines values ("productline 30", "textDescription 30","html 30",null);
insert into productlines values ("productline 31", "textDescription 31","html 31",null);
insert into productlines values ("productline 32", "textDescription 32","html 32",null);
insert into productlines values ("productline 33", "textDescription 33","html 33",null);
insert into productlines values ("productline 34", "textDescription 34","html 34",null);
insert into productlines values ("productline 35", "textDescription 35","html 35",null);
insert into productlines values ("productline 36", "textDescription 36","html 36",null);
insert into productlines values ("productline 37", "textDescription 37","html 37",null);
insert into productlines values ("productline 38", "textDescription 38","html 38",null);
insert into productlines values ("productline 39", "textDescription 39","html 39",null);
insert into productlines values ("productline 40", "textDescription 40","html 40",null);
insert into productlines values ("productline 41", "textDescription 41","html 41",null);
insert into productlines values ("productline 42", "textDescription 42","html 42",null);
insert into productlines values ("productline 43", "textDescription 43","html 43",null);
insert into productlines values ("productline 44", "textDescription 44","html 44",null);
insert into productlines values ("productline 45", "textDescription 45","html 45",null);
insert into productlines values ("productline 46", "textDescription 46","html 46",null);
insert into productlines values ("productline 47", "textDescription 47","html 47",null);
insert into productlines values ("productline 48", "textDescription 48","html 48",null);
insert into productlines values ("productline 49", "textDescription 49","html 49",null);
insert into productlines values ("productline 50", "textDescription 50","html 50",null);

insert into products values ("code 1","name 1", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 2","name 2", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 3","name 3", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 4","name 4", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 5","name 5", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 6","name 6", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 7","name 7", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 8","name 8", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 9","name 9", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 10","name 10", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 11","name 11", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 12","name 12", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 13","name 13", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 14","name 14", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 15","name 15", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 16","name 16", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 17","name 17", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 18","name 18", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 19","name 19", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 20","name 20", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 21","name 21", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 22","name 22", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 23","name 23", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 24","name 24", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 25","name 25", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 26","name 26", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 27","name 27", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 28","name 28", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 29","name 29", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 30","name 30", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 31","name 31", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 32","name 32", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 33","name 33", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 34","name 34", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 35","name 35", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 36","name 36", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 37","name 37", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 38","name 38", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 39","name 39", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 40","name 40", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 41","name 41", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 42","name 42", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 43","name 43", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 44","name 44", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 45","name 45", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 46","name 46", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 47","name 47", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 48","name 48", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 49","name 49", "productline 1", "scale","vendor", "description",1,10000);
insert into products values ("code 50","name 50", "productline 1", "scale","vendor", "description",1,10000);

insert into orderdetails values (1,"code 1", 1, 10000,1);
insert into orderdetails values (2,"code 2", 1, 10000,1);
insert into orderdetails values (3,"code 3", 1, 10000,1);
insert into orderdetails values (4,"code 4", 1, 10000,1);
insert into orderdetails values (5,"code 1", 1, 10000,1);
insert into orderdetails values (6,"code 1", 1, 10000,1);
insert into orderdetails values (7,"code 1", 1, 10000,1);
insert into orderdetails values (8,"code 1", 1, 10000,1);
insert into orderdetails values (9,"code 1", 1, 10000,1);
insert into orderdetails values (10,"code 1", 1, 10000,1);
insert into orderdetails values (11,"code 1", 1, 10000,1);
insert into orderdetails values (12,"code 1", 1, 10000,1);
insert into orderdetails values (13,"code 1", 1, 10000,1);
insert into orderdetails values (14,"code 1", 1, 10000,1);
insert into orderdetails values (15,"code 1", 1, 10000,1);
insert into orderdetails values (16,"code 1", 1, 10000,1);
insert into orderdetails values (17,"code 1", 1, 10000,1);
insert into orderdetails values (18,"code 1", 1, 10000,1);
insert into orderdetails values (19,"code 1", 1, 10000,1);
insert into orderdetails values (20,"code 2", 1, 10000,1);
insert into orderdetails values (21,"code 2", 1, 10000,1);
insert into orderdetails values (22,"code 2", 1, 10000,1);
insert into orderdetails values (23,"code 2", 1, 10000,1);
insert into orderdetails values (24,"code 2", 1, 10000,1);
insert into orderdetails values (25,"code 2", 1, 10000,1);
insert into orderdetails values (26,"code 2", 1, 10000,1);
insert into orderdetails values (27,"code 2", 1, 10000,1);
insert into orderdetails values (28,"code 2", 1, 10000,1);
insert into orderdetails values (29,"code 2", 1, 10000,1);
insert into orderdetails values (30,"code 3", 1, 10000,1);
insert into orderdetails values (31,"code 3", 1, 10000,1);
insert into orderdetails values (32,"code 3", 1, 10000,1);
insert into orderdetails values (33,"code 3", 1, 10000,1);
insert into orderdetails values (34,"code 3", 1, 10000,1);
insert into orderdetails values (35,"code 3", 1, 10000,1);
insert into orderdetails values (36,"code 3", 1, 10000,1);
insert into orderdetails values (37,"code 3", 1, 10000,1);
insert into orderdetails values (38,"code 3", 1, 10000,1);
insert into orderdetails values (39,"code 3", 1, 10000,1);
insert into orderdetails values (40,"code 4", 1, 10000,1);
insert into orderdetails values (41,"code 4", 1, 10000,1);
insert into orderdetails values (42,"code 4", 1, 10000,1);
insert into orderdetails values (43,"code 4", 1, 10000,1);
insert into orderdetails values (44,"code 4", 1, 10000,1);
insert into orderdetails values (45,"code 4", 1, 10000,1);
insert into orderdetails values (46,"code 4", 1, 10000,1);
insert into orderdetails values (47,"code 4", 1, 10000,1);
insert into orderdetails values (48,"code 4", 1, 10000,1);
insert into orderdetails values (49,"code 4", 1, 10000,1);
insert into orderdetails values (50,"code 4", 1, 10000,1);

drop table products;
/* 
he thong bao loi khi drop table products
khong the xoa table products boi vi khi xoa table products thi du lieu cua no o bang orderdetails van con
*/

