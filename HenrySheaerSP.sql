CREATE or Alter PROCEDURE [dbo].[InsertWeatherRecord]
    @temperature decimal(18, 0),
    @pressure decimal(18, 0),
    @humidity decimal(18, 0),
    @precipitation decimal(18, 0),
    @wind_speed decimal(18, 0),
    @WEATHER_ID int
AS
BEGIN
    INSERT INTO [dbo].[weather] 
    ([temperature], [pressure], [humidity], [precipitation], [wind_speed], [WEATHER_ID])
    VALUES (@temperature, @pressure, @humidity, @precipitation, @wind_speed, @WEATHER_ID);
END;
GO
/*
EXEC [dbo].[InsertWeatherRecord]
    @temperature = 20, -- example value
    @pressure = 1013, -- example value
    @humidity = 50, -- example value
    @precipitation = 5, -- example value
*/

CREATE or Alter PROCEDURE [dbo].[GetWeatherByID]
    @WEATHER_ID int
AS
BEGIN
    SELECT * FROM [dbo].[weather]
    WHERE [WEATHER_ID] = @WEATHER_ID;
END;
GO

/*
EXEC [dbo].[GetWeatherByID] @WEATHER_ID = 1; -- example ID
*/
