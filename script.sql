USE [master]
GO
/****** Object:  Database [PigBreeding]    Script Date: 2020/6/24 22:48:01 ******/
CREATE DATABASE [PigBreeding]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PigBreeding', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PigBreeding.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PigBreeding_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PigBreeding_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PigBreeding] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PigBreeding].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PigBreeding] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PigBreeding] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PigBreeding] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PigBreeding] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PigBreeding] SET ARITHABORT OFF 
GO
ALTER DATABASE [PigBreeding] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PigBreeding] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PigBreeding] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PigBreeding] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PigBreeding] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PigBreeding] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PigBreeding] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PigBreeding] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PigBreeding] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PigBreeding] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PigBreeding] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PigBreeding] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PigBreeding] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PigBreeding] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PigBreeding] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PigBreeding] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PigBreeding] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PigBreeding] SET RECOVERY FULL 
GO
ALTER DATABASE [PigBreeding] SET  MULTI_USER 
GO
ALTER DATABASE [PigBreeding] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PigBreeding] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PigBreeding] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PigBreeding] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PigBreeding] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PigBreeding', N'ON'
GO
ALTER DATABASE [PigBreeding] SET QUERY_STORE = OFF
GO
USE [PigBreeding]
GO
/****** Object:  Table [dbo].[manager]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pig]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pig](
	[id] [varchar](20) NOT NULL,
	[houseid] [varchar](20) NOT NULL,
	[birthday] [datetime] NULL,
	[sex] [nvarchar](50) NULL,
	[status] [varchar](10) NULL,
	[healthIndex] [float] NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pig_detail]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pig_detail](
	[id] [varchar](20) NOT NULL,
	[weight] [float] NULL,
	[temperature] [float] NULL,
	[heartrate] [float] NULL,
	[time] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pig_house]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pig_house](
	[houseid] [varchar](20) NOT NULL,
	[housename] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pighouse] PRIMARY KEY CLUSTERED 
(
	[houseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pig_house_detail]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pig_house_detail](
	[houseid] [varchar](20) NULL,
	[temperature] [float] NULL,
	[humidity] [float] NULL,
	[smog] [float] NULL,
	[illumination] [float] NULL,
	[time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pig_ring]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pig_ring](
	[pigid] [varchar](20) NULL,
	[ringid] [varchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[manager] ([username], [password]) VALUES (N'1', N'1')
INSERT [dbo].[pig] ([id], [houseid], [birthday], [sex], [status], [healthIndex], [type]) VALUES (N'1', N'1', CAST(N'2017-06-11T00:00:00.000' AS DateTime), N'公猪', N'良好', 91, N'杜洛克')
INSERT [dbo].[pig] ([id], [houseid], [birthday], [sex], [status], [healthIndex], [type]) VALUES (N'2', N'1', CAST(N'2018-09-11T00:00:00.000' AS DateTime), N'公猪', N'良好', 89, N'大白')
INSERT [dbo].[pig] ([id], [houseid], [birthday], [sex], [status], [healthIndex], [type]) VALUES (N'21', N'2', CAST(N'2019-01-11T00:00:00.000' AS DateTime), N'母猪', N'警告', 30, N'金华猪')
INSERT [dbo].[pig] ([id], [houseid], [birthday], [sex], [status], [healthIndex], [type]) VALUES (N'3', N'2', CAST(N'2018-09-01T00:00:00.000' AS DateTime), N'母猪', N'良好', 40, N'长白')
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65, 38.5, 80, CAST(N'2019-07-08T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.2, 38.6, 85, CAST(N'2019-07-08T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.3, 38, 82, CAST(N'2019-07-09T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.3, 39, 83, CAST(N'2019-07-09T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.7, 38.7, 84, CAST(N'2019-07-10T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.8, 38.2, 86, CAST(N'2019-07-10T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 65.9, 38, 87, CAST(N'2019-07-11T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 66, 38.1, 81, CAST(N'2019-07-11T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 66.1, 39.2, 80, CAST(N'2019-07-12T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'3', 66.3, 38.8, 89, CAST(N'2019-07-12T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63, 38.5, 88, CAST(N'2019-07-08T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63.1, 37.9, 86, CAST(N'2019-07-08T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63, 39.2, 84, CAST(N'2019-07-09T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63.3, 38.5, 84, CAST(N'2019-07-09T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63.6, 38.6, 82, CAST(N'2019-07-10T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63.7, 38.3, 84, CAST(N'2019-07-10T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 63.8, 38.4, 86, CAST(N'2019-07-11T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 64, 38.8, 89, CAST(N'2019-07-11T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 64.1, 39.1, 83, CAST(N'2019-07-12T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'21', 64.2, 39, 84, CAST(N'2019-07-12T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'1', 66, 37, 90, CAST(N'2019-08-01T16:00:00.000' AS DateTime))
INSERT [dbo].[pig_detail] ([id], [weight], [temperature], [heartrate], [time]) VALUES (N'2', 66, 38, 754, CAST(N'2019-10-16T00:00:00.000' AS DateTime))
INSERT [dbo].[pig_house] ([houseid], [housename]) VALUES (N'1', N'1号猪舍')
INSERT [dbo].[pig_house] ([houseid], [housename]) VALUES (N'2', N'2号猪舍')
INSERT [dbo].[pig_house] ([houseid], [housename]) VALUES (N'3', N'3号猪舍')
INSERT [dbo].[pig_house] ([houseid], [housename]) VALUES (N'4', N'4号猪舍')
INSERT [dbo].[pig_house] ([houseid], [housename]) VALUES (N'5', N'5号猪舍')
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'1', 21, 67, 11, 100, CAST(N'2019-07-08T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'1', 22, 68, 10, 98, CAST(N'2019-07-09T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'1', 21.5, 65, 0, 96, CAST(N'2019-07-10T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'1', 23, 70, 0, 104, CAST(N'2019-07-11T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'1', 22.5, 71, 10, 105, CAST(N'2019-07-12T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'2', 20, 66, 8, 110, CAST(N'2019-07-08T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'2', 24, 74, 0, 112, CAST(N'2019-07-09T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'2', 22, 70, 0, 99, CAST(N'2019-07-10T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'2', 23, 71, 0, 97, CAST(N'2019-07-11T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'2', 21, 72, 12, 100, CAST(N'2019-07-12T08:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'3', 21, 77, 0, 11, CAST(N'2019-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'4', 21, 445, 0, 11, CAST(N'2019-11-15T00:00:00.000' AS DateTime))
INSERT [dbo].[pig_house_detail] ([houseid], [temperature], [humidity], [smog], [illumination], [time]) VALUES (N'5', 21, 11, 4, 11, CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[pig_ring] ([pigid], [ringid]) VALUES (N'1', NULL)
/****** Object:  StoredProcedure [dbo].[getpigs]    Script Date: 2020/6/24 22:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getpigs]
as
begin
select pig.id,datediff(yy,pig.birthday,GETDATE()) age,pig.sex,pig.status,pig.type,c.* from (select a.* from pig_detail a,(select id, max(time) as 'time' from  pig_detail group by id)b
where  a.id=b.id and a.time=b.time )c,pig where c.id=pig.id order by pig.id+0
end
GO
USE [master]
GO
ALTER DATABASE [PigBreeding] SET  READ_WRITE 
GO
