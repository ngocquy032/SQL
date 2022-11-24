create database ex2Product
go
use ex2Product
go
create table product (
masanpham int primary key, 
maloai int,
tensampham varchar(20),
giaban int,
trangthai varchar(50),
mota varchar(30),

);

select * from product
insert into product( masanpham, maloai, tensampham, giaban, trangthai, mota	)
values( '01', '02', 'goi om', '100000', 'moi' , 'het hang');

insert into product( masanpham, maloai, tensampham, giaban, trangthai, mota	)
values( '02', '02', N'đệm ngủ', '100000', N'mới' , N'còn hàng');

insert into product( masanpham, maloai, tensampham, giaban, trangthai, mota	)
values( '03', '02', 'chan', '500000', 'moi' , 'con hang');

update product
set tensampham = 'dem ngu'
where masanpham = '02'


delete from product
where masanpham = '02'


go
use ex2Product

create table Category(
catid int,
catname varchar(30)

);
select * from Category
insert into Category (catid, catname)
values ('1', 'my tom'),
('2', '7up'),
('3', 'banh my')

update Category 
set catid = '4'
where catid = '02'

delete from Category 
where catname = '7up'
