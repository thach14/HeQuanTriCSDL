


/*Lấy ra thông tin của các khách hàng sống tại các thành phố Nantes và Lyon.*/
select * from customers where city = "Nantes" or city = "Lyon";

/*Tìm tất cả các văn phòng không nằm ở Mỹ và Pháp*/
select * from offices where country <> "USA" and country <> "France";

/*Tìm tất cả các sản phẩm có giá nằm trong phạm vi 70 $ và 200 $*/
select * from products where buyPrice between 70 and 200;

/*Tìm tất cả các sản phẩm với giá mua nằm ngoài phạm vi 50$ và 150$*/
select * from products where buyPrice not between 50 and 150;

/*Tìm các đơn hàng đã được chuyển trong khoảng thời gian từ ‘15/1/2003’ đến ‘10/5/2003’.*/
select * from orders where shippedDate between "2003/01/15" and "2003/05/10";

/*Tìm các đơn hàng đã được chuyển trước ngày ‘10/1/2003’ 1 tháng*/
select * from orders where shippedDate = date_sub("2003/01/10", interval 30 day);

/*Tìm các đơn hàng đã được chuyển sau ngày ‘10/3/2003’ 15 ngày*/
select * from orders where shippedDate = date_add("2003/03/10", interval 15 day);

/*Tìm kiếm những nhân viên có tên không bắt đầu với ký tự 'c'*/
select * from employees where lastName not like "c%";

/*Tìm tất cả các khách hàng mà họ của các khách hàng này có chứa cụm 'er'*/
select * from customers where contactFirstName like "%er%";

/*Lấy ra thông tin về các nhóm hàng hoá có chứa từ ‘CAR' */
select * from products where productLine like "%CAR%";

/*Tìm các sản phẩm mà mã có chứa chuỗi ‘_10*/
select * from products where productCode like "%\_10%";

/* Truy vấn 5 sản phẩm có số lượng trong kho là lớn nhất*/
select * from products order by quantityInStock desc limit 5;

/*Đưa ra danh sách các sản phẩm và thêm thuộc tính là tiền hàng tồn của sản phẩm */
select productCode, productName, quantityInStock, buyPrice, quantityInStock*buyPrice as TienHangTon from products;

/*Lấy ra thông tin về tên các sản phẩm theo thứ tự giảm dần của số lượng hàng tồn kho, tăng dần của giá sản phẩm*/
select * from products order by quantityInStock desc , buyPrice asc;

/*Lấy ra thông tin về các sản phẩm và dòng sản phẩm (không sử dụng kết bảng)*/
select productLine, productName as ThongTin from products union select productLine, textDescription as ThongTin from productlines;

