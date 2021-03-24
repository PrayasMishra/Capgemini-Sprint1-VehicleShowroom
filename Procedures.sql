create proc usp_AddShowroom
(
@ShowroomId int,
@Name varchar(150),
@DealerId int,
@OwnerName varchar(100),
@ContactNo char(10),
@Address varchar(100),
@City varchar(100),
@State varchar(100),
@Pincode char(6)
)
as
begin
	insert Showroom(ShowroomId,Name,DealerId,OwnerName,ContactNo,Address,City,State,Pincode)
	values
	(@ShowroomId,@Name,@DealerId,@OwnerName,@ContactNo,@Address,@City,@State,@Pincode)
end

create proc usp_AddDealer
(
@DealerId int,
@DealerName varchar(150),
@CompanyName varchar(100),
@Address varchar(100),
@ContactNo char(10),
@City varchar(100),
@State varchar(100),
@Pincode char(6)
)
as
begin
	insert Dealer(DealerId,DealerName,CompanyName,Address,ContactNo,City,State,Pincode)
	values
	(@DealerId,@DealerName,@CompanyName,@Address,@ContactNo,@City,@State,@Pincode)
end

create proc usp_UpdateDealer
(
@DealerId int,
@DealerName varchar(150),
@CompanyName varchar(100),
@Address varchar(100),
@ContactNo char(10),
@City varchar(100),
@State varchar(100),
@Pincode char(6)
)
as
begin
	update Dealer set
	DealerName=@DealerName,
	CompanyName=@CompanyName,
	Address=@Address,
	ContactNo=@ContactNo,
	City=@City,
	State=@State,
	Pincode=@Pincode
	where DealerId=@DealerId
end

create proc usp_UpdateShowroom
(
@ShowroomId int,
@Name varchar(150),
@DealerId int,
@OwnerName varchar(100),
@ContactNo char(10),
@Address varchar(100),
@City varchar(100),
@State varchar(100),
@Pincode char(6)
)
as
begin
	update Showroom set
	Name=@Name,
	DealerId=@DealerId,
	OwnerName=@OwnerName,
	ContactNo=@ContactNo,
	Address=@Address,
	City=@City,
	State=@State,
	Pincode=@Pincode
	where ShowroomId=@ShowroomId
end

create proc usp_DeleteDealer
(
@DealerId int
)
as
begin
	delete from Dealer where DealerId=@DealerId
end

create proc usp_DeleteShowroom
(
@ShowroomId int
)
as
begin
	delete from Showroom where ShowroomId=@ShowroomId
end