Create Proc usp_AddSaleData
(
@SaleId int,
@VehicleId int,
@CustId int,
@ShowroomId int,
@Cost money,
@OrderDate date,
@DeliveryDate date,
@Remarks varchar(100)
) 
as
insert Sales(SalesId,VehicleId,CustomerId,ShowroomId,Cost,OrderDate,DeliveryDate,Remarks)
values(@SaleId,@VehicleId,@CustId,@ShowroomId,@Cost,@OrderDate,@DeliveryDate,@Remarks)


