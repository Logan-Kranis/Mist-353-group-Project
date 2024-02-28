USE [Smart crop]
GO

/****** Object:  Table [dbo].[weather]    Script Date: 2/27/2024 7:42:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[weather](
	[tempature] [decimal](18, 0) NULL,
	[pressure] [decimal](18, 0) NULL,
	[humidity] [decimal](18, 0) NULL,
	[precipitation] [decimal](18, 0) NULL,
	[wind speed] [decimal](18, 0) NULL,
	[WEATHER ID] [int] NOT NULL,
 CONSTRAINT [PK_weather] PRIMARY KEY CLUSTERED 
(
	[WEATHER ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[farm](
	[address] [nvarchar](max) NULL,
	[zipcode] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[state] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[FARM ID] [int] NOT NULL,
 CONSTRAINT [PK_farm] PRIMARY KEY CLUSTERED 
(
	[FARM ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[farm]  WITH CHECK ADD  CONSTRAINT [FK_farm_date] FOREIGN KEY([FARM ID])
REFERENCES [dbo].[date] ([DATE ID])
GO

ALTER TABLE [dbo].[farm] CHECK CONSTRAINT [FK_farm_date]
GO

ALTER TABLE [dbo].[farm]  WITH CHECK ADD  CONSTRAINT [FK_farm_weather] FOREIGN KEY([FARM ID])
REFERENCES [dbo].[weather] ([WEATHER ID])
GO

ALTER TABLE [dbo].[farm] CHECK CONSTRAINT [FK_farm_weather]
GO


CREATE TABLE [dbo].[date](
	[year] [int] NULL,
	[month] [int] NULL,
	[day] [int] NULL,
	[DATE ID] [int] NOT NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_date] PRIMARY KEY CLUSTERED 
(
	[DATE ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
