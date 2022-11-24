create database ex3Lophoc
go
use ex3Lophoc
go

 --tạo bảng lớp học
 create table LopHoc(
 MaLopHoc int primary key identity,
 TenLopHoc varchar(10)
 )
 go
 select * from LopHoc
 go
 insert into LopHoc(TenLopHoc) values ('T2205E')
  select * from LopHoc
  update LopHoc set TenLopHoc = 'T2208M' where MaLopHoc = '1'
  delete from LopHoc where MaLopHoc = 3


-- sanPham( mãsp, teenssp giá, loại)
--tạo bảng sinh viên có khóa ngoại là cột MaLopHoc, nối với bảng Lớp học


create table SinhVien(
MaSV int primary key, 
TenSV varchar(40),
MaLopHoc int, 
constraint fk foreign key (MaLopHoc) references LopHoc(MaLopHoc)

)
go
insert into SinhVien( MaSV, TenSV, MaLopHoc) values (5, 'Minh', 1);
insert into SinhVien( MaSV, TenSV, MaLopHoc) values (3, 'Hoa', 1);
insert into SinhVien( MaSV, TenSV, MaLopHoc) values (14, 'Minh', 1), (16, 'Linh', 3);

select * from SinhVien
select *  from LopHoc

--Category(id, name) id la PK
--Product ( id, name, peice, cat_id ) id la PK , cat_id la FK

create table category ( 
id int primary key, 
name varchar(20)
)

create table produce (
id int,
name varchar(40),
cat_id int,
constraint fk2 foreign key (cat_id) references category(id)
)

insert into category ( id, name) values ( 1, 'Ha noi')
insert into category ( id, name) values ( 2, 'cty')

insert into produce ( id, name, cat_id) values (2, 'May rua bat', 1)
insert into produce ( id, name, cat_id) values (2, 'May rua bat', 2)
insert into produce ( id, name, cat_id) values (5, 'May ru ngu', 1)


select * from category
select * from produce


-- tạo  bảng SanPham với một cột NULL, một cột NOT NULL


drop table SanPham
go
create  table SanPham(
MaSP int NOT NULL,
TenSP varchar(40) Null

)
go 
insert into SanPham(MaSP, TenSP) values ( 1, 'Laptop')
go 
insert into SanPham(TenSP) values ( 'Laptop2')
go
insert into SanPham(MaSP) values ( 2)
go 
select * from SanPham


-- tạo bảng với thuộc tính default cho cột Price


create table StoreProduct(
ProductID int NOT NULL,
Name varchar(40) not null,
Price money not null default(100)
)
go 
-- kiểm tra xem giá trị default có được sử dụng hay không

insert into StoreProduct(ProductID, Name) values (111, 'Rivets')
go 
insert into StoreProduct values (1 ,'Mac', 101)
go 
select * from StoreProduct

-- tạo bảng ContactPhone với thuôc tính IDENTITY

create table ContactPhone(

Person_ID int identity (500, 10) not null,
MobileNumber bigint not null
)
go
insert into ContactPhone values (984123123);
insert into ContactPhone values (984122124);
insert into ContactPhone values (984122125);

go
select * from ContactPhone



--tạo cột nhận dạng duy nhất tổng thể
drop table CellularPhone
go 
create table CellularPhone(
Person_ID uniqueidentifier default newid() not null,
PersonName varchar(60) not null
)
-- chèn một record vào
insert into CellularPhone(PersonName) values ('William Smith')
go

select * from CellularPhone

-- taoj bảng ContactPhone với cột MobileNumber có thuộc  tính UNIQUE

create table ContactPhone2(
Person_ID int primary key,
MobileNumber bigint unique,
ServiceProvider varchar(30),
LandlineNumber bigint unique
)

--trèn 2 bản ghi có giá trị giống nhau ở cột MobileNumber và LanlieNumber để quan sát lỗi

insert into ContactPhone2 values (101, 983345674, 'Hutch', null)
insert into ContactPhone2 values (102, 983345674, 'Alex', 98332211)
insert into ContactPhone2 values (102, 983345674, 'Alex', 98332211)
go
select * from ContactPhone2

--taoj bảng PhoneExpenses có một CHECK ở cột Amount
drop table PhoneExpenses
go
create table PhoneExpenses(
Expense_ID int primary key,
MobileNumber bigint foreign key references ContactPhone2 (MobileNumber),
Amount bigint check (Amount > 0)
)
go
--TEST...

insert into PhoneExpenses(Expense_ID, MobileNumber, Amount)
values (1,983345674, 10)
go

--test primary key

insert into PhoneExpenses(Expense_ID, MobileNumber, Amount)
values (1,983345674, 10)
go 

-- test foreign key

insert into PhoneExpenses(Expense_ID, MobileNumber, Amount)
values (2, 9999, 10)
go 

--test check
insert into PhoneExpenses(Expense_ID, MobileNumber, Amount)
values (2, 983345674, -2)
go

select * from PhoneExpenses
go

-- chỉnh sửa cột trong bảng

alter table ContactPhone2
alter column ServiceProvider varchar(45)
go
select * from ContactPhone2

--xóa cột trong bảng
alter table ContactPhone2
drop column ServiceProvider 
go

alter table StoreProduct
add constraint check_pice check (Price >=10)
go 
select * from StoreProduct

-- xóa 1 ràng buộc

alter table StoreProduct 
drop constraint check_pice


create table student(
rollNumber int,
name varchar(30),
class varchar (30),
section varchar(1),
mobile varchar(10),
primary key (rollNumber, mobile)
)

insert into student (rollNumber, name, class, section, mobile)
values (1, 'Quy', 'Aptech', 'D', '0833691560'),
		(2, 'Linhh', 'Preschool ', 'C', '0395260542'),
		(3, 'Huy', 'NCT', 'B', '0833695560'),
		(4, 'Thi', 'Fourth', 'D', '24122003')

select * from student
		






