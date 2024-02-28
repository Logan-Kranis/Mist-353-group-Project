# MIST-353 Assignment 3

## Company Plan Statement

With our company and our group, we came together to gather an understanding of what we wanted. And what that was, is an application that allows for any farmer, anywhere in the United States, to have access to weather information wherever possible. Smart Crop is an innovative company and application geared towards the farming community.

## Actions/ Stored Procedures

1. **spInsertFarm**
   - *Description:* Insert all details needed into the farm table. Very important to include everything from address, zip, city, state, and the name.
   
2. **spSelectFarmsByCity**
   - *Description:* This is used to select a farm in the database dbo.farm, by specifying what city you want to search for.
   
3. **spInsertWeatherRecord**
   - *Description:* Action is for inserting and storing additional information for any type of weather occurring. All being inserted into the weather database, dbo.weather.
   
4. **spGetWeatherByID**
   - *Description:* Used for searching what the weather is in an area based off of using the weather ID as the search.
   
5. **spInsertFarm**
   - *Description:* Used to insert data into the Farm database so it is usable and can be updated for new farms.
   
6. **spSelectFarmsByCity**
   - *Description:* Used for searching for a farm based off of using the city name as the search.

## ChatGPT Search and Other Outside Citations

### Prompt:
"Given this table created in our database, please make up a few sets of random data that can be inserted into the table: CREATE TABLE [dbo].[weather]([temperature] [decimal](18, 0) NULL,[pressure] [decimal](18, 0) NULL,[humidity] [decimal](18, 0) NULL,[precipitation] [decimal](18, 0) NULL,[wind_speed] [decimal](18, 0) NULL,[WEATHER_ID] [int] NOT NULL)"
<br/><br/>**With this ChatGPT spit out a bunch of random info for us to use.**

### Citation:
ChatGPT. ChatGPT. Vers. 3.5. 1 June 2020. OpenAI. 26 February 2024. <https://chat.openai.com/>.
