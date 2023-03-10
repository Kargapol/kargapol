USE [master]
GO
/****** Object:  Database [Абоненты]    Script Date: 20.12.2022 9:50:00 ******/
CREATE DATABASE [Абоненты]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Абоненты', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Абоненты_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Абоненты] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Абоненты].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Абоненты] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Абоненты] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Абоненты] SET ARITHABORT OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Абоненты] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Абоненты] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Абоненты] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Абоненты] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Абоненты] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Абоненты] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Абоненты] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Абоненты] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Абоненты] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Абоненты] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Абоненты] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Абоненты] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Абоненты] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Абоненты] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Абоненты] SET RECOVERY FULL 
GO
ALTER DATABASE [Абоненты] SET  MULTI_USER 
GO
ALTER DATABASE [Абоненты] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Абоненты] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Абоненты] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Абоненты] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Абоненты] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Абоненты', N'ON'
GO
ALTER DATABASE [Абоненты] SET QUERY_STORE = OFF
GO
USE [Абоненты]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 9:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[id_абонента] [int] NOT NULL,
	[ФИО] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 9:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[id_Разговора] [int] NOT NULL,
	[Город] [nvarchar](30) NOT NULL,
	[Дата_разговора] [date] NOT NULL,
	[Продолжительность_звонка] [nvarchar](50) NOT NULL,
	[Статус_оплаты] [nvarchar](50) NOT NULL,
	[Тариф_разговора] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статистика_Разговоров]    Script Date: 20.12.2022 9:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статистика_Разговоров](
	[Номер_телефона] [int] NOT NULL,
	[фио_абонента] [nvarchar](50) NOT NULL,
	[Кол_во_разговоров] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Телефоны_абонентов]    Script Date: 20.12.2022 9:50:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Телефоны_абонентов](
	[id_Телефона_абонента] [int] NOT NULL,
	[Номер_договора] [nvarchar](30) NOT NULL,
	[Дата_установки] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Телефона_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([id_абонента], [ФИО], [Адрес]) VALUES (1, N'Титова Александра Иввановна', N'г. Омск, ул. Ленина, 5,24



')
GO
INSERT [dbo].[Разговоры] ([id_Разговора], [Город], [Дата_разговора], [Продолжительность_звонка], [Статус_оплаты], [Тариф_разговора]) VALUES (1, N'Воронеж', CAST(N'2021-03-08' AS Date), N'5', N'оплачено', N'20')
GO
INSERT [dbo].[Статистика_Разговоров] ([Номер_телефона], [фио_абонента], [Кол_во_разговоров]) VALUES (326789, N'Орлов 
Сергей Борисович
', N'5')
INSERT [dbo].[Статистика_Разговоров] ([Номер_телефона], [фио_абонента], [Кол_во_разговоров]) VALUES (333490, N'Титова Александра Иввановна', N'5')
INSERT [dbo].[Статистика_Разговоров] ([Номер_телефона], [фио_абонента], [Кол_во_разговоров]) VALUES (531178, N'Орлов 
Сергей Борисович
', N'5')
INSERT [dbo].[Статистика_Разговоров] ([Номер_телефона], [фио_абонента], [Кол_во_разговоров]) VALUES (951211, N'Титова Александра Иввановна', N'5')
INSERT [dbo].[Статистика_Разговоров] ([Номер_телефона], [фио_абонента], [Кол_во_разговоров]) VALUES (953412, N'Вавилов
Сергей Борисович
', N'1')
GO
INSERT [dbo].[Телефоны_абонентов] ([id_Телефона_абонента], [Номер_договора], [Дата_установки]) VALUES (1, N'3465Ф', CAST(N'2012-10-09' AS Date))
INSERT [dbo].[Телефоны_абонентов] ([id_Телефона_абонента], [Номер_договора], [Дата_установки]) VALUES (2, N'2378Ф ', CAST(N'2004-08-04' AS Date))
GO
USE [master]
GO
ALTER DATABASE [Абоненты] SET  READ_WRITE 
GO
