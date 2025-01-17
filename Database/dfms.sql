USE [master]
GO
/****** Object:  Database [DFMS]    Script Date: 11/11/2024 10:19:18 AM ******/
CREATE DATABASE [DFMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DFMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DFMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DFMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DFMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DFMS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DFMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DFMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DFMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DFMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DFMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DFMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [DFMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DFMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DFMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DFMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DFMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DFMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DFMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DFMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DFMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DFMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DFMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DFMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DFMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DFMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DFMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DFMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DFMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DFMS] SET RECOVERY FULL 
GO
ALTER DATABASE [DFMS] SET  MULTI_USER 
GO
ALTER DATABASE [DFMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DFMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DFMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DFMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DFMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DFMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DFMS', N'ON'
GO
ALTER DATABASE [DFMS] SET QUERY_STORE = ON
GO
ALTER DATABASE [DFMS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DFMS]
GO
/****** Object:  Table [dbo].[CalfDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalfDetails](
	[CalfID] [int] NOT NULL,
	[CalfMotherID] [int] NULL,
	[CalfFatherID] [int] NULL,
	[CalfBirthDate] [datetime] NULL,
	[CalfHealthStatus] [varchar](30) NULL,
	[CalfWeigntAtBirth] [int] NULL,
	[CalfVaccinationStuts] [varchar](50) NULL,
	[CalfHouseNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CalfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CowDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CowDetails](
	[CowID] [int] NOT NULL,
	[CowBreed] [varchar](30) NULL,
	[CowAge] [datetime] NULL,
	[CowHealthStatus] [varchar](30) NULL,
	[CowMilkProductionPerday] [int] NULL,
	[CowLastVeternaryCheckup] [datetime] NULL,
	[CowWeight] [int] NULL,
	[CowBirthDate] [datetime] NULL,
	[CowIsPregnant] [bit] NULL,
	[CowGender] [varchar](30) NULL,
	[CowHouseNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CowHouse]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CowHouse](
	[CowHouseID] [int] NOT NULL,
	[CowHouseCapacity] [int] NULL,
	[CowHouseOccupancySince] [int] NULL,
	[CowHouseManagerID] [int] NULL,
	[CowHouseUsedFor] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CowHouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CowSale]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CowSale](
	[CowSaleID] [int] NOT NULL,
	[CowSaleBuyerID] [int] NULL,
	[CowSaleCowID] [int] NULL,
	[CowSaleSellerID] [int] NULL,
	[CowSaleDate] [datetime] NULL,
	[CowSalePrice] [int] NULL,
	[CowSalePyamentMethod] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CowSaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](30) NULL,
	[CustomerNumber] [varchar](30) NULL,
	[CustomerEmail] [varchar](30) NULL,
	[CustomerLocation] [varchar](30) NULL,
	[CustomerType] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [varchar](30) NULL,
	[EmployeeUserName] [varchar](30) NULL,
	[EmployeePassword] [varchar](30) NULL,
	[EmployeePosition] [varchar](30) NULL,
	[EmployeeContactNumber] [varchar](30) NULL,
	[EmployeeEmail] [varchar](30) NULL,
	[EmployeeSalary] [varchar](30) NULL,
	[EmployeeDateOfJoining] [varchar](30) NULL,
	[EmployeeShiftTimes] [varchar](30) NULL,
	[EmployeePermanentAddress] [varchar](50) NULL,
	[EmployeeShift] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryDetails](
	[InventoryID] [int] NOT NULL,
	[InventoryItemName] [varchar](30) NULL,
	[InventoryQuantityInStock] [int] NULL,
	[InventoryCategory] [varchar](30) NULL,
	[InventoryHouseNo] [int] NULL,
	[InventoryPurchaseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineAdministration]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineAdministration](
	[MedicineAdministrationID] [int] NOT NULL,
	[MedicineName] [varchar](30) NULL,
	[MedicineAdministrationCowID] [int] NULL,
	[MedicineAdministrationInventoryID] [int] NULL,
	[MedicineAdministrationCowProblem] [varchar](50) NULL,
	[MedicineAdministrationDosage] [varchar](30) NULL,
	[MedicineAdministrationDate] [datetime] NULL,
	[MedicineAdministrationBy] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicineAdministrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MilkCollection]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MilkCollection](
	[MilkCollectionID] [int] NOT NULL,
	[MilkCollectionCowID] [int] NULL,
	[MilkCollectionCollectorID] [int] NULL,
	[MilkCollectionDate] [datetime] NULL,
	[MilkCollectionQuantity] [int] NULL,
	[MilkCollectionShift] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MilkCollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MilkSale]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MilkSale](
	[MilkSaleID] [int] NOT NULL,
	[MilkSaleCustomerID] [int] NULL,
	[MilkSaleSallerID] [int] NULL,
	[MilkSaleType] [varchar](30) NULL,
	[MilkSaleDate] [varchar](30) NULL,
	[MilkSaleQuantity] [varchar](30) NULL,
	[MilkSalePricePerLiter] [varchar](30) NULL,
	[MilkSaleTotalAmount] [varchar](30) NULL,
	[MilkSalePaymentMethod] [varchar](30) NULL,
	[MilkSaleLocation] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MilkSaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasingDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasingDetails](
	[PurchaseID] [int] NOT NULL,
	[SupplierDetails] [varchar](50) NULL,
	[PurchaseItemName] [varchar](30) NULL,
	[PurchaseItemQuantity] [int] NULL,
	[PurchaseItemPricePerUnit] [int] NULL,
	[PurchaseItemDate] [datetime] NULL,
	[PurchaseItemPaymentStatus] [varchar](30) NULL,
	[PurchaseItemPaymentMethod] [varchar](30) NULL,
	[PurchaseItempReceiveDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/11/2024 10:19:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserID] [varchar](30) NULL,
	[UserName] [varchar](30) NOT NULL,
	[UserEmail] [varchar](30) NOT NULL,
	[UserRole] [varchar](30) NOT NULL,
	[UserPassword] [varchar](30) NULL,
	[UserIsApprobed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserEmail] ASC,
	[UserName] ASC,
	[UserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalfDetails]  WITH CHECK ADD FOREIGN KEY([CalfFatherID])
REFERENCES [dbo].[CowDetails] ([CowID])
GO
ALTER TABLE [dbo].[CalfDetails]  WITH CHECK ADD FOREIGN KEY([CalfHouseNo])
REFERENCES [dbo].[CowHouse] ([CowHouseID])
GO
ALTER TABLE [dbo].[CalfDetails]  WITH CHECK ADD FOREIGN KEY([CalfMotherID])
REFERENCES [dbo].[CowDetails] ([CowID])
GO
ALTER TABLE [dbo].[CowDetails]  WITH CHECK ADD FOREIGN KEY([CowHouseNo])
REFERENCES [dbo].[CowHouse] ([CowHouseID])
GO
ALTER TABLE [dbo].[CowHouse]  WITH CHECK ADD FOREIGN KEY([CowHouseManagerID])
REFERENCES [dbo].[EmployeeDetails] ([EmployeeID])
GO
ALTER TABLE [dbo].[CowSale]  WITH CHECK ADD FOREIGN KEY([CowSaleBuyerID])
REFERENCES [dbo].[CustomerDetails] ([CustomerID])
GO
ALTER TABLE [dbo].[CowSale]  WITH CHECK ADD FOREIGN KEY([CowSaleCowID])
REFERENCES [dbo].[CowDetails] ([CowID])
GO
ALTER TABLE [dbo].[CowSale]  WITH CHECK ADD FOREIGN KEY([CowSaleSellerID])
REFERENCES [dbo].[EmployeeDetails] ([EmployeeID])
GO
ALTER TABLE [dbo].[InventoryDetails]  WITH CHECK ADD FOREIGN KEY([InventoryHouseNo])
REFERENCES [dbo].[CowHouse] ([CowHouseID])
GO
ALTER TABLE [dbo].[InventoryDetails]  WITH CHECK ADD FOREIGN KEY([InventoryPurchaseID])
REFERENCES [dbo].[PurchasingDetails] ([PurchaseID])
GO
ALTER TABLE [dbo].[MedicineAdministration]  WITH CHECK ADD FOREIGN KEY([MedicineAdministrationCowID])
REFERENCES [dbo].[CowDetails] ([CowID])
GO
ALTER TABLE [dbo].[MedicineAdministration]  WITH CHECK ADD FOREIGN KEY([MedicineAdministrationInventoryID])
REFERENCES [dbo].[InventoryDetails] ([InventoryID])
GO
ALTER TABLE [dbo].[MilkCollection]  WITH CHECK ADD FOREIGN KEY([MilkCollectionCowID])
REFERENCES [dbo].[CowDetails] ([CowID])
GO
ALTER TABLE [dbo].[MilkCollection]  WITH CHECK ADD FOREIGN KEY([MilkCollectionCollectorID])
REFERENCES [dbo].[EmployeeDetails] ([EmployeeID])
GO
ALTER TABLE [dbo].[MilkSale]  WITH CHECK ADD FOREIGN KEY([MilkSaleCustomerID])
REFERENCES [dbo].[CustomerDetails] ([CustomerID])
GO
ALTER TABLE [dbo].[MilkSale]  WITH CHECK ADD FOREIGN KEY([MilkSaleSallerID])
REFERENCES [dbo].[EmployeeDetails] ([EmployeeID])
GO
USE [master]
GO
ALTER DATABASE [DFMS] SET  READ_WRITE 
GO
