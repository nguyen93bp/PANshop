USE [master]
GO
/****** Object:  Database [QLdienthoai]    Script Date: 11/26/2022 10:02:17 PM ******/
CREATE DATABASE [QLdienthoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLdienthoai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLdienthoai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLdienthoai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLdienthoai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLdienthoai] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLdienthoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLdienthoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLdienthoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLdienthoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLdienthoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLdienthoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLdienthoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLdienthoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLdienthoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLdienthoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLdienthoai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLdienthoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLdienthoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLdienthoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLdienthoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLdienthoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLdienthoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLdienthoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLdienthoai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLdienthoai] SET  MULTI_USER 
GO
ALTER DATABASE [QLdienthoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLdienthoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLdienthoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLdienthoai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLdienthoai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLdienthoai] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLdienthoai] SET QUERY_STORE = OFF
GO
USE [QLdienthoai]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangsanxuat]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsanxuat](
	[Mahang] [int] IDENTITY(1,1) NOT NULL,
	[Tenhang] [nchar](10) NULL,
 CONSTRAINT [PK_Hangsanxuat] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hedieuhanh]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hedieuhanh](
	[Mahdh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhdh] [nchar](10) NULL,
 CONSTRAINT [PK_Hedieuhanh] PRIMARY KEY CLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 11/26/2022 10:02:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Thesim] [int] NULL,
	[Bonhotrong] [int] NULL,
	[Sanphammoi] [bit] NULL,
	[Ram] [int] NULL,
	[Anhbia] [nvarchar](max) NULL,
	[Mahang] [int] NULL,
	[Mahdh] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 2, 2, CAST(2000000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (13, 10, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 14, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (14, 16, 1, CAST(200000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (15, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (16, 5, 1, CAST(2000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (17, 5, 1, CAST(14700000 AS Decimal(18, 0)), CAST(14700000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (18, 2, 1, CAST(8000000 AS Decimal(18, 0)), CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (19, 5, 1, CAST(14700000 AS Decimal(18, 0)), CAST(14700000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (20, 8, 1, CAST(20990000 AS Decimal(18, 0)), CAST(20990000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (21, 2, 1, CAST(8000000 AS Decimal(18, 0)), CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (21, 5, 2, CAST(14700000 AS Decimal(18, 0)), CAST(29400000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (21, 6, 1, CAST(14800000 AS Decimal(18, 0)), CAST(14800000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (22, 11, 1, CAST(25990000 AS Decimal(18, 0)), CAST(25990000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (23, 5, 1, CAST(14700000 AS Decimal(18, 0)), CAST(14700000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (24, 8, 1, CAST(20990000 AS Decimal(18, 0)), CAST(20990000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (25, 5, 1, CAST(14700000 AS Decimal(18, 0)), CAST(14700000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (26, 2, 1, CAST(8000000 AS Decimal(18, 0)), CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien]) VALUES (26, 8, 1, CAST(20990000 AS Decimal(18, 0)), CAST(20990000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (13, CAST(N'2021-07-28T00:10:53.090' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (14, CAST(N'2021-07-28T00:11:27.207' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (15, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (16, CAST(N'2022-11-17T10:40:18.810' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (17, CAST(N'2022-11-18T09:23:00.517' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (18, CAST(N'2022-11-18T09:45:19.993' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (19, CAST(N'2022-11-18T09:51:00.797' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (20, CAST(N'2022-11-18T10:34:12.033' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (21, CAST(N'2022-11-18T18:30:07.107' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (22, CAST(N'2022-11-19T08:58:16.010' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (23, CAST(N'2022-11-19T10:36:56.193' AS DateTime), NULL, 15)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (24, CAST(N'2022-11-19T14:06:43.937' AS DateTime), NULL, 17)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (25, CAST(N'2022-11-19T16:39:01.420' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (26, CAST(N'2022-11-19T17:21:52.540' AS DateTime), NULL, 18)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Hangsanxuat] ON 

INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (1, N'SamSung   ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (2, N'Apple     ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (3, N'Xiaomi    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (4, N'Vsmart    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (5, N'Bphone    ')
INSERT [dbo].[Hangsanxuat] ([Mahang], [Tenhang]) VALUES (6, N'Khác      ')
SET IDENTITY_INSERT [dbo].[Hangsanxuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Android   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'IOS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'VOS       ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'PAN', N'Admin@gmail.com', N'0329141153', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Test', N'test@gmail.com', N'0329141153', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Khách hàng', N'Khach@gmail.com', N'0812883636', N'12345678', NULL, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (17, N'Trương Viết Nguyên', N'tvn@gmail.com', N'0123456789', N'12345678', NULL, N'Bình Phước')
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (18, N'Khách Hàng', N'nguyen2601@gmail.com', N'0374290144', N'12345678', NULL, N'Bình Phước')
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (2, N'Apple Iphone XS Max', CAST(8000000 AS Decimal(18, 0)), 9, N'Apple Iphone XS Max', 1, 8, 0, 8, N'ipxsmax.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (5, N'Apple Iphone 11 ProMax', CAST(14700000 AS Decimal(18, 0)), 10, N'Apple Iphone 11 ProMax', 1, 8, 0, 1, N'ip11promax.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (6, N'Apple Iphone 12 Pro', CAST(14800000 AS Decimal(18, 0)), 10, N'Apple Iphone 12 Pro', 1, 8, 0, 1, N'12pro.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (7, N'Apple Iphone 13 ', CAST(18999000 AS Decimal(18, 0)), 2, N'Apple Iphone 13', 1, 8, 0, 1, N'ip13.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (8, N'Samsung Galaxy Z Flip4 5G', CAST(20990000 AS Decimal(18, 0)), 1, N'Samsung Galaxy Z Flip4 5G', 2, 8, 0, 2, N'zflip4.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (9, N'Samsung Galaxy A23', CAST(5490000 AS Decimal(18, 0)), 1, N'Samsung Galaxy A23', 1, 8, 0, 1, N'a23galaxy.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (10, N'Samsung Galaxy Z Fold3 5G', CAST(31990000 AS Decimal(18, 0)), 1, N'Samsung Galaxy Z Fold3 5G', 1, 8, 0, 2, N'fold3.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (11, N'Samsung Galaxy S22 Ultra 5G', CAST(25990000 AS Decimal(18, 0)), 2, N'Samsung Galaxy S22 Ultra 5G', 2, 8, 0, 2, N'1.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (13, N'Xiaomi Redmi Note 11', CAST(4490000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 11', 2, 8, 0, 4, N'2.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (14, N'Xiaomi Redmi Note 11S series', CAST(5890000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 11S series', 2, 16, 0, 6, N'3.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (15, N'Xiaomi 12T Pro 5G', CAST(16990000 AS Decimal(18, 0)), 10, N'Xiaomi 12T Pro 5G', 2, 8, 0, 6, N'4.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (16, N'Xiaomi 12 series', CAST(16490000 AS Decimal(18, 0)), 10, N'Xiaomi 12 series', 2, 8, 0, 2, N'5.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (17, N'Tai nghe Bluetooth Samsung', CAST(302000 AS Decimal(18, 0)), 10, N'Tai nghe', NULL, NULL, NULL, NULL, N'taiBluetoothSS.jpg', 6, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (18, N'Tai nghe có dây Samsung', CAST(203000 AS Decimal(18, 0)), 10, N'Tai nghe', NULL, NULL, NULL, NULL, N'taiDaySS.jpg', 6, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (19, N'Apple Airpods Pro ', CAST(1200000 AS Decimal(18, 0)), 10, N'Tai nghe', NULL, NULL, NULL, NULL, N'airpods.jpeg', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (20, N'Tai nghe Iphone có dây', CAST(203000 AS Decimal(18, 0)), 10, N'Tai nghe', NULL, NULL, NULL, NULL, N'taiIPhone.png', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (21, N'Sạc dự phòng Samsung Đen 20k mAh', CAST(550000 AS Decimal(18, 0)), 10, N'Sạc dp', NULL, NULL, NULL, NULL, N'sacSS.jpeg', 6, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (22, N'Sạc dự phòng Samsung Trắng 10k mAh', CAST(350000 AS Decimal(18, 0)), 10, N'Sạc dp', NULL, NULL, NULL, NULL, N'sacSS2.jpeg', 6, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (23, N'Apple Watch Ultra LTE viền Titanium 49mm dây Ocean', CAST(23990000 AS Decimal(18, 0)), 10, N'Đồng hồ', NULL, NULL, NULL, NULL, N'applew2.jpg', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (24, N'Apple Watch Ultra LTE 49mm dây Alpine size M', CAST(23990000 AS Decimal(18, 0)), 10, N'Đồng hồ', NULL, NULL, NULL, NULL, N'applew1.jpg', 6, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (25, N'Vsmart Bee', CAST(1207650 AS Decimal(18, 0)), 12, N'cấu hình Vsmart Bee gồm dung lượng pin 2500mAh, màn hình 5.4", độ phân giải 720 x 1440pixels, mật độ điểm ảnh lên đến 295ppi, camera selfie 5MP + 8MP camera chính. ', 2, 8, 0, 4, N'6.jpg', 4, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (26, N'Vsmart Active 1 Trắng', CAST(4990000 AS Decimal(18, 0)), 11, N'cấu hình Vsmart Active 1 gồm dung lượng pin 3100mAh, màn hình 5.6", độ phân giải 1080 x 2160pixels, mật độ điểm ảnh lên đến 24ppi, camera selfie 8MP + 12MP camera chính, RAM 4GB và bộ nhớ trong 64GB.', 2, 8, 0, 4, N'7.jpg', 4, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (27, N'Vsmart Bee Đen', CAST(1719000 AS Decimal(18, 0)), 12, N'cấu hình Vsmart Bee gồm dung lượng pin 2500mAh, màn hình 5.4", độ phân giải 720 x 1440pixels, mật độ điểm ảnh lên đến 295ppi, camera selfie 5MP + 8MP camera chính, RAM 1GB và bộ nhớ trong 16GB', 2, 8, 0, 5, N'8.jpg', 4, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (28, N'Vsmart Live (4GB/64GB)', CAST(3470000 AS Decimal(18, 0)), 10, N'cấu hình Vsmart Live gồm dung lượng pin 4000mAh, màn hình 6.2", độ phân giải 1080 x 2232pixels, mật độ điểm ảnh lên đến 403ppi, camera selfie 20MP + 48 + 5 + 8MP camera chính, RAM 4 GB và bộ nhớ trong 64GB', 2, 8, 0, 4, N'9.jpg', 4, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (29, N'Vsmart Aris (8GB/128GB)', CAST(7490000 AS Decimal(18, 0)), 8, N'Vsmart Aris được trang bị màn hình giải trí lớn 6.39 inch đi cùng tấm nền AMOLED với độ phân giải Full HD+ cho phép bạn trải nghiệm những bộ phim bom tấn, hành động trên một màn ảnh sắc nét, mượt mà từng chi tiết  camera góc siêu rộng 8 MP bạn sẽ dễ dàng chụp được những cảnh biển rộng lớn, núi non hùng vĩ hay là những bức ảnh chụp nhóm đông người mà không bỏ sót chi tiết nào', 2, 8, 0, 4, N'10.jpg', 4, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (30, N'Vsmart Joy 2 Plus', CAST(4497000 AS Decimal(18, 0)), 10, N'cấu hình Vsmart Joy 2 Plus gồm dung lượng pin 4500mAh, màn hình 6.2", độ phân giải 720 x 1520pixels, mật độ điểm ảnh lên đến 271ppi, camera selfie 8MP + 13 + 5MP camera chính', 2, 8, 0, 4, N'11.jpg', 4, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (31, N'Bphone A85 5G', CAST(9490000 AS Decimal(18, 0)), 12, N'Bphone A85 5G', 2, 8, 0, 4, N'12.jpg', 5, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (32, N'Bphone A60', CAST(6490000 AS Decimal(18, 0)), 10, N'Bphone A60', 2, 8, 0, 4, N'13.jpg', 5, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (33, N'Bphone A50', CAST(5490000 AS Decimal(18, 0)), 11, N'Bphone A50', 2, 8, 0, 4, N'14.jpg', 5, 3)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (34, N'Apple iPhone 11', CAST(11690000 AS Decimal(18, 0)), 9, N'Apple iPhone 11', 1, 16, 0, 4, N'15.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (35, N'Apple iPhone 13 Pro Max', CAST(30990000 AS Decimal(18, 0)), 15, N'Apple iPhone 13 Pro Max', 1, 16, 0, 8, N'16.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (36, N'Apple iPhone 14 Pro Max', CAST(33590000 AS Decimal(18, 0)), 30, N'Apple iPhone 14 Pro Max', 1, 16, 1, 8, N'17.jpg', 2, 2)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (37, N'Xiaomi 11T Pro 5G', CAST(13990000 AS Decimal(18, 0)), 12, N'Xiaomi 11T Pro 5G', 2, 8, 0, 8, N'18.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (38, N'Xiaomi 12T', CAST(11990000 AS Decimal(18, 0)), 10, N'NULXiaomi 12TL', 2, 8, 0, 8, N'19.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (39, N'Xiaomi 11T', CAST(9590000 AS Decimal(18, 0)), 10, N'Xiaomi 11T', 2, 8, 0, 8, N'20.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (40, N'Xiaomi 11 Lite 5G NE', CAST(8090000 AS Decimal(18, 0)), 14, N'Xiaomi 11 Lite 5G NE', 2, 8, 0, 8, N'21.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (41, N'Xiaomi Redmi Note 11 Pro Series', CAST(7190000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 11 Pro Series', 2, 8, 0, 8, N'22.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (42, N'Xiaomi Redmi Note 10 Pro', CAST(7090000 AS Decimal(18, 0)), 16, N'Xiaomi Redmi Note 10 Pro', 2, 8, 0, 8, N'23.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (44, N'Xiaomi Redmi Note 10S', CAST(5490000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi Note 10S', 2, 8, 0, 8, N'24.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (45, N'Xiaomi Redmi Note 10 5G 8GB', CAST(5290000 AS Decimal(18, 0)), 12, N'Xiaomi Redmi Note 10 5G 8GB', 2, 8, 0, 8, N'25.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (46, N'Xiaomi Redmi 10 series', CAST(4690000 AS Decimal(18, 0)), 10, N'Xiaomi Redmi 10 series', 2, 8, 0, 8, N'26.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (47, N'Xiaomi Redmi 10C', CAST(3490000 AS Decimal(18, 0)), 12, N'Xiaomi Redmi 10C', 2, 8, 0, 8, N'27.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (48, N'Xiaomi Redmi 9C', NULL, 9, N'Xiaomi Redmi 9C', 2, 8, 0, 8, N'28.jpg', 3, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (49, N'Samsung Galaxy S22+ 5G', CAST(19990000 AS Decimal(18, 0)), 10, N'Samsung Galaxy S22+ 5G', 2, 8, 0, 8, N'29.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (50, N'Samsung Galaxy S22 5G', CAST(15990000 AS Decimal(18, 0)), 9, N'Samsung Galaxy S22 5G', 2, 8, 0, 16, N'30.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (51, N'Samsung Galaxy S21 FE 5G', CAST(12990000 AS Decimal(18, 0)), 15, N'Samsung Galaxy S21 FE 5G', 2, 8, 0, 8, N'31.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (52, N'Samsung Galaxy A73 5G Awesome Edition', CAST(12290000 AS Decimal(18, 0)), 12, N'Samsung Galaxy A73 5G Awesome Edition', 2, 8, 0, 8, N'32.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (53, N'Samsung Galaxy M53', CAST(11990000 AS Decimal(18, 0)), 16, N'Samsung Galaxy M53', 2, 8, 0, 16, N'33.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (54, N'Samsung Galaxy A73 5G', CAST(11990000 AS Decimal(18, 0)), 18, N'Samsung Galaxy A73 5G', 2, 8, 0, 4, N'34.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (55, N'Samsung Galaxy A53 5G 128GB', CAST(9990000 AS Decimal(18, 0)), 20, N'Samsung Galaxy A53 5G 128GB', 2, 8, 0, 4, N'35.jpg', 1, 1)
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Thesim], [Bonhotrong], [Sanphammoi], [Ram], [Anhbia], [Mahang], [Mahdh]) VALUES (56, N'Samsung Galaxy M33 5G', CAST(7690000 AS Decimal(18, 0)), 11, N'Samsung Galaxy M33 5G', 2, 8, 0, 4, N'36.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsanxuat] FOREIGN KEY([Mahang])
REFERENCES [dbo].[Hangsanxuat] ([Mahang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsanxuat]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hedieuhanh] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[Hedieuhanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hedieuhanh]
GO
USE [master]
GO
ALTER DATABASE [QLdienthoai] SET  READ_WRITE 
GO
