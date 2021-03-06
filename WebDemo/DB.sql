USE [master]
GO
/****** Object:  Database [login]    Script Date: 14-Jul-20 9:48:09 PM ******/
CREATE DATABASE [login]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'login', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NATTON\MSSQL\DATA\login.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'login_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NATTON\MSSQL\DATA\login_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [login] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [login].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [login] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [login] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [login] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [login] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [login] SET ARITHABORT OFF 
GO
ALTER DATABASE [login] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [login] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [login] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [login] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [login] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [login] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [login] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [login] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [login] SET  DISABLE_BROKER 
GO
ALTER DATABASE [login] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [login] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [login] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [login] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [login] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [login] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [login] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [login] SET RECOVERY FULL 
GO
ALTER DATABASE [login] SET  MULTI_USER 
GO
ALTER DATABASE [login] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [login] SET DB_CHAINING OFF 
GO
ALTER DATABASE [login] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [login] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [login] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'login', N'ON'
GO
ALTER DATABASE [login] SET QUERY_STORE = OFF
GO
USE [login]
GO
/****** Object:  Table [dbo].[checkout]    Script Date: 14-Jul-20 9:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkout](
	[checkoutID] [int] IDENTITY(1,1) NOT NULL,
	[cusName] [nvarchar](100) NOT NULL,
	[cusAddress] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[checkoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[checkoutDetail]    Script Date: 14-Jul-20 9:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkoutDetail](
	[checkoutID] [int] NOT NULL,
	[itemID] [nvarchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[checkoutID] ASC,
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 14-Jul-20 9:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[ID] [nvarchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 14-Jul-20 9:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[classname] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[checkout] ON 

INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (1, N'abc', N'def')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (2, N'abc', N'def')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (3, N'abc', N'def')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (4, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (5, N'12312', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (6, N'asd', N'asd')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (7, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (8, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (9, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (10, N'tien', N'30 ')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (11, N'tien', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (12, N'Tien', N'Truong')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (13, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (14, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (15, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (16, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (17, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (18, N'123', N'123')
INSERT [dbo].[checkout] ([checkoutID], [cusName], [cusAddress]) VALUES (19, N'123', N'123')
SET IDENTITY_INSERT [dbo].[checkout] OFF
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (5, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (6, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (6, N'2', 2)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (6, N'3', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (7, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (8, N'1', 2)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (9, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (9, N'2', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (10, N'1', 6)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (11, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (12, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (13, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (14, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (15, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (16, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (17, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (18, N'1', 1)
INSERT [dbo].[checkoutDetail] ([checkoutID], [itemID], [quantity]) VALUES (19, N'1', 1)
INSERT [dbo].[item] ([ID], [name], [price]) VALUES (N'1', N'python', 1)
INSERT [dbo].[item] ([ID], [name], [price]) VALUES (N'2', N'java', 1)
INSERT [dbo].[item] ([ID], [name], [price]) VALUES (N'3', N'C/C++', 1)
INSERT [dbo].[login] ([username], [password], [classname], [isAdmin]) VALUES (N'123', N'123', N'123', 1)
INSERT [dbo].[login] ([username], [password], [classname], [isAdmin]) VALUES (N'testuser1', N'123', N'Test User 1', 1)
ALTER TABLE [dbo].[checkoutDetail]  WITH CHECK ADD FOREIGN KEY([checkoutID])
REFERENCES [dbo].[checkout] ([checkoutID])
GO
ALTER TABLE [dbo].[checkoutDetail]  WITH CHECK ADD FOREIGN KEY([itemID])
REFERENCES [dbo].[item] ([ID])
GO
USE [master]
GO
ALTER DATABASE [login] SET  READ_WRITE 
GO
