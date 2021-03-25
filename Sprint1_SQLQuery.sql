create database Sprint1

use Sprint1

create table Customer(CustId int identity(100,1) constraint pk_Id Primary Key,
					CustomerId varchar(10) unique not null,
					  CustomerName varchar(150) not null,
					  Gender varchar(15) not null,
					  ContactNo char(10) not null unique check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
					  Email  varchar(100) unique not null check(Email like '%_@__%.__%'),
					  [Address] varchar (100) not null,
					  City  varchar(100) not null,
					  [State] varchar(100) not null,
					  Pincode char(6) not null check(Pincode like '[0-9][0-9][0-9][0-9][0-9][0-9]'))

create table Dealer(DealerId int identity(100,1) constraint pk_DealerId Primary Key,
					  DealerName varchar(150) not null,
					  CompanyName varchar(100) not null,
					  ContactNo char(10) not null unique check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))

create table Vehicle(VehicleId int identity(100,1) constraint pk_VehicleId Primary Key,
					  VehicleName varchar(150) not null,
					  VehicleModel varchar(100) not null,
					  DealerId int constraint fk_Dealer_DealerId foreign key references Dealer(DealerId),
					  [Image] image not null,
					  Cost money not null,
					  TotalStock int not null,
					  [Description] varchar(100) not null,
					  Rating int not null check(Rating like '[1-5]'))

create table Showroom(ShowroomId int identity(100,1) constraint pk_ShowroomId Primary Key,
					  [Name] varchar(150) not null,
					  DealerId int constraint fk_Dealer_Id foreign key references Dealer(DealerId),
					  OwnerName varchar(100) not null,
					  ContactNo char(10) not null unique check(ContactNo like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
					  [Address] varchar (100) not null,
					  City  varchar(100) not null,
					  [State] varchar(100) not null,
					  Pincode char(6) not null check(Pincode like '[0-9][0-9][0-9][0-9][0-9][0-9]'))

create table Sales(SalesId int identity(100,1) constraint pk_SalesId Primary Key,
					  VehicleId int constraint fk_Vehicle_VehicleId foreign key references Vehicle(VehicleId),
					  CustId int constraint fk_Customer_CustId foreign key references Customer(CustId),
					  ShowroomId int constraint fk_Showroom_ShowroomId foreign key references Showroom(ShowroomId),
					  Cost money not null,
					  OrderDate date not null,
					  DeliveryDate date not null,
					  Remarks varchar(100))
