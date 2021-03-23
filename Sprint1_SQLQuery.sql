create database Sprint1

use Sprint1

create table Customer(CustomerId int Primary Key,
					  CustomerName varchar(150) not null,
					  Gender varchar(15) not null,
					  ContactNo char(10) not null check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
					  Email varchar(100) not null,
					  [Address] varchar (100) not null,
					  City  varchar(100) not null,
					  [State] varchar(100) not null,
					  Pincode char(6) not null check(Pincode like '[0-9][0-9][0-9][0-9][0-9][0-9]'))


create table Dealer(DealerId int Primary Key,
					  DealerName varchar(150) not null,
					  CompanyName varchar(100) not null,
					  [Address] varchar (100) not null,
					  ContactNo char(10) not null check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
					  City  varchar(100) not null,
					  [State] varchar(100) not null,
					  Pincode char(6) not null check(Pincode like '[0-9][0-9][0-9][0-9][0-9][0-9]'))

create table Vehicle(VehicleId int Primary Key,
					  VehicleName varchar(150) not null,
					  VehicleModel varchar(100) not null,
					  DealerId int constraint fk_Dealer_DealerId foreign key references Dealer(DealerId),
					  [Image] image not null,
					  Cost money not null,
					  TotalStock int not null,
					  [Description] varchar(100) not null,
					  Rating int not null check(Rating like '[1-5]'))

create table Showroom(ShowroomId int Primary Key,
					  [Name] varchar(150) not null,
					  DealerId int constraint fk_Dealer_DealerId foreign key references Dealer(DealerId),
					  OwnerName varchar(100) not null,
					  ContactNo char(10) not null check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
					  [Address] varchar (100) not null,
					  City  varchar(100) not null,
					  [State] varchar(100) not null,
					  Pincode char(6) not null check(Pincode like '[0-9][0-9][0-9][0-9][0-9][0-9]'))

create table Sales(SalesId int Primary Key,
					  VehicleId int constraint fk_Vehicle_VehicleId foreign key references Vehicle(VehicleId),
					  CustomerId int constraint fk_Customer_CustomerId foreign key references Customer(CustomerId),
					  ShowroomId int constraint fk_Showroom_ShowroomId foreign key references Showroom(ShowroomId),
					  Cost money not null,
					  OrderDate date not null,
					  DeliveryDate date not null,
					  Remarks varchar(100) not null)