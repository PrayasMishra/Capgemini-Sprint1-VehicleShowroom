use Sprint1


--Add Customer Procedure(usp_AddCustomer)--
create procedure usp_AddCustomer(@CustId int, @CustName varchar(150),@Gender varchar(15),@ContactNo char(10),@Email varchar(100),@Address varchar(100),@City varchar(100),@State varchar(100),@Pincode char(6))
as
begin
	if(@CustId is null)
		begin
			raiserror('CustomerId cannot be null',1,1)
		end
	else
		begin
			if(exists(select CustomerId from Customer where CustomerId=@CustId))
				begin
					raiserror('This CustomerId already exists',1,1)
				end
			else
				begin
					insert Customer(CustomerId,CustomerName,Gender,ContactNo,Email,[Address],City,[State],Pincode) values(@CustId,@CustName,@Gender,@ContactNo,@Email,@Address,@City,@State,@Pincode) 
				end
		end
end


exec usp_AddCustomer @CustId=1, @CustName='Prayas Mishra' ,@Gender='Male', @ContactNo='8917548575', @Email='prayas21mishra@gmail.com', @Address='FLT-7,Patia', @City='Bhubaneswar' ,@State='Odisha' ,@Pincode='751006'




--Add Dealer Procedure(usp_AddDealer)--
create proc usp_AddDealer
(@DealerId int,
 @DealerName varchar(150),
 @CompanyName varchar(100),
 @Address varchar(100),
 @ContactNo char(10),
 @City varchar(100), 
 @State varchar(100), 
 @Pincode char(10))
 as
 begin
	if(@DealerId is null)
		begin
			raiserror('DealerId cannot be null',1,1)
		end
	else
		begin
			if(exists(select DealerId from Dealer where DealerId=@DealerId))
				begin
					raiserror('this DealerId already exists',1,1)
				end
			else
				begin
					insert Dealer( DealerId, DealerName, CompanyName, [Address], ContactNo, City, [State], Pincode) values ( @DealerId, @DealerName, @CompanyName, @Address, @ContactNo, @City, @State, @Pincode)
				end
		end
 end


 exec usp_AddDealer @DealerId=1, @DealerName='Joyti Motors', @CompanyName='BMW', @Address='plot-45,Cuttack Rd.', @ContactNo='7879177451', @City='Cuttack', @State='Odisha', @Pincode='752001'
