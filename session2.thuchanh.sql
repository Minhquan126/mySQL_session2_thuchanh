create database quanlydiemthi;
use quanlydiemthi;
create table hocsinh(
mahocsinh int primary key auto_increment,
tenhocsinh varchar(30) not null,
ngaysinh date,
lop varchar(20),
GT varchar(20)
);
create table giaovien(
magiaovien int primary key auto_increment,
tengiaovien varchar(30),
sodienthoai varchar(11)
);
create table monhoc(
mamonhoc int primary key auto_increment,
tenmonhoc varchar(20),
magiaovien int,
foreign key (magiaovien) references giaovien(magiaovien)
);
create table bangdiem(
mahocsinh int primary key,
mamonhoc varchar(20),
diemthi float,
foreign key (mahocsinh) references hocsinh(mahocsinh),
foreign key (mamonhoc) references monhoc(mamonhoc),
ngaythi datetime
);