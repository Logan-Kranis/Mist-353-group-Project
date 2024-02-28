CREATE or Alter PROCEDURE [dbo].[InsertFarm]
    @address nvarchar(max),
    @zipcode nvarchar(max),
    @city nvarchar(max),
    @state nvarchar(max),
    @name nvarchar(max),
    @FARM_ID int
AS
BEGIN
    INSERT INTO [dbo].[farm] ([address], [zipcode], [city], [state], [name], [FARM_ID])
    VALUES (@address, @zipcode, @city, @state, @name, @FARM_ID);
END;
GO

/*
EXEC [dbo].[InsertFarm]
    @address = N'123 Farm Lane',
    @zipcode = N'12345',
    @city = N'Farmville',
    @state = N'Farming State',
    @name = N'Happy Farm',
    @FARM_ID = 1;
*/

CREATE or Alter PROCEDURE [dbo].[SelectFarmsByCity]
    @city nvarchar(max)
AS
BEGIN
    SELECT * FROM [dbo].[farm]
    WHERE [city] = @city;
END;
GO
/*
EXEC [dbo].[SelectFarmsByCity] @city = N'Farmville';
*/
