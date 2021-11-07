use 1812843_database_lab02;
/*a*/
ALTER TABLE employees ADD fulltext name(firstName);
explain Select * from employees where match(firstName) against ('Tom' in natural language mode);

/*b*/
ALTER TABLE products ADD fulltext index_productname(productName);
explain Select * from products where match(productName) against ('Suzuki' in natural language mode);

/*c*/
select * from products;
explain Select * from products where match(productName) against ('+1985 +Supra' in natural language mode);

/*d*/
explain Select * from products where match(productName) against ('Ford -truck' IN BOOLEAN MODE);

/*e*/
show index from customers;
alter table customers add fulltext(customerName);
explain Select * from customers where match(customerName) against ('+Au*' in boolean mode);

/*f*/
explain Select * from products where match(productName) against ('+Yamaha 1999' in natural language mode) order by productName desc;

/*g*/
alter table customers add fulltext(addressLine1);
explain select * from customers where match(addressLine1) against ('+Street ~Allen -North') order by addressLine1 asc;

/*h*/
explain Select * from products where match(productName) against ('+Ford  +(>truck <Phaeton) ' in boolean mode) order by productName desc;

/*i*/

/*j*/
explain select * from products where match(productName) against ('1969 Dodge -Chevrolet');

/*k*/
explain select * from customers where match(customerName) against ('~Mini Marseille Caravy')







drop index index_productname on employees;
show index from products;


