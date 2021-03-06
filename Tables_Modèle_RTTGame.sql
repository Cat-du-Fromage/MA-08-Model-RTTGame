USE [master]
GO
/****** Object:  Database [MLD_Modèle_RTT]    Script Date: 27.01.2022 14:59:01 ******/
CREATE DATABASE [MLD_Modèle_RTT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MLD_Modèle_RTT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MLD_Modèle_RTT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MLD_Modèle_RTT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MLD_Modèle_RTT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MLD_Modèle_RTT] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MLD_Modèle_RTT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ARITHABORT OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET RECOVERY FULL 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET  MULTI_USER 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MLD_Modèle_RTT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MLD_Modèle_RTT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MLD_Modèle_RTT', N'ON'
GO
ALTER DATABASE [MLD_Modèle_RTT] SET QUERY_STORE = OFF
GO
USE [MLD_Modèle_RTT]
GO
/****** Object:  Table [dbo].[Cell]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cell](
	[IndexInGrid] [int] NULL,
	[MovementCost] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Placement Token]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Placement Token](
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regiment]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regiment](
	[GUID] [int] NULL,
	[CurrentNumUnits] [int] NULL,
	[CurrentMaxUnitsPerRow] [int] NULL,
	[CurrentMinUnitPerRow] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regiment Type]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regiment Type](
	[BaseNumUnit] [int] NULL,
	[BaseMinUnitPerRow] [int] NULL,
	[BaseMaxUnitPerRow] [int] NULL,
	[Name] [text] NULL,
	[OffsetInRow] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spatial Grid]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spatial Grid](
	[NumCells] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[IndexInRegiment] [int] NULL,
	[CurrentHealth] [int] NULL,
	[Position] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitType]    Script Date: 27.01.2022 14:59:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitType](
	[Name] [text] NULL,
	[BaseHealth] [int] NULL,
	[Speed] [int] NULL,
	[MeleeCombat] [int] NULL,
	[RangeCombat] [int] NULL,
	[Range] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MLD_Modèle_RTT] SET  READ_WRITE 
GO
