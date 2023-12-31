USE [master]
GO
/****** Object:  Database [GRUSHSERVICE_db]    Script Date: 15.11.2023 0:13:12 ******/
CREATE DATABASE [GRUSHSERVICE_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GRUSHSERVICE_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GRUSHSERVICE_db.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GRUSHSERVICE_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GRUSHSERVICE_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GRUSHSERVICE_db] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GRUSHSERVICE_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET  MULTI_USER 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GRUSHSERVICE_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GRUSHSERVICE_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GRUSHSERVICE_db] SET QUERY_STORE = ON
GO
ALTER DATABASE [GRUSHSERVICE_db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GRUSHSERVICE_db]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 15.11.2023 0:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[mIddleName] [nvarchar](50) NULL,
	[gender] [nchar](10) NULL,
	[phone] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[email] [nvarchar](50) NULL,
	[tags] [date] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 15.11.2023 0:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MIddleName] [nvarchar](50) NULL,
	[Role] [nchar](10) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 15.11.2023 0:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titlePr] [nvarchar](max) NULL,
	[pricePr] [money] NULL,
	[descPr] [nvarchar](max) NULL,
	[imgPr] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 15.11.2023 0:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientsRep] [int] NULL,
	[servicesRep] [int] NULL,
	[documentsRep] [nvarchar](max) NULL,
	[productRep] [int] NULL,
	[dateStart] [datetime] NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sevices]    Script Date: 15.11.2023 0:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sevices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[time] [varchar](50) NULL,
	[img] [nvarchar](max) NULL,
	[price] [nvarchar](10) NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_Sevices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (1, N'Мишина', N'Иветта                                            ', N'Андреевна                                         ', N' ж        ', N' 7(3926)244-81-96 ', CAST(N'2002-10-05' AS Date), N' aukjan@yahoo.com', CAST(N'2016-01-24' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (2, N'Суворова', N'Божена                                            ', N'Анатольевна                                       ', N' ж        ', N' 7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N' attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (3, N'Белозёрова', N'Диана                                             ', N'Антоновна                                         ', N' ж        ', N' 7(9900)174-59-87 ', CAST(N'1989-02-27' AS Date), N' dialworld@aol.com', CAST(N'2017-01-30' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (4, N'Дементьева', N'Эдита                                             ', N'Онисимовна                                        ', N' ж        ', N' 7(198)922-28-76 ', CAST(N'1975-09-17' AS Date), N' frosal@hotmail.com', CAST(N'2018-11-24' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (5, N'Блинов', N'Евгений                                           ', N'Мэлсович                                          ', N' м        ', N' 7(0852)321-82-64 ', CAST(N'1994-01-05' AS Date), N' moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (6, N'Морозов', N'Наум                                              ', N'Валерьянович                                      ', N' м        ', N' 7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N' salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (7, N'Попова', N'Харита                                            ', N'Якуновна                                          ', N' ж        ', N' 7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N' firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (8, N'Крюков', N'Наум                                              ', N'Ильяович                                          ', N' м        ', N' 7(81)657-88-92 ', CAST(N'1993-11-17' AS Date), N' floxy@hotmail.com', CAST(N'2017-02-01' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (9, N'Крюкова', N'Авигея                                            ', N'Святославовна                                     ', N' ж        ', N' 7(499)318-88-53 ', CAST(N'2000-08-10' AS Date), N' simone@gmail.com', CAST(N'2018-01-03' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (10, N'Беляева', N'Сабрина                                           ', N'Федосеевна                                        ', N' ж        ', N' 7(6580)534-32-58 ', CAST(N'1972-07-26' AS Date), N' agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (11, N'Медведев', N'Святослав                                         ', N'Юлианович                                         ', N' м        ', N' 7(3520)435-21-20 ', CAST(N'1972-10-04' AS Date), N' hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (12, N'Блохин', N'Пантелеймон                                       ', N'Феликсович                                        ', N' м        ', N' 7(9524)556-48-98 ', CAST(N'1978-03-06' AS Date), N' balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (13, N'Горбачёва', N'Никки                                             ', N'Еремеевна                                         ', N' ж        ', N' 7(94)789-69-20 ', CAST(N'1987-04-21' AS Date), N' chinthaka@att.net', CAST(N'2018-08-16' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (14, N'Архипова', N'Прасковья                                         ', N'Валерьевна                                        ', N' ж        ', N' 7(86)540-10-21 ', CAST(N'1979-01-09' AS Date), N' cgcra@live.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (15, N'Андреева', N'Патрисия                                          ', N'Валерьевна                                        ', N' ж        ', N' 7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N' jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (16, N'Горшкова', N'Марта                                             ', N'Иосифовна                                         ', N' ж        ', N' 7(544)650-59-03 ', CAST(N'2001-02-13' AS Date), N' gbacon@mac.com', CAST(N'2016-08-04' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (17, N'Орлова', N'Влада                                             ', N'Мартыновна                                        ', N' ж        ', N' 7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N' rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (18, N'Ершов', N'Глеб                                              ', N'Федорович                                         ', N' м        ', N' 7(2608)298-40-82 ', CAST(N'1970-06-14' AS Date), N' sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (19, N'Быкова', N'Тала                                              ', N'Георгьевна                                        ', N' ж        ', N' 7(13)915-53-53 ', CAST(N'2000-02-22' AS Date), N' ganter@optonline.net', CAST(N'2016-08-13' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (20, N'Новиков', N'Адриан                                            ', N'Аркадьевич                                        ', N' м        ', N' 7(70)572-33-62 ', CAST(N'1974-01-15' AS Date), N' multiplx@verizon.net', CAST(N'2018-11-23' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (21, N'Филатов', N'Аристарх                                          ', N'Дмитриевич                                        ', N' м        ', N' 7(696)235-29-24 ', CAST(N'1989-05-29' AS Date), N' hampton@att.net', CAST(N'2017-01-11' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (22, N'Анисимова', N'Тамара                                            ', N'Витальевна                                        ', N' ж        ', N' 7(66)128-04-10 ', CAST(N'1988-06-16' AS Date), N' schwaang@mac.com', CAST(N'2016-02-25' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (23, N'Кудряшов', N'Аверкий                                           ', N'Константинович                                    ', N' м        ', N' 7(88)732-96-30 ', CAST(N'1991-07-26' AS Date), N' nanop@msn.com', CAST(N'2018-03-08' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (24, N'Колобов', N'Орест                                             ', N'Юлианович                                         ', N' м        ', N' 7(1680)508-58-26 ', CAST(N'2001-07-14' AS Date), N' parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (25, N'Кузьмина', N'Дэнна                                             ', N'Витальевна                                        ', N' ж        ', N' 7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N' nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (26, N'Александров', N'Станислав                                         ', N'Эдуардович                                        ', N' м        ', N' 7(18)164-05-12 ', CAST(N'1981-07-04' AS Date), N' bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (27, N'Андреев', N'Станислав                                         ', N'Максович                                          ', N' м        ', N' 7(02)993-91-28 ', CAST(N'1975-10-10' AS Date), N' budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (28, N'Дроздов', N'Вольдемар                                         ', N'Артемович                                         ', N' м        ', N' 7(307)456-99-05 ', CAST(N'1976-02-07' AS Date), N' smpeters@me.com', CAST(N'2017-07-18' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (29, N'Абрамов', N'Станислав                                         ', N'Филатович                                         ', N' м        ', N' 7(6545)478-87-79 ', CAST(N'1989-05-18' AS Date), N' solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (30, N'Гусева', N'Роза                                              ', N'Дмитриевна                                        ', N' ж        ', N' 7(23)064-51-84 ', CAST(N'1999-02-13' AS Date), N' martyloo@live.com', CAST(N'2017-12-12' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (31, N'Лазарев', N'Алексей                                           ', N'Богданович                                        ', N' м        ', N' 7(0055)737-37-48 ', CAST(N'1977-03-10' AS Date), N' claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (32, N'Большаков', N'Вадим                                             ', N'Данилович                                         ', N' м        ', N' 7(386)641-13-37 ', CAST(N'1970-05-15' AS Date), N' uncle@gmail.com', CAST(N'2018-08-04' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (33, N'Ефремов', N'Витольд                                           ', N'Авксентьевич                                      ', N' м        ', N' 7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N' kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (34, N'Игнатов', N'Захар                                             ', N'Павлович                                          ', N' м        ', N' 7(578)574-73-36 ', CAST(N'1998-10-07' AS Date), N' dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (35, N'Калашников', N'Артур                                             ', N'Юрьевич                                           ', N' м        ', N' 7(147)947-47-21 ', CAST(N'1972-12-13' AS Date), N' oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (36, N'Овчинникова', N'Лаура                                             ', N'Еремеевна                                         ', N' ж        ', N' 7(85)829-33-79 ', CAST(N'1992-04-03' AS Date), N' carcus@yahoo.ca', CAST(N'2018-11-24' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (37, N'Голубев', N'Иосиф                                             ', N'Тимофеевич                                        ', N' м        ', N' 7(78)972-73-11 ', CAST(N'1982-05-06' AS Date), N' smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (38, N'Галкин', N'Эрик                                              ', N'Онисимович                                        ', N' м        ', N' 7(759)873-77-39 ', CAST(N'1975-01-18' AS Date), N' snunez@verizon.net', CAST(N'2016-07-19' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (39, N'Некрасов', N'Варлам                                            ', N'Михайлович                                        ', N' м        ', N' 7(019)258-06-35 ', CAST(N'2000-11-12' AS Date), N' dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (40, N'Федотов', N'Осип                                              ', N'Анатольевич                                       ', N' м        ', N' 7(590)702-33-06 ', CAST(N'1971-04-13' AS Date), N' breegster@hotmail.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (41, N'Смирнов', N'Мартын                                            ', N'Арсеньевич                                        ', N' м        ', N' 7(6251)589-02-43 ', CAST(N'1996-06-25' AS Date), N' haddawy@live.com', CAST(N'2017-02-07' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (42, N'Копылов', N'Касьян                                            ', N'Робертович                                        ', N' м        ', N' 7(5774)679-82-06 ', CAST(N'1983-08-04' AS Date), N' crobles@sbcglobal.net', CAST(N'2018-03-18' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (43, N'Дмитриева', N'Элина                                             ', N'Даниловна                                         ', N' ж        ', N' 7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N' vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (44, N'Бирюкова', N'Инара                                             ', N'Улебовна                                          ', N' ж        ', N' 7(098)346-50-58 ', CAST(N'1978-07-21' AS Date), N' smpeters@hotmail.com', CAST(N'2017-10-01' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (45, N'Васильев', N'Оскар                                             ', N'Богданович                                        ', N' м        ', N' 7(585)801-94-29 ', CAST(N'1971-01-30' AS Date), N' miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (46, N'Киселёв', N'Устин                                             ', N'Яковлевич                                         ', N' м        ', N' 7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N' dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (47, N'Кузьмин', N'Леонтий                                           ', N'Валерьянович                                      ', N' м        ', N' 7(1340)148-90-68 ', CAST(N'2000-05-05' AS Date), N' msloan@hotmail.com', CAST(N'2017-10-12' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (48, N'Ефимова', N'Магда                                             ', N'Платоновна                                        ', N' ж        ', N' 7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N' rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (49, N'Воронова', N'Изабелла                                          ', N'Вячеславовна                                      ', N' ж        ', N' 7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N' kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Clients] ([id], [surname], [name], [mIddleName], [gender], [phone], [birthday], [email], [tags]) VALUES (50, N'Волков', N'Людвиг                                            ', N'Витальевич                                        ', N' м        ', N' 7(8459)592-05-58 ', CAST(N'1977-12-27' AS Date), N' jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (1, N'Аксенова', N'Малика', N'Михайловна', N'MAnager   ', N'Aksenova', N'Frctyjdf')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (2, N'Васильева', N'Ксения', N'Артёмовна', N'MAnager   ', N'Vasilyeva', N'Dfcbkmtdf')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (3, N'Окулова', N'Виктория', N'Дмитриевна', N'MAnager   ', N'Okulova', N'Jrekjdf')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (4, N'Алексеев', N'Глеб', N'Константинович', N'MAnager   ', N'Alexeev', N'Fktrcttd')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (5, N'Потапов', N'Лев', N'Алексеевич', N'MAnager   ', N'Potapov', N'Gjnfgjd')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (6, N'Куликов', N'Фёдор', N'Артёмович', N'MAnager   ', N'Kulikov', N'Rekbrjd')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (7, N'Белоусов', N'Егор', N'Ярославович', N'MAnager   ', N'Belousov', N'<tkjecjd')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (8, N'Дружинин', N'Лев', N'Александрович', N'MAnager   ', N'Druzhinin', N'Lhe;byby')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (9, N'Ильин', N'Никита', N'Миронович', N'MAnager   ', N'Ilyin', N'Bkmby')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (10, N'Никонов', N'Арсений', N'Александрович', N'MAnager   ', N'Nikonov', N'Ybrjyjd')
INSERT [dbo].[Employee] ([id], [LastName], [FirstName], [MIddleName], [Role], [Login], [Password]) VALUES (11, N'Тест', N'Тест', N'Тест', N'Manager   ', N'Testi', N'11111')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [titlePr], [pricePr], [descPr], [imgPr]) VALUES (1, N'Продукт', 1000.0000, N'Тестовый продукт', N'')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reports] ON 

INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (1, 47, 49, NULL, NULL, CAST(N'2023-04-15T13:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (2, 29, 92, NULL, NULL, CAST(N'2023-11-27T13:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (3, 38, 32, NULL, NULL, CAST(N'2023-07-29T10:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (4, 42, 15, NULL, NULL, CAST(N'2023-09-05T14:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (5, 41, 80, NULL, NULL, CAST(N'2023-02-04T19:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (6, 46, 49, NULL, NULL, CAST(N'2023-06-24T14:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (7, 50, 45, NULL, NULL, CAST(N'2023-12-05T18:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (8, 30, 25, NULL, NULL, CAST(N'2023-03-19T09:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (9, 28, 50, NULL, NULL, CAST(N'2023-10-09T18:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (10, 8, 83, NULL, NULL, CAST(N'2023-05-19T16:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (11, 11, 7, NULL, NULL, CAST(N'2023-08-02T18:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (12, 48, 90, NULL, NULL, CAST(N'2023-12-06T09:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (13, 48, 35, NULL, NULL, CAST(N'2023-08-08T19:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (14, 24, 8, NULL, NULL, CAST(N'2023-04-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (15, 30, 75, NULL, NULL, CAST(N'2023-09-09T17:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (16, 20, 28, NULL, NULL, CAST(N'2023-10-16T18:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (17, 5, 50, NULL, NULL, CAST(N'2023-12-07T17:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (18, 24, 13, NULL, NULL, CAST(N'2023-09-05T19:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (19, 13, 80, NULL, NULL, CAST(N'2023-11-26T10:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (20, 18, 27, NULL, NULL, CAST(N'2023-07-30T10:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (21, 11, 96, NULL, NULL, CAST(N'2023-07-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (22, 29, 75, NULL, NULL, CAST(N'2023-12-15T14:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (23, 27, 71, NULL, NULL, CAST(N'2023-12-16T19:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (24, 46, 52, NULL, NULL, CAST(N'2023-06-28T10:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (25, 16, 92, NULL, NULL, CAST(N'2023-12-30T14:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (26, 11, 8, NULL, NULL, CAST(N'2023-02-26T17:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (27, 23, 28, NULL, NULL, CAST(N'2023-11-15T15:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (28, 16, 81, NULL, NULL, CAST(N'2023-09-13T10:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (29, 15, 81, NULL, NULL, CAST(N'2023-03-06T12:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (30, 27, 74, NULL, NULL, CAST(N'2023-04-11T16:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (31, 14, 71, NULL, NULL, CAST(N'2023-07-12T19:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (32, 16, 88, NULL, NULL, CAST(N'2023-07-09T18:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (33, 39, 15, NULL, NULL, CAST(N'2023-11-23T14:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (34, 14, 27, NULL, NULL, CAST(N'2023-08-15T18:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (35, 23, 23, NULL, NULL, CAST(N'2023-11-27T09:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (36, 42, 7, NULL, NULL, CAST(N'2023-12-23T15:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (37, 7, 45, NULL, NULL, CAST(N'2023-09-17T11:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (38, 12, 84, NULL, NULL, CAST(N'2023-07-02T15:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (39, 1, 74, NULL, NULL, CAST(N'2023-08-12T11:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (40, 22, 65, NULL, NULL, CAST(N'2023-04-15T11:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (41, 36, 100, NULL, NULL, CAST(N'2023-06-10T16:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (42, 22, 39, NULL, NULL, CAST(N'2023-02-21T08:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (43, 34, 88, NULL, NULL, CAST(N'2023-10-14T12:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (44, 34, 87, NULL, NULL, CAST(N'2023-12-15T19:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (45, 25, 57, NULL, NULL, CAST(N'2023-08-24T11:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (46, 21, 13, NULL, NULL, CAST(N'2023-06-15T09:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (47, 35, 52, NULL, NULL, CAST(N'2023-04-22T11:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (48, 22, 39, NULL, NULL, CAST(N'2023-02-24T13:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (49, 14, 95, NULL, NULL, CAST(N'2023-02-15T17:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (50, 16, 27, NULL, NULL, CAST(N'2023-07-09T16:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (51, 32, 96, NULL, NULL, CAST(N'2023-08-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (52, 22, 97, NULL, NULL, CAST(N'2023-08-25T08:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (53, 13, 81, NULL, NULL, CAST(N'2023-06-21T14:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (54, 13, 13, NULL, NULL, CAST(N'2023-12-28T17:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (55, 38, 49, NULL, NULL, CAST(N'2023-01-29T16:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (56, 13, 90, NULL, NULL, CAST(N'2023-11-30T18:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (57, 20, 98, NULL, NULL, CAST(N'2023-10-17T19:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (58, 23, 4, NULL, NULL, CAST(N'2023-03-16T10:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (59, 35, 98, NULL, NULL, CAST(N'2023-11-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (60, 17, 33, NULL, NULL, CAST(N'2023-12-18T10:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (61, 18, 92, NULL, NULL, CAST(N'2023-06-14T18:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (62, 27, 74, NULL, NULL, CAST(N'2023-07-05T13:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (63, 20, 75, NULL, NULL, CAST(N'2023-10-14T19:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (64, 28, 27, NULL, NULL, CAST(N'2023-08-21T17:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (65, 7, 75, NULL, NULL, CAST(N'2023-05-28T11:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (66, 14, 72, NULL, NULL, CAST(N'2023-09-19T16:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (67, 48, 73, NULL, NULL, CAST(N'2023-06-22T13:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (68, 24, 26, NULL, NULL, CAST(N'2023-08-08T17:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (69, 8, 52, NULL, NULL, CAST(N'2023-08-12T08:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (70, 8, 49, NULL, NULL, CAST(N'2023-03-04T11:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (71, 11, 13, NULL, NULL, CAST(N'2023-03-22T15:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (72, 21, 94, NULL, NULL, CAST(N'2023-06-05T10:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (73, 17, 75, NULL, NULL, CAST(N'2023-04-21T12:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (74, 32, 4, NULL, NULL, CAST(N'2023-07-28T12:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (75, 32, 32, NULL, NULL, CAST(N'2023-10-10T13:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (76, 29, 100, NULL, NULL, CAST(N'2023-04-05T10:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (77, 2, 87, NULL, NULL, CAST(N'2023-07-30T12:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (78, 31, 52, NULL, NULL, CAST(N'2023-12-30T08:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (79, 50, 75, NULL, NULL, CAST(N'2023-06-29T17:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (80, 38, 8, NULL, NULL, CAST(N'2023-08-19T17:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (81, 6, 26, NULL, NULL, CAST(N'2023-11-05T12:10:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (82, 20, 97, NULL, NULL, CAST(N'2023-01-19T11:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (83, 6, 9, NULL, NULL, CAST(N'2023-04-14T14:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (84, 39, 21, NULL, NULL, CAST(N'2023-05-27T08:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (85, 18, 75, NULL, NULL, CAST(N'2023-06-16T12:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (86, 44, 21, NULL, NULL, CAST(N'2023-08-12T15:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (87, 31, 72, NULL, NULL, CAST(N'2023-04-06T11:50:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (88, 23, 84, NULL, NULL, CAST(N'2023-05-23T11:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (89, 1, 76, NULL, NULL, CAST(N'2023-09-20T08:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (90, 5, 84, NULL, NULL, CAST(N'2023-02-24T13:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (91, 47, 21, NULL, NULL, CAST(N'2023-05-01T10:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (92, 27, 94, NULL, NULL, CAST(N'2023-05-27T14:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (93, 22, 4, NULL, NULL, CAST(N'2023-02-16T09:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (94, 44, 65, NULL, NULL, CAST(N'2023-03-23T16:40:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (95, 34, 32, NULL, NULL, CAST(N'2023-12-24T09:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (96, 35, 16, NULL, NULL, CAST(N'2023-05-09T10:00:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (97, 10, 65, NULL, NULL, CAST(N'2023-10-05T18:30:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (98, 25, 15, NULL, NULL, CAST(N'2023-04-26T10:20:00.000' AS DateTime))
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (99, 17, 15, NULL, NULL, CAST(N'2023-08-05T10:10:00.000' AS DateTime))
GO
INSERT [dbo].[Reports] ([id], [clientsRep], [servicesRep], [documentsRep], [productRep], [dateStart]) VALUES (100, 24, 95, NULL, NULL, CAST(N'2023-12-19T15:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reports] OFF
GO
SET IDENTITY_INSERT [dbo].[Sevices] ON 

INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (1, N'Замена жидкости в кондиционере', N'8 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'3040', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (2, N'Ремонт и замена коллектора', N'150 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'2770', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (3, N'Замена актуатора сцепления', N'330 мин.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'4100', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (4, N'Замена жидкости ГУР', N'9 час.', N'/Resources/Услуги автосервиса/ГУР.png', N'2380', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (5, N'Заправка кондиционеров', N'2 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'4860', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (6, N'Замена масла в вариаторе', N'2 час.', N'/Resources/Услуги автосервиса/Вариатор.jpg', N'4720', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (7, N'Ремонт двигателя', N'4 час.', N'/Resources/Услуги автосервиса/Двигатель.png', N'2470', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (8, N'Замена заднего сальника АКПП', N'390 мин.', N'/Resources/Услуги автосервиса/АКПП.jpg', N'1510', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (9, N'Покраска', N'2 час.', N'/Resources/Услуги автосервиса/Дополнительные услуги.png', N'2370', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (10, N'Мойка колес', N'570 мин.', N'/Resources/Услуги автосервиса/Шиномонтаж.jpg', N'3490', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (11, N'Замена прокладки впускного-выпуского коллектора', N'3 час.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'2980', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (12, N'Диагностика работы двигателя', N'150 мин.', N'/Resources/Услуги автосервиса/Двигатель.png', N'2760', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (13, N'Установка сигнализации', N'4 час.', N'/Resources/Услуги автосервиса/Электрика.png', N'1760', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (14, N'Замена компрессора кондиционера', N'270 мин.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'2720', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (15, N'Замена ремня привода ГУР', N'10 час.', N'/Resources/Услуги автосервиса/ГУР.png', N'3350', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (16, N'Замена тормозных колодок', N'8 час.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'4260', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (17, N'Замена масла', N'510 мин.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'1430', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (18, N'Замена цепи ГРМ', N'6 час.', N'/Resources/Услуги автосервиса/Двигатель.png', N'4570', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (19, N'Замена бензонасоса', N'4 час.', N'/Resources/Услуги автосервиса/Топливная система.png', N'1780', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (20, N'Ремонт приводного вала', N'210 мин.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'4520', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (21, N'Замена подшипника компрессора кондиционера', N'330 мин.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'1110', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (22, N'Снятие и установка колес', N'390 мин.', N'/Resources/Услуги автосервиса/Шиномонтаж.jpg', N'3130', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (23, N'Замена лямбда зонда', N'270 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'770', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (24, N'Замена привода в сборе', N'8 час.', N'/Resources/Услуги автосервиса/transmission.jpg', N'3890', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (25, N'Замена трубки кондиционера', N'3 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'2810', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (26, N'Замена ремня кондиционера', N'8 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'4650', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (27, N'Замена охлаждающей жидкости', N'210 мин.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'1590', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (28, N'Замена троса сцепления', N'8 час.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'4460', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (29, N'Замена масла в МКПП', N'9 час.', N'/Resources/Услуги автосервиса/КПП.png', N'4490', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (30, N'Замена рулевой рейки', N'570 мин.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'4840', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (31, N'Ремонт дисков', N'270 мин.', N'/Resources/Услуги автосервиса/Шиномонтаж.jpg', N'3860', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (32, N'Замена масла заднего редуктора (моста)', N'7 час.', N'/Resources/Услуги автосервиса/transmission.jpg', N'840', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (33, N'Замена подшипника задней ступицы', N'270 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'1860', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (34, N'Восстановление рулевых реек', N'2 час.', N'/Resources/Услуги автосервиса/Подвеска.png', N'1020', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (35, N'Замена рулевой тяги', N'3 час.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'570', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (36, N'Ремонт и замена гидроблока АКПП', N'270 мин.', N'/Resources/Услуги автосервиса/АКПП.jpg', N'2040', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (37, N'Замена масла раздаточной коробки', N'510 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'2070', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (38, N'Диагностика кондиционера', N'10 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'2590', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (39, N'Ремонт и замена катализатора', N'270 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'500', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (40, N'Замена гофры глушителя', N'270 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'760', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (41, N'Замена ремня ГРМ', N'150 мин.', N'/Resources/Услуги автосервиса/Двигатель.png', N'4630', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (42, N'Ремонт редуктора', N'8 час.', N'/Resources/Услуги автосервиса/КПП.png', N'870', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (43, N'Замена электромагнитного клапана без снятия ТНВД', N'450 мин.', N'/Resources/Услуги автосервиса/diz.jpg', N'4610', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (44, N'Вулканизация шин', N'330 мин.', N' /Resources/Услуги автосервиса/Шиномонтаж.jpg', N'540', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (45, N'Ремонт стартера', N'8 час.', N'/Resources/Услуги автосервиса/Электрика.png', N'2680', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (46, N'Ремонт коробки передач', N'450 мин.', N'/Resources/Услуги автосервиса/КПП.png', N'1850', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (47, N'Жидкостная промывка топливной системы', N'6 час.', N'/Resources/Услуги автосервиса/Топливная система.png', N'3620', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (48, N'Ремонт генератора', N'210 мин.', N'/Resources/Услуги автосервиса/Электрика.png', N'1700', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (49, N'Замена масла АКПП', N'450 мин.', N'/Resources/Услуги автосервиса/АКПП.jpg', N'2430', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (50, N'Диагностика трансмиссии', N'2 час. ', N'/Resources/Услуги автосервиса/transmission.jpg', N'2790', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (51, N'Монтаж и снятие шин с диска', N'10 час.', N'/Resources/Услуги автосервиса/Шиномонтаж.jpg', N'3990', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (52, N'Замена подшипника передней ступицы', N'330 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'4020', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (53, N'Замена главного цилиндра сцепления', N'150 мин.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'4910', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (54, N'Установка автомагнитолы', N'270 мин.', N'/Resources/Услуги автосервиса/Электрика.png', N'3210', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (55, N'Диагностика рулевых тяг', N'3 час.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'1680', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (56, N'Замена радиатора кондиционера', N'9 час.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'1770', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (57, N'Замена тормозной жидкости', N'6 час.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'2200', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (58, N'Ремонт рулевого управления', N'2 час.', N'/Resources/Услуги автосервиса/Подвеска.png', N'3440', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (59, N'Замена заднего редуктора', N'330 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'2240', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (60, N'Дефектация CVT', N'3 час.', N'/Resources/Услуги автосервиса/Вариатор.jpg', N'1830', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (61, N'Замена карданного вала', N'2 час.', N'/Resources/Услуги автосервиса/transmission.jpg', N'4450', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (62, N'Замена сцепления', N'330 мин.', N'/Resources/Услуги автосервиса/КПП.png', N'4320', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (63, N'Установка системы автозапуска', N'9 час.', N'/Resources/Услуги автосервиса/Электрика.png', N'3620', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (64, N'Замена опоры АКПП', N'5 час.', N'/Resources/Услуги автосервиса/АКПП.jpg', N'2540', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (65, N'Ремонт бензонасоса', N'210 мин.', N'/Resources/Услуги автосервиса/Топливная система.png', N'500', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (66, N'Замена масла переднего редуктора (моста)', N'9 час.', N'/Resources/Услуги автосервиса/transmission.jpg', N'3950', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (67, N'Ремонт подвесного подшипника', N'7 час.', N'/Resources/Услуги автосервиса/transmission.jpg', N'4440', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (68, N'Тестирование форсунок (стенд)', N'6 час.', N'/Resources/Услуги автосервиса/Топливная система.png', N'1600', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (69, N'Диагностика сцепления', N'6 час.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'4210', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (70, N'Замена ступицы в сборе', N'150 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'4250', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (71, N'Антибактериальная обработка кондиционера', N'450 мин.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'4580', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (72, N'Ремонт глушителя', N'150 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'2100', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (73, N'Диагностика рулевого редуктора', N'3 час.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'2930', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (74, N'Диагностика подвески', N'330 мин.', N'/Resources/Услуги автосервиса/Подвеска.png', N'1460', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (75, N'Замена свечей', N'2 час.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'2240', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (76, N'Диагностика инжектора', N'330 мин.', N'/Resources/Услуги автосервиса/Топливная система.png', N'3390', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (77, N'Комплексная диагностика автомобиля', N'10 час.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'1120', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (78, N'Ремонт раздаточной коробки', N'10 час.', N'/Resources/Услуги автосервиса/КПП.png', N'3610', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (79, N'Удаление катализатора', N'510 мин.', N'/Resources/Услуги автосервиса/Дополнительные услуги.png', N'1930', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (80, N'Снятие/установка форсунок', N'5 час.', N'/Resources/Услуги автосервиса/diz.jpg', N'1470', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (81, N'Развал-схождение', N'3 час.', N'/Resources/Услуги автосервиса/Подвеска.png', N'3890', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (82, N'Замена выжимного подшипника', N'10 час.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'2250', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (83, N'Чистка форсунок ультразвуком', N'4 час.', N'/Resources/Услуги автосервиса/Топливная система.png', N'3920', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (84, N'Ремонт компрессора кондиционера', N'150 мин.', N'/Resources/Услуги автосервиса/Кондиционер.jpg', N'4760', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (85, N'Замена цилиндра сцепления', N'8 час.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'810', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (86, N'Ремонт подвески (ходовой)', N'3 час.', N'/Resources/Услуги автосервиса/Подвеска.png', N'680', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (87, N'Замена фильтров', N'210 мин.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'530', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (88, N'Кузовной ремонт', N'150 мин.', N'/Resources/Услуги автосервиса/Дополнительные услуги.png', N'2750', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (89, N'Замена прокладки приемной трубки', N'570 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'4680', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (90, N'Диагностика выхлопной системы автомобиля', N'3 час.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'2550', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (91, N'Балансировка колес', N'390 мин.', N'/Resources/Услуги автосервиса/Шиномонтаж.jpg', N'4690', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (92, N'Ремонт автоэлектрики', N'450 мин.', N'/Resources/Услуги автосервиса/Электрика.png', N'4230', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (93, N'ТО с сохранением гарантии', N'270 мин.', N'/Resources/Услуги автосервиса/Техническое обслуживание.png', N'4300', 20)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (94, N'Ремонт карданного вала', N'210 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'780', 5)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (95, N'Ремонт сцепления', N'10 час.', N'/Resources/Услуги автосервиса/КПП.png', N'3290', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (96, N'Замена кулисы АКПП', N'6 час.', N'/Resources/Услуги автосервиса/АКПП.jpg', N'3250', 10)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (97, N'Ремонт кронштейна глушителя', N'570 мин.', N'/Resources/Услуги автосервиса/Выхлопная система.jpg', N'1410', NULL)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (98, N'Замена сальника привода', N'570 мин.', N'/Resources/Услуги автосервиса/transmission.jpg', N'3820', 15)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (99, N'Замена пыльника шруса', N'5 час.', N'/Resources/Услуги автосервиса/rulevoe-upravlenie-avtomobilya.jpg', N'4730', NULL)
GO
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (100, N'Замена маховика', N'10 час.', N'/Resources/Услуги автосервиса/Сцепление.jpg', N'2400', 25)
INSERT [dbo].[Sevices] ([id], [title], [time], [img], [price], [discount]) VALUES (102, N'test', N'11 c', NULL, N'1112', 2)
SET IDENTITY_INSERT [dbo].[Sevices] OFF
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Clients] FOREIGN KEY([clientsRep])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Clients]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Products] FOREIGN KEY([productRep])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Products]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_Sevices] FOREIGN KEY([servicesRep])
REFERENCES [dbo].[Sevices] ([id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_Reports_Sevices]
GO
USE [master]
GO
ALTER DATABASE [GRUSHSERVICE_db] SET  READ_WRITE 
GO
