# loan

create database student;




use student;



create table users(name varchar(50),building varchar(16),area varchar(50),street varchar(50),pincode varchar(50),dictrict varchar(50),phone varchar(50),gram varchar(50),email varchar(50),password varchar(50));




create table admin(email varchar(50),password varchar(50));



insert into admin(email,password)values("admin@gmail.com","admin@123");

select * from users;
select * from admin;
