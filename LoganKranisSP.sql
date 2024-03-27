
CREATE or Alter PROCEDURE[dbo].[InsertFarm]
    @address NVARCHAR(MAX),
    @zipcode NVARCHAR(MAX),
    @city NVARCHAR(MAX),
    @state NVARCHAR(MAX),
    @name NVARCHAR(MAX),
    @FARM_ID INT
AS
BEGIN
    INSERT INTO [dbo].[farm] ([address], [zipcode], [city], [state], [name], [FARM_ID])
    VALUES (@address, @zipcode, @city, @state, @name, @FARM_ID);
END;
GO

/*EXEC [dbo].[InsertFarm]
    @address = N'123 Farm Lane',
    @zipcode = N'12345',
    @city = N'Farmville',
    @state = N'FS',
    @name = N'Green Acres',
    @FARM_ID = 1;
*/

CREATE or Alter PROCEDURE [dbo].[SelectFarmsByCity]
    @city NVARCHAR(MAX)
AS
BEGIN
    SELECT * FROM [dbo].[farm]
    WHERE [city] = @city;
END;
GO
/*EXEC [dbo].[SelectFarmsByCity] @city = N'Farmville';
*/