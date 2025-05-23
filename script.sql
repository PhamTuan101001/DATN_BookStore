USE [master]
GO
/****** Object:  Database [QuanLySach]    Script Date: 5/16/2025 8:20:45 AM ******/
CREATE DATABASE [QuanLySach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLySach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLySach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLySach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLySach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLySach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLySach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLySach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLySach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLySach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLySach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLySach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLySach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLySach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLySach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLySach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLySach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLySach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLySach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLySach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLySach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLySach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLySach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLySach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLySach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLySach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLySach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLySach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLySach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLySach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLySach] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLySach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLySach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLySach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLySach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLySach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLySach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLySach] SET QUERY_STORE = OFF
GO
USE [QuanLySach]
GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinh](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](500) NULL,
	[CongTy] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SoDienThoai] [nvarchar](16) NULL,
	[Banner1] [nvarchar](500) NULL,
	[Banner2] [nvarchar](500) NULL,
	[Banner3] [nvarchar](500) NULL,
	[Banner4] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
 CONSTRAINT [PK_CauHinh] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMuc]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMuc](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[Mota] [nvarchar](500) NULL,
 CONSTRAINT [PK_ChuyenMuc] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[NgayDatHang] [date] NULL,
	[PhiGiao] [numeric](18, 2) NULL,
	[TenNguoiNhan] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [nvarchar](16) NULL,
	[Email] [nvarchar](500) NULL,
	[TrangThai] [bit] NULL,
	[PTTT] [nvarchar](500) NULL,
 CONSTRAINT [PK_DonHang_1] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [nvarchar](16) NULL,
	[Email] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[GioiTinh] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [nvarchar](16) NULL,
	[Email] [nvarchar](500) NULL,
	[TenDangNhap] [nvarchar](500) NULL,
	[MatKhau] [nvarchar](500) NULL,
	[Anh] [nvarchar](500) NULL,
	[Quyen] [nvarchar](500) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[NhaCungCap] [nvarchar](255) NOT NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapChiTiet]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapChiTiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhieuNhapId] [int] NOT NULL,
	[SanPhamId] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[KhachHang] [nvarchar](255) NOT NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuatChiTiet]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatChiTiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhieuXuatId] [int] NOT NULL,
	[SanPhamId] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaXuat] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[Mota] [nvarchar](500) NULL,
	[MaLoai] [int] NOT NULL,
	[Anh] [nvarchar](500) NULL,
	[Chitiet] [ntext] NULL,
	[TieuBieu] [int] NULL,
	[Gia] [numeric](18, 2) NULL,
	[TacGia] [nvarchar](50) NULL,
	[NhaXuatBan] [nvarchar](500) NULL,
	[NamXB] [date] NULL,
	[GiamGia] [nvarchar](50) NULL,
	[SoLuongTon] [bigint] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 5/16/2025 8:20:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NULL,
	[MoTaNgan] [nvarchar](500) NULL,
	[MoTa] [ntext] NULL,
	[Anh] [nvarchar](500) NULL,
	[MaCM] [int] NOT NULL,
	[NgayDang] [date] NULL,
	[TacGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CauHinh] ON 

INSERT [dbo].[CauHinh] ([Ma], [Logo], [CongTy], [DiaChi], [SoDienThoai], [Banner1], [Banner2], [Banner3], [Banner4], [Email]) VALUES (1, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/logo.png', N'ABCDE', N'Nam Dinh', N'0987654321', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/ahmed-almakhzanji-kshkB1i5_5o-unsplash.jpg', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/banner1.jpg', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/banner3.jpg', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/banner4.jpg', N'Admin123@gmail.com')
SET IDENTITY_INSERT [dbo].[CauHinh] OFF
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (19, 9, 1, CAST(120000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (20, 6, 1, CAST(200000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (21, 9, 1, CAST(120000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (22, 9, 1, CAST(120000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (23, 5, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (24, 7, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (25, 2, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (26, 2, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (27, 7, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (28, 2, 1, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (28, 21, 1, CAST(70000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (29, 9, 1, CAST(120000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (29, 21, 12, CAST(70000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (30, 9, 5, CAST(120000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (31, 2, 5, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (32, 2, 4, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (32, 21, 2, CAST(70000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (33, 15, 10, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (34, 2, 6, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (35, 2, 2, CAST(150000.00 AS Numeric(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [DonGia]) VALUES (36, 20, 2, CAST(60000.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[ChuyenMuc] ON 

INSERT [dbo].[ChuyenMuc] ([Ma], [Ten], [Mota]) VALUES (4, N'Thể thao', N'Thể thao')
INSERT [dbo].[ChuyenMuc] ([Ma], [Ten], [Mota]) VALUES (5, N'Du lịch', N'Du lịch')
INSERT [dbo].[ChuyenMuc] ([Ma], [Ten], [Mota]) VALUES (6, N'Thời sự', N'Thời sự')
INSERT [dbo].[ChuyenMuc] ([Ma], [Ten], [Mota]) VALUES (7, N'Giao thông', N'Giao thông')
SET IDENTITY_INSERT [dbo].[ChuyenMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (19, 11, CAST(N'2025-03-28' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'HN', N'0912312345', N'nvt@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (20, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (21, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (22, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (23, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (24, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (25, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (26, 12, CAST(N'2025-03-29' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (27, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (28, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (29, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van A', N'12 Dương Khuê, Hà Nội', N'0948121111', N'chuyendizz@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (30, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van B', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (31, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van B', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (32, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van B', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (33, 12, CAST(N'2025-03-30' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van B', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (34, 12, CAST(N'2025-04-11' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van B', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 1, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (35, 12, CAST(N'2025-04-11' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van C', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 0, NULL)
INSERT [dbo].[DonHang] ([Ma], [MaKhachHang], [NgayDatHang], [PhiGiao], [TenNguoiNhan], [DiaChi], [DienThoai], [Email], [TrangThai], [PTTT]) VALUES (36, 12, CAST(N'2025-04-12' AS Date), CAST(0.00 AS Numeric(18, 2)), N'Nguyen Van C', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', 1, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [DienThoai], [Email], [Password]) VALUES (11, N'Nguyen Van A', N'HN', N'0912312345', N'nvt@gmail.com', N'123')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [DienThoai], [Email], [Password]) VALUES (12, N'Nguyen Van C', N' Hà Nội', N'0378080064', N'hoangtuan@gmail.com', N'123')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [DienThoai], [Email], [Password]) VALUES (13, N'Nguyen Van B', N'12 Dương Khuê, Hà Nội', N'0378080064', N'hoangtuan@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (2, N'Tiểu thuyết', N'Tiểu thuyết')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (3, N'Trinh thám', N'Trinh thám')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (4, N'Lãng mạn', N'Lãng mạn')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (5, N'Kinh di', N'Kinh di')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (6, N'Hài hước', N'Hài hước')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (7, N'Drama', N'Drama')
INSERT [dbo].[LoaiSP] ([Ma], [Ten], [MoTa]) VALUES (8, N'Hành động', N'Hành động')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Ma], [Ten], [GioiTinh], [DiaChi], [DienThoai], [Email], [TenDangNhap], [MatKhau], [Anh], [Quyen]) VALUES (1, N'TuanPV', N'nam', N'Nam Định', N'0378080064', N'admin@gmail.com', N'admin', N'202cb962ac59075b964b07152d234b70', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/files/1.png', N'admin')
INSERT [dbo].[NguoiDung] ([Ma], [Ten], [GioiTinh], [DiaChi], [DienThoai], [Email], [TenDangNhap], [MatKhau], [Anh], [Quyen]) VALUES (2, NULL, NULL, NULL, N'09123123123', N'nva', N'nva', N'202cb962ac59075b964b07152d234b70', NULL, N'user')
INSERT [dbo].[NguoiDung] ([Ma], [Ten], [GioiTinh], [DiaChi], [DienThoai], [Email], [TenDangNhap], [MatKhau], [Anh], [Quyen]) VALUES (3, N'Nguyễn Văn Hiếu', N'nu', N'HN', N'09123467777', N'nvh@gmail.com', N'nvh', N'123', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/files/1.png', N'admin')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([Id], [NgayNhap], [NhaCungCap], [TongTien]) VALUES (2, CAST(N'2025-02-18T12:53:36.170' AS DateTime), N'Khách vip bán lại', CAST(105000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuNhap] ([Id], [NgayNhap], [NhaCungCap], [TongTien]) VALUES (3, CAST(N'2025-02-18T13:36:48.477' AS DateTime), N'Đức', CAST(48000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhapChiTiet] ON 

INSERT [dbo].[PhieuNhapChiTiet] ([Id], [PhieuNhapId], [SanPhamId], [SoLuong], [GiaNhap]) VALUES (3, 2, 2, 7, CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuNhapChiTiet] ([Id], [PhieuNhapId], [SanPhamId], [SoLuong], [GiaNhap]) VALUES (4, 3, 16, 4, CAST(12000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PhieuNhapChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat], [KhachHang], [TongTien]) VALUES (1, CAST(N'2025-02-18T12:52:45.017' AS DateTime), N'Khách vip', CAST(300000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat], [KhachHang], [TongTien]) VALUES (2, CAST(N'2025-02-18T13:37:35.420' AS DateTime), N'Lâm', CAST(30000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuXuatChiTiet] ON 

INSERT [dbo].[PhieuXuatChiTiet] ([Id], [PhieuXuatId], [SanPhamId], [SoLuong], [GiaXuat]) VALUES (1, 1, 2, 2, CAST(150000.00 AS Decimal(18, 2)))
INSERT [dbo].[PhieuXuatChiTiet] ([Id], [PhieuXuatId], [SanPhamId], [SoLuong], [GiaXuat]) VALUES (2, 2, 16, 2, CAST(15000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PhieuXuatChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (2, N'Mario Puzo', N'Đất Máu Sicily (Mario Puzo)', 8, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/8936071673381.jpg', N'<p>Đất M&aacute;u Sicily</p>

<p>Sicily ngập tr&agrave;n &aacute;nh mặt trời Địa Trung Hải, thoang thoảng hương cam chanh l&agrave; xứ sở của n&uacute;i non đẹp như tranh rải r&aacute;c những phế t&iacute;ch l&acirc;u đời. Ở đ&oacute; tầng lớp d&acirc;n ngh&egrave;o suốt nhiều thế kỉ phải chịu sự đ&egrave; n&eacute;n của nhiều thế lực tham lam v&agrave; h&agrave; khắc, từ ngoại x&acirc;m đến ph&aacute;t-x&iacute;t, từ c&aacute;c phe ph&aacute;i ch&iacute;nh trị đến giới mafia v&agrave; qu&yacute; tộc địa phương. Ở đ&oacute; những huyền thoại anh h&ugrave;ng xa xưa được truyền tụng như chỉ l&agrave; mơ ước. Cho đến một ng&agrave;y, xứ sở tươi đẹp v&agrave; bạo t&agrave;n ấy đ&atilde; sản sinh ra một nh&acirc;n vật được xưng tụng l&agrave; anh h&ugrave;ng của d&acirc;n ngh&egrave;o, l&agrave; Robin Hood của nước &Yacute;&hellip;</p>

<p>T&aacute;c phẩm&nbsp;Đất m&aacute;u Sicily&nbsp;của&nbsp;Mario Puzo&nbsp;dựng l&ecirc;n một thế giới chằng chịt những &acirc;m mưu v&agrave; th&ugrave; hận, bạo lực sinh bạo lực, phản trắc sinh phản trắc. Ở trung t&acirc;m của thế giới ấy l&agrave; thủ lĩnh băng cướp Turi Guiliano được khắc họa đầy l&atilde;ng mạn như một chiến binh, một người t&igrave;nh, v&agrave; tr&ecirc;n hết l&agrave; một người Sicily từ trong m&aacute;u thịt.&nbsp;Phải chăng một thi&ecirc;n sử thi mới đang được viết</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Mario Puzo', N'NXB Văn Học', CAST(N'2022-04-11' AS Date), N'30', 15)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (3, N'Tô Bình Yên', N'Tiểu thuyết', 2, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/bia1_tobinhyen_2_1_1.jpg', N'<p>T&ocirc; B&igrave;nh Y&ecirc;n Vẽ Hạnh Ph&uacute;c</p>

<p>Sau th&agrave;nh c&ocirc;ng của cuốn s&aacute;ch đầu tay &ldquo;Phải l&ograve;ng với c&ocirc; đơn&rdquo; ch&agrave;ng họa sĩ nổi tiếng v&agrave; t&agrave;i năng Kulzsc đ&atilde; trở lại với một cuốn s&aacute;ch v&ocirc; c&ugrave;ng đặc biệt mang t&ecirc;n: &quot;T&ocirc; b&igrave;nh y&ecirc;n - vẽ hạnh ph&uacute;c&rdquo; &ndash;&nbsp; sắc n&eacute;t phong c&aacute;ch c&aacute; nh&acirc;n với một ch&uacute;t &ldquo;thơ thẩn, rất hiền&rdquo;.</p>

<p>Kh&ocirc;ng giống với những cuốn s&aacute;ch chỉ để đọc, &ldquo;T&ocirc; b&igrave;nh y&ecirc;n &ndash; vẽ hạnh ph&uacute;c&rdquo; &nbsp;l&agrave; một cuốn s&aacute;ch m&agrave; độc giả vừa t&igrave;m được &ldquo;Hạnh ph&uacute;c to to từ những điều nho nhỏ&rdquo; vừa được thực h&agrave;nh ngay lập tức. Một sự kết hợp mới lạ đầy th&uacute; vị giữa thể loại s&aacute;ch tản văn v&agrave; s&aacute;ch t&ocirc; m&agrave;u.</p>

<p>Lật mở cuốn s&aacute;ch n&agrave;y, bạn sẽ thấy v&ocirc; v&agrave;n những điều nhỏ b&eacute; dễ thương lan t&ograve;a nguồn năng lượng t&iacute;ch cực. V&agrave; k&egrave;m theo một list những điều tuyệt vời khiến bạn kh&ocirc;ng thể bỏ lỡ:</p>

<p>- Tận t&igrave;nh chỉ dẫn: 8 hướng dẫn t&ocirc; m&agrave;u đầy hứng th&uacute; từ Kulzsc<br />
- Tranh vẽ đơn giản, gần gũi. N&eacute;t vẽ đ&aacute;ng y&ecirc;u, dễ thương<br />
- Chủ đề xoay quanh những điều b&igrave;nh y&ecirc;n trong cuộc sống: Đọc s&aacute;ch, đi dạo, dọn dẹp nh&agrave; cửa, trồng c&acirc;y, ăn cơm mẹ nấu, nghe một bản nhạc hay, v&agrave; nghĩ về nụ cười của một ai đ&oacute;&hellip;<br />
- Mỗi bức tranh lại l&agrave; những lời thủ thỉ, t&acirc;m t&igrave;nh của t&aacute;c giả. L&agrave; những điều nhắn gửi nho nhỏ mong bạn bớt đi những xao động:</p>

<p>&ldquo;Em chọn hạnh ph&uacute;c<br />
Em chọn b&igrave;nh y&ecirc;n<br />
Em chọn b&ecirc;n cạnh<br />
Những điều an y&ecirc;n&rdquo;</p>

<p>Hay đơn giản l&agrave; những gi&atilde;i b&agrave;y ngắn gọn, thay nỗi l&ograve;ng của một ai đ&oacute;: &quot;Tớ biết cậu một m&igrave;nh vẫn ổn, nhưng c&oacute; những chuyện, c&oacute; ai đ&oacute; c&ugrave;ng l&agrave;m, vẫn hơn.&quot;</p>

<p><br />
Th&ocirc;ng qua những h&igrave;nh vẽ đang đợi được lấp đầy bằng mu&ocirc;n v&agrave;n sắc m&agrave;u ấy, Kulzsc sẽ gi&uacute;p bạn - những người lớn c&ocirc; đơn, những ai đang cần bổ sung vitamin hạnh ph&uacute;c &ldquo;truy t&igrave;m&rdquo; những niềm vui bị bỏ qu&ecirc;n hay tuyệt chi&ecirc;u để đối ph&oacute; với stress.</p>

<p>Bởi t&ocirc; m&agrave;u l&agrave; một h&igrave;nh thức chữa l&agrave;nh đơn giản m&agrave; hiệu quả, n&ecirc;n mỗi khi thấy bực dọc, ch&aacute;n nản, hay khiến m&igrave;nh bận rộn hơn h&atilde;y thử t&igrave;m tới &ldquo;T&ocirc; b&igrave;nh y&ecirc;n - &nbsp;vẽ hạnh ph&uacute;c&rdquo; c&ugrave;ng hộp m&agrave;u đ&atilde; cất l&acirc;u trong tủ v&agrave;... Sao kh&ocirc;ng thể l&agrave; một đ&aacute;m m&acirc;y m&agrave;u t&iacute;m, một m&aacute;i t&oacute;c v&agrave;ng tươi hay một nụ hoa m&agrave;u xanh biển nhỉ? Kh&ocirc;ng cần phải đắn đo đ&acirc;u, bạn cứ thoải m&aacute;i x&oacute;a đi căng thẳng, x&oacute;a đi những gam m&agrave;u u &aacute;m, tự tay m&igrave;nh điểm t&ocirc; những m&agrave;u sắc tươi s&aacute;ng lấp l&aacute;nh, đầy ắp hy vọng theo &yacute; th&iacute;ch, tận hưởng những ph&uacute;t thư gi&atilde;n thật b&igrave;nh y&ecirc;n kh&ocirc;ng muộn phiền th&ocirc;i n&agrave;o.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935325000775</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/sky-books?fhs_campaign=ATTRIBUTE_PRODUCT">Skybooks</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Kulzsc</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Phụ Nữ Việt Nam</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>346</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>24 x 19 x 1 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>95</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/vnpay?fhs_campaign=INTERNAL_LINKING">V&iacute; VNPAY</a></li>
				<li><a href="https://www.fahasa.com/zalopay?fhs_campaign=INTERNAL_LINKING">ZaloPay</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/sach-to-mau-danh-cho-ngu-i-l-n.html?order=num_orders_month">Top 100 sản phẩm S&aacute;ch T&ocirc; M&agrave;u D&agrave;nh Cho Người Lớn b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>T&ocirc; B&igrave;nh Y&ecirc;n Vẽ Hạnh Ph&uacute;c</p>

<p>Sau th&agrave;nh c&ocirc;ng của cuốn s&aacute;ch đầu tay &ldquo;Phải l&ograve;ng với c&ocirc; đơn&rdquo; ch&agrave;ng họa sĩ nổi tiếng v&agrave; t&agrave;i năng Kulzsc đ&atilde; trở lại với một cuốn s&aacute;ch v&ocirc; c&ugrave;ng đặc biệt mang t&ecirc;n: &quot;T&ocirc; b&igrave;nh y&ecirc;n - vẽ hạnh ph&uacute;c&rdquo; &ndash;&nbsp; sắc n&eacute;t phong c&aacute;ch c&aacute; nh&acirc;n với một ch&uacute;t &ldquo;thơ thẩn, rất hiền&rdquo;.</p>

<p>Kh&ocirc;ng giống với những cuốn s&aacute;ch chỉ để đọc, &ldquo;T&ocirc; b&igrave;nh y&ecirc;n &ndash; vẽ hạnh ph&uacute;c&rdquo; &nbsp;l&agrave; một cuốn s&aacute;ch m&agrave; độc giả vừa t&igrave;m được &ldquo;Hạnh ph&uacute;c to to từ những điều nho nhỏ&rdquo; vừa được thực h&agrave;nh ngay lập tức. Một sự kết hợp mới lạ đầy th&uacute; vị giữa thể loại s&aacute;ch tản văn v&agrave; s&aacute;ch t&ocirc; m&agrave;u.</p>

<p>Lật mở cuốn s&aacute;ch n&agrave;y, bạn sẽ thấy v&ocirc; v&agrave;n những điều nhỏ b&eacute; dễ thương lan t&ograve;a nguồn năng lượng t&iacute;ch cực. V&agrave; k&egrave;m theo một list những điều tuyệt vời khiến bạn kh&ocirc;ng thể bỏ lỡ:</p>

<p>- Tận t&igrave;nh chỉ dẫn: 8 hướng dẫn t&ocirc; m&agrave;u đầy hứng th&uacute; từ Kulzsc<br />
- Tranh vẽ đơn giản, gần gũi. N&eacute;t vẽ đ&aacute;ng y&ecirc;u, dễ thương<br />
- Chủ đề xoay quanh những điều b&igrave;nh y&ecirc;n trong cuộc sống: Đọc s&aacute;ch, đi dạo, dọn dẹp nh&agrave; cửa, trồng c&acirc;y, ăn cơm mẹ nấu, nghe một bản nhạc hay, v&agrave; nghĩ về nụ cười của một ai đ&oacute;&hellip;<br />
- Mỗi bức tranh lại l&agrave; những lời thủ thỉ, t&acirc;m t&igrave;nh của t&aacute;c giả. L&agrave; những điều nhắn gửi nho nhỏ mong bạn bớt đi những xao động:</p>

<p>&ldquo;Em chọn hạnh ph&uacute;c<br />
Em chọn b&igrave;nh y&ecirc;n<br />
Em chọn b&ecirc;n cạnh<br />
Những điều an y&ecirc;n&rdquo;</p>

<p>Hay đơn giản l&agrave; những gi&atilde;i b&agrave;y ngắn gọn, thay nỗi l&ograve;ng của một ai đ&oacute;: &quot;Tớ biết cậu một m&igrave;nh vẫn ổn, nhưng c&oacute; những chuyện, c&oacute; ai đ&oacute; c&ugrave;ng l&agrave;m, vẫn hơn.&quot;</p>

<p><br />
Th&ocirc;ng qua những h&igrave;nh vẽ đang đợi được lấp đầy bằng mu&ocirc;n v&agrave;n sắc m&agrave;u ấy, Kulzsc sẽ gi&uacute;p bạn - những người lớn c&ocirc; đơn, những ai đang cần bổ sung vitamin hạnh ph&uacute;c &ldquo;truy t&igrave;m&rdquo; những niềm vui bị bỏ qu&ecirc;n hay tuyệt chi&ecirc;u để đối ph&oacute; với stress.</p>

<p>Bởi t&ocirc; m&agrave;u l&agrave; một h&igrave;nh thức chữa l&agrave;nh đơn giản m&agrave; hiệu quả, n&ecirc;n mỗi khi thấy bực dọc, ch&aacute;n nản, hay khiến m&igrave;nh bận rộn hơn h&atilde;y thử t&igrave;m tới &ldquo;T&ocirc; b&igrave;nh y&ecirc;n - &nbsp;vẽ hạnh ph&uacute;c&rdquo; c&ugrave;ng hộp m&agrave;u đ&atilde; cất l&acirc;u trong tủ v&agrave;... Sao kh&ocirc;ng thể l&agrave; một đ&aacute;m m&acirc;y m&agrave;u t&iacute;m, một m&aacute;i t&oacute;c v&agrave;ng tươi hay một nụ hoa m&agrave;u xanh biển nhỉ? Kh&ocirc;ng cần phải đắn đo đ&acirc;u, bạn cứ thoải m&aacute;i x&oacute;a đi căng thẳng, x&oacute;a đi những gam m&agrave;u u &aacute;m, tự tay m&igrave;nh điểm t&ocirc; những m&agrave;u sắc tươi s&aacute;ng lấp l&aacute;nh, đầy ắp hy vọng theo &yacute; th&iacute;ch, tận hưởng những ph&uacute;t thư gi&atilde;n thật b&igrave;nh y&ecirc;n kh&ocirc;ng muộn phiền th&ocirc;i n&agrave;o.</p>
', 2, CAST(150000.00 AS Numeric(18, 2)), N'Kulzsc', N'	NXB Phụ Nữ Việt Nam', CAST(N'2021-12-27' AS Date), N'15%', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (4, N'Vừa Nhắm Mắt Vừa Mở Cửa Số ', N'Tiểu thuyết', 2, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/8934974176213.jpg', N'<p><strong>Vừa Nhắm Mắt Vừa Mở Cửa Số</strong></p>

<p>T&aacute;c phẩm gồm những c&acirc;u chuyện ngắn xoay quanh cuộc sống thường ng&agrave;y của một đứa trẻ mười tuổi, từ những thứ nhỏ nhặt như c&aacute;i răng khểnh, ng&oacute;n tay cho đến chuyện mất m&aacute;t của đời người. C&oacute; vui, c&oacute; buồn, c&oacute; được, c&oacute; mất như cuộc sống vẫn diễn ra, nhưng cảm nhận v&agrave; c&aacute;ch nh&igrave;n của cậu b&eacute; l&agrave;m cho mỗi người lớn phải suy ngẫm.</p>

<p>Trong trẻo, sống động, đầy chất thơ, lại chứa đựng nhiều &yacute; nghĩa s&acirc;u sắc, t&aacute;c phẩm l&agrave; một thế giới dung dị m&agrave; trong trẻo ngọt ng&agrave;o d&agrave;nh cho cho tuổi thơ, đồng thời cũng l&agrave; th&ocirc;ng điệp d&agrave;nh cho người lớn: h&atilde;y nhắm mắt v&agrave; mở l&ograve;ng - mở c&aacute;nh cửa của ch&iacute;nh m&igrave;nh - h&atilde;y nh&igrave;n cuộc sống bằng tất cả c&aacute;c gi&aacute;c quan để cảm nhận, thấu hiểu, y&ecirc;u thương, để quan t&acirc;m v&agrave; để nhớ.</p>

<p>Vừa Nhắm Mắt Vừa Mở Cửa Sổ đ&atilde; gi&agrave;nh được Giải A cuộc Vận động s&aacute;ng t&aacute;c văn học cho thiếu nhi năm 2002 do Nh&agrave; xuất bản Trẻ v&agrave; Hội Nh&agrave; văn TP. HCM tổ chức v&agrave; được ph&aacute;t h&agrave;nh lần đầu năm 2004. Đến nay, t&aacute;c phẩm đ&atilde; t&aacute;i bản 29 lần với số lượng ph&aacute;t h&agrave;nh hơn 50 ng&agrave;n bản.</p>

<p>Năm 2007, truyện được dịch qua tiếng Thuỵ Điển với t&ecirc;n Blunda och &ouml;ppna ditt f&ouml;nster v&agrave; đến năm 2008 đ&atilde; gi&agrave;nh được giải Peter Pan của Thuỵ Điển cho mảng văn học thiếu nhi. Ngo&agrave;i ra, s&aacute;ch cũng được chuyển ngữ sang tiếng Anh dưới t&ecirc;n Open the windows, eyes closed, được b&aacute;n t&aacute;c quyền sang H&agrave;n Quốc...</p>

<p>Tập s&aacute;ch hay, dễ thương, v&agrave; c&ograve;n nhiều mỹ từ kh&aacute;c nữa xứng đ&aacute;ng được d&agrave;nh cho n&oacute;. H&atilde;y t&igrave;m đọc nội dung thay v&igrave; đọc trước phần giới thiệu s&aacute;ch n&agrave;y viết g&igrave;&hellip;. Như thế, bạn sẽ c&agrave;ng th&iacute;ch th&uacute; hơn với &ldquo;Vừa nhắm mắt, vừa mở cửa sổ&rdquo;.</p>

<p>&quot;Truyện về một thế giới của cả trẻ con lẫn người lớn, được kể lại trong giọng kể của một cậu b&eacute; 10 tuổi. V&agrave; con mắt của cậu b&eacute; ở đ&acirc;y cũng như thể một tấm gương, c&oacute; độ trong đặc biệt, l&agrave;m người lớn đọc v&agrave;o m&agrave; cảm động v&agrave; buồn, v&igrave; gương của m&igrave;nh đ&atilde; đục bớt.&quot; - Nh&agrave; văn Phan Thị V&agrave;ng Anh</p>

<p>&quot;Nghĩ ngợi loay hoay, nh&acirc;n đọc cuốn Vừa nhắm mắt vừa mở cửa sổ. &ETH;ọc xong ngẩn ngơ l&acirc;u l&acirc;u. Văn phong đẹp, trong vắt. Người đọc soi v&agrave;o đấy, thấy cả những ao ước tuổi thơ m&igrave;nh. &ETH;&uacute;ng giọng đ&uacute;ng kiểu trẻ con, kh&ocirc;ng phải giả vờ ngọng nghịu như phần lớn người viết truyện thiếu nhi dễ mắc. Nhưng cũng kh&ocirc;ng tự nhi&ecirc;n chủ nghĩa &uacute; ớ trẻ con m&atilde;i. Sau khi đ&atilde; tạo dựng được một thế giới trẻ con đ&aacute;ng tin cậy, t&aacute;c giả kh&eacute;o lồng v&agrave;o đ&oacute; chất l&atilde;ng mạn tuyệt vời khiến những ai từng l&agrave; trẻ con đều phải b&acirc;ng khu&acirc;ng.&quot; - Nh&agrave; văn Hồ Anh Th&aacute;i</p>

<p>&quot;Vừa nhắm mắt vừa mở cửa sổ đ&atilde; thật sự l&agrave; một c&uacute; đ&uacute;p ngoạn mục về văn chương: Mỗi truyện ngắn nho nhỏ trong đ&oacute; đ&atilde; l&agrave; một truyện tặng cho bạn đọc trẻ thơ, lại vừa l&agrave; một truyện d&agrave;nh cho người lớn. Bởi ch&uacute;ng nhiều tầng nghĩa, gi&agrave;u chất thơ, v&agrave; c&oacute; lẽ, bởi cả t&aacute;c phẩm ch&iacute;nh l&agrave; kết quả c&aacute;i nh&igrave;n độc đ&aacute;o của một chủ thể thi sĩ viết văn xu&ocirc;i, với động th&aacute;i đắm đuối nhị nguy&ecirc;n rất mới lạ: vừa nhắm mắt, vừa mở cửa sổ nh&igrave;n ra thế giới. V&agrave; chỉ để ph&aacute;t hiện ra rằng &#39;&#39;thế giới&#39;&#39; ch&iacute;nh l&agrave; tất cả những g&igrave; th&acirc;n thuộc, th&acirc;n mến nhất ngay ở trước mắt: khu vườn nhỏ cạnh cửa sổ nh&agrave; m&igrave;nh, cuộc sống h&agrave;ng ng&agrave;y &ecirc;m đ&ecirc;m của cha mẹ, bạn b&egrave;, c&ocirc; gi&aacute;o, h&agrave;ng x&oacute;m l&aacute;ng giềng kế b&ecirc;n, v&agrave; thật th&uacute; vị, ở ngay trong tr&aacute;i tim của ch&iacute;nh m&igrave;nh, khiến m&igrave;nh phải viế ra giấy, cho ch&iacute;nh m&igrave;nh trước hết.&quot; - TS Nguyễn Thị Minh Th&aacute;i</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8934974176213</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/nxb-tre?fhs_campaign=ATTRIBUTE_PRODUCT">NXB Trẻ</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Nguyễn Ngọc Thuần</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Trẻ</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2022</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>200</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20 x 13 x 1 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>192</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/nxb-tre?fhs_campaign=INTERNAL_LINKING">NXB Trẻ</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Vừa Nhắm Mắt Vừa Mở Cửa Số</strong></p>

<p>T&aacute;c phẩm gồm những c&acirc;u chuyện ngắn xoay quanh cuộc sống thường ng&agrave;y của một đứa trẻ mười tuổi, từ những thứ nhỏ nhặt như c&aacute;i răng khểnh, ng&oacute;n tay cho đến chuyện mất m&aacute;t của đời người. C&oacute; vui, c&oacute; buồn, c&oacute; được, c&oacute; mất như cuộc sống vẫn diễn ra, nhưng cảm nhận v&agrave; c&aacute;ch nh&igrave;n của cậu b&eacute; l&agrave;m cho mỗi người lớn phải suy ngẫm.</p>

<p>Trong trẻo, sống động, đầy chất thơ, lại chứa đựng nhiều &yacute; nghĩa s&acirc;u sắc, t&aacute;c phẩm l&agrave; một thế giới dung dị m&agrave; trong trẻo ngọt ng&agrave;o d&agrave;nh cho cho tuổi thơ, đồng thời cũng l&agrave; th&ocirc;ng điệp d&agrave;nh cho người lớn: h&atilde;y nhắm mắt v&agrave; mở l&ograve;ng - mở c&aacute;nh cửa của ch&iacute;nh m&igrave;nh - h&atilde;y nh&igrave;n cuộc sống bằng tất cả c&aacute;c gi&aacute;c quan để cảm nhận, thấu hiểu, y&ecirc;u thương, để quan t&acirc;m v&agrave; để nhớ.</p>

<p>Vừa Nhắm Mắt Vừa Mở Cửa Sổ đ&atilde; gi&agrave;nh được Giải A cuộc Vận động s&aacute;ng t&aacute;c văn học cho thiếu nhi năm 2002 do Nh&agrave; xuất bản Trẻ v&agrave; Hội Nh&agrave; văn TP. HCM tổ chức v&agrave; được ph&aacute;t h&agrave;nh lần đầu năm 2004. Đến nay, t&aacute;c phẩm đ&atilde; t&aacute;i bản 29 lần với số lượng ph&aacute;t h&agrave;nh hơn 50 ng&agrave;n bản.</p>

<p>Năm 2007, truyện được dịch qua tiếng Thuỵ Điển với t&ecirc;n Blunda och &ouml;ppna ditt f&ouml;nster v&agrave; đến năm 2008 đ&atilde; gi&agrave;nh được giải Peter Pan của Thuỵ Điển cho mảng văn học thiếu nhi. Ngo&agrave;i ra, s&aacute;ch cũng được chuyển ngữ sang tiếng Anh dưới t&ecirc;n Open the windows, eyes closed, được b&aacute;n t&aacute;c quyền sang H&agrave;n Quốc...</p>

<p>Tập s&aacute;ch hay, dễ thương, v&agrave; c&ograve;n nhiều mỹ từ kh&aacute;c nữa xứng đ&aacute;ng được d&agrave;nh cho n&oacute;. H&atilde;y t&igrave;m đọc nội dung thay v&igrave; đọc trước phần giới thiệu s&aacute;ch n&agrave;y viết g&igrave;&hellip;. Như thế, bạn sẽ c&agrave;ng th&iacute;ch th&uacute; hơn với &ldquo;Vừa nhắm mắt, vừa mở cửa sổ&rdquo;.</p>

<p>&quot;Truyện về một thế giới của cả trẻ con lẫn người lớn, được kể lại trong giọng kể của một cậu b&eacute; 10 tuổi. V&agrave; con mắt của cậu b&eacute; ở đ&acirc;y cũng như thể một tấm gương, c&oacute; độ trong đặc biệt, l&agrave;m người lớn đọc v&agrave;o m&agrave; cảm động v&agrave; buồn, v&igrave; gương của m&igrave;nh đ&atilde; đục bớt.&quot; - Nh&agrave; văn Phan Thị V&agrave;ng Anh</p>

<p>&quot;Nghĩ ngợi loay hoay, nh&acirc;n đọc cuốn Vừa nhắm mắt vừa mở cửa sổ. &ETH;ọc xong ngẩn ngơ l&acirc;u l&acirc;u. Văn phong đẹp, trong vắt. Người đọc soi v&agrave;o đấy, thấy cả những ao ước tuổi thơ m&igrave;nh. &ETH;&uacute;ng giọng đ&uacute;ng kiểu trẻ con, kh&ocirc;ng phải giả vờ ngọng nghịu như phần lớn người viết truyện thiếu nhi dễ mắc. Nhưng cũng kh&ocirc;ng tự nhi&ecirc;n chủ nghĩa &uacute; ớ trẻ con m&atilde;i. Sau khi đ&atilde; tạo dựng được một thế giới trẻ con đ&aacute;ng tin cậy, t&aacute;c giả kh&eacute;o lồng v&agrave;o đ&oacute; chất l&atilde;ng mạn tuyệt vời khiến những ai từng l&agrave; trẻ con đều phải b&acirc;ng khu&acirc;ng.&quot; - Nh&agrave; văn Hồ Anh Th&aacute;i</p>

<p>&quot;Vừa nhắm mắt vừa mở cửa sổ đ&atilde; thật sự l&agrave; một c&uacute; đ&uacute;p ngoạn mục về văn chương: Mỗi truyện ngắn nho nhỏ trong đ&oacute; đ&atilde; l&agrave; một truyện tặng cho bạn đọc trẻ thơ, lại vừa l&agrave; một truyện d&agrave;nh cho người lớn. Bởi ch&uacute;ng nhiều tầng nghĩa, gi&agrave;u chất thơ, v&agrave; c&oacute; lẽ, bởi cả t&aacute;c phẩm ch&iacute;nh l&agrave; kết quả c&aacute;i nh&igrave;n độc đ&aacute;o của một chủ thể thi sĩ viết văn xu&ocirc;i, với động th&aacute;i đắm đuối nhị nguy&ecirc;n rất mới lạ: vừa nhắm mắt, vừa mở cửa sổ nh&igrave;n ra thế giới. V&agrave; chỉ để ph&aacute;t hiện ra rằng &#39;&#39;thế giới&#39;&#39; ch&iacute;nh l&agrave; tất cả những g&igrave; th&acirc;n thuộc, th&acirc;n mến nhất ngay ở trước mắt: khu vườn nhỏ cạnh cửa sổ nh&agrave; m&igrave;nh, cuộc sống h&agrave;ng ng&agrave;y &ecirc;m đ&ecirc;m của cha mẹ, bạn b&egrave;, c&ocirc; gi&aacute;o, h&agrave;ng x&oacute;m l&aacute;ng giềng kế b&ecirc;n, v&agrave; thật th&uacute; vị, ở ngay trong tr&aacute;i tim của ch&iacute;nh m&igrave;nh, khiến m&igrave;nh phải viế ra giấy, cho ch&iacute;nh m&igrave;nh trước hết.&quot; - TS Nguyễn Thị Minh Th&aacute;i</p>
', 2, CAST(65000.00 AS Numeric(18, 2)), N'Nguyễn Ngọc Thuần', N'NXB Trẻ', CAST(N'2020-01-06' AS Date), N'20%', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (5, N'Chỉ Lo Chuyện Mình, Không Lo Chuyện Người', N'Chỉ Lo Chuyện Mình, Không Lo Chuyện Người', 3, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/bia-1111trc_chilochuyenminh_1.jpg', N'<p>Chỉ Lo Chuyện M&igrave;nh, Kh&ocirc;ng Lo Chuyện Người</p>

<p>Cuốn s&aacute;ch Best-seller thứ 2 của Dea-ho Choi, sau &ldquo;T&ocirc;i muốn sống cuộc sống b&igrave;nh thường&rdquo; được Peachbook ch&iacute;nh thức xuất bản tại Việt Nam.</p>

<p>- Cuốn s&aacute;ch l&agrave; sự kết hợp th&uacute; vị giữa Văn + Thơ + H&igrave;nh ảnh minh họa với bố cục sắp xếp l&ocirc;i cuốn, kh&ocirc;ng dễ g&acirc;y nh&agrave;m ch&aacute;n</p>

<p>- 189 b&agrave;i viết ngắn gọn nhưng lắng đọng, chạm tới v&ocirc; v&agrave;n những t&acirc;m tư của người trẻ như: sợ phải trưởng th&agrave;nh, kh&ocirc;ng biết c&aacute;ch tr&acirc;n trọng bản th&acirc;n, v&igrave; chạy theo th&agrave;nh c&ocirc;ng m&agrave; &eacute;p bản th&acirc;n tới kiệt sức, kh&ocirc;ng biết c&aacute;ch g&igrave;n giữ c&aacute;c mối quan hệ, mải lo chuyện thi&ecirc;n hạ m&agrave; bỏ mặc ch&iacute;nh m&igrave;nh...</p>

<p>- Ng&ocirc;n từ giản dị, nhẹ nh&agrave;ng nhưng &yacute; tứ s&acirc;u sắc, vừa l&agrave; lời khuy&ecirc;n vừa như sự đồng cảm c&ugrave;ng bạn đọc.</p>

<p>- Ẩn chứa nhiều th&ocirc;ng điệp t&iacute;ch cực v&agrave; truyền cảm hứng cho giới trẻ đồng thời như liệu ph&aacute;p chữa l&agrave;nh d&agrave;nh cho những độc giả đang cảm thấy ch&aacute;n gh&eacute;t bản th&acirc;n/cuộc sống hoặc chịu nhiều tổn thương.</p>

<p>- Cuốn s&aacute;ch cũng đặc biệt ph&ugrave; hợp với những bạn trẻ mang nhiều trăn trở, lo &acirc;u về bản th&acirc;n v&agrave; cuộc sống. Cuốn s&aacute;ch sẽ mang lại rất nhiều lời khuy&ecirc;n hữu &iacute;ch để bạn can đảm lựa chọn cuộc sống thuộc về m&igrave;nh.</p>

<p><strong>TR&Iacute;CH LỜI T&Aacute;C GIẢ:</strong></p>

<p>&lsquo;Lo lắng&rsquo; lu&ocirc;n l&agrave; từ mang &yacute; nghĩa chẳng mấy tốt đẹp. T&ocirc;i viết cuốn s&aacute;ch n&agrave;y với mong muốn từ nay về sau sẽ kh&ocirc;ng c&oacute; chuyện m&igrave;nh cứ l&ugrave;i về ph&iacute;a sau m&agrave; kh&ocirc;ng thể tiến l&ecirc;n ph&iacute;a trước chỉ v&igrave; c&aacute;i nh&igrave;n hay những lời n&oacute;i của người ngo&agrave;i. Tr&ecirc;n đời n&agrave;y mọi chuyện đều c&oacute; thể lo lắng nhưng ngược lại, c&oacute; những chuyện chẳng cần lo g&igrave; cũng được. Cuốn s&aacute;ch n&agrave;y chứa đựng phương ph&aacute;p giảm bớt nỗi &acirc;u lo v&agrave; những điều ta nhận ra sau khi gạt đi lo lắng. Chuyện của t&ocirc;i, để t&ocirc;i lo.</p>

<p>&nbsp;<strong>TR&Iacute;CH DẪN HAY:</strong></p>

<p>&nbsp;&quot;Điều quan trọng nhất l&agrave; &lsquo;Ta đ&atilde; đối xử với ch&iacute;nh m&igrave;nh như thế n&agrave;o&rsquo;</p>

<p>Cuộc sống hạnh ph&uacute;c bắt đầu bằng việc ta n&acirc;ng niu tr&acirc;n qu&yacute; bản th&acirc;n m&igrave;nh.</p>

<p>V&agrave; t&igrave;nh y&ecirc;u của những người kh&aacute;c sau đ&oacute; sẽ đến th&ocirc;i&quot;.</p>

<p>&quot;Gh&eacute;t người kh&aacute;c l&agrave;m g&igrave;</p>

<p>Để d&agrave;nh năng lượng đ&oacute; y&ecirc;u m&igrave;nh th&ecirc;m nữa th&igrave; hơn&quot;</p>

<p>&nbsp;&quot;Kh&ocirc;ng biết lại n&oacute;i l&agrave; biết</p>

<p>Xin lỗi d&ugrave; m&igrave;nh chẳng c&oacute; lỗi g&igrave;</p>

<p>Việc kh&ocirc;ng thể l&agrave;m lại n&oacute;i m&igrave;nh sẽ thử</p>

<p>Muốn kh&oacute;c nhưng lại gắng gượng cười</p>

<p>C&oacute; vẻ như m&igrave;nh đ&atilde; trở th&agrave;nh người lớn&quot;</p>

<p>&quot;H&atilde;y thử hỏi ch&iacute;nh m&igrave;nh liệu ta c&oacute; đang ổn</p>

<p>Nếu kh&ocirc;ng ổn, h&atilde;y tự kiếm t&igrave;m hạnh ph&uacute;c nhiều hơn b&igrave;nh thường. Một cơ thể khỏe mạnh, v&agrave; một tr&aacute;i tim b&igrave;nh an mới c&oacute; thể gi&uacute;p ta l&agrave;m được nhiều điều.&quot;</p>

<p>&quot;Chăm s&oacute;c bắt nguồn từ quan t&acirc;m</p>

<p>Thấu hiểu sinh ra từ cố gắng.</p>

<p>Khi em n&oacute;i em mệt mỏi đừng ph&acirc;n t&iacute;ch nguy&ecirc;n nh&acirc;n hay kết quả l&agrave;m g&igrave; chỉ cần cứ đứng về ph&iacute;a em th&ocirc;i&quot;.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>9786043236200</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/az-viet-nam?fhs_campaign=ATTRIBUTE_PRODUCT">AZ Việt Nam</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Dae Ho Choi, Ko Eun Choi</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Heina Phương</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Văn Học</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>220</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>19.5 x 13.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>195</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/az-viet-nam?fhs_campaign=INTERNAL_LINKING">AZ Việt Nam</a></li>
				<li><a href="https://www.fahasa.com/az-viet-nam-truyen-ngan?fhs_campaign=INTERNAL_LINKING">AZ Việt Nam - Truyện Ngắn - Tản Văn</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/truyen-ngan-tan-van.html?order=num_orders_month">Top 100 sản phẩm Truyện ngắn - Tản Văn b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>Chỉ Lo Chuyện M&igrave;nh, Kh&ocirc;ng Lo Chuyện Người</p>

<p>Cuốn s&aacute;ch Best-seller thứ 2 của Dea-ho Choi, sau &ldquo;T&ocirc;i muốn sống cuộc sống b&igrave;nh thường&rdquo; được Peachbook ch&iacute;nh thức xuất bản tại Việt Nam.</p>

<p>- Cuốn s&aacute;ch l&agrave; sự kết hợp th&uacute; vị giữa Văn + Thơ + H&igrave;nh ảnh minh họa với bố cục sắp xếp l&ocirc;i cuốn, kh&ocirc;ng dễ g&acirc;y nh&agrave;m ch&aacute;n</p>

<p>- 189 b&agrave;i viết ngắn gọn nhưng lắng đọng, chạm tới v&ocirc; v&agrave;n những t&acirc;m tư của người trẻ như: sợ phải trưởng th&agrave;nh, kh&ocirc;ng biết c&aacute;ch tr&acirc;n trọng bản th&acirc;n, v&igrave; chạy theo th&agrave;nh c&ocirc;ng m&agrave; &eacute;p bản th&acirc;n tới kiệt sức, kh&ocirc;ng biết c&aacute;ch g&igrave;n giữ c&aacute;c mối quan hệ, mải lo chuyện thi&ecirc;n hạ m&agrave; bỏ mặc ch&iacute;nh m&igrave;nh...</p>

<p>- Ng&ocirc;n từ giản dị, nhẹ nh&agrave;ng nhưng &yacute; tứ s&acirc;u sắc, vừa l&agrave; lời khuy&ecirc;n vừa như sự đồng cảm c&ugrave;ng bạn đọc.</p>

<p>- Ẩn chứa nhiều th&ocirc;ng điệp t&iacute;ch cực v&agrave; truyền cảm hứng cho giới trẻ đồng thời như liệu ph&aacute;p chữa l&agrave;nh d&agrave;nh cho những độc giả đang cảm thấy ch&aacute;n gh&eacute;t bản th&acirc;n/cuộc sống hoặc chịu nhiều tổn thương.</p>

<p>- Cuốn s&aacute;ch cũng đặc biệt ph&ugrave; hợp với những bạn trẻ mang nhiều trăn trở, lo &acirc;u về bản th&acirc;n v&agrave; cuộc sống. Cuốn s&aacute;ch sẽ mang lại rất nhiều lời khuy&ecirc;n hữu &iacute;ch để bạn can đảm lựa chọn cuộc sống thuộc về m&igrave;nh.</p>

<p><strong>TR&Iacute;CH LỜI T&Aacute;C GIẢ:</strong></p>

<p>&lsquo;Lo lắng&rsquo; lu&ocirc;n l&agrave; từ mang &yacute; nghĩa chẳng mấy tốt đẹp. T&ocirc;i viết cuốn s&aacute;ch n&agrave;y với mong muốn từ nay về sau sẽ kh&ocirc;ng c&oacute; chuyện m&igrave;nh cứ l&ugrave;i về ph&iacute;a sau m&agrave; kh&ocirc;ng thể tiến l&ecirc;n ph&iacute;a trước chỉ v&igrave; c&aacute;i nh&igrave;n hay những lời n&oacute;i của người ngo&agrave;i. Tr&ecirc;n đời n&agrave;y mọi chuyện đều c&oacute; thể lo lắng nhưng ngược lại, c&oacute; những chuyện chẳng cần lo g&igrave; cũng được. Cuốn s&aacute;ch n&agrave;y chứa đựng phương ph&aacute;p giảm bớt nỗi &acirc;u lo v&agrave; những điều ta nhận ra sau khi gạt đi lo lắng. Chuyện của t&ocirc;i, để t&ocirc;i lo.</p>

<p>&nbsp;<strong>TR&Iacute;CH DẪN HAY:</strong></p>

<p>&nbsp;&quot;Điều quan trọng nhất l&agrave; &lsquo;Ta đ&atilde; đối xử với ch&iacute;nh m&igrave;nh như thế n&agrave;o&rsquo;</p>

<p>Cuộc sống hạnh ph&uacute;c bắt đầu bằng việc ta n&acirc;ng niu tr&acirc;n qu&yacute; bản th&acirc;n m&igrave;nh.</p>

<p>V&agrave; t&igrave;nh y&ecirc;u của những người kh&aacute;c sau đ&oacute; sẽ đến th&ocirc;i&quot;.</p>

<p>&quot;Gh&eacute;t người kh&aacute;c l&agrave;m g&igrave;</p>

<p>Để d&agrave;nh năng lượng đ&oacute; y&ecirc;u m&igrave;nh th&ecirc;m nữa th&igrave; hơn&quot;</p>

<p>&nbsp;&quot;Kh&ocirc;ng biết lại n&oacute;i l&agrave; biết</p>

<p>Xin lỗi d&ugrave; m&igrave;nh chẳng c&oacute; lỗi g&igrave;</p>

<p>Việc kh&ocirc;ng thể l&agrave;m lại n&oacute;i m&igrave;nh sẽ thử</p>

<p>Muốn kh&oacute;c nhưng lại gắng gượng cười</p>

<p>C&oacute; vẻ như m&igrave;nh đ&atilde; trở th&agrave;nh người lớn&quot;</p>

<p>&quot;H&atilde;y thử hỏi ch&iacute;nh m&igrave;nh liệu ta c&oacute; đang ổn</p>

<p>Nếu kh&ocirc;ng ổn, h&atilde;y tự kiếm t&igrave;m hạnh ph&uacute;c nhiều hơn b&igrave;nh thường. Một cơ thể khỏe mạnh, v&agrave; một tr&aacute;i tim b&igrave;nh an mới c&oacute; thể gi&uacute;p ta l&agrave;m được nhiều điều.&quot;</p>

<p>&quot;Chăm s&oacute;c bắt nguồn từ quan t&acirc;m</p>

<p>Thấu hiểu sinh ra từ cố gắng.</p>

<p>Khi em n&oacute;i em mệt mỏi đừng ph&acirc;n t&iacute;ch nguy&ecirc;n nh&acirc;n hay kết quả l&agrave;m g&igrave; chỉ cần cứ đứng về ph&iacute;a em th&ocirc;i&quot;.</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Dae Ho Choi, Ko Eun Choi', N'NXB Văn Học', CAST(N'2022-03-29' AS Date), N'20', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (6, N'Tâm Lý Học Tính Cách', N'Tâm Lý Học Tính Cách', 6, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/d_1__2_.jpg', NULL, 2, CAST(200000.00 AS Numeric(18, 2)), N'Trâu Hoành Minh', N'NXB Phụ Nữ Việt Nam', CAST(N'2022-04-13' AS Date), N'30%', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (7, N'Sức Mạnh Của Ngôn Từ ', N'Tiểu thuyết', 2, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/biatrong_sucmanhcuangontu_infinal.jpg', N'<p><strong>Sức Mạnh Của Ng&ocirc;n Từ - Tặng K&egrave;m 1 Photocard Mintbooks Limited</strong></p>

<p>SỨC MẠNH CỦA NG&Ocirc;N TỪ</p>

<p>B&iacute; quyết thay đổi khả năng ng&ocirc;n ngữ của ch&iacute;nh bạn!</p>

<p>Cuốn s&aacute;ch y&ecirc;u th&iacute;ch của<strong>&nbsp;V</strong>&nbsp;- th&agrave;nh vi&ecirc;n nh&oacute;m nhạc nổi tiếng to&agrave;n cầu&nbsp;<strong>BTS</strong>.</p>

<p>Lọt top những cuốn s&aacute;ch&nbsp;<strong>được đọc nhiều nhất&nbsp;</strong>H&agrave;n Quốc năm 2019.</p>

<p>Li&ecirc;n tục sold out tr&ecirc;n to&agrave;n hệ thống mỗi lần t&aacute;i bản.</p>

<p>Được nhiều quốc gia mua bản quyền v&agrave; chuyển ngữ sang nhiều thứ tiếng như Trung Quốc, Đ&agrave;i Loan, Th&aacute;i Lan,&hellip;</p>

<p>Ấn phẩm giới thiệu đến độc giả t&aacute;m giai đoạn kh&aacute;c nhau để cải thiện kỹ năng n&oacute;i của bạn từ cơ bản đến n&acirc;ng cao.</p>

<p>Kỹ năng giao tiếp l&agrave; một trong những kỹ năng sống v&ocirc; c&ugrave;ng quan trọng, tuy nhi&ecirc;n đ&ocirc;i khi ch&uacute;ng ta lại kh&ocirc;ng mấy để &yacute; tới ch&uacute;ng. Để đạt được điều bạn mong muốn, ng&ocirc;n từ ch&iacute;nh l&agrave; chiếc ch&igrave;a kh&oacute;a đầu ti&ecirc;n.&nbsp;<em>Sức mạnh của ng&ocirc;n từ</em>c&oacute; thể đưa bạn từ sự vui sướng tột độ đến t&acirc;m trạng tụt dốc, buồn đau,ch&aacute;n nản. Cuộc sống của bạn sẽ trở n&ecirc;n tốt đẹp v&agrave; hạnh ph&uacute;c hơn nếu thấu hiểu được ẩn &yacute; v&agrave; c&aacute;ch sử dụng kh&eacute;o l&eacute;o v&agrave; linh hoạt &nbsp;ng&ocirc;n từ trong giao tiếp.</p>

<p>Cuốn s&aacute;ch n&agrave;y c&ograve;n bao gồm c&aacute;c tr&iacute;ch dẫn hữu &iacute;ch từ lĩnh vực Nh&acirc;n văn học, đặc biệt l&agrave; những c&acirc;u n&oacute;i kinh điển của c&aacute;c bậc th&aacute;nh hiền ở phương Đ&ocirc;ng v&agrave; phương T&acirc;y. Nh&acirc;n văn học kh&aacute;m ph&aacute; ng&ocirc;n từ s&acirc;u sắc hơn v&agrave; tiếp cận ch&uacute;ng một c&aacute;ch tinh tế hơn bất kỳ m&ocirc;n học n&agrave;o kh&aacute;c. Tuy nhi&ecirc;n, mục ti&ecirc;u cuối c&ugrave;ng kh&ocirc;ng nằm ở ng&ocirc;n từ. Thay v&agrave;o đ&oacute;, lời n&oacute;i ch&iacute;nh l&agrave; một phương tiện để thực hiện mơ ước thay đổi bản th&acirc;n v&agrave; thế giới.</p>

<p>William Carlos Williams đ&atilde; từng n&oacute;i:&nbsp;<em>&ldquo;Điều bạn n&oacute;i kh&ocirc;ng quan trọng m&agrave; quan trọng l&agrave; c&aacute;ch bạn n&oacute;i&rdquo;. Giao tiếp l&agrave; kỹ năng m&agrave; bạn c&oacute; thể học hỏi v&agrave; r&egrave;n luyện được. N&oacute; cũng giống như khi bạn tập m&uacute;a, tập đi xe. Chỉ cần bạn sẵn s&agrave;ng bỏ thời gian v&agrave; c&ocirc;ng sức v&igrave; n&oacute;, bạn c&oacute; thể th&agrave;nh c&ocirc;ng.</em></p>

<p><em>&ldquo;Lẽ n&agrave;o cuộc đời mỗi người kh&ocirc;ng thể trở th&agrave;nh một t&aacute;c phẩm nghệ thuật?</em></p>

<p><em>Một ng&ocirc;i nh&agrave; cũng c&oacute; thể trở th&agrave;nh đối tượng của nghệ thuật, vậy tại sao cuộc đời của ch&uacute;ng ta lại kh&ocirc;ng thể?&rdquo;</em></p>

<p>Nếu bạn đ&atilde; từng kh&ocirc;ng tự tin trong giao tiếp, ăn n&oacute;i ngập ngừng trong những cuộc họp hay ho&agrave;i nghi khả năng của m&igrave;nh, h&atilde;y thử bắt đầu trau dồi ng&ocirc;n ngữ bằng c&aacute;ch tự giao tiếp với ch&iacute;nh m&igrave;nh. Từ đ&oacute; t&igrave;m ra gi&aacute; trị tiềm t&agrave;ng trong con người bạn v&agrave; ho&agrave;n thiện ch&iacute;nh m&igrave;nh v&agrave; những người xung quanh.</p>

<p>Thế giới l&agrave; sự giao tiếp v&agrave; tương t&aacute;c lẫn nhau, h&atilde;y bước ra khỏi vỏ bọc suy nghĩ &ldquo;bạn kh&ocirc;ng l&agrave;m được&rdquo; đến thay đổi nhận thức &ldquo;tại sao t&ocirc;i kh&ocirc;ng thể l&agrave;m được?&rdquo;</p>

<p>Hy vọng cuốn s&aacute;ch n&agrave;y sẽ gi&uacute;p bạn thay đổi m&ocirc; h&igrave;nh lời n&oacute;i v&agrave; từ đ&oacute; thay đổi cuộc sống cũng như thế giới bạn đang sống.&nbsp;&nbsp;</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8936186545511</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/az-viet-nam?fhs_campaign=ATTRIBUTE_PRODUCT">AZ Việt Nam</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Shin Dohyeon, Yun Naru</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>V-BTS Vietnamese Fanpage</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Thanh Ni&ecirc;n</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2020</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>250</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>19.5 x 13.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>212</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/vnpay?fhs_campaign=INTERNAL_LINKING">V&iacute; VNPAY</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/tam-ly-ky-nang-song/ky-nang-song.html?order=num_orders_month">Top 100 sản phẩm Kỹ năng sống b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Sức Mạnh Của Ng&ocirc;n Từ - Tặng K&egrave;m 1 Photocard Mintbooks Limited</strong></p>

<p>SỨC MẠNH CỦA NG&Ocirc;N TỪ</p>

<p>B&iacute; quyết thay đổi khả năng ng&ocirc;n ngữ của ch&iacute;nh bạn!</p>

<p>Cuốn s&aacute;ch y&ecirc;u th&iacute;ch của<strong>&nbsp;V</strong>&nbsp;- th&agrave;nh vi&ecirc;n nh&oacute;m nhạc nổi tiếng to&agrave;n cầu&nbsp;<strong>BTS</strong>.</p>

<p>Lọt top những cuốn s&aacute;ch&nbsp;<strong>được đọc nhiều nhất&nbsp;</strong>H&agrave;n Quốc năm 2019.</p>

<p>Li&ecirc;n tục sold out tr&ecirc;n to&agrave;n hệ thống mỗi lần t&aacute;i bản.</p>

<p>Được nhiều quốc gia mua bản quyền v&agrave; chuyển ngữ sang nhiều thứ tiếng như Trung Quốc, Đ&agrave;i Loan, Th&aacute;i Lan,&hellip;</p>

<p>Ấn phẩm giới thiệu đến độc giả t&aacute;m giai đoạn kh&aacute;c nhau để cải thiện kỹ năng n&oacute;i của bạn từ cơ bản đến n&acirc;ng cao.</p>

<p>Kỹ năng giao tiếp l&agrave; một trong những kỹ năng sống v&ocirc; c&ugrave;ng quan trọng, tuy nhi&ecirc;n đ&ocirc;i khi ch&uacute;ng ta lại kh&ocirc;ng mấy để &yacute; tới ch&uacute;ng. Để đạt được điều bạn mong muốn, ng&ocirc;n từ ch&iacute;nh l&agrave; chiếc ch&igrave;a kh&oacute;a đầu ti&ecirc;n.&nbsp;<em>Sức mạnh của ng&ocirc;n từ</em>c&oacute; thể đưa bạn từ sự vui sướng tột độ đến t&acirc;m trạng tụt dốc, buồn đau,ch&aacute;n nản. Cuộc sống của bạn sẽ trở n&ecirc;n tốt đẹp v&agrave; hạnh ph&uacute;c hơn nếu thấu hiểu được ẩn &yacute; v&agrave; c&aacute;ch sử dụng kh&eacute;o l&eacute;o v&agrave; linh hoạt &nbsp;ng&ocirc;n từ trong giao tiếp.</p>

<p>Cuốn s&aacute;ch n&agrave;y c&ograve;n bao gồm c&aacute;c tr&iacute;ch dẫn hữu &iacute;ch từ lĩnh vực Nh&acirc;n văn học, đặc biệt l&agrave; những c&acirc;u n&oacute;i kinh điển của c&aacute;c bậc th&aacute;nh hiền ở phương Đ&ocirc;ng v&agrave; phương T&acirc;y. Nh&acirc;n văn học kh&aacute;m ph&aacute; ng&ocirc;n từ s&acirc;u sắc hơn v&agrave; tiếp cận ch&uacute;ng một c&aacute;ch tinh tế hơn bất kỳ m&ocirc;n học n&agrave;o kh&aacute;c. Tuy nhi&ecirc;n, mục ti&ecirc;u cuối c&ugrave;ng kh&ocirc;ng nằm ở ng&ocirc;n từ. Thay v&agrave;o đ&oacute;, lời n&oacute;i ch&iacute;nh l&agrave; một phương tiện để thực hiện mơ ước thay đổi bản th&acirc;n v&agrave; thế giới.</p>

<p>William Carlos Williams đ&atilde; từng n&oacute;i:&nbsp;<em>&ldquo;Điều bạn n&oacute;i kh&ocirc;ng quan trọng m&agrave; quan trọng l&agrave; c&aacute;ch bạn n&oacute;i&rdquo;. Giao tiếp l&agrave; kỹ năng m&agrave; bạn c&oacute; thể học hỏi v&agrave; r&egrave;n luyện được. N&oacute; cũng giống như khi bạn tập m&uacute;a, tập đi xe. Chỉ cần bạn sẵn s&agrave;ng bỏ thời gian v&agrave; c&ocirc;ng sức v&igrave; n&oacute;, bạn c&oacute; thể th&agrave;nh c&ocirc;ng.</em></p>

<p><em>&ldquo;Lẽ n&agrave;o cuộc đời mỗi người kh&ocirc;ng thể trở th&agrave;nh một t&aacute;c phẩm nghệ thuật?</em></p>

<p><em>Một ng&ocirc;i nh&agrave; cũng c&oacute; thể trở th&agrave;nh đối tượng của nghệ thuật, vậy tại sao cuộc đời của ch&uacute;ng ta lại kh&ocirc;ng thể?&rdquo;</em></p>

<p>Nếu bạn đ&atilde; từng kh&ocirc;ng tự tin trong giao tiếp, ăn n&oacute;i ngập ngừng trong những cuộc họp hay ho&agrave;i nghi khả năng của m&igrave;nh, h&atilde;y thử bắt đầu trau dồi ng&ocirc;n ngữ bằng c&aacute;ch tự giao tiếp với ch&iacute;nh m&igrave;nh. Từ đ&oacute; t&igrave;m ra gi&aacute; trị tiềm t&agrave;ng trong con người bạn v&agrave; ho&agrave;n thiện ch&iacute;nh m&igrave;nh v&agrave; những người xung quanh.</p>

<p>Thế giới l&agrave; sự giao tiếp v&agrave; tương t&aacute;c lẫn nhau, h&atilde;y bước ra khỏi vỏ bọc suy nghĩ &ldquo;bạn kh&ocirc;ng l&agrave;m được&rdquo; đến thay đổi nhận thức &ldquo;tại sao t&ocirc;i kh&ocirc;ng thể l&agrave;m được?&rdquo;</p>

<p>Hy vọng cuốn s&aacute;ch n&agrave;y sẽ gi&uacute;p bạn thay đổi m&ocirc; h&igrave;nh lời n&oacute;i v&agrave; từ đ&oacute; thay đổi cuộc sống cũng như thế giới bạn đang sống.&nbsp;&nbsp;</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Shin Dohyeon, Yun Naru', N'NXB Thanh Niên', CAST(N'2022-03-29' AS Date), N'20', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (8, N'Nhà Giả Kim', N'Nhà Giả Kim', 5, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_195509_1_36793(1).jpg', N'<p><em>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người</em>.&nbsp;</p>

<p>Tiểu thuyết&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>của Paulo Coelho như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia,&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>

<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo;</p>

<p>- Tr&iacute;ch&nbsp;<em>Nh&agrave; giả kim</em></p>

<p><strong>Nhận định</strong></p>

<p>&ldquo;Sau Garcia M&aacute;rquez, đ&acirc;y l&agrave; nh&agrave; văn Mỹ Latinh được đọc nhiều nhất thế giới.&rdquo;&nbsp;<em>- The Economist</em>, London, Anh</p>

<p>&nbsp;</p>

<p>&ldquo;Santiago c&oacute; khả năng cảm nhận bằng tr&aacute;i tim như&nbsp;<em>Ho&agrave;ng tử b&eacute;</em>&nbsp;của Saint-Exup&eacute;ry.&rdquo;&nbsp;<em>- Frankfurter Allgemeine Zeitung, Đức</em></p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935235226272</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/nha-nam?fhs_campaign=ATTRIBUTE_PRODUCT">Nh&atilde; Nam</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Paulo Coelho</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>L&ecirc; Chu Cầu</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Hội Nh&agrave; Văn</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2020</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>220</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 13 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>227</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/sach-dich-nhieu-nhat?fhs_campaign=INTERNAL_LINKING">Top s&aacute;ch được phi&ecirc;n dịch nhiều nhất</a></li>
				<li><a href="https://www.fahasa.com/vnpay?fhs_campaign=INTERNAL_LINKING">V&iacute; VNPAY</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><em>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người</em>.&nbsp;</p>

<p>Tiểu thuyết&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>của Paulo Coelho như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia,&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>

<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo;</p>

<p>- Tr&iacute;ch&nbsp;<em>Nh&agrave; giả kim</em></p>

<p><strong>Nhận định</strong></p>

<p>&ldquo;Sau Garcia M&aacute;rquez, đ&acirc;y l&agrave; nh&agrave; văn Mỹ Latinh được đọc nhiều nhất thế giới.&rdquo;&nbsp;<em>- The Economist</em>, London, Anh</p>

<p>&nbsp;</p>

<p>&ldquo;Santiago c&oacute; khả năng cảm nhận bằng tr&aacute;i tim như&nbsp;<em>Ho&agrave;ng tử b&eacute;</em>&nbsp;của Saint-Exup&eacute;ry.&rdquo;&nbsp;<em>- Frankfurter Allgemeine Zeitung, Đức</em></p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Paulo Coelho', N'NXB Hội Nhà Văn', CAST(N'2022-03-28' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (9, N'Lẽ Thường', N'Lẽ Thường', 5, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_195509_1_11667.jpg', N'<p>T&aacute;c phẩm n&agrave;y được chọn đưa v&agrave;o nhiều danh mục s&aacute;ch n&ecirc;n đọc, ti&ecirc;u biểu như:<br />
- 100 Best Nonfiction Books of All Time của tờ The Guardian<br />
- 100 Books That Shaped World History của&nbsp;<a href="http://librarything.com/?fbclid=IwAR1cyhq15NzdJkrqc8JissFpgR0Cof09wasXgLL7Dp_7rYXVWZBhu81rqnM" target="_blank">Librarything.com</a><br />
- Books That Shaped America của Library of Congress</p>

<p>______________</p>

<p>Paine đ&atilde; biến người Mỹ th&agrave;nh những người cấp tiến &ndash; v&agrave; trong th&acirc;m t&acirc;m ch&uacute;ng ta vẫn l&agrave; những người cấp tiến từ đ&oacute; tới nay&hellip;. Paine c&oacute; lẽ l&agrave; c&acirc;y b&uacute;t c&oacute; ảnh hưởng nhất trong lịch sử nh&acirc;n loại hiện đại... lời lẽ của &ocirc;ng l&agrave;m thay đổi thế giới. Tiếng n&oacute;i của &ocirc;ng chủ yếu l&agrave; tiếng n&oacute;i của tiến bộ d&acirc;n chủ.</p>

<p>&ndash; Harvey Kaye, t&aacute;c giả của Thomas Paine and the Promise of America (2005)</p>

<p>_______________</p>

<p>Tầm quan trọng của Paine trong lịch sử nằm ở chỗ &ocirc;ng l&agrave;m cho việc rao giảng nền d&acirc;n chủ trở n&ecirc;n thực sự d&acirc;n chủ. Trong thế kỷ XVIII, c&oacute; nhiều qu&yacute; tộc, triết gia, ch&iacute;nh kh&aacute;ch ở Anh v&agrave; Ph&aacute;p c&oacute; tinh thần d&acirc;n chủ. Nhưng họ tr&igrave;nh b&agrave;y tư tưởng ch&iacute;nh trị của m&igrave;nh theo một h&igrave;nh thức chỉ thu h&uacute;t được giới c&oacute; học. C&ograve;n Paine, tuy l&yacute; thuyết của &ocirc;ng chẳng c&oacute; g&igrave; mới, l&agrave; người c&aacute;ch t&acirc;n trong c&aacute;ch viết, n&oacute; đơn giản, trực tiếp, kh&ocirc;ng khoa bảng, v&agrave; theo kiểu m&agrave; mọi người lao động c&oacute; tr&iacute; kh&ocirc;n đều hiểu được. Điều n&agrave;y khiến &ocirc;ng cực kỳ nguy hiểm, v&agrave; khi &ocirc;ng bộc lộ t&iacute;nh phi ch&iacute;nh thống về t&ocirc;n gi&aacute;o, phe bảo vệ đặc quyền liền nắm cơ hội để tr&uacute;t cho &ocirc;ng tội mạ lị&hellip;. Số phận của &ocirc;ng mu&ocirc;n đời l&agrave; được phe đối lập vinh danh v&agrave; phe nắm quyền th&ugrave; gh&eacute;t. &Ocirc;ng c&oacute; những sai s&oacute;t, như mọi người kh&aacute;c, nhưng lại bị th&ugrave; gh&eacute;t v&agrave; vu khống v&igrave; ch&iacute;nh những đức t&iacute;nh của m&igrave;nh.</p>

<p>&ndash; Bertrand Russell, &ldquo;The Fate of Thomas Paine&rdquo; trong tập Why I Am not a Christian (1967</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>9786046851097</td>
		</tr>
		<tr>
			<th>Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/all-category.html?supplier_list=1228010&amp;fhs_campaign=ATTRIBUTE_PRODUCT">C&ocirc;ng ty TNHH Domino Books</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Thomas Paine</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Phạm Vi&ecirc;m Phương</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Văn h&oacute;a Văn nghệ</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2019</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>200</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>12 x 20.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>166</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>T&aacute;c phẩm n&agrave;y được chọn đưa v&agrave;o nhiều danh mục s&aacute;ch n&ecirc;n đọc, ti&ecirc;u biểu như:<br />
- 100 Best Nonfiction Books of All Time của tờ The Guardian<br />
- 100 Books That Shaped World History của&nbsp;<a href="http://librarything.com/?fbclid=IwAR1cyhq15NzdJkrqc8JissFpgR0Cof09wasXgLL7Dp_7rYXVWZBhu81rqnM" target="_blank">Librarything.com</a><br />
- Books That Shaped America của Library of Congress</p>

<p>______________</p>

<p>Paine đ&atilde; biến người Mỹ th&agrave;nh những người cấp tiến &ndash; v&agrave; trong th&acirc;m t&acirc;m ch&uacute;ng ta vẫn l&agrave; những người cấp tiến từ đ&oacute; tới nay&hellip;. Paine c&oacute; lẽ l&agrave; c&acirc;y b&uacute;t c&oacute; ảnh hưởng nhất trong lịch sử nh&acirc;n loại hiện đại... lời lẽ của &ocirc;ng l&agrave;m thay đổi thế giới. Tiếng n&oacute;i của &ocirc;ng chủ yếu l&agrave; tiếng n&oacute;i của tiến bộ d&acirc;n chủ.</p>

<p>&ndash; Harvey Kaye, t&aacute;c giả của Thomas Paine and the Promise of America (2005)</p>

<p>_______________</p>

<p>Tầm quan trọng của Paine trong lịch sử nằm ở chỗ &ocirc;ng l&agrave;m cho việc rao giảng nền d&acirc;n chủ trở n&ecirc;n thực sự d&acirc;n chủ. Trong thế kỷ XVIII, c&oacute; nhiều qu&yacute; tộc, triết gia, ch&iacute;nh kh&aacute;ch ở Anh v&agrave; Ph&aacute;p c&oacute; tinh thần d&acirc;n chủ. Nhưng họ tr&igrave;nh b&agrave;y tư tưởng ch&iacute;nh trị của m&igrave;nh theo một h&igrave;nh thức chỉ thu h&uacute;t được giới c&oacute; học. C&ograve;n Paine, tuy l&yacute; thuyết của &ocirc;ng chẳng c&oacute; g&igrave; mới, l&agrave; người c&aacute;ch t&acirc;n trong c&aacute;ch viết, n&oacute; đơn giản, trực tiếp, kh&ocirc;ng khoa bảng, v&agrave; theo kiểu m&agrave; mọi người lao động c&oacute; tr&iacute; kh&ocirc;n đều hiểu được. Điều n&agrave;y khiến &ocirc;ng cực kỳ nguy hiểm, v&agrave; khi &ocirc;ng bộc lộ t&iacute;nh phi ch&iacute;nh thống về t&ocirc;n gi&aacute;o, phe bảo vệ đặc quyền liền nắm cơ hội để tr&uacute;t cho &ocirc;ng tội mạ lị&hellip;. Số phận của &ocirc;ng mu&ocirc;n đời l&agrave; được phe đối lập vinh danh v&agrave; phe nắm quyền th&ugrave; gh&eacute;t. &Ocirc;ng c&oacute; những sai s&oacute;t, như mọi người kh&aacute;c, nhưng lại bị th&ugrave; gh&eacute;t v&agrave; vu khống v&igrave; ch&iacute;nh những đức t&iacute;nh của m&igrave;nh.</p>

<p>&ndash; Bertrand Russell, &ldquo;The Fate of Thomas Paine&rdquo; trong tập Why I Am not a Christian (1967</p>
', 2, CAST(120000.00 AS Numeric(18, 2)), N'Thomas Paine', N'NXB Trẻ', CAST(N'2022-04-06' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (10, N'The Alchemist', N'The Alchemist', 5, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/9780061233845.jpg', N'<p>A global phenomenon, The Alchemist has been read and loved by over 62 million readers, topping bestseller lists in 74 countries worldwide. Now this magical fable is beautifully repackaged in an edition that lovers of Paulo Coelho will want to treasure forever. Every few decades a book is published that changes the lives of its readers forever. This is such a book - a beautiful parable about learning to listen to your heart, read the omens strewn along life&#39;s path and, above all, follow your dreams. Santiago, a young shepherd living in the hills of Andalucia, feels that there is more to life than his humble home and his flock. One day he finds the courage to follow his dreams into distant lands, each step galvanised by the knowledge that he is following the right path: his own. The people he meets along the way, the things he sees and the wisdom he learns are life-changing. With Paulo Coelho&#39;s visionary blend of spirituality, magical realism and folklore, The Alchemist is a story with the power to inspire nations and change people&#39;s lives.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>9780061233845</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/harper-collins?fhs_campaign=ATTRIBUTE_PRODUCT">HarperCollins Publishers</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td><a href="https://www.fahasa.com/favorite-author-paulo-coelho?fhs_campaign=ATTRIBUTE_PRODUCT">Paulo Coelho</a></td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>HarperCollins Publishers</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2006</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>140</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>10.4 x 17.2</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>195</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/best-sellers?fhs_campaign=INTERNAL_LINKING">Best Sellers</a></li>
				<li><a href="https://www.fahasa.com/favorite-author-paulo-coelho?fhs_campaign=INTERNAL_LINKING">Paulo Coelho</a></li>
				<li><a href="https://www.fahasa.com/foreign-books-flat-20-off?fhs_campaign=INTERNAL_LINKING">Foreign Books - Flat 20% Off</a></li>
				<li><a href="https://www.fahasa.com/harper-collins?fhs_campaign=INTERNAL_LINKING">HarperCollins Publishers</a></li>
				<li><a href="https://www.fahasa.com/highly-recommended-books-fiction?fhs_campaign=INTERNAL_LINKING">Highly Recommended Books - Fiction</a></li>
				<li><a href="https://www.fahasa.com/sach-dich-nhieu-nhat?fhs_campaign=INTERNAL_LINKING">Top s&aacute;ch được phi&ecirc;n dịch nhiều nhất</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/foreigncategory/fiction.html?order=num_orders_month">Top 100 sản phẩm Fiction b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>A global phenomenon, The Alchemist has been read and loved by over 62 million readers, topping bestseller lists in 74 countries worldwide. Now this magical fable is beautifully repackaged in an edition that lovers of Paulo Coelho will want to treasure forever. Every few decades a book is published that changes the lives of its readers forever. This is such a book - a beautiful parable about learning to listen to your heart, read the omens strewn along life&#39;s path and, above all, follow your dreams. Santiago, a young shepherd living in the hills of Andalucia, feels that there is more to life than his humble home and his flock. One day he finds the courage to follow his dreams into distant lands, each step galvanised by the knowledge that he is following the right path: his own. The people he meets along the way, the things he sees and the wisdom he learns are life-changing. With Paulo Coelho&#39;s visionary blend of spirituality, magical realism and folklore, The Alchemist is a story with the power to inspire nations and change people&#39;s lives.</p>

<p>R&uacute;t Gọn</p>
', 1, CAST(300000.00 AS Numeric(18, 2)), N'HarperCollins Publishers', N'Paulo Coelho', CAST(N'2022-03-29' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (11, N'Đắc Nhân Tâm', N'Đắc Nhân Tâm', 2, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/dntttttuntitled.jpg', N'<p><strong>Đắc nh&acirc;n t&acirc;m</strong>&nbsp;của&nbsp;Dale Carnegie&nbsp;l&agrave; quyển s&aacute;ch của mọi thời đại v&agrave; một hiện tượng đ&aacute;ng kinh ngạc trong ng&agrave;nh xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo v&agrave; cho đến tận b&acirc;y giờ, t&aacute;c phẩm n&agrave;y vẫn chiếm vị tr&iacute; số một trong danh mục s&aacute;ch b&aacute;n chạy nhất v&agrave; trở th&agrave;nh một sự kiện c&oacute; một kh&ocirc;ng hai trong lịch sử ng&agrave;nh xuất bản thế giới v&agrave; được đ&aacute;nh gi&aacute; l&agrave; một quyển s&aacute;ch c&oacute; tầm ảnh hưởng nhất mọi thời đại.</p>

<p>Đ&acirc;y l&agrave; cuốn s&aacute;ch độc nhất về thể loại self-help sở hữu một lượng lớn người h&acirc;m mộ. Ngo&agrave;i ra cuốn s&aacute;ch c&oacute; doanh số b&aacute;n ra cao nhất được tờ b&aacute;o The New York Times b&igrave;nh chọn trong nhiều năm. Cuốn s&aacute;ch n&agrave;y kh&ocirc;ng c&ograve;n l&agrave; một t&aacute;c phẩm về nghệ thuật đơn thuần nữa m&agrave; l&agrave; một bước thay đổi lớn trong cuộc sống của mỗi người.</p>

<p>Nhờ c&oacute; tầm hiểu biết rộng r&atilde;i v&agrave; khả năng &lsquo;ứng xử một c&aacute;ch nghệ thuật trong giao &nbsp;tiếp&rsquo; &ndash; Dale Carnegie đ&atilde; viết ra một quyển s&aacute;ch với g&oacute;c nh&igrave;n độc đ&aacute;o v&agrave; mới mẻ trong giao tiếp h&agrave;ng ng&agrave;y một c&aacute;ch v&ocirc; c&ugrave;ng th&uacute; vị &ndash; Th&ocirc;ng qua những mẫu truyện rời rạc nhưng lại đầy l&yacute; lẽ thuyết phục. Từ đ&oacute; t&igrave;m ra những kinh nghiệm để đ&uacute;c kết ra những nguy&ecirc;n tắc v&ocirc; c&ugrave;ng &lsquo;ngược ngạo&rsquo;, nhưng cũng rất logic dưới c&aacute;i nh&igrave;n vừa s&acirc;u sắc, vừa thực tế.</p>

<p>Hơn thế nữa, Đắc Nh&acirc;n T&acirc;m c&ograve;n đưa ra những nghịch l&yacute; m&agrave; từ l&acirc;u con người ta đ&atilde; hiểu lầm về phương hướng giao tiếp trong mạng lưới x&atilde; hội, th&igrave; ra, người giao tiếp th&ocirc;ng minh kh&ocirc;ng phải l&agrave; người c&oacute; thể ph&aacute;t biểu ra những lời hay nhất, m&agrave; l&agrave; những người học được c&aacute;ch mỉm cười, lu&ocirc;n biết c&aacute;ch lắng nghe, v&agrave; kh&iacute;ch lệ c&acirc;u chuyện của người kh&aacute;c.</p>

<p>Cuốn s&aacute;ch&nbsp;<strong>Đắc Nh&acirc;n T&acirc;m</strong>&nbsp;được chia ra l&agrave;m 4 nội dung ch&iacute;nh v&agrave; mỗi phần cũng l&agrave; một b&agrave;i học về cuộc sống.</p>

<p><strong>Phần 1:</strong><strong>&nbsp;Nghệ thuật ứng xử cơ bản</strong></p>

<p>- Kh&ocirc;ng n&ecirc;n tr&aacute;ch m&oacute;c v&agrave; than phiền, th&ugrave; o&aacute;n</p>

<p>- Muốn lấy được mật ong th&igrave; kh&ocirc;ng n&ecirc;n ph&aacute; tổ</p>

<p>- Tr&aacute;ch m&oacute;c một người n&agrave;o đ&oacute; l&agrave; một việc dễ d&agrave;ng. Thay v&agrave;o đ&oacute;, bạn h&atilde;y ng&oacute; lơ sự ph&aacute;n x&eacute;t đ&oacute; m&agrave; rộng lượng. Đồng thời tha thứ cho người đ&oacute; v&agrave; bỏ qua hết mọi chuyện th&igrave; mới đ&aacute;ng được tự h&agrave;o.</p>

<p>- Biết khen ngợi v&agrave; nhận được ơn nghĩa của người kh&aacute;c mới l&agrave; b&iacute; mật lớn nhất về ph&eacute;p cư xử.</p>

<p>- Bạn cần phải biết khen ngợi v&agrave; biết ơn người kh&aacute;c một c&aacute;ch th&agrave;nh thật nhất, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a tạo n&ecirc;n t&igrave;nh nh&acirc;n &aacute;i.</p>

<p><strong>Phần 2:</strong></p>

<p>- Bạn n&ecirc;n thật l&ograve;ng quan t&acirc;m đến người kh&aacute;c</p>

<p>- Mỉm cười đ&oacute; l&agrave; c&aacute;ch để tạo ấn tượng tốt nhất</p>

<p>- Hay ghi nhớ lấy t&ecirc;n của người bạn đ&atilde; v&agrave; đang giao tiếp với bạn</p>

<p>- Bạn n&ecirc;n lắng nghe v&agrave; khuyến kh&iacute;ch người kh&aacute;c để trở th&agrave;nh người c&oacute; khả năng giao tiếp cao</p>

<p>- H&atilde;y n&oacute;i về c&aacute;i m&agrave; người kh&aacute;c để &yacute; sẽ thu h&uacute;t được người đ&oacute;</p>

<p><strong>Phần 3:</strong><strong>&nbsp;C&aacute;ch hướng người kh&aacute;c l&agrave;m theo suy nghĩ của m&igrave;nh</strong></p>

<p>- Kh&ocirc;ng được để ra tranh c&atilde;i v&agrave; c&aacute;ch giải quyết tốt nhất đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n để n&oacute; xảy ra</p>

<p>- T&ocirc;n trọng &yacute; kiến của mọi người, kh&ocirc;ng bao giờ được n&oacute;i người kh&aacute;c sai</p>

<p>- Thừa nhận được sai l&agrave;m của m&igrave;nh, nếu phạm phải th&igrave; bạn cần phải thừa nhận điều đ&oacute;</p>

<p>- Bạn cần phải hỏi những c&acirc;u hỏi cần thiết để họ trả lời bạn bằng tiếng v&acirc;ng ngay lập tức</p>

<p>- Khi n&oacute;i chuyện bạn h&atilde;y để cho đối phương cảm nhận được họ l&agrave;m chủ trong c&acirc;u chuyện</p>

<p>- Để nhận được sự hợp t&aacute;c th&igrave; bạn cần phải để họ nghĩ họ l&agrave; người đưa ra &yacute; tưởng</p>

<p>- Bạn cần phải đặt m&igrave;nh v&agrave;o ho&agrave;n cảnh của họ để c&oacute; thể hiểu hết về bản th&acirc;n của họ</p>

<p>- Bạn h&atilde;y đồng cảm với mong muốn của mọi người</p>

<p>- Trong cuộc sống bạn h&atilde;y gợi l&ecirc;n sự cao thượng</p>

<p>- Th&acirc;n thiện trong giao tiếp đ&oacute; ch&iacute;nh l&agrave; sử dụng mật ngọt để bắt đầu được c&acirc;u chuyện</p>

<p>- Bạn n&ecirc;n tr&igrave;nh b&agrave;y một c&aacute;ch r&otilde; r&agrave;ng v&agrave; sinh động nhất</p>

<p>- Trong cuộc sống bạn cần phải vượt l&ecirc;n được thử th&aacute;ch</p>

<p>- Trước khi ph&ecirc; b&igrave;nh người kh&aacute;c bạn h&atilde;y khen ngợi người đ&oacute;</p>

<p>- Khi ph&ecirc; b&igrave;nh bạn n&ecirc;n ph&ecirc; b&igrave;nh một c&aacute;ch gi&aacute;n tiếp</p>

<p>- Bạn n&ecirc;n khen ngợi người kh&aacute;c để c&oacute; được một cuộc sống xứng đ&aacute;ng</p>

<p>- Bạn n&ecirc;n mở đường cho người kh&aacute;c để khắc phục sai lầm</p>

<p>- Bạn n&ecirc;n t&ocirc;n vinh người kh&aacute;c khi n&oacute;i chuyện</p>

<p>- Trước khi ph&ecirc; b&igrave;nh người kh&aacute;c th&igrave; bạn n&ecirc;n nh&igrave;n nhận lại bản th&acirc;n của m&igrave;nh</p>

<p>- Thay v&igrave; ra lệnh cho người kh&aacute;c th&igrave; bạn h&atilde;y gợi &yacute; cho họ</p>

<p>- Trong mọi chuyện bạn n&ecirc;n giữ thể diện cho người kh&aacute;c</p>

<p>- Bạn cần phải lưu &yacute; những mối quan hệ của m&igrave;nh</p>

<p><strong>Phần 4:</strong><strong>&nbsp;Chuyển h&oacute;a được con người v&agrave; kh&ocirc;ng tạo l&ecirc;n sự o&aacute;n hận v&agrave; chống đối</strong></p>

<p><strong>B&aacute;o ch&iacute; nhắc g&igrave; về &ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo;</strong></p>

<p><em>&ldquo;N&oacute;i đến s&aacute;ch nghệ thuật ứng xử th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc đến &quot;Đắc nh&acirc;n t&acirc;m&quot; của Dale Carnegie. Đ&acirc;y l&agrave; một trong những cuốn s&aacute;ch gối đầu của nhiều thế hệ đi trước v&agrave; ng&agrave;y nay. Với chặng đường hơn 80 năm kể từ khi lần đầu được xuất bản, &quot;Đắc nh&acirc;n t&acirc;m&quot; đ&atilde; mang đến cho ch&uacute;ng ta b&agrave;i học v&ocirc; c&ugrave;ng gi&aacute; trị đ&oacute; l&agrave; nghệ thuật ứng xử để được l&ograve;ng người. &quot;Đắc nh&acirc;n t&acirc;m&quot; l&agrave; quyển s&aacute;ch nổi tiếng v&agrave; b&aacute;n chạy nhất v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia kh&aacute;c nhau, v&agrave; hơn thế nữa đ&acirc;y c&ograve;n l&agrave; quyển s&aacute;ch li&ecirc;n tục đứng đầu danh mục s&aacute;ch b&aacute;n chạy nhất do thời b&aacute;o NewYork Times b&igrave;nh chọn trọng suốt 10 năm liền.&rdquo;</em>&nbsp;<strong>&ndash; Cafebiz.vn, 3 cuốn s&aacute;ch n&ecirc;n đọc đi đọc lại trong đời để ngẫm về cuộc sống</strong></p>

<p><em>&ldquo;Đắc Nh&acirc;n T&acirc;m &ndash; của t&aacute;c giả Dale Carnegie l&agrave; quyển s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất v&agrave; c&oacute; tầm ảnh hưởng nhất của mọi thời đại. T&aacute;c phẩm đ&atilde; được chuyển ngữ sang hầu hết c&aacute;c thứ tiếng tr&ecirc;n thế giới v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia. Một kh&aacute;m ph&aacute; rất th&uacute; vị d&agrave;nh cho c&aacute;c bậc phụ huynh khi đọc cuốn s&aacute;ch n&agrave;y l&agrave; biết c&aacute;ch lắng nghe tr&ograve; chuyện c&ugrave;ng con, c&aacute;ch trị chứng t&egrave; dầm của trẻ nhỏ, hay c&aacute;ch l&agrave;m cho một đứa trẻ từ quậy ph&aacute; th&agrave;nh ngoan ngo&atilde;n&hellip; Đ&oacute; hẳn l&agrave; những c&acirc;u chuyện nu&ocirc;i dạy trẻ rất đ&uacute;ng, rất hay, rất đời thường đ&aacute;ng để bạn đọc suy ngẫm v&agrave; chi&ecirc;m nghiệm&rdquo;.</em>&nbsp;&ndash;&nbsp;<strong>Motthegioi.vn, Đắc nh&acirc;n t&acirc;m: &lsquo;Cha đ&atilde; qu&ecirc;n&rsquo; nhắc những điều n&ecirc;n nhớ</strong></p>

<p><em>&ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo; đưa ra những lời khuy&ecirc;n về c&aacute;ch cư xử, ứng xử v&agrave; giao tiếp với mọi người để đạt được th&agrave;nh c&ocirc;ng trong cuộc sống. Đ&acirc;y được coi l&agrave; một trong những cuốn s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất v&agrave; c&oacute; tầm ảnh hưởng nhất mọi thời đại m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.&rdquo;</em>&nbsp;&ndash; C<strong>afef.vn, 20 c&acirc;u n&oacute;i v&agrave;ng đ&aacute;ng nhớ từ tuyệt t&aacute;c để đời &ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo;</strong></p>

<p><strong>Về t&aacute;c giả</strong></p>

<p>Dale Breckenridge Carnegie (24 th&aacute;ng 11 năm 1888 &ndash; 1 th&aacute;ng 11 năm 1955) l&agrave; một nh&agrave; văn v&agrave; nh&agrave; thuyết tr&igrave;nh Mỹ v&agrave; l&agrave; người ph&aacute;t triển c&aacute;c lớp tự gi&aacute;o dục, nghệ thuật b&aacute;n h&agrave;ng, huấn luyện đo&agrave;n thể, n&oacute;i trước c&ocirc;ng ch&uacute;ng v&agrave; c&aacute;c kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh ngh&egrave;o đ&oacute;i tại một trang trại ở Missouri, &ocirc;ng l&agrave; t&aacute;c giả cuốn Đắc Nh&acirc;n T&acirc;m, được xuất bản lần đầu năm 1936, một cuốn s&aacute;ch thuộc h&agrave;ng b&aacute;n chạy nhất v&agrave; được biết đến nhiều nhất cho đến tận ng&agrave;y nay. &Ocirc;ng cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, v&agrave; nhiều cuốn s&aacute;ch kh&aacute;c.</p>

<p>Carnegie l&agrave; một trong những người đầu ti&ecirc;n đề xuất c&aacute;i ng&agrave;y nay được gọi l&agrave; đảm đương tr&aacute;ch nhiệm, d&ugrave; n&oacute; chỉ được đề cập tỉ mỉ trong t&aacute;c phẩm viết của &ocirc;ng. Một trong những &yacute; tưởng chủ chốt trong những cuốn s&aacute;ch của &ocirc;ng l&agrave; c&oacute; thể thay đổi th&aacute;i độ của người kh&aacute;c khi thay đổi sự đối xử của ta với họ.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935086854754</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/first-news?fhs_campaign=ATTRIBUTE_PRODUCT">FIRST NEWS</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Dale Carnegie</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Nguyễn Văn Phước</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Tổng Hợp TPHCM</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>350</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 14.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>320</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/tam-ly-ky-nang-song/ren-luyen-nhan-cach.html?order=num_orders_month">Top 100 sản phẩm R&egrave;n luyện nh&acirc;n c&aacute;ch b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Đắc nh&acirc;n t&acirc;m</strong>&nbsp;của&nbsp;Dale Carnegie&nbsp;l&agrave; quyển s&aacute;ch của mọi thời đại v&agrave; một hiện tượng đ&aacute;ng kinh ngạc trong ng&agrave;nh xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo v&agrave; cho đến tận b&acirc;y giờ, t&aacute;c phẩm n&agrave;y vẫn chiếm vị tr&iacute; số một trong danh mục s&aacute;ch b&aacute;n chạy nhất v&agrave; trở th&agrave;nh một sự kiện c&oacute; một kh&ocirc;ng hai trong lịch sử ng&agrave;nh xuất bản thế giới v&agrave; được đ&aacute;nh gi&aacute; l&agrave; một quyển s&aacute;ch c&oacute; tầm ảnh hưởng nhất mọi thời đại.</p>

<p>Đ&acirc;y l&agrave; cuốn s&aacute;ch độc nhất về thể loại self-help sở hữu một lượng lớn người h&acirc;m mộ. Ngo&agrave;i ra cuốn s&aacute;ch c&oacute; doanh số b&aacute;n ra cao nhất được tờ b&aacute;o The New York Times b&igrave;nh chọn trong nhiều năm. Cuốn s&aacute;ch n&agrave;y kh&ocirc;ng c&ograve;n l&agrave; một t&aacute;c phẩm về nghệ thuật đơn thuần nữa m&agrave; l&agrave; một bước thay đổi lớn trong cuộc sống của mỗi người.</p>

<p>Nhờ c&oacute; tầm hiểu biết rộng r&atilde;i v&agrave; khả năng &lsquo;ứng xử một c&aacute;ch nghệ thuật trong giao &nbsp;tiếp&rsquo; &ndash; Dale Carnegie đ&atilde; viết ra một quyển s&aacute;ch với g&oacute;c nh&igrave;n độc đ&aacute;o v&agrave; mới mẻ trong giao tiếp h&agrave;ng ng&agrave;y một c&aacute;ch v&ocirc; c&ugrave;ng th&uacute; vị &ndash; Th&ocirc;ng qua những mẫu truyện rời rạc nhưng lại đầy l&yacute; lẽ thuyết phục. Từ đ&oacute; t&igrave;m ra những kinh nghiệm để đ&uacute;c kết ra những nguy&ecirc;n tắc v&ocirc; c&ugrave;ng &lsquo;ngược ngạo&rsquo;, nhưng cũng rất logic dưới c&aacute;i nh&igrave;n vừa s&acirc;u sắc, vừa thực tế.</p>

<p>Hơn thế nữa, Đắc Nh&acirc;n T&acirc;m c&ograve;n đưa ra những nghịch l&yacute; m&agrave; từ l&acirc;u con người ta đ&atilde; hiểu lầm về phương hướng giao tiếp trong mạng lưới x&atilde; hội, th&igrave; ra, người giao tiếp th&ocirc;ng minh kh&ocirc;ng phải l&agrave; người c&oacute; thể ph&aacute;t biểu ra những lời hay nhất, m&agrave; l&agrave; những người học được c&aacute;ch mỉm cười, lu&ocirc;n biết c&aacute;ch lắng nghe, v&agrave; kh&iacute;ch lệ c&acirc;u chuyện của người kh&aacute;c.</p>

<p>Cuốn s&aacute;ch&nbsp;<strong>Đắc Nh&acirc;n T&acirc;m</strong>&nbsp;được chia ra l&agrave;m 4 nội dung ch&iacute;nh v&agrave; mỗi phần cũng l&agrave; một b&agrave;i học về cuộc sống.</p>

<p><strong>Phần 1:</strong><strong>&nbsp;Nghệ thuật ứng xử cơ bản</strong></p>

<p>- Kh&ocirc;ng n&ecirc;n tr&aacute;ch m&oacute;c v&agrave; than phiền, th&ugrave; o&aacute;n</p>

<p>- Muốn lấy được mật ong th&igrave; kh&ocirc;ng n&ecirc;n ph&aacute; tổ</p>

<p>- Tr&aacute;ch m&oacute;c một người n&agrave;o đ&oacute; l&agrave; một việc dễ d&agrave;ng. Thay v&agrave;o đ&oacute;, bạn h&atilde;y ng&oacute; lơ sự ph&aacute;n x&eacute;t đ&oacute; m&agrave; rộng lượng. Đồng thời tha thứ cho người đ&oacute; v&agrave; bỏ qua hết mọi chuyện th&igrave; mới đ&aacute;ng được tự h&agrave;o.</p>

<p>- Biết khen ngợi v&agrave; nhận được ơn nghĩa của người kh&aacute;c mới l&agrave; b&iacute; mật lớn nhất về ph&eacute;p cư xử.</p>

<p>- Bạn cần phải biết khen ngợi v&agrave; biết ơn người kh&aacute;c một c&aacute;ch th&agrave;nh thật nhất, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a tạo n&ecirc;n t&igrave;nh nh&acirc;n &aacute;i.</p>

<p><strong>Phần 2:</strong></p>

<p>- Bạn n&ecirc;n thật l&ograve;ng quan t&acirc;m đến người kh&aacute;c</p>

<p>- Mỉm cười đ&oacute; l&agrave; c&aacute;ch để tạo ấn tượng tốt nhất</p>

<p>- Hay ghi nhớ lấy t&ecirc;n của người bạn đ&atilde; v&agrave; đang giao tiếp với bạn</p>

<p>- Bạn n&ecirc;n lắng nghe v&agrave; khuyến kh&iacute;ch người kh&aacute;c để trở th&agrave;nh người c&oacute; khả năng giao tiếp cao</p>

<p>- H&atilde;y n&oacute;i về c&aacute;i m&agrave; người kh&aacute;c để &yacute; sẽ thu h&uacute;t được người đ&oacute;</p>

<p><strong>Phần 3:</strong><strong>&nbsp;C&aacute;ch hướng người kh&aacute;c l&agrave;m theo suy nghĩ của m&igrave;nh</strong></p>

<p>- Kh&ocirc;ng được để ra tranh c&atilde;i v&agrave; c&aacute;ch giải quyết tốt nhất đ&oacute; l&agrave; kh&ocirc;ng n&ecirc;n để n&oacute; xảy ra</p>

<p>- T&ocirc;n trọng &yacute; kiến của mọi người, kh&ocirc;ng bao giờ được n&oacute;i người kh&aacute;c sai</p>

<p>- Thừa nhận được sai l&agrave;m của m&igrave;nh, nếu phạm phải th&igrave; bạn cần phải thừa nhận điều đ&oacute;</p>

<p>- Bạn cần phải hỏi những c&acirc;u hỏi cần thiết để họ trả lời bạn bằng tiếng v&acirc;ng ngay lập tức</p>

<p>- Khi n&oacute;i chuyện bạn h&atilde;y để cho đối phương cảm nhận được họ l&agrave;m chủ trong c&acirc;u chuyện</p>

<p>- Để nhận được sự hợp t&aacute;c th&igrave; bạn cần phải để họ nghĩ họ l&agrave; người đưa ra &yacute; tưởng</p>

<p>- Bạn cần phải đặt m&igrave;nh v&agrave;o ho&agrave;n cảnh của họ để c&oacute; thể hiểu hết về bản th&acirc;n của họ</p>

<p>- Bạn h&atilde;y đồng cảm với mong muốn của mọi người</p>

<p>- Trong cuộc sống bạn h&atilde;y gợi l&ecirc;n sự cao thượng</p>

<p>- Th&acirc;n thiện trong giao tiếp đ&oacute; ch&iacute;nh l&agrave; sử dụng mật ngọt để bắt đầu được c&acirc;u chuyện</p>

<p>- Bạn n&ecirc;n tr&igrave;nh b&agrave;y một c&aacute;ch r&otilde; r&agrave;ng v&agrave; sinh động nhất</p>

<p>- Trong cuộc sống bạn cần phải vượt l&ecirc;n được thử th&aacute;ch</p>

<p>- Trước khi ph&ecirc; b&igrave;nh người kh&aacute;c bạn h&atilde;y khen ngợi người đ&oacute;</p>

<p>- Khi ph&ecirc; b&igrave;nh bạn n&ecirc;n ph&ecirc; b&igrave;nh một c&aacute;ch gi&aacute;n tiếp</p>

<p>- Bạn n&ecirc;n khen ngợi người kh&aacute;c để c&oacute; được một cuộc sống xứng đ&aacute;ng</p>

<p>- Bạn n&ecirc;n mở đường cho người kh&aacute;c để khắc phục sai lầm</p>

<p>- Bạn n&ecirc;n t&ocirc;n vinh người kh&aacute;c khi n&oacute;i chuyện</p>

<p>- Trước khi ph&ecirc; b&igrave;nh người kh&aacute;c th&igrave; bạn n&ecirc;n nh&igrave;n nhận lại bản th&acirc;n của m&igrave;nh</p>

<p>- Thay v&igrave; ra lệnh cho người kh&aacute;c th&igrave; bạn h&atilde;y gợi &yacute; cho họ</p>

<p>- Trong mọi chuyện bạn n&ecirc;n giữ thể diện cho người kh&aacute;c</p>

<p>- Bạn cần phải lưu &yacute; những mối quan hệ của m&igrave;nh</p>

<p><strong>Phần 4:</strong><strong>&nbsp;Chuyển h&oacute;a được con người v&agrave; kh&ocirc;ng tạo l&ecirc;n sự o&aacute;n hận v&agrave; chống đối</strong></p>

<p><strong>B&aacute;o ch&iacute; nhắc g&igrave; về &ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo;</strong></p>

<p><em>&ldquo;N&oacute;i đến s&aacute;ch nghệ thuật ứng xử th&igrave; kh&ocirc;ng thể kh&ocirc;ng nhắc đến &quot;Đắc nh&acirc;n t&acirc;m&quot; của Dale Carnegie. Đ&acirc;y l&agrave; một trong những cuốn s&aacute;ch gối đầu của nhiều thế hệ đi trước v&agrave; ng&agrave;y nay. Với chặng đường hơn 80 năm kể từ khi lần đầu được xuất bản, &quot;Đắc nh&acirc;n t&acirc;m&quot; đ&atilde; mang đến cho ch&uacute;ng ta b&agrave;i học v&ocirc; c&ugrave;ng gi&aacute; trị đ&oacute; l&agrave; nghệ thuật ứng xử để được l&ograve;ng người. &quot;Đắc nh&acirc;n t&acirc;m&quot; l&agrave; quyển s&aacute;ch nổi tiếng v&agrave; b&aacute;n chạy nhất v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia kh&aacute;c nhau, v&agrave; hơn thế nữa đ&acirc;y c&ograve;n l&agrave; quyển s&aacute;ch li&ecirc;n tục đứng đầu danh mục s&aacute;ch b&aacute;n chạy nhất do thời b&aacute;o NewYork Times b&igrave;nh chọn trọng suốt 10 năm liền.&rdquo;</em>&nbsp;<strong>&ndash; Cafebiz.vn, 3 cuốn s&aacute;ch n&ecirc;n đọc đi đọc lại trong đời để ngẫm về cuộc sống</strong></p>

<p><em>&ldquo;Đắc Nh&acirc;n T&acirc;m &ndash; của t&aacute;c giả Dale Carnegie l&agrave; quyển s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất v&agrave; c&oacute; tầm ảnh hưởng nhất của mọi thời đại. T&aacute;c phẩm đ&atilde; được chuyển ngữ sang hầu hết c&aacute;c thứ tiếng tr&ecirc;n thế giới v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia. Một kh&aacute;m ph&aacute; rất th&uacute; vị d&agrave;nh cho c&aacute;c bậc phụ huynh khi đọc cuốn s&aacute;ch n&agrave;y l&agrave; biết c&aacute;ch lắng nghe tr&ograve; chuyện c&ugrave;ng con, c&aacute;ch trị chứng t&egrave; dầm của trẻ nhỏ, hay c&aacute;ch l&agrave;m cho một đứa trẻ từ quậy ph&aacute; th&agrave;nh ngoan ngo&atilde;n&hellip; Đ&oacute; hẳn l&agrave; những c&acirc;u chuyện nu&ocirc;i dạy trẻ rất đ&uacute;ng, rất hay, rất đời thường đ&aacute;ng để bạn đọc suy ngẫm v&agrave; chi&ecirc;m nghiệm&rdquo;.</em>&nbsp;&ndash;&nbsp;<strong>Motthegioi.vn, Đắc nh&acirc;n t&acirc;m: &lsquo;Cha đ&atilde; qu&ecirc;n&rsquo; nhắc những điều n&ecirc;n nhớ</strong></p>

<p><em>&ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo; đưa ra những lời khuy&ecirc;n về c&aacute;ch cư xử, ứng xử v&agrave; giao tiếp với mọi người để đạt được th&agrave;nh c&ocirc;ng trong cuộc sống. Đ&acirc;y được coi l&agrave; một trong những cuốn s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất v&agrave; c&oacute; tầm ảnh hưởng nhất mọi thời đại m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.&rdquo;</em>&nbsp;&ndash; C<strong>afef.vn, 20 c&acirc;u n&oacute;i v&agrave;ng đ&aacute;ng nhớ từ tuyệt t&aacute;c để đời &ldquo;Đắc Nh&acirc;n T&acirc;m&rdquo;</strong></p>

<p><strong>Về t&aacute;c giả</strong></p>

<p>Dale Breckenridge Carnegie (24 th&aacute;ng 11 năm 1888 &ndash; 1 th&aacute;ng 11 năm 1955) l&agrave; một nh&agrave; văn v&agrave; nh&agrave; thuyết tr&igrave;nh Mỹ v&agrave; l&agrave; người ph&aacute;t triển c&aacute;c lớp tự gi&aacute;o dục, nghệ thuật b&aacute;n h&agrave;ng, huấn luyện đo&agrave;n thể, n&oacute;i trước c&ocirc;ng ch&uacute;ng v&agrave; c&aacute;c kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh ngh&egrave;o đ&oacute;i tại một trang trại ở Missouri, &ocirc;ng l&agrave; t&aacute;c giả cuốn Đắc Nh&acirc;n T&acirc;m, được xuất bản lần đầu năm 1936, một cuốn s&aacute;ch thuộc h&agrave;ng b&aacute;n chạy nhất v&agrave; được biết đến nhiều nhất cho đến tận ng&agrave;y nay. &Ocirc;ng cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, v&agrave; nhiều cuốn s&aacute;ch kh&aacute;c.</p>

<p>Carnegie l&agrave; một trong những người đầu ti&ecirc;n đề xuất c&aacute;i ng&agrave;y nay được gọi l&agrave; đảm đương tr&aacute;ch nhiệm, d&ugrave; n&oacute; chỉ được đề cập tỉ mỉ trong t&aacute;c phẩm viết của &ocirc;ng. Một trong những &yacute; tưởng chủ chốt trong những cuốn s&aacute;ch của &ocirc;ng l&agrave; c&oacute; thể thay đổi th&aacute;i độ của người kh&aacute;c khi thay đổi sự đối xử của ta với họ.</p>
', 1, CAST(2800000.00 AS Numeric(18, 2)), N'Dale Carnegie', N'NXB Tổng Hợp TPHCM', CAST(N'2022-03-28' AS Date), N'20%', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (12, N'Hài Hước Một Chút Thế Giới Sẽ Khác Đi', N'Hài Hước Một Chút Thế Giới Sẽ Khác Đi', 6, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_244718_1_2850.jpg', N'<p><strong>H&agrave;i Hước Một Ch&uacute;t Thế Giới Sẽ Kh&aacute;c Đi</strong></p>

<p><em><strong>Trong x&atilde; hội hiện đại, giao tiếp l&agrave; ch&igrave;a kh&oacute;a giải quyết mọi vấn đề. Vậy l&agrave;m thế n&agrave;o để giao tiếp hiệu quả? Đ&oacute; l&agrave; biết vận dụng một c&aacute;ch tinh tế sự h&agrave;i hước v&agrave;o lời n&oacute;i v&agrave; tư duy, h&agrave;i hước c&oacute; thể gi&uacute;p gi&uacute;p ch&uacute;ng ta thiết lập được mạng lưới quan hệ rộng r&atilde;i. Tuy nhi&ecirc;n, h&agrave;i hước kh&ocirc;ng phải l&agrave; một năng lực bẩm sinh, muốn c&oacute; được &ldquo;nghệ thuật gi&uacute;p bạn th&agrave;nh c&ocirc;ng&rdquo; n&agrave;y, bạn phải trải qua qu&aacute; t&igrave;nh bồi dưỡng v&agrave; r&egrave;n luyện bản th&acirc;n.</strong></em></p>

<p><strong><em>H&agrave;i hước một ch&uacute;t, thế giới sẽ kh&aacute;c đi</em></strong>&nbsp;- cuốn s&aacute;ch với nội dung phong ph&uacute; m&agrave; s&acirc;u sắc n&agrave;y sẽ gi&uacute;p c&aacute;c bạn c&oacute; được c&aacute;i nh&igrave;n r&otilde; n&eacute;t hơn về t&iacute;nh h&agrave;i hước dưới c&aacute;c g&oacute;c độ, phương diện đ&aacute;nh gi&aacute; kh&aacute;c nhau, cũng như c&oacute; th&ecirc;m kĩ năng vận dụng sự h&agrave;i hước v&agrave;o cuộc sống h&agrave;ng ng&agrave;y.</p>

<p><strong>L&agrave;m thế n&agrave;o để trở th&agrave;nh người t&agrave;i giỏi h&agrave;i hước?</strong></p>

<p>H&agrave;i hước l&agrave; vận dụng những ng&ocirc;n từ th&ocirc;ng minh, th&uacute; vị để tiết lộ, ph&ecirc; b&igrave;nh hay giễu cợt một c&aacute;ch h&agrave;m s&uacute;c những sự vật, hiện tượng kh&ocirc;ng hợp l&iacute;, những m&acirc;u thuẫn trong đời sống x&atilde; hội, khiến người ta phủ định sự vật hay hiện tượng trong những tiếng cười thoải m&aacute;i, nhẹ nh&agrave;ng. Nhưng h&agrave;i hước kh&ocirc;ng phải l&agrave; muốn n&oacute;i thế n&agrave;o cũng được, cuốn s&aacute;ch&nbsp;<em>H&agrave;i hước một ch&uacute;t th&eacute; giới sẽ kh&aacute;c đi</em>&nbsp;đưa ra 10 nguy&ecirc;n tắc cơ bản để trở th&agrave;nh người người t&agrave;i giỏi h&agrave;i hước:</p>

<p>1. C&oacute; một t&acirc;m l&iacute; l&agrave;nh mạnh, lạc quan, t&iacute;ch cực</p>

<p>2. Nh&igrave;n nhận thế giới từ g&oacute;c độ th&uacute; vị</p>

<p>3. Tr&iacute; nhớ v&agrave; khả năng phản ứng tốt</p>

<p>4. L&ugrave;i một bước để tiến hai bước, biết nhường nhịn người kh&aacute;c</p>

<p>5. Hiểu r&otilde; &ldquo;liều lượng&rdquo; của h&agrave;i hước</p>

<p>6. T&ocirc;n trọng l&agrave; tiền đề của h&agrave;i hươc</p>

<p>7. C&oacute; một tr&aacute;i tim ng&acirc;y thơ, hồn nhi&ecirc;n</p>

<p>8. N&oacute;i một c&aacute;ch uyển chuyển, tế nhị</p>

<p>9. V&ograve;ng vo một ch&uacute;t, hiệu quả sẽ tốt hơn</p>

<p>10. Tr&iacute; tuệ được cộng điểm nhờ sự h&agrave;i hước</p>

<p>Kh&ocirc;ng đơn thuần chỉ đưa ra những quy luật kh&aacute;i qu&aacute;t cho người tập t&agrave;nh khiếu h&agrave;i hước, H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi c&ograve;n đưa ra những b&iacute; quyết đinh &aacute;p dụng v&agrave;o từng mối quan hệ cụ thể trong cuộc sống.</p>

<p><strong>Nghệ thuật h&agrave;i hước trong cuộc sống gia đ&igrave;nh</strong></p>

<p>Phần đ&ocirc;ng mọi người nhận định trong cuộc sống gia đ&igrave;nh chỉ cần chuyện tr&ograve; thoải m&aacute;i, vợ chồng phải n&oacute;i chyện một c&aacute;ch thực tế, kh&ocirc;ng cần ch&uacute; trọng v&agrave;o nghệ thuật n&oacute;i chuyện. Nhưng họ kh&ocirc;ng biết rằng sự d&iacute; dỏm c&oacute; thể h&oacute;a giải được rất nhiều m&acirc;u thuẫn v&agrave; tranh c&atilde;i vợ chồng, giải tỏa những hiểu nhầm, bất đồng, x&oacute;a nh&ograve;a khoảng c&aacute;ch, thắt chặt t&igrave;nh cảm để cả gia đ&igrave;nh sống trong kh&ocirc;ng kh&iacute; đầm ấm.</p>

<p>Lưu Chấn Hồng trong&nbsp;<strong><em>H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi</em></strong>&nbsp;cho rằng h&agrave;i hước ch&iacute;nh l&agrave; gia vị của h&ocirc;n nh&acirc;n, tạo ra sự b&igrave;nh đảng trong quan hệ vợ chồng. Bởi vậy, trong giao tiếp trong gia đ&igrave;nh, n&ecirc;n d&ugrave;ng sự h&agrave;i hước kh&eacute;o l&eacute;o tr&aacute;ch cứ để kh&ocirc;ng g&acirc;y tổn thương, kh&eacute;o l&eacute;o khen ngợi để kh&ocirc;ng g&acirc;y tự m&atilde;n,... Nhờ vậy, h&agrave;i hước chắc chắn sẽ l&agrave; nh&acirc;n tố vun đắp cuộc sống h&ocirc;n nh&acirc;n bền l&acirc;u.</p>

<p><strong>H&agrave;i hước trong giao tiếp x&atilde; hội</strong></p>

<p>Muốn mở rộng c&aacute;c mối quan hệ một c&aacute;ch thuận lợi th&igrave; sự h&agrave;i hước l&agrave; một điều cần thiết. Một người muốn x&acirc;y dựng c&aacute;c mối quan hệ của m&igrave;nh th&igrave; việc phải giao tiếp với người kh&aacute;c l&agrave; điều đương nhi&ecirc;n. V&agrave;o l&uacute;c n&agrave;y, h&agrave;i hước ch&iacute;nh l&agrave; phương ph&aacute;p giao tiếp tốt nhất.</p>

<p>Trong giao tiếp x&atilde; hội, h&agrave;i hước l&agrave; thi&ecirc;n sứ vui vẻ kết nối t&acirc;m hồn mọi người với nhau, c&oacute; h&agrave;i hước th&igrave; sẽ c&oacute; t&igrave;nh y&ecirc;u v&agrave; t&igrave;nh bạn. Người h&agrave;i hước đi đến đ&acirc;u th&igrave; nơi ấy sẽ c&oacute; được kh&ocirc;ng kh&iacute; h&ograve;a thuận, vui vẻ.</p>

<p><strong>H&agrave;i hước trong c&ocirc;ng việc</strong></p>

<p>H&agrave;i hước l&agrave; một biểu hiện của sự tự tin, phản &aacute;nh tố chất kh&eacute;o l&eacute;o xử l&iacute; quan hệ giao tiếp của mỗi người. Bởi vậy, kh&ocirc;ng lạ khi giờ đ&acirc;y, đ&acirc;y l&agrave; một trong những yếu tố ch&igrave;a kh&oacute;a để nh&agrave; tuyển dụng quyết định quyết định c&ocirc;ng việc của c&aacute;c ứng vi&ecirc;n, hay quản l&yacute; đ&aacute;nh gi&aacute; năng lực của nh&acirc;n vi&ecirc;n trong c&ocirc;ng ty.</p>

<p>Vậy thế n&agrave;o để h&agrave;i hước đạt hiệu quả nơi c&ocirc;ng sở? H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi sẽ cho bạn c&acirc;u trả lời trong từng t&igrave;nh huống cụ thể sau đ&acirc;y: D&ugrave;ng sự h&agrave;i hước để c&oacute; được thiện cảm của cấp dưới, d&ugrave;ng sự h&agrave;i hước để đổi lại th&aacute;i độ th&acirc;n thiện của đồng nghiệp, d&ugrave;ng sự h&agrave;i hước để xoa dịu &aacute;p lực c&ocirc;ng việc hay để đ&agrave;m ph&aacute;n thuyết phục kh&aacute;ch h&agrave;ng.</p>

<p>T&oacute;m lại, biết c&aacute;ch h&agrave;i hước đ&uacute;ng mực sẽ gi&uacute;p bạn th&agrave;nh c&ocirc;ng. Hi vọng rằng sau khi đọc xong cuốn s&aacute;ch H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi, bạn c&oacute; thể biến m&igrave;nh th&agrave;nh một người biết n&oacute;i chuyện, kh&eacute;o lẹo vận dụng những ng&ocirc;n từ h&agrave;i hước, &ldquo;g&atilde;i đ&uacute;ng chỗ ngứa&rdquo; của đối phương để được mọi người y&ecirc;u mến.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8936067604276</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/minh-long?fhs_campaign=ATTRIBUTE_PRODUCT">Minh Long</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Lưu Chấn Hồng</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Tuệ Văn</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Thanh Ni&ecirc;n</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>230</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 14.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>228</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/flashsale?fhs_campaign=INTERNAL_LINKING">Flashsale</a></li>
				<li><a href="https://www.fahasa.com/ma-giam-gia?fhs_campaign=INTERNAL_LINKING">M&atilde; Giảm Gi&aacute;</a></li>
				<li><a href="https://www.fahasa.com/minh-long?fhs_campaign=INTERNAL_LINKING">Minh Long</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/tam-ly-ky-nang-song/ky-nang-song.html?order=num_orders_month">Top 100 sản phẩm Kỹ năng sống b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>H&agrave;i Hước Một Ch&uacute;t Thế Giới Sẽ Kh&aacute;c Đi</strong></p>

<p><em><strong>Trong x&atilde; hội hiện đại, giao tiếp l&agrave; ch&igrave;a kh&oacute;a giải quyết mọi vấn đề. Vậy l&agrave;m thế n&agrave;o để giao tiếp hiệu quả? Đ&oacute; l&agrave; biết vận dụng một c&aacute;ch tinh tế sự h&agrave;i hước v&agrave;o lời n&oacute;i v&agrave; tư duy, h&agrave;i hước c&oacute; thể gi&uacute;p gi&uacute;p ch&uacute;ng ta thiết lập được mạng lưới quan hệ rộng r&atilde;i. Tuy nhi&ecirc;n, h&agrave;i hước kh&ocirc;ng phải l&agrave; một năng lực bẩm sinh, muốn c&oacute; được &ldquo;nghệ thuật gi&uacute;p bạn th&agrave;nh c&ocirc;ng&rdquo; n&agrave;y, bạn phải trải qua qu&aacute; t&igrave;nh bồi dưỡng v&agrave; r&egrave;n luyện bản th&acirc;n.</strong></em></p>

<p><strong><em>H&agrave;i hước một ch&uacute;t, thế giới sẽ kh&aacute;c đi</em></strong>&nbsp;- cuốn s&aacute;ch với nội dung phong ph&uacute; m&agrave; s&acirc;u sắc n&agrave;y sẽ gi&uacute;p c&aacute;c bạn c&oacute; được c&aacute;i nh&igrave;n r&otilde; n&eacute;t hơn về t&iacute;nh h&agrave;i hước dưới c&aacute;c g&oacute;c độ, phương diện đ&aacute;nh gi&aacute; kh&aacute;c nhau, cũng như c&oacute; th&ecirc;m kĩ năng vận dụng sự h&agrave;i hước v&agrave;o cuộc sống h&agrave;ng ng&agrave;y.</p>

<p><strong>L&agrave;m thế n&agrave;o để trở th&agrave;nh người t&agrave;i giỏi h&agrave;i hước?</strong></p>

<p>H&agrave;i hước l&agrave; vận dụng những ng&ocirc;n từ th&ocirc;ng minh, th&uacute; vị để tiết lộ, ph&ecirc; b&igrave;nh hay giễu cợt một c&aacute;ch h&agrave;m s&uacute;c những sự vật, hiện tượng kh&ocirc;ng hợp l&iacute;, những m&acirc;u thuẫn trong đời sống x&atilde; hội, khiến người ta phủ định sự vật hay hiện tượng trong những tiếng cười thoải m&aacute;i, nhẹ nh&agrave;ng. Nhưng h&agrave;i hước kh&ocirc;ng phải l&agrave; muốn n&oacute;i thế n&agrave;o cũng được, cuốn s&aacute;ch&nbsp;<em>H&agrave;i hước một ch&uacute;t th&eacute; giới sẽ kh&aacute;c đi</em>&nbsp;đưa ra 10 nguy&ecirc;n tắc cơ bản để trở th&agrave;nh người người t&agrave;i giỏi h&agrave;i hước:</p>

<p>1. C&oacute; một t&acirc;m l&iacute; l&agrave;nh mạnh, lạc quan, t&iacute;ch cực</p>

<p>2. Nh&igrave;n nhận thế giới từ g&oacute;c độ th&uacute; vị</p>

<p>3. Tr&iacute; nhớ v&agrave; khả năng phản ứng tốt</p>

<p>4. L&ugrave;i một bước để tiến hai bước, biết nhường nhịn người kh&aacute;c</p>

<p>5. Hiểu r&otilde; &ldquo;liều lượng&rdquo; của h&agrave;i hước</p>

<p>6. T&ocirc;n trọng l&agrave; tiền đề của h&agrave;i hươc</p>

<p>7. C&oacute; một tr&aacute;i tim ng&acirc;y thơ, hồn nhi&ecirc;n</p>

<p>8. N&oacute;i một c&aacute;ch uyển chuyển, tế nhị</p>

<p>9. V&ograve;ng vo một ch&uacute;t, hiệu quả sẽ tốt hơn</p>

<p>10. Tr&iacute; tuệ được cộng điểm nhờ sự h&agrave;i hước</p>

<p>Kh&ocirc;ng đơn thuần chỉ đưa ra những quy luật kh&aacute;i qu&aacute;t cho người tập t&agrave;nh khiếu h&agrave;i hước, H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi c&ograve;n đưa ra những b&iacute; quyết đinh &aacute;p dụng v&agrave;o từng mối quan hệ cụ thể trong cuộc sống.</p>

<p><strong>Nghệ thuật h&agrave;i hước trong cuộc sống gia đ&igrave;nh</strong></p>

<p>Phần đ&ocirc;ng mọi người nhận định trong cuộc sống gia đ&igrave;nh chỉ cần chuyện tr&ograve; thoải m&aacute;i, vợ chồng phải n&oacute;i chyện một c&aacute;ch thực tế, kh&ocirc;ng cần ch&uacute; trọng v&agrave;o nghệ thuật n&oacute;i chuyện. Nhưng họ kh&ocirc;ng biết rằng sự d&iacute; dỏm c&oacute; thể h&oacute;a giải được rất nhiều m&acirc;u thuẫn v&agrave; tranh c&atilde;i vợ chồng, giải tỏa những hiểu nhầm, bất đồng, x&oacute;a nh&ograve;a khoảng c&aacute;ch, thắt chặt t&igrave;nh cảm để cả gia đ&igrave;nh sống trong kh&ocirc;ng kh&iacute; đầm ấm.</p>

<p>Lưu Chấn Hồng trong&nbsp;<strong><em>H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi</em></strong>&nbsp;cho rằng h&agrave;i hước ch&iacute;nh l&agrave; gia vị của h&ocirc;n nh&acirc;n, tạo ra sự b&igrave;nh đảng trong quan hệ vợ chồng. Bởi vậy, trong giao tiếp trong gia đ&igrave;nh, n&ecirc;n d&ugrave;ng sự h&agrave;i hước kh&eacute;o l&eacute;o tr&aacute;ch cứ để kh&ocirc;ng g&acirc;y tổn thương, kh&eacute;o l&eacute;o khen ngợi để kh&ocirc;ng g&acirc;y tự m&atilde;n,... Nhờ vậy, h&agrave;i hước chắc chắn sẽ l&agrave; nh&acirc;n tố vun đắp cuộc sống h&ocirc;n nh&acirc;n bền l&acirc;u.</p>

<p><strong>H&agrave;i hước trong giao tiếp x&atilde; hội</strong></p>

<p>Muốn mở rộng c&aacute;c mối quan hệ một c&aacute;ch thuận lợi th&igrave; sự h&agrave;i hước l&agrave; một điều cần thiết. Một người muốn x&acirc;y dựng c&aacute;c mối quan hệ của m&igrave;nh th&igrave; việc phải giao tiếp với người kh&aacute;c l&agrave; điều đương nhi&ecirc;n. V&agrave;o l&uacute;c n&agrave;y, h&agrave;i hước ch&iacute;nh l&agrave; phương ph&aacute;p giao tiếp tốt nhất.</p>

<p>Trong giao tiếp x&atilde; hội, h&agrave;i hước l&agrave; thi&ecirc;n sứ vui vẻ kết nối t&acirc;m hồn mọi người với nhau, c&oacute; h&agrave;i hước th&igrave; sẽ c&oacute; t&igrave;nh y&ecirc;u v&agrave; t&igrave;nh bạn. Người h&agrave;i hước đi đến đ&acirc;u th&igrave; nơi ấy sẽ c&oacute; được kh&ocirc;ng kh&iacute; h&ograve;a thuận, vui vẻ.</p>

<p><strong>H&agrave;i hước trong c&ocirc;ng việc</strong></p>

<p>H&agrave;i hước l&agrave; một biểu hiện của sự tự tin, phản &aacute;nh tố chất kh&eacute;o l&eacute;o xử l&iacute; quan hệ giao tiếp của mỗi người. Bởi vậy, kh&ocirc;ng lạ khi giờ đ&acirc;y, đ&acirc;y l&agrave; một trong những yếu tố ch&igrave;a kh&oacute;a để nh&agrave; tuyển dụng quyết định quyết định c&ocirc;ng việc của c&aacute;c ứng vi&ecirc;n, hay quản l&yacute; đ&aacute;nh gi&aacute; năng lực của nh&acirc;n vi&ecirc;n trong c&ocirc;ng ty.</p>

<p>Vậy thế n&agrave;o để h&agrave;i hước đạt hiệu quả nơi c&ocirc;ng sở? H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi sẽ cho bạn c&acirc;u trả lời trong từng t&igrave;nh huống cụ thể sau đ&acirc;y: D&ugrave;ng sự h&agrave;i hước để c&oacute; được thiện cảm của cấp dưới, d&ugrave;ng sự h&agrave;i hước để đổi lại th&aacute;i độ th&acirc;n thiện của đồng nghiệp, d&ugrave;ng sự h&agrave;i hước để xoa dịu &aacute;p lực c&ocirc;ng việc hay để đ&agrave;m ph&aacute;n thuyết phục kh&aacute;ch h&agrave;ng.</p>

<p>T&oacute;m lại, biết c&aacute;ch h&agrave;i hước đ&uacute;ng mực sẽ gi&uacute;p bạn th&agrave;nh c&ocirc;ng. Hi vọng rằng sau khi đọc xong cuốn s&aacute;ch H&agrave;i hước một ch&uacute;t thế giới sẽ kh&aacute;c đi, bạn c&oacute; thể biến m&igrave;nh th&agrave;nh một người biết n&oacute;i chuyện, kh&eacute;o lẹo vận dụng những ng&ocirc;n từ h&agrave;i hước, &ldquo;g&atilde;i đ&uacute;ng chỗ ngứa&rdquo; của đối phương để được mọi người y&ecirc;u mến.</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Lưu Chấn Hồng', N'NXB Thanh Niên', CAST(N'2022-03-28' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (13, N'Những Mẫu Chuyện Hài Hước Trong Kinh Doanh Của Người Do Thái', N'Những Mẫu Chuyện Hài Hước Trong Kinh Doanh Của Người Do Thái', 6, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/f2eb4326925a6904304b.jpg', N'<p>D&acirc;n tộc Do Th&aacute;i kh&ocirc;ng những l&agrave; một d&acirc;n tộc kh&ocirc;n ngoan, c&oacute; đầu &oacute;c kinh doanh nhạy b&eacute;n m&agrave; c&ograve;n c&oacute; khiếu h&agrave;i hước. T&agrave;i năng kinh doanh của họ được thể hiện trong c&aacute;c chuyện cười d&acirc;n gian, đặc biệt lưu truyền trong giới doanh nh&acirc;n. Nghi&ecirc;n cứu t&iacute;nh h&agrave;i hước của người Do Th&aacute;i cũng ch&iacute;nh l&agrave; kh&aacute;m ph&aacute; sự kh&ocirc;n ngoan thực tiễn của họ.</p>

<p>Những mẩu chuyện h&agrave;i hước trong kinh doanh của người Do Th&aacute;i&nbsp;phản &aacute;nh nền văn h&oacute;a h&agrave;ng ngh&igrave;n năm của họ. Hơn 100 mẩu chuyện đặc sắc l&agrave; hơn 100 tiếng cười ở nhiều lĩnh vực kh&aacute;c nhau trong đời sống kinh doanh: quản l&yacute;, tiếp thị, đ&agrave;m ph&aacute;n, tiền bạ Những lời b&igrave;nh đi k&egrave;m sẽ gi&uacute;p bạn gợi mở nhiều suy nghĩ v&agrave; nhận ra &yacute; nghĩa s&acirc;u xa m&agrave; từng mẩu chuyện gửi gắm.</p>

<p>Hy vọng rằng bạn sẽ c&oacute; những gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời v&agrave; nghiệm ra được nhiều b&agrave;i học từ những mẩu chuyện th&uacute; vị được g&oacute;p nhặt trong s&aacute;ch, v&agrave; hơn thế nữa, bạn sẽ c&oacute; c&aacute;i nh&igrave;n lạc quan hơn về con người v&agrave; cuộc sống.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935074115003</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/van-lang-books?fhs_campaign=ATTRIBUTE_PRODUCT">Cty Văn H&oacute;a Văn Lang</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Hoa Sơn</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Thanh H&oacute;a</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2019</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>180</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>13.5 x 21 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>175</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/van-lang-books?fhs_campaign=INTERNAL_LINKING">Cty Văn H&oacute;a Văn Lang</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/hai-huoc-truyen-cuoi.html?order=num_orders_month">Top 100 sản phẩm H&agrave;i Hước - Truyện Cười b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>D&acirc;n tộc Do Th&aacute;i kh&ocirc;ng những l&agrave; một d&acirc;n tộc kh&ocirc;n ngoan, c&oacute; đầu &oacute;c kinh doanh nhạy b&eacute;n m&agrave; c&ograve;n c&oacute; khiếu h&agrave;i hước. T&agrave;i năng kinh doanh của họ được thể hiện trong c&aacute;c chuyện cười d&acirc;n gian, đặc biệt lưu truyền trong giới doanh nh&acirc;n. Nghi&ecirc;n cứu t&iacute;nh h&agrave;i hước của người Do Th&aacute;i cũng ch&iacute;nh l&agrave; kh&aacute;m ph&aacute; sự kh&ocirc;n ngoan thực tiễn của họ.</p>

<p>Những mẩu chuyện h&agrave;i hước trong kinh doanh của người Do Th&aacute;i&nbsp;phản &aacute;nh nền văn h&oacute;a h&agrave;ng ngh&igrave;n năm của họ. Hơn 100 mẩu chuyện đặc sắc l&agrave; hơn 100 tiếng cười ở nhiều lĩnh vực kh&aacute;c nhau trong đời sống kinh doanh: quản l&yacute;, tiếp thị, đ&agrave;m ph&aacute;n, tiền bạ Những lời b&igrave;nh đi k&egrave;m sẽ gi&uacute;p bạn gợi mở nhiều suy nghĩ v&agrave; nhận ra &yacute; nghĩa s&acirc;u xa m&agrave; từng mẩu chuyện gửi gắm.</p>

<p>Hy vọng rằng bạn sẽ c&oacute; những gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời v&agrave; nghiệm ra được nhiều b&agrave;i học từ những mẩu chuyện th&uacute; vị được g&oacute;p nhặt trong s&aacute;ch, v&agrave; hơn thế nữa, bạn sẽ c&oacute; c&aacute;i nh&igrave;n lạc quan hơn về con người v&agrave; cuộc sống.</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Hoa Sơn', N'NXB Thanh Hóa', CAST(N'2022-03-28' AS Date), N'30', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (14, N'Năng Lực Hài Hước', N'Năng Lực Hài Hước', 6, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/nangluchaihuoc.jpg', N'<p>Năng lực giao tiếp - Cuốn s&aacute;ch gi&uacute;p bạn &ldquo;Mặn m&ograve;i từ da dẻ&rdquo;</p>

<p>C&oacute; lẽ kh&ocirc;ng &iacute;t lần bạn bị cuốn v&agrave;o mạch cảm x&uacute;c của những c&acirc;u chuyện h&agrave;i hước, hấp dẫn của một ai đ&oacute; bởi c&aacute;ch n&oacute;i chuyện, diễn đạt vui vẻ, h&agrave;i hước của họ. V&agrave; sau mỗi lần như vậy, bạn lại ngầm so s&aacute;nh với bản th&acirc;n, kh&ocirc;ng biết l&agrave;m sao cho c&aacute;ch n&oacute;i chuyện trở n&ecirc;n bớt nhạt nhẽo, v&ocirc; số lần rơi v&agrave;o c&aacute;c t&igrave;nh huống kiểu như:&nbsp;</p>

<p>Trong bữa tiệc mọi người đều vui vẻ phấn khởi, s&ocirc;i nổi rộn r&agrave;ng nhưng bạn lại ngồi một m&igrave;nh &ldquo;ngậm tăm&rdquo;, m&atilde;i mới đủ can đảm n&oacute;i một c&acirc;u th&igrave; khung cảnh vốn dĩ n&aacute;o nhiệt lại trở n&ecirc;n tẻ nhạt, bạn cũng l&uacute;ng t&uacute;ng đến chẳng c&ograve;n mặt mũi.</p>

<p>Hoặc khi bạn đến chỗ l&agrave;m mới, muốn giới thiệu bản th&acirc;n nhưng n&oacute;i xong họ t&ecirc;n liền mặt đỏ như gấc, kh&ocirc;ng n&oacute;i th&ecirc;m được lời n&agrave;o. Khi b&aacute;o c&aacute;o c&ocirc;ng việc, trong khi c&aacute;c đồng nghiệp kh&aacute;c ăn n&oacute;i đĩnh đạc bạn lại c&acirc;m như hến, đầu &oacute;c trống rỗng.&nbsp;</p>

<p>Đừng lo lắng, rất nhiều phiền n&atilde;o từ nhỏ nhặt đến lớn lao bạn gặp phải trong cuộc sống đều c&oacute; thể được giải tỏa khi bạn l&agrave; một người c&oacute; khiếu h&agrave;i hước. Như nh&agrave; văn Anh William Makepeace Thackeray từng n&oacute;i: &ldquo;H&agrave;i hước l&agrave; phục sức đẹp đẽ nhất m&agrave; bạn kho&aacute;c l&ecirc;n người khi x&atilde; giao&rdquo;.&nbsp;</p>

<p>Tuy nhi&ecirc;n, nhiều người lại cho rằng h&agrave;i hước chỉ c&oacute; được từ bẩm sinh, thật ra kh&ocirc;ng phải vậy. H&agrave;i hước c&oacute; thể r&egrave;n luyện theo thời gian th&ocirc;ng qua qu&aacute; tr&igrave;nh giao tiếp, n&oacute;i chuyện với mọi người. V&agrave; nếu bạn muốn cải thiện loại năng lực n&agrave;y, trở th&agrave;nh một người h&agrave;i hước, đi tới đ&acirc;u cũng mang theo một kh&iacute; chất được ch&agrave;o đ&oacute;n, để lại ấn tượng s&acirc;u sắc th&igrave; đ&acirc;y l&agrave; cuốn s&aacute;ch d&agrave;nh cho bạn.&nbsp;</p>

<p>&ldquo;Năng lực h&agrave;i hước&rdquo;, sẽ gi&uacute;p bạn từng bước x&acirc;y dựng n&ecirc;n một con người ấn tượng, đạt được đến đỉnh cao của giao tiếp, biến bản th&acirc;n trở th&agrave;nh &ldquo;trung t&acirc;m&rdquo;, từ c&aacute;c cuộc họp mặt gia đ&igrave;nh, bạn b&egrave;, đồng nghiệp cho đến c&aacute;c b&agrave;i diễn thuyết trước c&ocirc;ng ch&uacute;ng. Bạn cũng kh&ocirc;ng c&ograve;n phải lo thiếu &ldquo;gia vị&rdquo; cho những c&acirc;u chuyện của m&igrave;nh, hiểu thế n&agrave;o mới l&agrave; h&agrave;i hước thực sự, đ&uacute;ng l&uacute;c v&agrave; đ&uacute;ng chỗ, ứng biến ph&ugrave; hợp trong từng ho&agrave;n cảnh.&nbsp;</p>

<p>Loại năng lực n&agrave;y giống như một th&oacute;i quen, nếu bạn d&ugrave;ng n&oacute; thường xuy&ecirc;n, sự th&ocirc;ng minh d&iacute; dỏm thực sự c&oacute; thể h&ograve;a v&agrave;o gen của bạn đ&oacute;. Hy vọng cuốn s&aacute;ch sẽ g&oacute;p phần mang lại một diện mạo mới cho cuộc sống của bạn nhờ v&agrave;o năng lực h&agrave;i hước n&agrave;y.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935325001314</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/az-viet-nam?fhs_campaign=ATTRIBUTE_PRODUCT">AZ Việt Nam</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>L&yacute; T&acirc;n</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Nguyễn Lưu Ngọc</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Thanh Ni&ecirc;n</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>300</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 14.5 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>280</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/tam-ly-ky-nang-song/ky-nang-song.html?order=num_orders_month">Top 100 sản phẩm Kỹ năng sống b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>Năng lực giao tiếp - Cuốn s&aacute;ch gi&uacute;p bạn &ldquo;Mặn m&ograve;i từ da dẻ&rdquo;</p>

<p>C&oacute; lẽ kh&ocirc;ng &iacute;t lần bạn bị cuốn v&agrave;o mạch cảm x&uacute;c của những c&acirc;u chuyện h&agrave;i hước, hấp dẫn của một ai đ&oacute; bởi c&aacute;ch n&oacute;i chuyện, diễn đạt vui vẻ, h&agrave;i hước của họ. V&agrave; sau mỗi lần như vậy, bạn lại ngầm so s&aacute;nh với bản th&acirc;n, kh&ocirc;ng biết l&agrave;m sao cho c&aacute;ch n&oacute;i chuyện trở n&ecirc;n bớt nhạt nhẽo, v&ocirc; số lần rơi v&agrave;o c&aacute;c t&igrave;nh huống kiểu như:&nbsp;</p>

<p>Trong bữa tiệc mọi người đều vui vẻ phấn khởi, s&ocirc;i nổi rộn r&agrave;ng nhưng bạn lại ngồi một m&igrave;nh &ldquo;ngậm tăm&rdquo;, m&atilde;i mới đủ can đảm n&oacute;i một c&acirc;u th&igrave; khung cảnh vốn dĩ n&aacute;o nhiệt lại trở n&ecirc;n tẻ nhạt, bạn cũng l&uacute;ng t&uacute;ng đến chẳng c&ograve;n mặt mũi.</p>

<p>Hoặc khi bạn đến chỗ l&agrave;m mới, muốn giới thiệu bản th&acirc;n nhưng n&oacute;i xong họ t&ecirc;n liền mặt đỏ như gấc, kh&ocirc;ng n&oacute;i th&ecirc;m được lời n&agrave;o. Khi b&aacute;o c&aacute;o c&ocirc;ng việc, trong khi c&aacute;c đồng nghiệp kh&aacute;c ăn n&oacute;i đĩnh đạc bạn lại c&acirc;m như hến, đầu &oacute;c trống rỗng.&nbsp;</p>

<p>Đừng lo lắng, rất nhiều phiền n&atilde;o từ nhỏ nhặt đến lớn lao bạn gặp phải trong cuộc sống đều c&oacute; thể được giải tỏa khi bạn l&agrave; một người c&oacute; khiếu h&agrave;i hước. Như nh&agrave; văn Anh William Makepeace Thackeray từng n&oacute;i: &ldquo;H&agrave;i hước l&agrave; phục sức đẹp đẽ nhất m&agrave; bạn kho&aacute;c l&ecirc;n người khi x&atilde; giao&rdquo;.&nbsp;</p>

<p>Tuy nhi&ecirc;n, nhiều người lại cho rằng h&agrave;i hước chỉ c&oacute; được từ bẩm sinh, thật ra kh&ocirc;ng phải vậy. H&agrave;i hước c&oacute; thể r&egrave;n luyện theo thời gian th&ocirc;ng qua qu&aacute; tr&igrave;nh giao tiếp, n&oacute;i chuyện với mọi người. V&agrave; nếu bạn muốn cải thiện loại năng lực n&agrave;y, trở th&agrave;nh một người h&agrave;i hước, đi tới đ&acirc;u cũng mang theo một kh&iacute; chất được ch&agrave;o đ&oacute;n, để lại ấn tượng s&acirc;u sắc th&igrave; đ&acirc;y l&agrave; cuốn s&aacute;ch d&agrave;nh cho bạn.&nbsp;</p>

<p>&ldquo;Năng lực h&agrave;i hước&rdquo;, sẽ gi&uacute;p bạn từng bước x&acirc;y dựng n&ecirc;n một con người ấn tượng, đạt được đến đỉnh cao của giao tiếp, biến bản th&acirc;n trở th&agrave;nh &ldquo;trung t&acirc;m&rdquo;, từ c&aacute;c cuộc họp mặt gia đ&igrave;nh, bạn b&egrave;, đồng nghiệp cho đến c&aacute;c b&agrave;i diễn thuyết trước c&ocirc;ng ch&uacute;ng. Bạn cũng kh&ocirc;ng c&ograve;n phải lo thiếu &ldquo;gia vị&rdquo; cho những c&acirc;u chuyện của m&igrave;nh, hiểu thế n&agrave;o mới l&agrave; h&agrave;i hước thực sự, đ&uacute;ng l&uacute;c v&agrave; đ&uacute;ng chỗ, ứng biến ph&ugrave; hợp trong từng ho&agrave;n cảnh.&nbsp;</p>

<p>Loại năng lực n&agrave;y giống như một th&oacute;i quen, nếu bạn d&ugrave;ng n&oacute; thường xuy&ecirc;n, sự th&ocirc;ng minh d&iacute; dỏm thực sự c&oacute; thể h&ograve;a v&agrave;o gen của bạn đ&oacute;. Hy vọng cuốn s&aacute;ch sẽ g&oacute;p phần mang lại một diện mạo mới cho cuộc sống của bạn nhờ v&agrave;o năng lực h&agrave;i hước n&agrave;y.</p>
', 2, CAST(150000.00 AS Numeric(18, 2)), N'Lý Tân', N'NXB Thanh Niên', CAST(N'2022-03-28' AS Date), N'15', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (15, N'Jesse Cười Và Cuộc Phiêu Lưu Hài Hước', N'Jesse Cười Và Cuộc Phiêu Lưu Hài Hước', 6, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/8934974154433.jpg', N'<p>Jesse Cười V&agrave; Cuộc Phi&ecirc;u Lưu H&agrave;i Hước</p>

<p>Jesse l&agrave; một nh&agrave; văn Canada, đ&atilde; từng đi l&iacute;nh ở chiến trường Afghanistan, sống l&agrave; v&agrave; l&agrave;m việc ở nhiều nơi tr&ecirc;n thế giới trước khi đến Việt Nam. Anh từng l&agrave; quản l&yacute; một Trung t&acirc;m tiếng Anh tại TP.HCM trước khi l&agrave;m việc tại b&aacute;o Tuổi Trẻ Cười v&agrave; l&agrave;m MC cho k&ecirc;nh truyền h&igrave;nh VTC 10, đồng thời tham gia c&aacute;c talk show, viết cho nhiều tờ b&aacute;o lớn&hellip; Jesse cũng l&agrave; một hiện tượng mạng x&atilde; hội với rất nhiều người theo d&otilde;i. Nhiều b&aacute;o, đ&agrave;i đ&atilde; viết b&agrave;i v&agrave; l&agrave;m phim về Jesse &ndash; một anh ch&agrave;ng vui nhộn m&ecirc; phượt, dạy tiếng Anh từ thiện, rất y&ecirc;u qu&yacute; h&agrave;ng x&oacute;m của m&igrave;nh.</p>

<p>Cuốn s&aacute;ch JESSE CƯỜI v&agrave; chuyến phi&ecirc;u lưu h&agrave;i hước gồm những c&acirc;u chuyện h&oacute;m hỉnh, vui nhộn của một anh T&acirc;y sống tại VN, rất h&ograve;a nhập nhưng cũng đặc biệt độc đ&aacute;o với c&aacute;c g&oacute;c nh&igrave;n th&acirc;m trầm s&acirc;u sắc.</p>

<p>&nbsp;<br />
Lời giới thiệu của b&aacute;o Tuổi Trẻ Cười:<br />
&ldquo;Học tiếng Việt, viết tiếng Việt đ&atilde; kh&oacute;. Kh&oacute; hơn&nbsp; khi sử dụng tiếng Việt đ&oacute; để viết b&aacute;o Việt Nam. V&agrave;&nbsp; như thế, bạn h&igrave;nh dung, để viết được ng&ocirc;n ngữ h&agrave;i hước v&agrave; đứng mục JESSE CƯỜI tr&ecirc;n tờ b&aacute;o ch&acirc;m biếm tr&agrave;o ph&uacute;ng&nbsp; như TUỔI TRẺ CƯỜI, tờ b&aacute;o m&agrave; ngay cả nh&agrave; b&aacute;o người Việt đ&ocirc;i khi cũng gặp kh&oacute;,&nbsp; th&igrave; Jesse Peterson quả l&agrave; một &lsquo;chiến binh&rsquo;!<br />
Jesse đọc nhiều, c&oacute; kiến thức, trải nghiệm cuộc sống qua nhiều nơi, nhiều m&ocirc;i trường &hellip; tr&ecirc;n thế giới. Jesse đến Việt Nam dạy học, l&agrave;m cho một tổ chức gi&aacute;o dục lương cao nhưng rồi m&ecirc; đi trekking, tự m&igrave;nh ra dạy học, viết b&aacute;o, kiếm được đủ tiền lại tắt điện thoại x&aacute;ch xe m&ocirc;-t&ocirc; v&agrave;o tận s&acirc;u trong rừng ở lại đ&oacute; chừng một hai tuần rồi trở về l&agrave;m lại. Anh ta bảo: Đừng c&oacute; tham, tiền bạc trong x&atilde; hội l&agrave; đủ cho từng người, bạn tham l&agrave; bạn gi&agrave;nh lấy tiền từ t&uacute;i người kh&aacute;c đ&oacute;!<br />
Jesse l&agrave; kẻ n&oacute;i ngược. Với anh ta, nếu biết&nbsp; lắng nghe c&aacute;i c&acirc;y v&agrave; con m&egrave;o n&oacute;i chuyện, ch&uacute;ng sẽ c&oacute; một c&aacute;ch nghĩ ho&agrave;n to&agrave;n kh&aacute;c với mặc định của con người. Jesse lật tung vấn đề bằng một g&oacute;c nh&igrave;n ngược của tư duy h&agrave;i hước. V&agrave;, anh ta th&agrave;nh một&rsquo;chiến binh&rdquo;&rsquo;trong cuộc chinh phục ng&ocirc;n ngữ Tiếng Việt của m&igrave;nh. Như ng&agrave;y xưa, anh từng l&agrave; một người l&iacute;nh thật sự tr&ecirc;n chiến trường Afghanistan&hellip;&rdquo;<br />
NGUYỄN VĂN TIẾN H&Ugrave;NG &nbsp;<br />
(Thư k&yacute; t&ograve;a soạn phụ tr&aacute;ch b&aacute;o TUỔI TRẺ CƯỜI)&nbsp;</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8934974154433</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/nxb-tre?fhs_campaign=ATTRIBUTE_PRODUCT">NXB Trẻ</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Jesse Peterson</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Trẻ</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2018</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>400</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>13 x 20</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>332</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/the-duc-the-thao-giai-tri.html?order=num_orders_month">Top 100 sản phẩm Thể Dục Thể thao - Giải Tr&iacute; b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p>Jesse Cười V&agrave; Cuộc Phi&ecirc;u Lưu H&agrave;i Hước</p>

<p>Jesse l&agrave; một nh&agrave; văn Canada, đ&atilde; từng đi l&iacute;nh ở chiến trường Afghanistan, sống l&agrave; v&agrave; l&agrave;m việc ở nhiều nơi tr&ecirc;n thế giới trước khi đến Việt Nam. Anh từng l&agrave; quản l&yacute; một Trung t&acirc;m tiếng Anh tại TP.HCM trước khi l&agrave;m việc tại b&aacute;o Tuổi Trẻ Cười v&agrave; l&agrave;m MC cho k&ecirc;nh truyền h&igrave;nh VTC 10, đồng thời tham gia c&aacute;c talk show, viết cho nhiều tờ b&aacute;o lớn&hellip; Jesse cũng l&agrave; một hiện tượng mạng x&atilde; hội với rất nhiều người theo d&otilde;i. Nhiều b&aacute;o, đ&agrave;i đ&atilde; viết b&agrave;i v&agrave; l&agrave;m phim về Jesse &ndash; một anh ch&agrave;ng vui nhộn m&ecirc; phượt, dạy tiếng Anh từ thiện, rất y&ecirc;u qu&yacute; h&agrave;ng x&oacute;m của m&igrave;nh.</p>

<p>Cuốn s&aacute;ch JESSE CƯỜI v&agrave; chuyến phi&ecirc;u lưu h&agrave;i hước gồm những c&acirc;u chuyện h&oacute;m hỉnh, vui nhộn của một anh T&acirc;y sống tại VN, rất h&ograve;a nhập nhưng cũng đặc biệt độc đ&aacute;o với c&aacute;c g&oacute;c nh&igrave;n th&acirc;m trầm s&acirc;u sắc.</p>

<p>&nbsp;<br />
Lời giới thiệu của b&aacute;o Tuổi Trẻ Cười:<br />
&ldquo;Học tiếng Việt, viết tiếng Việt đ&atilde; kh&oacute;. Kh&oacute; hơn&nbsp; khi sử dụng tiếng Việt đ&oacute; để viết b&aacute;o Việt Nam. V&agrave;&nbsp; như thế, bạn h&igrave;nh dung, để viết được ng&ocirc;n ngữ h&agrave;i hước v&agrave; đứng mục JESSE CƯỜI tr&ecirc;n tờ b&aacute;o ch&acirc;m biếm tr&agrave;o ph&uacute;ng&nbsp; như TUỔI TRẺ CƯỜI, tờ b&aacute;o m&agrave; ngay cả nh&agrave; b&aacute;o người Việt đ&ocirc;i khi cũng gặp kh&oacute;,&nbsp; th&igrave; Jesse Peterson quả l&agrave; một &lsquo;chiến binh&rsquo;!<br />
Jesse đọc nhiều, c&oacute; kiến thức, trải nghiệm cuộc sống qua nhiều nơi, nhiều m&ocirc;i trường &hellip; tr&ecirc;n thế giới. Jesse đến Việt Nam dạy học, l&agrave;m cho một tổ chức gi&aacute;o dục lương cao nhưng rồi m&ecirc; đi trekking, tự m&igrave;nh ra dạy học, viết b&aacute;o, kiếm được đủ tiền lại tắt điện thoại x&aacute;ch xe m&ocirc;-t&ocirc; v&agrave;o tận s&acirc;u trong rừng ở lại đ&oacute; chừng một hai tuần rồi trở về l&agrave;m lại. Anh ta bảo: Đừng c&oacute; tham, tiền bạc trong x&atilde; hội l&agrave; đủ cho từng người, bạn tham l&agrave; bạn gi&agrave;nh lấy tiền từ t&uacute;i người kh&aacute;c đ&oacute;!<br />
Jesse l&agrave; kẻ n&oacute;i ngược. Với anh ta, nếu biết&nbsp; lắng nghe c&aacute;i c&acirc;y v&agrave; con m&egrave;o n&oacute;i chuyện, ch&uacute;ng sẽ c&oacute; một c&aacute;ch nghĩ ho&agrave;n to&agrave;n kh&aacute;c với mặc định của con người. Jesse lật tung vấn đề bằng một g&oacute;c nh&igrave;n ngược của tư duy h&agrave;i hước. V&agrave;, anh ta th&agrave;nh một&rsquo;chiến binh&rdquo;&rsquo;trong cuộc chinh phục ng&ocirc;n ngữ Tiếng Việt của m&igrave;nh. Như ng&agrave;y xưa, anh từng l&agrave; một người l&iacute;nh thật sự tr&ecirc;n chiến trường Afghanistan&hellip;&rdquo;<br />
NGUYỄN VĂN TIẾN H&Ugrave;NG &nbsp;<br />
(Thư k&yacute; t&ograve;a soạn phụ tr&aacute;ch b&aacute;o TUỔI TRẺ CƯỜI)&nbsp;</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Jesse Peterson', N'NXB Trẻ', CAST(N'2022-03-28' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (16, N'Agatha Christie - Vụ Biến Mất Bí Ẩn Của Nữ Hoàng Trinh Thám', N'Agatha Christie - Vụ Biến Mất Bí Ẩn Của Nữ Hoàng Trinh Thám', 3, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/8936066693424.jpg', N'<p>Một c&acirc;u trả lời HƯ CẤU hấp dẫn cho một b&iacute; ẩn lịch sử C&Oacute; THẬT</p>

<p>T&aacute;c phẩm viết về mười một ng&agrave;y mất t&iacute;ch b&iacute; ẩn của nữ tiểu thuyết gia trinh th&aacute;m Agatha Christie. Nguy&ecirc;n nh&acirc;n của sự mất t&iacute;ch n&agrave;y xuất ph&aacute;t từ cuộc h&ocirc;n nh&acirc;n kh&ocirc;ng hạnh ph&uacute;c của b&agrave; với người chồng l&agrave; một Đại t&aacute; qu&acirc;n đội. Sau khi ph&aacute;t hiện ra chồng đ&atilde; c&oacute; người phụ nữ kh&aacute;c, b&agrave; l&ecirc;n kế hoạch &quot;biến mất&quot; khỏi nơi m&igrave;nh sinh sống, c&ugrave;ng một l&aacute; thư để lại cho người chồng. Cảnh s&aacute;t đ&atilde; huy động một cuộc t&igrave;m kiếm nữ tiểu thuyết gia với quy m&ocirc; lớn chưa từng c&oacute; l&uacute;c bấy giờ. Sau đ&oacute;, hai cảnh s&aacute;t điều tra v&agrave; chồng của b&agrave; đ&atilde; t&igrave;m thấy b&agrave; tại một kh&aacute;ch sạn ở một th&agrave;nh phố kh&aacute;c. Điều đặc biệt l&agrave; Agatha Christie đ&atilde; d&ugrave;ng ch&iacute;nh t&ecirc;n nh&acirc;n t&igrave;nh của chồng để giao tiếp trong thời gian ở kh&aacute;ch sạn. Điều n&agrave;y đ&atilde; khiến chồng b&agrave; vừa ngạc nhi&ecirc;n vừa tức giận. Đằng sau sự mất t&iacute;ch b&iacute; ẩn ấy l&agrave; một cuộc h&ocirc;n nh&acirc;n đ&atilde; tồn tại rất nhiều vấn đề kh&ocirc;ng thể cứu v&atilde;n, l&agrave; nỗi buồn, sự thất vọng của Agatha khi b&agrave; cảm thấy chưa bao giờ nhận được t&igrave;nh y&ecirc;u của chồng d&ugrave; c&oacute; cố gắng đến đ&acirc;u. T&aacute;c phẩm dựa tr&ecirc;n sự kiện c&oacute; thật v&agrave; g&acirc;y x&ocirc;n xao dư luận suốt một thời gian, h&eacute; lộ một phần cuộc sống của nữ tiểu thuyết gia nổi tiếng Agatha Christie.</p>

<p>Th&ocirc;ng tin t&aacute;c giả:</p>

<p>MARIE BENEDICTIS l&agrave; một luật sư với hơn mười năm kinh nghiệm l&agrave;m luật sư tranh tụng tại hai trong số c&aacute;c c&ocirc;ng ty luật h&agrave;ng đầu của đất nước v&agrave; cho c&aacute;c c&ocirc;ng ty trong danh s&aacute;ch Fortune 500. C&ocirc; tốt nghiệp Đại học Boston College, chuy&ecirc;n ng&agrave;nh lịch sử v&agrave; lịch sử nghệ thuật v&agrave; l&agrave; cử nh&acirc;n xuất sắc của Trường Luật Đại học Boston. Marie, t&aacute;c giả của The Other Einstein , Carnegie&#39;s Maid , The Only Woman in the Room , v&agrave; Lady Clementine , tự xem m&igrave;nh như một nh&agrave; khảo cổ học, kể những c&acirc;u chuyện chưa kể về phụ nữ. C&ocirc; sống ở Pittsburgh với gia đ&igrave;nh.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8936066693424</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/1980-books?fhs_campaign=ATTRIBUTE_PRODUCT">1980 Books</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Marie Benedict</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Ph&iacute; Mai</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Thanh Ni&ecirc;n</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2022</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>450</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 13 x 2 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>408</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/1980-books?fhs_campaign=INTERNAL_LINKING">1980 Books</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/truyen-trinh-tham-vien-tuong.html?order=num_orders_month">Top 100 sản phẩm Truyện Trinh Th&aacute;m - Kiếm Hiệp b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Agatha Christie - Vụ Biến Mất B&iacute; Ẩn Của Nữ Ho&agrave;ng Trinh Th&aacute;m</strong></p>

<p>Một c&acirc;u trả lời HƯ CẤU hấp dẫn cho một b&iacute; ẩn lịch sử C&Oacute; THẬT</p>

<p>T&aacute;c phẩm viết về mười một ng&agrave;y mất t&iacute;ch b&iacute; ẩn của nữ tiểu thuyết gia trinh th&aacute;m Agatha Christie. Nguy&ecirc;n nh&acirc;n của sự mất t&iacute;ch n&agrave;y xuất ph&aacute;t từ cuộc h&ocirc;n nh&acirc;n kh&ocirc;ng hạnh ph&uacute;c của b&agrave; với người chồng l&agrave; một Đại t&aacute; qu&acirc;n đội. Sau khi ph&aacute;t hiện ra chồng đ&atilde; c&oacute; người phụ nữ kh&aacute;c, b&agrave; l&ecirc;n kế hoạch &quot;biến mất&quot; khỏi nơi m&igrave;nh sinh sống, c&ugrave;ng một l&aacute; thư để lại cho người chồng. Cảnh s&aacute;t đ&atilde; huy động một cuộc t&igrave;m kiếm nữ tiểu thuyết gia với quy m&ocirc; lớn chưa từng c&oacute; l&uacute;c bấy giờ. Sau đ&oacute;, hai cảnh s&aacute;t điều tra v&agrave; chồng của b&agrave; đ&atilde; t&igrave;m thấy b&agrave; tại một kh&aacute;ch sạn ở một th&agrave;nh phố kh&aacute;c. Điều đặc biệt l&agrave; Agatha Christie đ&atilde; d&ugrave;ng ch&iacute;nh t&ecirc;n nh&acirc;n t&igrave;nh của chồng để giao tiếp trong thời gian ở kh&aacute;ch sạn. Điều n&agrave;y đ&atilde; khiến chồng b&agrave; vừa ngạc nhi&ecirc;n vừa tức giận. Đằng sau sự mất t&iacute;ch b&iacute; ẩn ấy l&agrave; một cuộc h&ocirc;n nh&acirc;n đ&atilde; tồn tại rất nhiều vấn đề kh&ocirc;ng thể cứu v&atilde;n, l&agrave; nỗi buồn, sự thất vọng của Agatha khi b&agrave; cảm thấy chưa bao giờ nhận được t&igrave;nh y&ecirc;u của chồng d&ugrave; c&oacute; cố gắng đến đ&acirc;u. T&aacute;c phẩm dựa tr&ecirc;n sự kiện c&oacute; thật v&agrave; g&acirc;y x&ocirc;n xao dư luận suốt một thời gian, h&eacute; lộ một phần cuộc sống của nữ tiểu thuyết gia nổi tiếng Agatha Christie.</p>

<p>Th&ocirc;ng tin t&aacute;c giả:</p>

<p>MARIE BENEDICTIS l&agrave; một luật sư với hơn mười năm kinh nghiệm l&agrave;m luật sư tranh tụng tại hai trong số c&aacute;c c&ocirc;ng ty luật h&agrave;ng đầu của đất nước v&agrave; cho c&aacute;c c&ocirc;ng ty trong danh s&aacute;ch Fortune 500. C&ocirc; tốt nghiệp Đại học Boston College, chuy&ecirc;n ng&agrave;nh lịch sử v&agrave; lịch sử nghệ thuật v&agrave; l&agrave; cử nh&acirc;n xuất sắc của Trường Luật Đại học Boston. Marie, t&aacute;c giả của The Other Einstein , Carnegie&#39;s Maid , The Only Woman in the Room , v&agrave; Lady Clementine , tự xem m&igrave;nh như một nh&agrave; khảo cổ học, kể những c&acirc;u chuyện chưa kể về phụ nữ. C&ocirc; sống ở Pittsburgh với gia đ&igrave;nh.</p>
', 1, CAST(150000.00 AS Numeric(18, 2)), N'Marie Benedict', N'NXB Thanh Niên', CAST(N'2022-03-28' AS Date), N'30', 12)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (17, N'Combo Siêu Trinh Thám: Nguồn Cội + Sống Sót Ở Berlin + Mình Cần Nói Chuyện Về Kevin', N'Combo Siêu Trinh Thám: Nguồn Cội + Sống Sót Ở Berlin + Mình Cần Nói Chuyện Về Kevin', 3, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_209182.jpg', N'<p><strong>Combo Si&ecirc;u Trinh Th&aacute;m: Nguồn Cội + Sống S&oacute;t Ở Berlin + M&igrave;nh Cần N&oacute;i Chuyện Về Kevin (Bộ 3 Cuốn)</strong></p>

<p><strong>1.&nbsp;Sống S&oacute;t Ở Berlin</strong></p>

<p>Erik Larson sinh ra tại Brooklyn, New York, Mỹ. &Ocirc;ng nổi tiếng với d&ograve;ng truyện phi hư cấu về lịch sử, kh&ocirc;ng thể kh&ocirc;ng nhắc tới cuốn &ldquo;<strong>Sống s&oacute;t ở Berlin</strong>&rdquo;.</p>

<p>Cuốn s&aacute;ch n&oacute;i về lịch sử nước Đức ng&agrave;y c&agrave;ng ch&igrave;m s&acirc;u b&oacute;ng tối sau thời khắc Tr&ugrave;m Ph&aacute;t x&iacute;t Adofl Hitler trở th&agrave;nh Thủ tướng của Đế chế Đức v&agrave;o năm 1933. Kể từ đ&oacute; trở đi, nước Đức xảy ra bạo lực li&ecirc;n mi&ecirc;n v&agrave; nạn ph&acirc;n biệt chủng tộc, đặc biệt đối với người Do Th&aacute;i, Hitler quan ngại với người Do Th&aacute;i bởi ch&iacute;nh sự t&agrave;i năng của nh&oacute;m người đ&oacute; sẽ l&agrave;m ảnh hưởng, cản trở đối với quyền lực của hắn.</p>

<p>Đ&uacute;ng v&agrave;o thời điểm đ&oacute;, &ocirc;ng William E.Dodd &ndash; một gi&aacute;o sư lịch sử được cử sang Berlin l&agrave;m Đại sứ Hoa Kỳ tại Đức. &Ocirc;ng c&ugrave;ng c&ocirc; con g&aacute;i &ndash; Martha sớm được trải nghiệm một nước Đức kỳ lạ, tươi đẹp, nhưng cũng đầy rẫy hiểm nguy bủa v&acirc;y. Trong khi đ&oacute;, Hitler lại ng&agrave;y c&agrave;ng tỏ ra thiện ch&iacute; v&agrave; ưa chuộng h&ograve;a b&igrave;nh.</p>

<p>Nhưng liệu mọi người nghe thấy, nh&igrave;n thấy v&agrave; ngửi thấy g&igrave;? C&aacute;c nh&agrave; ngoại giao v&agrave; du kh&aacute;ch giải th&iacute;ch những sự kiện diễn ra xung quanh họ như thế n&agrave;o? V&agrave; c&oacute; ai thấy được bộ mặt thật của Tr&ugrave;m Ph&aacute;t x&iacute;t Hitler v&agrave; ngăn hắn lại khi qu&aacute; muộn???...</p>

<p><strong>Đoạn tr&iacute;ch:</strong></p>

<p>&ldquo;Nước Đức đang trải qua sự thay đổi mang t&iacute;nh c&aacute;ch mạng, dưới sự l&atilde;nh đạo của Thủ tướng mới đắc cử&nbsp; - Adolf Hitler. T&ugrave;y quan điểm mỗi người, Đức hoặc đang c&oacute; sự hồi sinh mạnh mẽ hoặc đang ch&igrave;m trong b&oacute;ng đ&ecirc;m t&agrave;n &aacute;c&rdquo;&nbsp;<strong>- Erik Larson.</strong></p>

<p>&ldquo;Chỉ c&oacute; đ&agrave;n &aacute;p t&agrave;n bạo v&agrave; đẫm m&aacute;u mới b&oacute;p chết được cuộc nổi dậy từ trong trứng nước&hellip; Bản th&acirc;n ta ch&iacute;nh l&agrave; T&ograve;a &aacute;n C&ocirc;ng l&iacute; Tối cao của Nh&acirc;n d&acirc;n Đức&rdquo;<strong>&nbsp;&ndash; Adolf Hitler.</strong></p>

<p><strong>2. M&igrave;nh Cần N&oacute;i Chuyện Về Kevin</strong></p>

<p>Ngay từ khi sinh ra cho đến khi lớn l&ecirc;n, Kevin chưa bao giờ c&oacute; sự gắn b&oacute; cũng như li&ecirc;n kết với mẹ m&igrave;nh. Thậm ch&iacute; cậu c&ograve;n tỏ ra chống đối, c&oacute; những h&agrave;nh động kỳ quặc đối với Eva.</p>

<p>H&agrave;ng loạt sự kiện trong gia đ&igrave;nh xảy ra khiến Eva v&ocirc; c&ugrave;ng lo lắng về Kevin thế nhưng &ocirc;ng chồng Franklin lại gạt đi v&agrave; lu&ocirc;n cho rằng đ&oacute; l&agrave; v&igrave; Kevin c&ograve;n nhỏ tuổi.</p>

<p>Thế rồi, một sự kiện t&agrave;n khốc xảy ra, Kevin l&ecirc;n kế hoạch thảm s&aacute;t giết 7 người tất cả ở trường trung học v&agrave;o năm 16 tuổi. Sự kiện bi thảm n&agrave;y g&acirc;y n&ecirc;n sự hận th&ugrave; khủng khiếp của c&aacute;c phụ huynh v&agrave; gia đ&igrave;nh Eva tan n&aacute;t như một lẽ tất yếu.</p>

<p>Khi một đứa trẻ phạm sai lầm kh&oacute; tha thứ, ai l&agrave; người phải chịu tr&aacute;ch nhiệm? L&agrave; bản th&acirc;n đứa trẻ đ&oacute;, v&igrave; n&oacute; sinh ra đ&atilde; c&oacute; những lệch lạc trong nh&acirc;n c&aacute;ch, v&agrave; chỉ đợi thời cơ để giải tho&aacute;t con quỷ b&ecirc;n trong? Hay đ&oacute; l&agrave; lỗi của gia đ&igrave;nh v&igrave; đ&atilde; c&oacute; những c&aacute;ch gi&aacute;o dục sai lầm, thiếu sự quan t&acirc;m thực sự d&agrave;nh cho con m&igrave;nh?</p>

<p>Cuốn s&aacute;ch từng được chuyển thể th&agrave;nh phim, ra mắt năm 2011 v&agrave; nhận được đề cử danh gi&aacute; cho giải&nbsp;<em>C&agrave;nh cọ v&agrave;ng</em>&nbsp;ở Li&ecirc;n hoan phim Cannes, giải BAFTA, giải&nbsp;<em>Quả cầu v&agrave;ng</em>&nbsp;c&ugrave;ng nhiều giải thưởng quan trọng kh&aacute;c.</p>

<p><strong>3.&nbsp;Nguồn Cội</strong></p>

<p>Robert Langdon, gi&aacute;o sư biểu tượng v&agrave; biểu tượng t&ocirc;n gi&aacute;o đến từ trường đại học Harvard, đ&atilde; tới Bảo t&agrave;ng Guggenheim Bilbao để tham dự một sự kiện quan trọng - c&ocirc;ng bố một ph&aacute;t hiện &quot;sẽ thay đổi bộ mặt khoa học m&atilde;i m&atilde;i&quot;.</p>

<p>Edmond Kirsch l&agrave; một tỷ ph&uacute; bốn mươi tuổi, một nh&agrave; ti&ecirc;n tri. Những ph&aacute;t minh kỹ thuật cao v&agrave; những dự đo&aacute;n t&aacute;o bạo đ&atilde; l&agrave;m cho anh trở th&agrave;nh một nh&acirc;n vật nổi tiếng to&agrave;n cầu. Kirsch - cũng ch&iacute;nh l&agrave; một trong những sinh vi&ecirc;n đầu ti&ecirc;n của Langdon tại đại học Harvard c&aacute;ch đ&acirc;y hai thập kỷ - sẽ tiết lộ một bước đột ph&aacute; đ&aacute;ng kinh ngạc...</p>

<p>N&oacute; sẽ trả lời hai c&acirc;u hỏi cơ bản về sự tồn tại của con người:<br />
<em>&quot;Ch&uacute;ng ta đến từ đ&acirc;u?&quot; v&agrave; &quot;Ch&uacute;ng ta đang đi về đ&acirc;u?&quot;</em></p>

<p>Khi sự kiện bắt đầu, Langdon v&agrave; v&agrave;i trăm quan kh&aacute;ch bị cuốn h&uacute;t bởi một b&agrave;i thuyết tr&igrave;nh độc đ&aacute;o m&agrave; ch&iacute;nh Langdon cũng nhận thấy rằng sẽ g&acirc;y ra nhiều tranh c&atilde;i hơn những g&igrave; &ocirc;ng tưởng tượng. Nhưng sự kiện n&agrave;y đột nhi&ecirc;n biến th&agrave;nh cuộc hỗn loạn, v&agrave; kh&aacute;m ph&aacute; qu&yacute; gi&aacute; của Kirsch đang dần biến mất vĩnh viễn. Trước nguy cơ phải đối mặt với một mối đe doạ sắp xảy ra, Langdon bị buộc phải bỏ trốn để tho&aacute;t khỏi Bilbao c&ugrave;ng Ambra Vidal - Ho&agrave;ng hậu tương lai của T&acirc;y Ban Nha để t&igrave;m ra mật khẩu b&iacute; ẩn sẽ mở ra b&iacute; mật của Kirsch.</p>

<p>Để chiến thắng những b&iacute; mật được giấu k&iacute;n của lịch sử v&agrave; t&ocirc;n gi&aacute;o cực đoan, Langdon v&agrave; Ambra phải trốn tr&aacute;nh một thế lực với sức mạnh dường như xuất ph&aacute;t từ ch&iacute;nh Ho&agrave;ng gia T&acirc;y Ban Nha... v&agrave; đang cố t&igrave;m c&aacute;ch để giữ Edmond Kirsch im lặng. Tr&ecirc;n một h&agrave;nh tr&igrave;nh được đ&aacute;nh dấu bởi c&aacute;c t&aacute;c phẩm nghệ thuật hiện đại v&agrave; c&aacute;c k&yacute; hiệu b&iacute; ẩn, Langdon v&agrave; Vidal đ&atilde; t&igrave;m ra những manh mối cuối c&ugrave;ng đưa họ đối mặt với kh&aacute;m ph&aacute; g&acirc;y sốc của Kirsch... v&agrave; sự thật m&agrave; từ l&acirc;u ch&uacute;ng ta đ&atilde; t&igrave;m kiếm.</p>

<p><strong>Combo bao gồm:</strong></p>

<p><a href="https://www.fahasa.com/song-sot-o-berlin.html"><strong>1. Sống S&oacute;t Ở Berlin</strong></a></p>

<p><a href="https://www.fahasa.com/nguon-coi.html"><strong>2. Nguồn Cội</strong></a></p>

<p><a href="https://www.fahasa.com/minh-can-noi-chuyen-ve-kevin.html"><strong>3. M&igrave;nh Cần N&oacute;i Chuyện Về Kevin</strong></a></p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>combo-061120203</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/bach-viet?fhs_campaign=ATTRIBUTE_PRODUCT">B&aacute;ch Việt</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Erik Larson, Dan Brown, Lionel Shaiver</td>
		</tr>
		<tr>
			<th>Người Dịch</th>
			<td>Nguyễn Quang Huy</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Lao Động</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2018</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>1880</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>24 x 16 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>472</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/bach-viet?fhs_campaign=INTERNAL_LINKING">B&aacute;ch Việt</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/truyen-trinh-tham-vien-tuong.html?order=num_orders_month">Top 100 sản phẩm Truyện Trinh Th&aacute;m - Kiếm Hiệp b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Combo Si&ecirc;u Trinh Th&aacute;m: Nguồn Cội + Sống S&oacute;t Ở Berlin + M&igrave;nh Cần N&oacute;i Chuyện Về Kevin (Bộ 3 Cuốn)</strong></p>

<p><strong>1.&nbsp;Sống S&oacute;t Ở Berlin</strong></p>

<p>Erik Larson sinh ra tại Brooklyn, New York, Mỹ. &Ocirc;ng nổi tiếng với d&ograve;ng truyện phi hư cấu về lịch sử, kh&ocirc;ng thể kh&ocirc;ng nhắc tới cuốn &ldquo;<strong>Sống s&oacute;t ở Berlin</strong>&rdquo;.</p>

<p>Cuốn s&aacute;ch n&oacute;i về lịch sử nước Đức ng&agrave;y c&agrave;ng ch&igrave;m s&acirc;u b&oacute;ng tối sau thời khắc Tr&ugrave;m Ph&aacute;t x&iacute;t Adofl Hitler trở th&agrave;nh Thủ tướng của Đế chế Đức v&agrave;o năm 1933. Kể từ đ&oacute; trở đi, nước Đức xảy ra bạo lực li&ecirc;n mi&ecirc;n v&agrave; nạn ph&acirc;n biệt chủng tộc, đặc biệt đối với người Do Th&aacute;i, Hitler quan ngại với người Do Th&aacute;i bởi ch&iacute;nh sự t&agrave;i năng của nh&oacute;m người đ&oacute; sẽ l&agrave;m ảnh hưởng, cản trở đối với quyền lực của hắn.</p>

<p>Đ&uacute;ng v&agrave;o thời điểm đ&oacute;, &ocirc;ng William E.Dodd &ndash; một gi&aacute;o sư lịch sử được cử sang Berlin l&agrave;m Đại sứ Hoa Kỳ tại Đức. &Ocirc;ng c&ugrave;ng c&ocirc; con g&aacute;i &ndash; Martha sớm được trải nghiệm một nước Đức kỳ lạ, tươi đẹp, nhưng cũng đầy rẫy hiểm nguy bủa v&acirc;y. Trong khi đ&oacute;, Hitler lại ng&agrave;y c&agrave;ng tỏ ra thiện ch&iacute; v&agrave; ưa chuộng h&ograve;a b&igrave;nh.</p>

<p>Nhưng liệu mọi người nghe thấy, nh&igrave;n thấy v&agrave; ngửi thấy g&igrave;? C&aacute;c nh&agrave; ngoại giao v&agrave; du kh&aacute;ch giải th&iacute;ch những sự kiện diễn ra xung quanh họ như thế n&agrave;o? V&agrave; c&oacute; ai thấy được bộ mặt thật của Tr&ugrave;m Ph&aacute;t x&iacute;t Hitler v&agrave; ngăn hắn lại khi qu&aacute; muộn???...</p>

<p><strong>Đoạn tr&iacute;ch:</strong></p>

<p>&ldquo;Nước Đức đang trải qua sự thay đổi mang t&iacute;nh c&aacute;ch mạng, dưới sự l&atilde;nh đạo của Thủ tướng mới đắc cử&nbsp; - Adolf Hitler. T&ugrave;y quan điểm mỗi người, Đức hoặc đang c&oacute; sự hồi sinh mạnh mẽ hoặc đang ch&igrave;m trong b&oacute;ng đ&ecirc;m t&agrave;n &aacute;c&rdquo;&nbsp;<strong>- Erik Larson.</strong></p>

<p>&ldquo;Chỉ c&oacute; đ&agrave;n &aacute;p t&agrave;n bạo v&agrave; đẫm m&aacute;u mới b&oacute;p chết được cuộc nổi dậy từ trong trứng nước&hellip; Bản th&acirc;n ta ch&iacute;nh l&agrave; T&ograve;a &aacute;n C&ocirc;ng l&iacute; Tối cao của Nh&acirc;n d&acirc;n Đức&rdquo;<strong>&nbsp;&ndash; Adolf Hitler.</strong></p>

<p><strong>2. M&igrave;nh Cần N&oacute;i Chuyện Về Kevin</strong></p>

<p>Ngay từ khi sinh ra cho đến khi lớn l&ecirc;n, Kevin chưa bao giờ c&oacute; sự gắn b&oacute; cũng như li&ecirc;n kết với mẹ m&igrave;nh. Thậm ch&iacute; cậu c&ograve;n tỏ ra chống đối, c&oacute; những h&agrave;nh động kỳ quặc đối với Eva.</p>

<p>H&agrave;ng loạt sự kiện trong gia đ&igrave;nh xảy ra khiến Eva v&ocirc; c&ugrave;ng lo lắng về Kevin thế nhưng &ocirc;ng chồng Franklin lại gạt đi v&agrave; lu&ocirc;n cho rằng đ&oacute; l&agrave; v&igrave; Kevin c&ograve;n nhỏ tuổi.</p>

<p>Thế rồi, một sự kiện t&agrave;n khốc xảy ra, Kevin l&ecirc;n kế hoạch thảm s&aacute;t giết 7 người tất cả ở trường trung học v&agrave;o năm 16 tuổi. Sự kiện bi thảm n&agrave;y g&acirc;y n&ecirc;n sự hận th&ugrave; khủng khiếp của c&aacute;c phụ huynh v&agrave; gia đ&igrave;nh Eva tan n&aacute;t như một lẽ tất yếu.</p>

<p>Khi một đứa trẻ phạm sai lầm kh&oacute; tha thứ, ai l&agrave; người phải chịu tr&aacute;ch nhiệm? L&agrave; bản th&acirc;n đứa trẻ đ&oacute;, v&igrave; n&oacute; sinh ra đ&atilde; c&oacute; những lệch lạc trong nh&acirc;n c&aacute;ch, v&agrave; chỉ đợi thời cơ để giải tho&aacute;t con quỷ b&ecirc;n trong? Hay đ&oacute; l&agrave; lỗi của gia đ&igrave;nh v&igrave; đ&atilde; c&oacute; những c&aacute;ch gi&aacute;o dục sai lầm, thiếu sự quan t&acirc;m thực sự d&agrave;nh cho con m&igrave;nh?</p>

<p>Cuốn s&aacute;ch từng được chuyển thể th&agrave;nh phim, ra mắt năm 2011 v&agrave; nhận được đề cử danh gi&aacute; cho giải&nbsp;<em>C&agrave;nh cọ v&agrave;ng</em>&nbsp;ở Li&ecirc;n hoan phim Cannes, giải BAFTA, giải&nbsp;<em>Quả cầu v&agrave;ng</em>&nbsp;c&ugrave;ng nhiều giải thưởng quan trọng kh&aacute;c.</p>

<p><strong>3.&nbsp;Nguồn Cội</strong></p>

<p>Robert Langdon, gi&aacute;o sư biểu tượng v&agrave; biểu tượng t&ocirc;n gi&aacute;o đến từ trường đại học Harvard, đ&atilde; tới Bảo t&agrave;ng Guggenheim Bilbao để tham dự một sự kiện quan trọng - c&ocirc;ng bố một ph&aacute;t hiện &quot;sẽ thay đổi bộ mặt khoa học m&atilde;i m&atilde;i&quot;.</p>

<p>Edmond Kirsch l&agrave; một tỷ ph&uacute; bốn mươi tuổi, một nh&agrave; ti&ecirc;n tri. Những ph&aacute;t minh kỹ thuật cao v&agrave; những dự đo&aacute;n t&aacute;o bạo đ&atilde; l&agrave;m cho anh trở th&agrave;nh một nh&acirc;n vật nổi tiếng to&agrave;n cầu. Kirsch - cũng ch&iacute;nh l&agrave; một trong những sinh vi&ecirc;n đầu ti&ecirc;n của Langdon tại đại học Harvard c&aacute;ch đ&acirc;y hai thập kỷ - sẽ tiết lộ một bước đột ph&aacute; đ&aacute;ng kinh ngạc...</p>

<p>N&oacute; sẽ trả lời hai c&acirc;u hỏi cơ bản về sự tồn tại của con người:<br />
<em>&quot;Ch&uacute;ng ta đến từ đ&acirc;u?&quot; v&agrave; &quot;Ch&uacute;ng ta đang đi về đ&acirc;u?&quot;</em></p>

<p>Khi sự kiện bắt đầu, Langdon v&agrave; v&agrave;i trăm quan kh&aacute;ch bị cuốn h&uacute;t bởi một b&agrave;i thuyết tr&igrave;nh độc đ&aacute;o m&agrave; ch&iacute;nh Langdon cũng nhận thấy rằng sẽ g&acirc;y ra nhiều tranh c&atilde;i hơn những g&igrave; &ocirc;ng tưởng tượng. Nhưng sự kiện n&agrave;y đột nhi&ecirc;n biến th&agrave;nh cuộc hỗn loạn, v&agrave; kh&aacute;m ph&aacute; qu&yacute; gi&aacute; của Kirsch đang dần biến mất vĩnh viễn. Trước nguy cơ phải đối mặt với một mối đe doạ sắp xảy ra, Langdon bị buộc phải bỏ trốn để tho&aacute;t khỏi Bilbao c&ugrave;ng Ambra Vidal - Ho&agrave;ng hậu tương lai của T&acirc;y Ban Nha để t&igrave;m ra mật khẩu b&iacute; ẩn sẽ mở ra b&iacute; mật của Kirsch.</p>

<p>Để chiến thắng những b&iacute; mật được giấu k&iacute;n của lịch sử v&agrave; t&ocirc;n gi&aacute;o cực đoan, Langdon v&agrave; Ambra phải trốn tr&aacute;nh một thế lực với sức mạnh dường như xuất ph&aacute;t từ ch&iacute;nh Ho&agrave;ng gia T&acirc;y Ban Nha... v&agrave; đang cố t&igrave;m c&aacute;ch để giữ Edmond Kirsch im lặng. Tr&ecirc;n một h&agrave;nh tr&igrave;nh được đ&aacute;nh dấu bởi c&aacute;c t&aacute;c phẩm nghệ thuật hiện đại v&agrave; c&aacute;c k&yacute; hiệu b&iacute; ẩn, Langdon v&agrave; Vidal đ&atilde; t&igrave;m ra những manh mối cuối c&ugrave;ng đưa họ đối mặt với kh&aacute;m ph&aacute; g&acirc;y sốc của Kirsch... v&agrave; sự thật m&agrave; từ l&acirc;u ch&uacute;ng ta đ&atilde; t&igrave;m kiếm.</p>

<p><strong>Combo bao gồm:</strong></p>

<p><a href="https://www.fahasa.com/song-sot-o-berlin.html"><strong>1. Sống S&oacute;t Ở Berlin</strong></a></p>

<p><a href="https://www.fahasa.com/nguon-coi.html"><strong>2. Nguồn Cội</strong></a></p>

<p><a href="https://www.fahasa.com/minh-can-noi-chuyen-ve-kevin.html"><strong>3. M&igrave;nh Cần N&oacute;i Chuyện Về Kevin</strong></a></p>
', 1, CAST(130000.00 AS Numeric(18, 2)), N'Erik Larson, Dan Brown, Lion', N'NXB Lao Động', CAST(N'2022-03-28' AS Date), N'10', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (18, N'Drama Nuôi Tôi Lớn Loài Người Dạy Tôi Khôn', N'Drama Nuôi Tôi Lớn Loài Người Dạy Tôi Khôn', 7, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/boitoi_infinal-_1__3.jpg', N'<p>Ch&agrave;o mừng c&aacute;c bạn đến với cuốn s&aacute;ch đầu tay của Pương Pương. Nơi mang lại kh&ocirc;ng chỉ những c&acirc;u chuyện drama cười ra nước mắt v&agrave; c&ograve;n thấm đẫm những triết l&yacute; s&acirc;u sắc của hiện tượng mạng x&atilde; hội mang t&ecirc;n Pương hay c&ograve;n gọi l&agrave; Pương n&egrave;.</p>

<p>Vậy Pương Pương l&agrave; ai?</p>

<p>Tự nhận l&agrave; một c&aacute; nh&acirc;n c&oacute; duy&ecirc;n nợ với con chữ v&agrave; c&oacute; một mong ước thầm k&iacute;n m&atilde;nh liệt rằng một ng&agrave;y n&agrave;o đ&oacute; c&oacute; thể trở th&agrave;nh &ldquo;Trm&uacute;a hmề&rdquo;. Sự xuất hiện của Pương tr&ecirc;n c&otilde;i đời cũng thật sự xuất sắc với c&acirc;u hỏi đầy mặn m&agrave; của người cha t&ecirc;n Dũng d&agrave;nh cho người mẹ t&ecirc;n Hoa:</p>

<p>- N&agrave;y, nh&agrave; anh mới mua giường, em c&oacute; muốn về nằm thử kh&ocirc;ng?</p>

<p>- C&oacute;</p>

<p>V&agrave; thế l&agrave; Pương của ch&uacute;ng ta ra đời với tinh thần bất khuất kế thừa v&agrave; ph&aacute;t huy sự mặn m&agrave; đầy t&iacute;nh nh&acirc;n văn s&acirc;u sắc ấy của cha mẹ. Tinh hoa ấy cuối c&ugrave;ng sau nhiều năm lớn kh&ocirc;n đ&atilde; xuất hiện với cuốn s&aacute;ch tr&ecirc;n tay c&aacute;c bạn đ&acirc;y.</p>

<p>Đến với DRAMA NU&Ocirc;I T&Ocirc;I LỚN, LO&Agrave;I NGƯỜI DẠY T&Ocirc;I KH&Ocirc;N &ndash; c&aacute;i t&ecirc;n n&oacute;i l&ecirc;n tất cả. Ghi dấu ấn mạnh mẽ nhờ giọng văn h&agrave;i hước, h&oacute;m hỉnh, trẻ trung v&agrave; đặc biệt l&agrave; biệt t&agrave;i g&acirc;y cười đặc trưng c&oacute; một kh&ocirc;ng hai, chắc chắn với cuốn s&aacute;ch đầu tay n&agrave;y, Pương Pương sẽ chinh phục được c&aacute;c độc giả kh&oacute; t&iacute;nh nhất.</p>

<p>Kh&ocirc;ng đi theo lối đi cũ m&ograve;n của văn chương hoa mĩ. Dưới g&oacute;c nh&igrave;n của một c&ocirc; t&aacute;c giả trẻ trong thế hệ 2k, với lượng người follow cực đ&ocirc;ng đảo tr&ecirc;n Tiktok lẫn Fanpage, Pương tạo n&ecirc;n một phong c&aacute;ch văn chương c&oacute; một kh&ocirc;ng hai. Vừa g&acirc;y cười, vừa cuốn h&uacute;t m&agrave; vẫn đầy &yacute; nghĩa về gia đ&igrave;nh v&agrave; cuộc sống.</p>

<p>Đ&oacute; c&oacute; thể chỉ l&agrave; những c&acirc;u chuyện về gia đ&igrave;nh, chuyện x&atilde; hội, đến những chuyện b&oacute;c phốt đ&aacute;nh ghen hay l&agrave; những c&uacute; lừa tr&ecirc;n mạnh x&atilde; hội đầy thị phi ngang dọc. Tất cả hội tụ tạo n&ecirc;n một cuốn s&aacute;ch si&ecirc;u đặc biệt m&agrave; nh&aacute;t định bạn cần phải c&oacute; trong x&atilde; hội đầy Drama n&agrave;y.</p>

<p>Xin được tr&iacute;ch lại c&acirc;u n&oacute;i trong cuốn s&aacute;ch n&agrave;y:</p>

<p>&ldquo;Mạng x&atilde; hội l&agrave; ảo nhưng c&uacute; lừa l&agrave; thật.&rdquo;</p>

<p>Đừng để x&atilde; hội đ&aacute;nh bại m&agrave; h&atilde;y biến n&oacute; th&agrave;nh b&agrave;i học gi&uacute;p ch&uacute;ng ta lớn kh&ocirc;n mỗi ng&agrave;y.</p>

<table>
	<tbody>
		<tr>
			<th>M&atilde; h&agrave;ng</th>
			<td>8935325001000</td>
		</tr>
		<tr>
			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>
			<td><a href="https://www.fahasa.com/az-viet-nam?fhs_campaign=ATTRIBUTE_PRODUCT">AZ Việt Nam</a></td>
		</tr>
		<tr>
			<th>T&aacute;c giả</th>
			<td>Pương Pương</td>
		</tr>
		<tr>
			<th>NXB</th>
			<td>NXB Phụ Nữ Việt Nam</td>
		</tr>
		<tr>
			<th>Năm XB</th>
			<td>2021</td>
		</tr>
		<tr>
			<th>Ng&ocirc;n Ngữ</th>
			<td>Tiếng Việt</td>
		</tr>
		<tr>
			<th>Trọng lượng (gr)</th>
			<td>300</td>
		</tr>
		<tr>
			<th>K&iacute;ch Thước Bao B&igrave;</th>
			<td>20.5 x 13 cm</td>
		</tr>
		<tr>
			<th>Số trang</th>
			<td>280</td>
		</tr>
		<tr>
			<th>H&igrave;nh thức</th>
			<td>B&igrave;a Mềm</td>
		</tr>
		<tr>
			<th>Sản phẩm hiển thị trong</th>
			<td>
			<ul>
				<li><a href="https://www.fahasa.com/az-viet-nam-truyen-ngan?fhs_campaign=INTERNAL_LINKING">AZ Việt Nam - Truyện Ngắn - Tản Văn</a></li>
			</ul>
			</td>
		</tr>
		<tr>
			<th>Sản phẩm b&aacute;n chạy nhất</th>
			<td><a href="https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/truyen-ngan-tan-van.html?order=num_orders_month">Top 100 sản phẩm Truyện ngắn - Tản Văn b&aacute;n chạy của th&aacute;ng</a></td>
		</tr>
	</tbody>
</table>

<p><strong>Drama Nu&ocirc;i T&ocirc;i Lớn Lo&agrave;i Người Dạy T&ocirc;i Kh&ocirc;n</strong></p>

<p>Ch&agrave;o mừng c&aacute;c bạn đến với cuốn s&aacute;ch đầu tay của Pương Pương. Nơi mang lại kh&ocirc;ng chỉ những c&acirc;u chuyện drama cười ra nước mắt v&agrave; c&ograve;n thấm đẫm những triết l&yacute; s&acirc;u sắc của hiện tượng mạng x&atilde; hội mang t&ecirc;n Pương hay c&ograve;n gọi l&agrave; Pương n&egrave;.</p>

<p>Vậy Pương Pương l&agrave; ai?</p>

<p>Tự nhận l&agrave; một c&aacute; nh&acirc;n c&oacute; duy&ecirc;n nợ với con chữ v&agrave; c&oacute; một mong ước thầm k&iacute;n m&atilde;nh liệt rằng một ng&agrave;y n&agrave;o đ&oacute; c&oacute; thể trở th&agrave;nh &ldquo;Trm&uacute;a hmề&rdquo;. Sự xuất hiện của Pương tr&ecirc;n c&otilde;i đời cũng thật sự xuất sắc với c&acirc;u hỏi đầy mặn m&agrave; của người cha t&ecirc;n Dũng d&agrave;nh cho người mẹ t&ecirc;n Hoa:</p>

<p>- N&agrave;y, nh&agrave; anh mới mua giường, em c&oacute; muốn về nằm thử kh&ocirc;ng?</p>

<p>- C&oacute;</p>

<p>V&agrave; thế l&agrave; Pương của ch&uacute;ng ta ra đời với tinh thần bất khuất kế thừa v&agrave; ph&aacute;t huy sự mặn m&agrave; đầy t&iacute;nh nh&acirc;n văn s&acirc;u sắc ấy của cha mẹ. Tinh hoa ấy cuối c&ugrave;ng sau nhiều năm lớn kh&ocirc;n đ&atilde; xuất hiện với cuốn s&aacute;ch tr&ecirc;n tay c&aacute;c bạn đ&acirc;y.</p>

<p>Đến với DRAMA NU&Ocirc;I T&Ocirc;I LỚN, LO&Agrave;I NGƯỜI DẠY T&Ocirc;I KH&Ocirc;N &ndash; c&aacute;i t&ecirc;n n&oacute;i l&ecirc;n tất cả. Ghi dấu ấn mạnh mẽ nhờ giọng văn h&agrave;i hước, h&oacute;m hỉnh, trẻ trung v&agrave; đặc biệt l&agrave; biệt t&agrave;i g&acirc;y cười đặc trưng c&oacute; một kh&ocirc;ng hai, chắc chắn với cuốn s&aacute;ch đầu tay n&agrave;y, Pương Pương sẽ chinh phục được c&aacute;c độc giả kh&oacute; t&iacute;nh nhất.</p>

<p>Kh&ocirc;ng đi theo lối đi cũ m&ograve;n của văn chương hoa mĩ. Dưới g&oacute;c nh&igrave;n của một c&ocirc; t&aacute;c giả trẻ trong thế hệ 2k, với lượng người follow cực đ&ocirc;ng đảo tr&ecirc;n Tiktok lẫn Fanpage, Pương tạo n&ecirc;n một phong c&aacute;ch văn chương c&oacute; một kh&ocirc;ng hai. Vừa g&acirc;y cười, vừa cuốn h&uacute;t m&agrave; vẫn đầy &yacute; nghĩa về gia đ&igrave;nh v&agrave; cuộc sống.</p>

<p>Đ&oacute; c&oacute; thể chỉ l&agrave; những c&acirc;u chuyện về gia đ&igrave;nh, chuyện x&atilde; hội, đến những chuyện b&oacute;c phốt đ&aacute;nh ghen hay l&agrave; những c&uacute; lừa tr&ecirc;n mạnh x&atilde; hội đầy thị phi ngang dọc. Tất cả hội tụ tạo n&ecirc;n một cuốn s&aacute;ch si&ecirc;u đặc biệt m&agrave; nh&aacute;t định bạn cần phải c&oacute; trong x&atilde; hội đầy Drama n&agrave;y.</p>

<p>Xin được tr&iacute;ch lại c&acirc;u n&oacute;i trong cuốn s&aacute;ch n&agrave;y:</p>
', 1, CAST(700000.00 AS Numeric(18, 2)), N'Pương Pương', N'NXB Phụ Nữ Việt Nam', CAST(N'2022-03-28' AS Date), N'15', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (19, N'Dawson''s Creek 4: Shifting into Overdrive', N'Dawson''s Creek 4: Shifting into Overdrive', 7, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/9780230037410.jpg', N'<p>Third in the series of novelizations based on Channel 4&#39;s prime-time teen drama &quot;Dawson&#39;s Creek&quot;. When Jen&#39;s wealthy cousin invites her to a Sweet Sixteen party in New York City, Jen coaxes a reluctant Joey along. Meanwhile Dawson and Pacey are hot on their trail, dying to know what they&#39;re up to.</p>
', 1, CAST(80000.00 AS Numeric(18, 2)), N'Mac Millan', N'Mac Millan', CAST(N'2022-03-28' AS Date), N'30', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (20, N'Dragonfly Falling', N'Dragonfly Falling', 7, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_195509_1_23927.jpg', N'<p>The armies of the Wasp Empire are on the march, and first to feel their might will be the city of Tark -- even now preparing for siege. Within its walls Salma and Totho must weather the storm, as the Ant-kinden prepare to stand against numbers and weaponry such as the Lowlands have never seen. And after his earlier victory, the Empire&#39;s secret service has decided veteran artificer Stenwold Maker is too dangerous to live. So disgraced Major Thalric is despatched on a desperate mission, not only to eliminate Stenwold himself, but to destroy his beloved city of Collegium. Thus they hope to end all hope of intelligent resistance to the remorseless imperial advance. While the Empire&#39;s troops are wreaking destruction, the young Emperor is reading a different path. His thoughts are on darker things than mere conquest, and if he attains his goal he will precipitate a reign of blood that will last a thousand years. &#39;Full of colourful drama and non-stop action ...Dragonfly Falling brilliantly continues the Shadows of the Apt epic fantasy series&#39; FantasyBookCritic blog &#39;Reminiscent of much that&#39;s gone before from the likes of Gemmel, Erikson, Sanderson and Cook but with its own unique and clever touch . ..Terrific&#39; Sci-Fi-London.com</p>
', 1, CAST(60000.00 AS Numeric(18, 2)), N'Adrian Tchaikovsky', N'Tor Books', CAST(N'2022-03-29' AS Date), N'30', 10)
INSERT [dbo].[SanPham] ([Ma], [Ten], [Mota], [MaLoai], [Anh], [Chitiet], [TieuBieu], [Gia], [TacGia], [NhaXuatBan], [NamXB], [GiamGia], [SoLuongTon]) VALUES (21, N'Prize of Night', N'Prize of Night', 8, N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/image_51029.jpg', N'<p>The author of &quot;Pile of Bones&quot; and &quot;Path of Smoke&quot; returns to the world of the Parallel Parks In the city of Regina, they re just graduate students. But after midnight in Wascana Park they are transported to a land where they can be anything: bards and archers, heroes or monsters . In the nighttime world of Anfractus, the company of heroes has thwarted the basilissa s plans to assassinate the queen of a neighboring city. Things seem somewhat back to normal, until Shelby learns that Anfractus isn t what it seems. Wascana Park doesn t take you to another realm; it just shows what s beneath the surface of this one and what s there isn t pretty.</p>

<p>Basilissa Latona is raising a new army, still determined to create her own empire. If she succeeds, both worlds will be in danger. Shelby knows she must rally the company of heroes against her, but, in the dark streets of Anfractus, telling friend from foe becomes harder than ever, as loyalties shift and shatter. Especially when the person who could do the company the most harm may be one their own &quot;</p>
', 2, CAST(70000.00 AS Numeric(18, 2)), N'Bailey Cunningham', N'Ace Books', CAST(N'2022-03-29' AS Date), N'30', 10)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([Ma], [TieuDe], [MoTaNgan], [MoTa], [Anh], [MaCM], [NgayDang], [TacGia]) VALUES (3, N'Cửa ngõ TP HCM, Hà Nội ùn ứ', N'Dòng xe đổ về thành phố ngày cuối dịp lễ giỗ Tổ, khiến nhiều tuyến đường cửa ngõ TP HCM, Hà Nội ùn ứ kéo dài, chiều 11/4.', N'<p>D&ograve;ng xe đổ về th&agrave;nh phố ng&agrave;y cuối dịp lễ giỗ Tổ, khiến nhiều tuyến đường cửa ng&otilde; TP HCM, H&agrave; Nội &ugrave;n ứ k&eacute;o d&agrave;i, chiều 11/4.</p>

<p>17h, d&ograve;ng &ocirc;t&ocirc;, xe m&aacute;y nối đu&ocirc;i nhau tr&ecirc;n đoạn hơn hai km tuyến quốc lộ 1, từ khu vực gi&aacute;p ranh Long An đến giao với đường V&otilde; Văn Kiệt (huyện B&igrave;nh Ch&aacute;nh), hướng v&agrave;o trung t&acirc;m TP HCM. Đ&acirc;y l&agrave; trục đường ch&iacute;nh ở cửa ng&otilde; ph&iacute;a T&acirc;y, thường &ugrave;n ứ những ng&agrave;y trước v&agrave; sau dịp lễ Tết do lượng xe tăng cao.</p>

<p>Tuy kh&ocirc;ng xảy ra kẹt xe k&eacute;o d&agrave;i như dịp lễ nhiều năm trước, song &ugrave;n ứ cục bộ ở một số đoạn do lượng xe tăng cao. Trong đ&oacute;, căng thẳng xảy ra tại khu vực n&uacute;t giao quốc lộ 1 với c&aacute;c tuyến Đo&agrave;n Nguyễn Tuấn, Nguyễn Hữu Tr&iacute;... khi d&ograve;ng xe xếp k&iacute;n mặt đường, nh&iacute;ch từng ch&uacute;t.</p>

<p><img alt="Dòng người ở miền Tây đổ về đoạn quốc lộ 1 giao với đường Đoàn Nguyễn Tuấn, huyện Bình Chánh, chiều 11/4. Ảnh: Gia Minh" src="https://i1-vnexpress.vnecdn.net/2022/04/11/untac-2-2803-1649677075.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=7uZa3nSbog0HMkPf3OluwQ" /></p>

<p>D&ograve;ng người ở miền T&acirc;y đổ về đoạn quốc lộ 1 giao với đường Đo&agrave;n Nguyễn Tuấn, huyện B&igrave;nh Ch&aacute;nh, chiều 11/4. Ảnh:&nbsp;<em>Gia Minh</em></p>

<p>Cảnh s&aacute;t giao th&ocirc;ng t&uacute;c trực ở c&aacute;c giao lộ n&agrave;y điều tiết, đồng thời t&iacute;n hiệu đ&egrave;n giao th&ocirc;ng cũng điều chỉnh ưu ti&ecirc;n cho xe chạy thẳng quốc lộ 1, với thời lượng đ&egrave;n xanh khoảng một ph&uacute;t, đ&egrave;n đỏ 30 gi&acirc;y, gi&uacute;p xe nhanh được giải toả.</p>

<p>Chở vợ con tr&ecirc;n xe m&aacute;y từ An Giang l&ecirc;n TP HCM, anh Nguyễn Việt (35 tuổi), n&oacute;i mất gần 5 giờ, thay v&igrave; khoảng 3 giờ như b&igrave;nh thường do gặp tắc đường ở một số đoạn thuộc quốc lộ 1 tỉnh Tiền Giang, Long An v&agrave; cửa ng&otilde; TP HCM.</p>

<p>&quot;Lễ giỗ Tổ năm nay nghỉ ba ng&agrave;y, người d&acirc;n về qu&ecirc; v&agrave; trở lại th&agrave;nh phố đ&ocirc;ng hơn n&ecirc;n đường kẹt hơn dịp lễ n&agrave;y c&aacute;c năm trước&quot;, anh Việt n&oacute;i.</p>

<p>Quốc lộ 50 đoạn qua giao đường Nguyễn Văn Linh, về chiều tối cũng &ugrave;n ứ do xe theo hướng từ tỉnh Long An đổ về trung t&acirc;m th&agrave;nh phố tăng cao. Đa phần c&aacute;c chặng đường từ miền T&acirc;y đến TP HCM ngắn n&ecirc;n nhiều người đi xe m&aacute;y. Nhiều gia đ&igrave;nh lỉnh kỉnh đồ đạc, qu&agrave; qu&ecirc;, sau h&agrave;nh tr&igrave;nh d&agrave;i dưới tiết trời oi bức, sự mệt mỏi thể hiện tr&ecirc;n gương mặt.</p>

<p>Ở cửa ng&otilde; ph&iacute;a Đ&ocirc;ng, từ 16h, nhiều tuyến như đường dẫn cao tốc Long Th&agrave;nh - Dầu Gi&acirc;y, Mai Ch&iacute; Thọ (TP Thủ Đức), lượng xe đổ về rất đ&ocirc;ng. Tại v&ograve;ng xoay Ph&uacute; Hữu, h&agrave;ng ngh&igrave;n xe m&aacute;y, &ocirc;t&ocirc; chen ch&uacute;c nhau. Nhiều người chạy xe m&aacute;y chở đồ đạc để trở lại TP HCM sau k&igrave; nghỉ lễ ba ng&agrave;y.</p>

<p><img alt="Dòng xe ùn ứ hơn một km ở phà Cát Lái, phía bên Đồng Nai. Ảnh: Đình Văn" src="https://i1-vnexpress.vnecdn.net/2022/04/11/phacatlai-2780-1649676234.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=lUFfU6hG2s_pxu8r7CMZww" /></p>

<p>D&ograve;ng xe &ugrave;n ứ hơn một km ở ph&agrave; C&aacute;t L&aacute;i, ph&iacute;a b&ecirc;n Đồng Nai. Ảnh:&nbsp;<em>Đ&igrave;nh Văn</em></p>

<p>L&uacute;c 17h, đường dẫn l&ecirc;n ph&agrave; C&aacute;t L&aacute;i hướng từ Nhơn Trạch, Đồng Nai &ugrave;n tắc hơn một km, xe m&aacute;y phải chạy qua l&agrave;n đường ngược lại để mua v&eacute; l&ecirc;n ph&agrave; về lại TP HCM. Ph&agrave; đ&atilde; bố tr&iacute; th&ecirc;m lực lượng đứng c&aacute;ch cổng ph&agrave; 500 m để b&aacute;n v&eacute; từ xa, song h&agrave;ng ngh&igrave;n xe phải chờ hơn một giờ v&igrave; c&aacute;c ph&agrave; hoạt động hết c&ocirc;ng suất.</p>

<p>&Ocirc;ng Nguyễn Thanh Tuấn, Ph&oacute; gi&aacute;m đốc X&iacute; nghiệp quản l&yacute; ph&agrave; Thanh ni&ecirc;n xung phong (đơn vị quản l&yacute; ph&agrave; C&aacute;t L&aacute;i), cho biết h&ocirc;m nay lượng kh&aacute;ch qua bến ước t&iacute;nh 65.000-70.000 lượt, tăng 40% so với ng&agrave;y thường. Hiện, ngo&agrave;i 5 ph&agrave; chạy thường xuy&ecirc;n, bến C&aacute;t L&aacute;i tăng th&ecirc;m một ph&agrave;, với khoảng 300 chuyến phục vụ nhu cầu đi lại tăng cao.</p>
', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/untac-2-2803-1649677075.jpg', 7, CAST(N'2022-04-23' AS Date), N'Nguyễn Ngọc Thuần')
INSERT [dbo].[TinTuc] ([Ma], [TieuDe], [MoTaNgan], [MoTa], [Anh], [MaCM], [NgayDang], [TacGia]) VALUES (4, N'Nga cảnh báo hậu quả nếu Thụy Điển, Phần Lan vào NATO', N'Điện Kremlin cho rằng châu Âu sẽ bất ổn nếu NATO tiếp tục mở rộng và kết nạp hai quốc gia trung lập Thụy Điển, Phần Lan.', N'<h1>Nga cảnh b&aacute;o hậu quả nếu Thụy Điển, Phần Lan v&agrave;o NATO</h1>

<p>Điện Kremlin cho rằng ch&acirc;u &Acirc;u sẽ bất ổn nếu NATO tiếp tục mở rộng v&agrave; kết nạp hai quốc gia trung lập Thụy Điển, Phần Lan.</p>

<p>&quot;Ch&uacute;ng t&ocirc;i từng nhiều lần khẳng định NATO l&agrave; c&ocirc;ng cụ hướng tới đối đầu v&agrave; việc mở rộng li&ecirc;n minh n&agrave;y sẽ kh&ocirc;ng mang đến ổn định cho lục địa ch&acirc;u &Acirc;u&quot;, ph&aacute;t ng&ocirc;n vi&ecirc;n Điện Kremlin Dmitry Peskov cho biết h&ocirc;m nay khi được hỏi về khả năng&nbsp;<a href="https://vnexpress.net/chu-de/thuy-dien-696" rel="dofollow">Thụy Điển</a>&nbsp;v&agrave;&nbsp;<a href="https://vnexpress.net/chu-de/phan-lan-3846" rel="dofollow">Phần Lan</a>, hai quốc gia trung lập, gia nhập NATO.</p>

<p>Ph&aacute;t biểu được đưa ra sau khi tờ&nbsp;<em>Times&nbsp;</em>của Anh dẫn lời quan chức&nbsp;<a href="https://vnexpress.net/chu-de/my-712" rel="dofollow">Mỹ</a>&nbsp;giấu t&ecirc;n cho biết Phần Lan c&oacute; thể xin gia nhập NATO v&agrave;o th&aacute;ng 6, sau đ&oacute; l&agrave; Thụy Điển.</p>

<p><img alt="Người phát ngôn Điện Kremlin Dmitry Peskov tại cuộc họp báo ở Moskva hồi tháng 2. Ảnh: Reuters." src="https://i1-vnexpress.vnecdn.net/2022/04/11/2022-02-18t000000z-1517500089-2277-3688-1649673018.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gp1k-Gko3hrXuuc-ysG3Lg" /></p>

<p>Người ph&aacute;t ng&ocirc;n Peskov tại cuộc họp b&aacute;o ở thủ đ&ocirc; Moskva của Nga hồi th&aacute;ng 2. Ảnh:&nbsp;<em>Reuters</em>.</p>

<p>Tổng thư k&yacute; NATO Jens Stoltenberg tuần trước cho biết li&ecirc;n minh sẽ hoan ngh&ecirc;nh Phần Lan v&agrave; Thụy Điển nếu họ quyết định xin gia nhập. &Ocirc;ng khẳng định NATO sẵn s&agrave;ng cung cấp đảm bảo an ninh cho hai nước từ l&uacute;c họ c&ocirc;ng bố quyết định gia nhập NATO đến khi đơn đăng k&yacute; được chấp thuận. Tuy nhi&ecirc;n, Tổng thư k&yacute; Stoltenberg từ chối n&ecirc;u chi tiết những đảm bảo an ninh khối n&agrave;y c&oacute; thể cung cấp.</p>

<p>Thủ tướng Phần Lan Sanna Marin hồi đầu th&aacute;ng n&oacute;i rằng nước n&agrave;y cần quyết định kế hoạch tham gia NATO &quot;một c&aacute;ch triệt để nhưng nhanh ch&oacute;ng&quot;, trong khi Thủ tướng Thụy Điển Magdalena Andersson cuối th&aacute;ng 3 khẳng định &quot;kh&ocirc;ng loại trừ khả năng trở th&agrave;nh th&agrave;nh vi&ecirc;n NATO&quot;.</p>

<p>Trước khi ph&aacute;t động chiến dịch qu&acirc;n sự tại Ukraine, Tổng thống&nbsp;<a href="https://vnexpress.net/chu-de/vladimir-putin-1614" rel="dofollow">Vladimir Putin</a>&nbsp;y&ecirc;u cầu NATO ngừng mở rộng v&agrave; r&uacute;t qu&acirc;n khỏi khu vực gần bi&ecirc;n giới&nbsp;<a href="https://vnexpress.net/chu-de/lien-bang-nga-710" rel="dofollow">Nga</a>. Viễn cảnh c&aacute;c nước l&aacute;ng giềng Phần Lan v&agrave; Thụy Điển gia nhập NATO được nhận định sẽ khiến Nga phật l&ograve;ng.</p>

<p><img alt="7 thập kỷ NATO đông tiến ở châu Âu. Bấm vào hình để xem chi tiết." src="https://i1-vnexpress.vnecdn.net/2022/04/11/55631871781372694a-NATO-164619-8463-5016-1649673019.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=F-TLHfD0inCZmbOsfmXb7A" /></p>

<p>7 thập kỷ NATO đ&ocirc;ng tiến ở ch&acirc;u &Acirc;u.&nbsp;<em>Bấm v&agrave;o h&igrave;nh để xem chi tiết.</em></p>

<p>Phần Lan c&oacute; đường bi&ecirc;n giới d&agrave;i hơn 1.300 km với Nga. Họ trở th&agrave;nh nước trung lập th&ocirc;ng qua hiệp ước hữu nghị với Li&ecirc;n X&ocirc; năm 1948, với kỳ vọng ngăn t&aacute;i diễn cuộc chiến Phần Lan - Li&ecirc;n X&ocirc; năm 1939 từng khiến hơn 80.000 qu&acirc;n nh&acirc;n nước n&agrave;y thiệt mạng.</p>

<p>Xuy&ecirc;n suốt thời kỳ Chiến tranh Lạnh, quốc gia Bắc &Acirc;u duy tr&igrave; t&ocirc;n chỉ kh&ocirc;ng li&ecirc;n kết, bất chấp sức ảnh hưởng từ cả hai khối do Li&ecirc;n X&ocirc; v&agrave; Mỹ dẫn đầu. Sau khi Li&ecirc;n X&ocirc; tan r&atilde; năm 1991, Phần Lan dần chuyển trọng t&acirc;m đối ngoại sang phương T&acirc;y, đ&aacute;nh dấu với quyết định gia nhập EU năm 1995.</p>

<p>Thụy Điển cũng chọn hướng đi tương tự sau khi Chiến tranh Lạnh kết th&uacute;c, gia nhập EU v&agrave;o năm 1995 v&agrave; tăng cường hợp t&aacute;c với NATO, nhưng kh&ocirc;ng trở th&agrave;nh th&agrave;nh vi&ecirc;n ch&iacute;nh thức của khối n&agrave;y.</p>

<p>Thụy Điển đ&atilde; tr&aacute;nh tham gia bất kỳ li&ecirc;n minh qu&acirc;n sự n&agrave;o trong hơn 200 năm qua. Trước khi chiến sự tại Ukraine b&ugrave;ng ph&aacute;t, lần gần nhất Thụy Điển gửi viện trợ vũ kh&iacute; ra nước ngo&agrave;i l&agrave; trong cuộc chiến Phần Lan - Li&ecirc;n X&ocirc; năm 1939.</p>
', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/2022-02-18t000000z-1517500089-2277-3688-1649673018.jpg', 6, CAST(N'2022-04-12' AS Date), N'Kulzsc')
INSERT [dbo].[TinTuc] ([Ma], [TieuDe], [MoTaNgan], [MoTa], [Anh], [MaCM], [NgayDang], [TacGia]) VALUES (5, N'Chứng khoán tuần này: Có nên bắt đáy giữa chuỗi giảm sâu ?', N'Nhiều công ty chứng khoán cho rằng áp lực xả hàng đầu cơ có thể kéo dài nên khuyên nhà đầu tư giảm tỷ trọng cổ phiếu thay vì bắt đáy.', N'<p>Nhiều c&ocirc;ng ty chứng kho&aacute;n cho rằng &aacute;p lực xả h&agrave;ng đầu cơ c&oacute; thể k&eacute;o d&agrave;i n&ecirc;n khuy&ecirc;n nh&agrave; đầu tư giảm tỷ trọng cổ phiếu thay v&igrave; bắt đ&aacute;y.</p>

<p>Tuần trước, nh&oacute;m cổ phiếu đầu cơ k&eacute;o d&agrave;i chuỗi giảm bốn phi&ecirc;n li&ecirc;n tiếp v&agrave; c&oacute; dấu hiệu tạo đỉnh ngắn hạn trong khi rổ VN30 cũng kh&ocirc;ng c&ograve;n vai tr&ograve; dẫn dắt v&igrave; &aacute;p lực b&aacute;n mạnh từ c&aacute;c m&atilde; ng&acirc;n h&agrave;ng, b&aacute;n lẻ v&agrave; thực phẩm. Chỉ số đại diện cho s&agrave;n TP HCM v&igrave; thế trải qua hai phi&ecirc;n trượt dốc nhanh, xo&aacute; sạch th&agrave;nh quả t&iacute;ch luỹ từ đầu th&aacute;ng để đ&oacute;ng cửa tại 1.482 điểm.</p>

<p>Sắc đỏ thường xuy&ecirc;n &aacute;p đảo, thanh khoản mỗi phi&ecirc;n c&oacute; xu hướng giảm v&agrave; t&acirc;m l&yacute; lo ngại tin đồn vẫn hiện hữu sau kỳ nghỉ lễ được nhiều nh&oacute;m ph&acirc;n t&iacute;ch đ&aacute;nh gi&aacute; l&agrave; yếu tố khiến thị trường đối mặt nguy cơ giảm th&ecirc;m trong tuần n&agrave;y.</p>

<p>Theo chuy&ecirc;n gia của C&ocirc;ng ty Chứng kho&aacute;n MB (MBS), VN-Index giảm kh&ocirc;ng xuất ph&aacute;t từ thị trường thế giới m&agrave; &aacute;p lực xả h&agrave;ng nh&oacute;m đầu cơ đang l&agrave; nguy&ecirc;n nh&acirc;n chi phối ch&iacute;nh. Do đ&oacute;,&nbsp;<strong>nh&agrave; đầu tư kh&ocirc;ng n&ecirc;n bắt đ&aacute;y m&agrave; ngược lại phải ưu ti&ecirc;n quản trị danh mục.</strong></p>

<p>&quot;Th&ocirc;ng thường, thị trường sẽ c&oacute; phi&ecirc;n hồi kỹ thuật sau c&aacute;c phi&ecirc;n giảm s&acirc;u. Nh&agrave; đầu tư c&oacute; thể tận dụng để cơ cấu lại danh mục&quot;, chuy&ecirc;n gia MBS khuyến nghị.</p>

<p>Đồng quan điểm, nh&oacute;m ph&acirc;n t&iacute;ch của C&ocirc;ng ty Chứng kho&aacute;n Yuanta Việt Nam (YSVN) v&agrave; C&ocirc;ng ty Chứng kho&aacute;n Kiến Thiết Việt Nam (VNCS) cho rằng thị trường c&oacute; thể hồi phục đầu tuần nhưng nh&agrave; đầu tư vẫn kh&ocirc;ng n&ecirc;n tăng tỷ trọng cổ phiếu. Nh&oacute;m vốn ho&aacute; lớn sắp bước v&agrave;o giai đoạn t&iacute;ch luỹ ngắn hạn, c&ograve;n rủi ro từ nh&oacute;m vốn ho&aacute; vừa v&agrave; nhỏ đang r&otilde; dần n&ecirc;n nh&agrave; đầu tư thậm ch&iacute; phải ki&ecirc;n quyết cắt lỗ những m&atilde; chạm ngưỡng an to&agrave;n nhằm bảo vệ nguồn vốn.</p>

<p>Ph&acirc;n t&iacute;ch s&acirc;u hơn về cơ sở của khuyến nghị, chuy&ecirc;n gia VNCS cho rằng hai phi&ecirc;n giảm mạnh chưa đủ h&igrave;nh th&agrave;nh xu hướng giảm điểm nhưng lại ph&aacute;t ra một v&agrave;i t&iacute;n hiệu cho thấy đ&agrave; tăng trước đ&oacute; bị chững lại. VN-Index đ&atilde; đi ngang ở v&ugrave;ng đỉnh suốt ba th&aacute;ng qua v&agrave; chưa c&oacute; một nhịp điều chỉnh đ&aacute;ng kể n&ecirc;n x&aacute;c suất lần n&agrave;y chỉ số lao xuống v&ugrave;ng 1.430 điểm giữa &quot;cơn b&atilde;o&quot; th&ocirc;ng tin ti&ecirc;u cực kh&ocirc;ng phải l&agrave; kh&ocirc;ng c&oacute;.</p>

<p><img alt="Nhà đầu tư theo dõi bảng giá tại Công ty Chứng khoán Yuanta Việt Nam. Ảnh: Quỳnh Trần." src="https://i1-kinhdoanh.vnecdn.net/2022/04/11/QUYN8880-8538-1649680168.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=X3Dy04vaUREpFFzo4KjH2Q" /></p>

<p>Nh&agrave; đầu tư theo d&otilde;i bảng gi&aacute; tại C&ocirc;ng ty Chứng kho&aacute;n Yuanta Việt Nam.&nbsp;<em>Ảnh: Quỳnh Trần</em></p>

<p><strong>Một số c&ocirc;ng ty chứng kho&aacute;n lại cho rằng giai đoạn n&agrave;y l&agrave; thời điểm th&iacute;ch hợp để giải ng&acirc;n cho c&aacute;c vị thế d&agrave;i hạn,&nbsp;</strong>d&ugrave; cũng dự b&aacute;o xu hướng giảm c&ograve;n tiếp tục v&agrave; VN-Index sẽ l&ugrave;i về v&ugrave;ng 1.455 điểm, tức mất th&ecirc;m khoảng 30 điểm.</p>

<p>Theo nh&oacute;m ph&acirc;n t&iacute;ch Chứng kho&aacute;n Đ&ocirc;ng &Aacute; (DAS), nhiều cổ phiếu c&oacute; mức chiết khấu hấp dẫn sau hai phi&ecirc;n giảm s&acirc;u c&ugrave;ng việc nh&agrave; đầu tư c&oacute; 3 ng&agrave;y nghỉ để đ&aacute;nh gi&aacute; lại c&aacute;c cơ hội đầu tư l&agrave; những yếu tố k&iacute;ch th&iacute;ch lực mua bắt đ&aacute;y trong tuần n&agrave;y.</p>

<p>Nh&oacute;m n&agrave;y khuyến nghị nh&agrave; đầu tư xem x&eacute;t giữ danh mục cổ phiếu đang nắm giữ, tr&aacute;nh b&aacute;n th&aacute;o khi thị trường điều chỉnh. Việc giải ng&acirc;n cho danh mục d&agrave;i hạn c&oacute; thể xoay quanh rổ VN30 v&agrave; c&aacute;c cổ phiếu ng&acirc;n h&agrave;ng với l&yacute; do kỳ vọng kết quả kinh doanh năm nay tiếp tục tăng tốt.</p>

<p>Tương tự, chuy&ecirc;n gia của Chứng kho&aacute;n Rồng Việt cho rằng mức gi&aacute; trong những phi&ecirc;n trước vẫn chưa thật sự hấp dẫn n&ecirc;n nh&agrave; đầu tư c&oacute; thể tr&ocirc;ng chờ c&aacute;c phi&ecirc;n điều chỉnh sắp tới để giải ng&acirc;n v&agrave;o những cổ phiếu t&iacute;ch luỹ tốt v&agrave; h&uacute;t được d&ograve;ng tiền. Nh&oacute;m n&agrave;y cũng cảnh b&aacute;o nh&agrave; đầu tư cẩn trọng với c&aacute;c cổ phiếu đầu cơ, rủi ro cao.</p>

<p>Với quan điểm trung lập hơn, C&ocirc;ng ty Chứng kho&aacute;n Vietcombank (VCBS) kỳ vọng d&ograve;ng tiền trở lại nh&oacute;m cổ phiếu vốn ho&aacute; lớn &ndash; vốn đ&atilde; c&oacute; mức chiết khấu kh&aacute; s&acirc;u trong tuần qua. Chỉ số c&oacute; thể kiểm định v&ugrave;ng hỗ trợ gần 1.470-1.480 điểm v&agrave; chờ đợi cung cầu c&acirc;n bằng để trở lại mốc 1.500 điểm. Nh&agrave; đầu tư theo trường ph&aacute;i lướt s&oacute;ng ngắn hạn v&igrave; thế c&oacute; thể giải ng&acirc;n tỷ trọng nhỏ v&agrave;o những cổ phiếu dẫn dắt thị trường. Trong khi đ&oacute;, những ai muốn nắm giữ trung v&agrave; d&agrave;i hạn cần ki&ecirc;n nhẫn chờ đợi mặt bằng gi&aacute; ổn định hơn rồi mới tham gia thị trường.</p>
', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/QUYN8880-8538-1649680168.jpg', 6, CAST(N'2022-04-28' AS Date), N'Trâu Hoành Minh')
INSERT [dbo].[TinTuc] ([Ma], [TieuDe], [MoTaNgan], [MoTa], [Anh], [MaCM], [NgayDang], [TacGia]) VALUES (6, N'Laptop Apple MacBook Air M1', N'3312312312fdssd', N'<p>dsadsadsadsad</p>
', N'/Areas/Admin/Asset/ckfinder/core/connector/aspx/~Areas/Admin/upload/images/600bdb.jpg', 5, CAST(N'2022-03-28' AS Date), N'Trâu Hoành Minh')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([Ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([Ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([Ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD FOREIGN KEY([PhieuNhapId])
REFERENCES [dbo].[PhieuNhap] ([Id])
GO
ALTER TABLE [dbo].[PhieuNhapChiTiet]  WITH CHECK ADD FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Ma])
GO
ALTER TABLE [dbo].[PhieuXuatChiTiet]  WITH CHECK ADD FOREIGN KEY([PhieuXuatId])
REFERENCES [dbo].[PhieuXuat] ([Id])
GO
ALTER TABLE [dbo].[PhieuXuatChiTiet]  WITH CHECK ADD FOREIGN KEY([SanPhamId])
REFERENCES [dbo].[SanPham] ([Ma])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([Ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_ChuyenMuc] FOREIGN KEY([MaCM])
REFERENCES [dbo].[ChuyenMuc] ([Ma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_ChuyenMuc]
GO
USE [master]
GO
ALTER DATABASE [QuanLySach] SET  READ_WRITE 
GO
