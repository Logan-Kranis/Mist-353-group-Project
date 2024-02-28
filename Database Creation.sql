CREATE DATABASE [Smart crop];
GO

USE [Smart crop];
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE TABLE [dbo].[weather](
    [temperature] [decimal](18, 0) NULL,
    [pressure] [decimal](18, 0) NULL,
    [humidity] [decimal](18, 0) NULL,
    [precipitation] [decimal](18, 0) NULL,
    [wind_speed] [decimal](18, 0) NULL,
    [WEATHER_ID] [int] NOT NULL,
 CONSTRAINT [PK_weather] PRIMARY KEY CLUSTERED 
(
    [WEATHER_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY];
GO

CREATE TABLE [dbo].[date](
    [year] [int] NULL,
    [month] [int] NULL,
    [day] [int] NULL,
    [DATE_ID] [int] NOT NULL,
    [time] [time](7) NULL,
 CONSTRAINT [PK_date] PRIMARY KEY CLUSTERED 
(
    [DATE_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY];
GO

CREATE TABLE [dbo].[farm](
    [address] [nvarchar](max) NULL,
    [zipcode] [nvarchar](max) NULL,
    [city] [nvarchar](max) NULL,
    [state] [nvarchar](max) NULL,
    [name] [nvarchar](max) NULL,
    [FARM_ID] [int] NOT NULL,
 CONSTRAINT [PK_farm] PRIMARY KEY CLUSTERED 
(
    [FARM_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];
GO
