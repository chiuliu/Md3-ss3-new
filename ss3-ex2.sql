use quanLyBanHang;

select * from customer;

insert into customer(cid,cname,cage) values (1,'Minh Quan',10),(2,'Ngoc Oanh',20),(3,'Hong Ha',50);

select * from orders;

insert into orders(old,cId,odate,ototalprice) values (1,1,'2006-3-21',150000);
insert into orders(old,cId,odate,ototalprice) values (2,2,'2006-3-23',200000),(3,1,'2006-3-16',170000);

select * from product;

insert into product(pid,pname,pprice) values (1,'May Giat',300);
insert into product(pname,pprice) values ('Tu Lanh',500);
insert into product(pname,pprice) values ('Dieu Hoa',700),('Quat',100),('Bep Dien',200),('May Hut Bui',500);


select * from orderdetail;
insert into orderdetail(oid,pid,odqty) values (1,1,3);
insert into orderdetail(oid,pid,odqty) values (1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua
-- bởi các khách hàng đó.

select c.cname, p.pname, od.odqty from customer c 
join orders o on c.cid = o.cid
join orderdetail od on o.old = od.oid
join product p on p.pid = od.pid;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

select c.cname from customer c
left join orders o on c.cid = o.cid
-- left join từ bảng orders, các dữ liệu từ customer lấy kể cả khi k order
where o.cid is null;
-- nơi mà id bảng orders null

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính 
-- bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY * pPrice)

select o.old, o.odate, ototalprice
from orders o 
join orderdetail od on od.oid=o.old
join product p on p.pid=od.pid



	









