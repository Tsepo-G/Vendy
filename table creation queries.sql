CREATE DATABASE VendyDB
GO

USE VendyDB
GO

CREATE TABLE VendingMachine(
	Vmachine_ID int identity (1,1) not null,
	Room_ID int null,
	Capacity int null,
	Total_revenue float null,
	constraint pk_VendingMachine primary key clustered (Vmachine_ID asc)
);


CREATE TABLE Room(
	Room_ID int identity (1,1) not null,
	Branch_ID int null,
	Room_name varchar(100) null,
	Room_floor int null,
	constraint pk_Room primary key clustered (Room_ID asc)
);

CREATE TABLE Branch (
	Branch_ID int identity (1,1) not null,
	Branch_name varchar(100) null,
	Postcode varchar(10) null,
	constraint pk_Branch primary key clustered (Branch_ID asc)
);

CREATE TABLE BranchLocation (
	Postcode varchar(10) not null,
	City varchar(100) null,
	constraint pk_BranchLocation primary key clustered (PostCode)
);


CREATE TABLE Item (
	Item_ID int identity (1,1) not null,
	Vmachine_ID int null,
	Item_name varchar(100),
	Price float null,
	Category_ID int null,
	Quantity int null,
	Item_position varchar(2),
	constraint pk_Item primary key clustered (Item_ID asc)
);

CREATE TABLE ItemCategory (
	Category_ID int identity (1,1) not null,
	Category_name varchar(50) null,
	constraint pk_ItemCategory primary key clustered (Category_ID asc)
);

CREATE TABLE Transactions (
	Transaction_ID int identity (1,1) not null,
	Transaction_date date null, 
	Item_ID int null,
	Employee_ID int null,
	constraint pk_Transactions primary key clustered (Transaction_ID asc)
);

CREATE TABLE Employee (
	Employee_ID int identity (1,1) not null,
	First_name varchar(50) null,
	Last_name varchar(50) null, 
	Allocated_credits int null,
	constraint pk_Employee primary key clustered (Employee_ID)
);

