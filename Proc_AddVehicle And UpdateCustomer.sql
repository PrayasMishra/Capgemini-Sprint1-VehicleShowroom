-----Add Vehicle-----

create proc usp_AddVehicle(@VehicleId  int, @VehicleName varchar(150), @VehicleModel varchar(100), @DealerId int, @Image image, @Cost money, @TotalStock int, @Description varchar(100), @Rating int)
as
Insert Vehicle(VehicleId, VehicleName, VehicleModel, DealerId,  [Image], Cost, TotalStock, [Description], Rating) values (@VehicleId, @VehicleName, @VehicleName, @DealerId, @Image, @Cost, @TotalStock, @Description, @Rating)



-----Update Customer by  CustomerId-----

create proc usp_UpdateCustomer(@CustomerId int, @CustomerName varchar(150), @Gender varchar(15), @ContactNo char(10), @Email varchar(100), @Address varchar(100), @City varchar(100), @State varchar(100), @Pincode char(6))
as
begin
update Customer set CustomerName=@CustomerId, Gender=@Gender, ContactNo=@ContactNo, Email=@Email, [Address]=@Address, City=@City, [State]=@State, Pincode=@Pincode where CustomerId=@CustomerId
end
