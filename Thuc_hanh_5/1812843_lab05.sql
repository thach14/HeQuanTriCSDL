use 1812843_database_lab02;
/*a*/
select city, count(*) as SoLuongKhachHabg from customers group by city;
/*b*/
select city, count(city) as SoLuongKhachHang
from customers
group by city
having count(city) = (select count(city) from customers group by city order by count(*) desc limit 1);
/*c*/
select customerName, city, count(orderNumber) as Sodonhang
from customers, orders
where customers.customerNumber = orders.customerNumber and year(orderDate) = 2005
group by customerName
having count(orderNumber)=(select count(orderNumber) from orders,customers where orders.customerNumber = customers.customerNumber
and year(orderDate)=2005 group by customerName order by count(orderNumber) desc limit 1);
/*d*/
select count(*) as soluongdonhang from orders where year(orderDate) = 2003 and month(orderDate) = 5;
/*e*/
select customerName, concat_ws(contactLastName, contactFirstName) as fullname, count(*) as sodonhangdahuy
from orders, customers
where orders.customerNumber = customers.customerNumber
and status = 'Cancelled' and year(orderDate) = 2003 group by  customerName;
/*f*/
select orders.customerNumber, concat_ws(contactFirstName, contactLastName) as fullname, count(month(orderDate)) as countorder
from orders, customers 
where orders.customerNumber = customers.customerNumber
and year(orderDate) = 2004 and
month(orderDate) in (select month(orderDate) from orders where year(orderDate)= 2004 group by month(orderDate)
having count(month(orderDate))=(select count(month(orderDate)) from orders where year(orderDate)=2004 group by month(orderDate) order by 
count(month(orderDate)) asc limit 1)) group by orders.customerNumber;
/*g*/
select orderNumber, sum(quantityOrdered*priceEach) as total from orderdetails, products
where productLine like 'Classic Cars' and products.productCode = orderdetails.productCode group by orderNumber order by total desc limit 1;
/*h*/
select productLine, sum(quantityInStock) as TotalInStock
from products
group by productLine;

/*i*/
select * from employees, offices where employees.officeCode = offices.officeCode group by employees.employeeNumber;
/*j*/
select concat_ws(firstName, lastName) as fullname
from employees, offices
where employees.officeCode = offices.officeCode
and char_length(replace(phone, ' ', '')) = (select max(char_length(replace(phone,' ','')))
from offices);
/*k*/
select customers.customerNumber, customers.customerName, products.productCode, products.productName, orders.orderNumber
from customers, products, orderdetails, orders
where customers.customerNumber = orders.customerNumber and orders.orderNumber = orderdetails.orderNumber and products.productCode = orderdetails.productCode
group by customers.customerNumber;
/*l*/
select * from products
group by products.productCode
having products.productCode not in (
select products.productCode
from customers, products, orderdetails, orders
where customers.customerNumber = orders.customerNumber and orders.orderNumber = orderdetails.orderNumber 
and products.productCode = orderdetails.productCode
and year(orderDate)<>2005 and year(orderDate) = 2004
group by products.productCode
);
/*m*/
select orders.orderNumber, orderDate, requiredDate, status, sum(quantityOrdered*priceEach) as tongiatri
from orders, orderdetails
where orders.orderNumber = orderdetails.orderNumber and year(orderDate)=2005 and month(orderDate)=5
group by orderNumber
having tongiatri between 10000 and 50000;
/**n*/
select productlines.*, sum(quantityInStock) as soluong from products, productlines
where productlines.productLine = products.productLine
group by productLine 
order by soluong desc;
/*o*/
select * from products where productLine = 'Motorcycles' and char_length(productName) <=25;




