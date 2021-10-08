use 1812843_database_lab02;
/*a. Lấy ra 20 ký tự đầu tiên của phần mô tả sản phẩm, đặt tên là ‘Tiêu đề sản phẩm’*/
select substring(productDescription,1,20) as TieuDeSP from products;
/*b. Lấy ra mô tả về các nhân viên theo định dạng ‘Fullname, jobTitle.’*/
select concat(firstName, ' ', lastName) as Fullname, jobTitle from employees;
/*c. Liệt kê ra họ tên khách hàng và địa chỉ của khách hàng theo định dạng sau: “địa chỉ1 - thành phố *** state --- quốc gia”.*/
select customerName, concat(addressLine1, '-',city,'***', state, '---', country) as diachi from customers;
/*d. Thay thế toàn bộ tên nhóm hàng ‘Cars’ thành ‘Xe hơi’.*/
select replace(productLine, 'Cars', 'Xe hoi') from products;
/*e. Hiện thị Full_name người quản lý của các nhân viên. Nếu không có thì xuất ra từ “No”.*/
select if (jobTitle like '%Manager%',  concat(firstName, lastName),"No") as fullname from employees;
/*f. Hiện thị Full_name người nhân viên sale phụ trách của các khách hàng.*/
select customerName, if(salesRepEmployeeNumber is null, "Chua co", concat(firstName, ' ', lastName ))
as full_sale_name from customers, employees
where salesRepEmployeeNumber = employeeNumber or salesRepEmployeeNumber is null 
group by customerName;
/*g. Sử dụng hàm IF thống kê có bao nhiêu khách hàng ở từng quốc gia riêng*/
select country, count(customerNumber) as SoKhachHang from customers group by country;
/*h. Sử dụng hàm IF thống kê có bao nhiêu khách hàng không có địa chỉ số 2.*/
select if(addressLine2 is null, count(customerNumber), "khong co") as SoKhachHangKhongCoDiaChi2 from customers;
/*i.Thống kê có bao nhiêu đơn hàng đã vận chuyển trước ngày 17/5/2005 khoảng 2 tháng.*/
select * from orders where shippedDate = subdate(2005/05/17, interval 2 month);
/*j. Tìm 5 đơn hàng được vận chuyển sớm nhất so với ngày yêu cầu.*/
select orderNumber, datediff(shippedDate, requiredDate) as SoNgay from orders where shippedDate is not null order by SoNgay  desc limit 5; 
/*k. Liệt kê các đơn đặt hàng sau ngày 2/3/2005 khoảng 1 tháng*/
select * from orders where orderDate = adddate(2005/03/02, interval 1 month);
/*l. Liệt kê các đơn đặt hàng trước ngày 1/4/2005 khoảng 2 tuần*/
select * from orders where orderDate = subdate(2005/05/17, interval 14 day);
/*m. Đưa ra các đơn đặt hàng trong tháng 4 năm 2005 và có ngày chuyển hàng đến chưa xác định.*/
select * from orders where  year(orderDate) = 2005 and month(orderDate) = 4 and shippedDate is null;
/*n. Lấy ra Full_name của các khách hàng mà có đơn hàng đã bị hủy sau ngày 8/5/2004 khoảng 8 tháng.*/
select concat_ws(contactFirstName, contactLastName) as fullname  from customers, orders
where customers.customerNumber = orders.customerNumber and status = 'Cancelled';

