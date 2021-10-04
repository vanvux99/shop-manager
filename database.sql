USE [qlbh]
GO
ALTER TABLE [dbo].[tblChiTietHDX] DROP CONSTRAINT [CK__tblChiTie__SoLuo__0F975522]
GO
ALTER TABLE [dbo].[tblChiTietHDN] DROP CONSTRAINT [CK__tblChiTie__SoLuo__07F6335A]
GO
ALTER TABLE [dbo].[tblNhaCungCap] DROP CONSTRAINT [FK_tblMatHang_tblNhaCungCap_MaMatH]
GO
ALTER TABLE [dbo].[tblHoaDonXuat] DROP CONSTRAINT [FK_tblHoaDonXuat_tblNhanVien_MaNhanVien]
GO
ALTER TABLE [dbo].[tblHoaDonNhap] DROP CONSTRAINT [FK_tblHoaDonNhap_tblNCC_MaNCC]
GO
ALTER TABLE [dbo].[tblDatHangCT] DROP CONSTRAINT [FK_tblDatHangCT_tblMatHang_MaMatH]
GO
ALTER TABLE [dbo].[tblDatHangCT] DROP CONSTRAINT [FK_tblDatHangCT_tblDatHang_MaPhieu]
GO
ALTER TABLE [dbo].[tblChiTietHDX] DROP CONSTRAINT [FK_tblChiTietHDX_tblMatHang]
GO
ALTER TABLE [dbo].[tblChiTietHDX] DROP CONSTRAINT [FK_tblChiTietHDX_tblHoaDonXuat]
GO
ALTER TABLE [dbo].[tblChiTietHDN] DROP CONSTRAINT [FK_tblChiTietHDN_tblMatHang_MaMatH]
GO
ALTER TABLE [dbo].[tblChiTietHDN] DROP CONSTRAINT [FK_tblChiTietHDN_tblHoaDonNhap_MaHD]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDangNhap]') AND type in (N'U'))
DROP TABLE [dbo].[tblDangNhap]
GO
/****** Object:  View [dbo].[vInPhieu]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP VIEW [dbo].[vInPhieu]
GO
/****** Object:  Table [dbo].[tblDatHangCT]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDatHangCT]') AND type in (N'U'))
DROP TABLE [dbo].[tblDatHangCT]
GO
/****** Object:  Table [dbo].[tblDatHang]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDatHang]') AND type in (N'U'))
DROP TABLE [dbo].[tblDatHang]
GO
/****** Object:  View [dbo].[vInHDX]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP VIEW [dbo].[vInHDX]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[tblNhanVien]
GO
/****** Object:  View [dbo].[vInHDN]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP VIEW [dbo].[vInHDN]
GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNhaCungCap]') AND type in (N'U'))
DROP TABLE [dbo].[tblNhaCungCap]
GO
/****** Object:  View [dbo].[v_GiaBan]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP VIEW [dbo].[v_GiaBan]
GO
/****** Object:  View [dbo].[v_doanhthu]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP VIEW [dbo].[v_doanhthu]
GO
/****** Object:  Table [dbo].[tblMatHang]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMatHang]') AND type in (N'U'))
DROP TABLE [dbo].[tblMatHang]
GO
/****** Object:  Table [dbo].[tblHoaDonXuat]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblHoaDonXuat]') AND type in (N'U'))
DROP TABLE [dbo].[tblHoaDonXuat]
GO
/****** Object:  Table [dbo].[tblHoaDonNhap]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblHoaDonNhap]') AND type in (N'U'))
DROP TABLE [dbo].[tblHoaDonNhap]
GO
/****** Object:  Table [dbo].[tblChiTietHDX]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblChiTietHDX]') AND type in (N'U'))
DROP TABLE [dbo].[tblChiTietHDX]
GO
/****** Object:  Table [dbo].[tblChiTietHDN]    Script Date: 10/4/2021 11:22:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblChiTietHDN]') AND type in (N'U'))
DROP TABLE [dbo].[tblChiTietHDN]
GO
USE [master]
GO
/****** Object:  Database [qlbh]    Script Date: 10/4/2021 11:22:44 PM ******/
DROP DATABASE [qlbh]
GO
/****** Object:  Database [qlbh]    Script Date: 10/4/2021 11:22:44 PM ******/
CREATE DATABASE [qlbh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlbh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\qlbh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlbh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\qlbh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlbh] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlbh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlbh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlbh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlbh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlbh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlbh] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlbh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlbh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlbh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlbh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlbh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlbh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlbh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlbh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlbh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlbh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlbh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlbh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlbh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlbh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlbh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlbh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlbh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlbh] SET RECOVERY FULL 
GO
ALTER DATABASE [qlbh] SET  MULTI_USER 
GO
ALTER DATABASE [qlbh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlbh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlbh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlbh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlbh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlbh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlbh', N'ON'
GO
ALTER DATABASE [qlbh] SET QUERY_STORE = OFF
GO
USE [qlbh]
GO
/****** Object:  Table [dbo].[tblChiTietHDN]    Script Date: 10/4/2021 11:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHDN](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaMatH] [nvarchar](20) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [float] NOT NULL,
	[Thue] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietHDX]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHDX](
	[MaMatH] [nvarchar](20) NOT NULL,
	[MaHD] [nvarchar](20) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [float] NOT NULL,
	[Thue] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDonNhap]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonNhap](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaNCC] [nvarchar](20) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[TongTien] [float] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK__tblHoaDonNhap__023D5A04] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDonXuat]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonXuat](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[TongTien] [float] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK__tblHoaDonXuat__09DE7BCC] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMatHang]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMatHang](
	[MaMatH] [nvarchar](20) NOT NULL,
	[TenMatH] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
	[GiaBan] [float] NULL,
 CONSTRAINT [PK__tblMatHang__78B3EFCA] PRIMARY KEY CLUSTERED 
(
	[MaMatH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_doanhthu]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[v_doanhthu]
as
	select Month(tblHoaDonNhap.NgayNhap) Tháng,Year(tblHoaDonNhap.NgayNhap) Năm,sum(tblChiTietHDN.SoLuong*tblChiTietHDN.DonGia) Tổng_nhập,sum(tblChiTietHDX.SoLuong*tblChiTietHDX.DonGia) Tổng_xuất
	from ((((tblChiTietHDN inner join tblHoaDonNhap on tblChiTietHDN.MaHD=tblHoaDonNhap.MaHD) 
	inner join tblMatHang on tblMatHang.MaMatH=tblChiTietHDN.MaMatH)
	inner join tblChiTietHDX on tblChiTietHDX.MaMatH=tblMatHang.MaMatH)
	inner join tblHoaDonXuat on tblChiTietHDX.MaHD=tblHoaDonXuat.MaHD)
	where (Month(tblHoaDonNhap.NgayNhap)=Month(tblHoaDonXuat.NgayXuat)) 
	and (Year(tblHoaDonNhap.NgayNhap)=Year(tblHoaDonXuat.NgayXuat))
	group by tblHoaDonNhap.NgayNhap


GO
/****** Object:  View [dbo].[v_GiaBan]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[v_GiaBan]
AS
SELECT DISTINCT(tblMatHang.TenMatH) [Tên mặt hàng],tblMatHang.SoLuong [Số lượng tồn],tblChiTietHDN.SoLuong [Số lượng nhập thêm],tblMatHang.DonGia [Giá cũ],tblChiTietHDN.DonGia [Giá nhập],ROUND((((tblMatHang.SoLuong*(tblMatHang.DonGia+20000))+(tblChiTietHDN.SoLuong*(tblChiTietHDN.DonGia+20000)))/(tblMatHang.SoLuong+tblChiTietHDN.SoLuong)),-4) [Giá bán]
FROM tblMatHang INNER JOIN tblChiTietHDN
	ON tblMatHang.MaMatH=tblChiTietHDN.MaMatH
GROUP BY tblMatHang.TenMatH,tblMatHang.SoLuong,tblChiTietHDN.SoLuong,tblMatHang.DonGia,tblChiTietHDN.DonGia


GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[MaNCC] [nvarchar](20) NOT NULL,
	[MaMatH] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](300) NULL,
 CONSTRAINT [PK__tblNhaCungCap__7E6CC920] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vInHDN]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vInHDN]
AS
	SELECT tblHoaDonNhap.MaHD,TenNCC,TenMatH,tblChiTietHDN.SoLuong,TongTien,NgayNhap,tblChiTietHDN.DonGia,Thue,DonViTinh,tblHoaDonNhap.GhiChu 
           FROM tblHoaDonNhap INNER JOIN tblChiTietHDN ON tblHoaDonNhap.MaHD=tblChiTietHDN.MaHD
           INNER JOIN tblMatHang ON tblChiTietHDN.MaMatH=tblMatHang.MaMatH
           INNER JOIN tblNhaCungCap ON tblNhaCungCap.MaNCC=tblHoaDonNhap.MaNCC


GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNhanVien] [nvarchar](20) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vInHDX]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vInHDX]
AS
	SELECT tblHoaDonXuat.MaHD,tblNhanVien.TenNhanVien,tblMatHang.TenMatH,tblChiTietHDX.SoLuong,TongTien,tblHoaDonXuat.NgayXuat,tblChiTietHDX.DonGia,Thue,DonViTinh,tblHoaDonXuat.GhiChu
        FROM tblHoaDonXuat INNER JOIN tblChiTietHDX ON tblHoaDonXuat.MaHD=tblChiTietHDX.MaHD
        INNER JOIN tblMatHang ON tblMatHang.MaMatH=tblChiTietHDX.MaMatH
        INNER JOIN tblNhanVien ON tblNhanVien.MaNhanVien=tblHoaDonXuat.MaNhanVien


GO
/****** Object:  Table [dbo].[tblDatHang]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatHang](
	[MaPhieu] [nvarchar](20) NOT NULL,
	[TenKhachH] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatHangCT]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatHangCT](
	[MaPhieu] [nvarchar](20) NULL,
	[MaMatH] [nvarchar](20) NULL,
	[SoLuong] [float] NULL,
	[NgayDat] [datetime] NULL,
	[NgayNhan] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vInPhieu]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vInPhieu]
AS
	select tblDatHangCT.MaPhieu,tblDatHangCT.MaMatH,TenMatH,TenKhachH,tblDatHangCT.SoLuong,NgayDat,NgayNhan,DienThoai,GhiChu from tblDatHangCT inner join tblMatHang on tblDatHangCT.MaMatH=tblMatHang.MaMatH
                INNER JOIN tblDatHang ON tblDatHang.MaPhieu=tblDatHangCT.MaPhieu


GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 10/4/2021 11:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[DienThoai] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblChiTietHDN] ([MaHD], [MaMatH], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'HDN001', N'MH001', 2, N'Tui', 20000, 20)
GO
INSERT [dbo].[tblChiTietHDN] ([MaHD], [MaMatH], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'HDN002', N'MH002', 1, N'Goi', 30000, 30)
GO
INSERT [dbo].[tblChiTietHDN] ([MaHD], [MaMatH], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'HD_TEST', N'MH005', 2, N'Tui', 25000, 250)
GO
INSERT [dbo].[tblChiTietHDN] ([MaHD], [MaMatH], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'HD_TEST', N'MH006', 1, N'Tui', 25660, 25)
GO
INSERT [dbo].[tblChiTietHDX] ([MaMatH], [MaHD], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'MH001', N'HDX001', 1, N'Tui', 520600, 52060)
GO
INSERT [dbo].[tblChiTietHDX] ([MaMatH], [MaHD], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'MH002', N'HDX002', 1, N'Tui', 14000, 1400)
GO
INSERT [dbo].[tblChiTietHDX] ([MaMatH], [MaHD], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'MH003', N'HDX003', 1, N'Goi', 296000, 29600)
GO
INSERT [dbo].[tblChiTietHDX] ([MaMatH], [MaHD], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'MH005', N'HDX004', 1, N'Hop', 32000, 3200)
GO
INSERT [dbo].[tblChiTietHDX] ([MaMatH], [MaHD], [SoLuong], [DonViTinh], [DonGia], [Thue]) VALUES (N'MH006', N'HDX005', 1, N'Goi', 19224, 1922)
GO
INSERT [dbo].[tblDangNhap] ([TaiKhoan], [MatKhau], [DiaChi], [DienThoai]) VALUES (N'admin', N'admin', N'Thai Binh', N'113')
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P001', N'Hoàng Thị D', N'09876xxxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P002', N'Nguyễn Thị M', N'016xxxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P003', N'Đoàn Cung D', N'03288xx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P004', N'Trần Hải H', N'0984xxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P005', N'Nuyễn Thái M', N'016xxxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P006', N'Nguyễn Thị A', N'0984xxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P007', N'Trần Hải G', N'0984xxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P008', N'Nuyễn Thái O', N'016xxxx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P009', N'Hoàng Thị C', N'03288xx', NULL)
GO
INSERT [dbo].[tblDatHang] ([MaPhieu], [TenKhachH], [DienThoai], [GhiChu]) VALUES (N'P010', N'Đoàn Cung S', N'03288xx', NULL)
GO
INSERT [dbo].[tblDatHangCT] ([MaPhieu], [MaMatH], [SoLuong], [NgayDat], [NgayNhan]) VALUES (N'P001', N'MH002', 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tblDatHangCT] ([MaPhieu], [MaMatH], [SoLuong], [NgayDat], [NgayNhan]) VALUES (N'P002', N'MH005', 2, CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tblDatHangCT] ([MaPhieu], [MaMatH], [SoLuong], [NgayDat], [NgayNhan]) VALUES (N'P003', N'MH001', 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tblDatHangCT] ([MaPhieu], [MaMatH], [SoLuong], [NgayDat], [NgayNhan]) VALUES (N'P004', N'MH006', 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2021-10-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tblHoaDonNhap] ([MaHD], [MaNCC], [NgayNhap], [TongTien], [GhiChu]) VALUES (N'HD_TEST', N'NCC001', CAST(N'2021-10-04T00:00:00.000' AS DateTime), 6967160, N'')
GO
INSERT [dbo].[tblHoaDonNhap] ([MaHD], [MaNCC], [NgayNhap], [TongTien], [GhiChu]) VALUES (N'HDN001', N'NCC001', CAST(N'2021-10-04T00:00:00.000' AS DateTime), 20000, NULL)
GO
INSERT [dbo].[tblHoaDonNhap] ([MaHD], [MaNCC], [NgayNhap], [TongTien], [GhiChu]) VALUES (N'HDN002', N'NCC001', CAST(N'2021-10-04T00:00:00.000' AS DateTime), 20000, NULL)
GO
INSERT [dbo].[tblHoaDonNhap] ([MaHD], [MaNCC], [NgayNhap], [TongTien], [GhiChu]) VALUES (N'HDN003', N'NCC001', CAST(N'2021-10-04T00:00:00.000' AS DateTime), 20000, NULL)
GO
INSERT [dbo].[tblHoaDonXuat] ([MaHD], [MaNhanVien], [NgayXuat], [TongTien], [GhiChu]) VALUES (N'HDX001', N'NV001', CAST(N'2021-10-02T00:00:00.000' AS DateTime), 520600, NULL)
GO
INSERT [dbo].[tblHoaDonXuat] ([MaHD], [MaNhanVien], [NgayXuat], [TongTien], [GhiChu]) VALUES (N'HDX002', N'NV001', CAST(N'2021-10-02T00:00:00.000' AS DateTime), 148000, NULL)
GO
INSERT [dbo].[tblHoaDonXuat] ([MaHD], [MaNhanVien], [NgayXuat], [TongTien], [GhiChu]) VALUES (N'HDX003', N'NV002', CAST(N'2021-10-02T00:00:00.000' AS DateTime), 695000, NULL)
GO
INSERT [dbo].[tblHoaDonXuat] ([MaHD], [MaNhanVien], [NgayXuat], [TongTien], [GhiChu]) VALUES (N'HDX004', N'NV001', CAST(N'2021-10-02T00:00:00.000' AS DateTime), 247000, NULL)
GO
INSERT [dbo].[tblHoaDonXuat] ([MaHD], [MaNhanVien], [NgayXuat], [TongTien], [GhiChu]) VALUES (N'HDX005', N'NV005', CAST(N'2021-10-02T00:00:00.000' AS DateTime), 369000, NULL)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH001', N'Chả Cá Đông Lạnh Naruto Maki 160g', 50, 35000, 40000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH002', N'Rong Biển Ăn Liền Bibigo Vị Truyền Thống', 68, 10000, 14000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH003', N'Mực Trứng 500gr', 30, 289000, 296000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH005', N'Phô Mai Uống Susu - Lốc 6 Hộp 80ml', 202, 25000, 32000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH006', N'Sữa Chua Uống Yomilk Nha Đam – Chai 150ml - 2 Chai', 158, 25660, 19224)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH007', N'Thùng 48 Bịch Sữa Dinh Dưỡng Vinamilk Có Đường', 200, 245000, 300000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH008', N'Nấm Kim Châm Hàn Quốc - 150g', 170, 19000, 22000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH009', N'Nước Tương Sushi & Sashimi 200ml', 50, 30000, 45000)
GO
INSERT [dbo].[tblMatHang] ([MaMatH], [TenMatH], [SoLuong], [DonGia], [GiaBan]) VALUES (N'MH010', N'Nước Táo Đào Tự Nhiên', 200, 35000, 45000)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC001', N'MH001', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC002', N'MH002', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC003', N'MH003', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC004', N'MH005', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC005', N'MH006', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC006', N'MH007', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC007', N'MH008', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC008', N'MH009', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [MaMatH], [TenNCC], [DienThoai], [Fax], [Email], [DiaChi], [GhiChu]) VALUES (N'NCC009', N'MH010', N'Cty Đồ Hộp Quảng Châu', N'0032859xxx', NULL, N'dohopquangchau@gmail.com', N'Thẩm Quyến - Trung Quốc', NULL)
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [DienThoai]) VALUES (N'NV001', N'Nguyễn Văn A', N'Phủ Lý - Hà Nam', N'0125xxxxxx')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [DienThoai]) VALUES (N'NV002', N'Phạm Văn Đ', N'Hưng Nhân - Thái Bình', N'0862xxxx')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [DienThoai]) VALUES (N'NV003', N'Đoàn Thị V', N'Quán Toan - Hải Phòng ', N'0983xxxx')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [DienThoai]) VALUES (N'NV004', N'Uchiha Nosense', N'Konoha - Japan', N'03288xxxx')
GO
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [DiaChi], [DienThoai]) VALUES (N'NV005', N'Nguyễn Thị M', N'Quỳnh Lưu - Nghệ An', N'09872xxx ')
GO
ALTER TABLE [dbo].[tblChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHDN_tblHoaDonNhap_MaHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDonNhap] ([MaHD])
GO
ALTER TABLE [dbo].[tblChiTietHDN] CHECK CONSTRAINT [FK_tblChiTietHDN_tblHoaDonNhap_MaHD]
GO
ALTER TABLE [dbo].[tblChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHDN_tblMatHang_MaMatH] FOREIGN KEY([MaMatH])
REFERENCES [dbo].[tblMatHang] ([MaMatH])
GO
ALTER TABLE [dbo].[tblChiTietHDN] CHECK CONSTRAINT [FK_tblChiTietHDN_tblMatHang_MaMatH]
GO
ALTER TABLE [dbo].[tblChiTietHDX]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHDX_tblHoaDonXuat] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDonXuat] ([MaHD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHDX] CHECK CONSTRAINT [FK_tblChiTietHDX_tblHoaDonXuat]
GO
ALTER TABLE [dbo].[tblChiTietHDX]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHDX_tblMatHang] FOREIGN KEY([MaMatH])
REFERENCES [dbo].[tblMatHang] ([MaMatH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblChiTietHDX] CHECK CONSTRAINT [FK_tblChiTietHDX_tblMatHang]
GO
ALTER TABLE [dbo].[tblDatHangCT]  WITH CHECK ADD  CONSTRAINT [FK_tblDatHangCT_tblDatHang_MaPhieu] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[tblDatHang] ([MaPhieu])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblDatHangCT] CHECK CONSTRAINT [FK_tblDatHangCT_tblDatHang_MaPhieu]
GO
ALTER TABLE [dbo].[tblDatHangCT]  WITH CHECK ADD  CONSTRAINT [FK_tblDatHangCT_tblMatHang_MaMatH] FOREIGN KEY([MaMatH])
REFERENCES [dbo].[tblMatHang] ([MaMatH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblDatHangCT] CHECK CONSTRAINT [FK_tblDatHangCT_tblMatHang_MaMatH]
GO
ALTER TABLE [dbo].[tblHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonNhap_tblNCC_MaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblHoaDonNhap] CHECK CONSTRAINT [FK_tblHoaDonNhap_tblNCC_MaNCC]
GO
ALTER TABLE [dbo].[tblHoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonXuat_tblNhanVien_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tblNhanVien] ([MaNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblHoaDonXuat] CHECK CONSTRAINT [FK_tblHoaDonXuat_tblNhanVien_MaNhanVien]
GO
ALTER TABLE [dbo].[tblNhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_tblMatHang_tblNhaCungCap_MaMatH] FOREIGN KEY([MaMatH])
REFERENCES [dbo].[tblMatHang] ([MaMatH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblNhaCungCap] CHECK CONSTRAINT [FK_tblMatHang_tblNhaCungCap_MaMatH]
GO
ALTER TABLE [dbo].[tblChiTietHDN]  WITH CHECK ADD  CONSTRAINT [CK__tblChiTie__SoLuo__07F6335A] CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[tblChiTietHDN] CHECK CONSTRAINT [CK__tblChiTie__SoLuo__07F6335A]
GO
ALTER TABLE [dbo].[tblChiTietHDX]  WITH CHECK ADD  CONSTRAINT [CK__tblChiTie__SoLuo__0F975522] CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[tblChiTietHDX] CHECK CONSTRAINT [CK__tblChiTie__SoLuo__0F975522]
GO
USE [master]
GO
ALTER DATABASE [qlbh] SET  READ_WRITE 
GO
