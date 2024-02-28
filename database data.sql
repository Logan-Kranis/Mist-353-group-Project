INSERT INTO [dbo].[weather] ([temperature], [pressure], [humidity], [precipitation], [wind_speed], [WEATHER_ID])
VALUES 
(20, 1010, 50, 0, 5, 1),
(25, 1008, 60, 1, 10, 2),
(15, 1012, 70, 2, 15, 3);

INSERT INTO [dbo].[date] ([year], [month], [day], [DATE_ID], [time])
VALUES 
(2024, 2, 27, 1, '07:00:00'),
(2024, 2, 28, 2, '12:00:00'),
(2024, 3, 1, 3, '18:00:00');

INSERT INTO [dbo].[farm] ([address], [zipcode], [city], [state], [name], [FARM_ID])
VALUES 
('123 Greenway Drive', '54321', 'Greenville', 'Stateville', 'Green Thumb Farm', 1),
('456 Harvest Lane', '98765', 'Harveston', 'Agricultura', 'Harvest Moon Farm', 2),
('789 Orchard Road', '12398', 'Orchardville', 'Fruitland', 'Sweet Orchard Farm', 3);
