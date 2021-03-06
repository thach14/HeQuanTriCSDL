/*4. Thực hiện các truy vấn sau:
a. Liệt kê ra các dòng sản phẩm*/
select * from products;

/*b. Lọc ra danh sách các nhân viên có trường reportsTo chưa xác định*/
select * from employees where reportsTo is null;

/*c. Lọc ra danh sách các CustomerNumber đã có thực hiện giao dịch.*/
select * from orders group by customerNumber;

/*d. Lọc ra các khách hàng tại USA của người chăm sóc khách hàng không có mã là 1165.*/
select * from customers where salesRepEmployeeNumber <> 1165;

/*e. Lọc ra các khách hàng chưa có nhân viên chăm sóc*/
select * from customers where salesRepEmployeeNumber is null;

/*f. Lọc ra các đơn hàng có trạng thái là ‘On Hold’ hoặc ‘In Process’*/
select * from orders where status = 'On Hold' or status = 'In Process';

/*g. Lọc ra danh sách các đơn hàng có ngày yêu cầu vận chuyển là ‘18/1/2003’. Lưu ý: MySQL lưu dữ liệu ngày tháng theo định dạng năm/tháng/ngày.
*/
select * from orders where requiredDate = '2003/01/18';

/*h. Lọc ra danh sách các đơn hàng có ngày đặt trong tháng 5 năm 2005 và có
trạng thái là ‘Shipped’*/
select * from orders where year(orderDate)='2005' and month(orderDate) and status = 'Shipped';

/*i. Lọc ra danh sách các sản phẩm thuộc nhóm ‘Classic Cars’*/
select * from products where productLine = 'Classic Cars';

/*j. Lọc ra các vị trí công việc của tất cả các nhân viên*/
select employeeNumber, lastName, firstName, jobTitle from employees;

/*k. Lấy ra thông tin về 5 khách hàng đầu tiên hiện đang ở ‘USD’*/
select * from customers where country = 'USD' limit 5; /*USD ???????????????????*/
select * from customers where country = 'USA' limit 5;
/*l. Cho biết 3 sản phẩm trong bảng Products có giá mua lớn nhất.*/
select * from products order by buyPrice desc limit 3;