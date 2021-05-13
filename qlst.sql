CREATE DATABASE QLST
go
USE [QLST]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MAHD] [int] NOT NULL,
	[MASP] [varchar](10) NOT NULL,
	[DONGIA] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[THANHTIEN] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_NHAP]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_NHAP](
	[MANK] [int] NOT NULL,
	[MASP] [varchar](10) NOT NULL,
	[DONGIA] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[THANHTIEN] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [date] NOT NULL,
	[GIOLAP] [time](7) NOT NULL,
	[TONGTIEN] [float] NOT NULL,
	[CHIETKHAU] [float] NOT NULL,
	[THANHTOAN] [float] NOT NULL,
	[MAKM] [varchar](10) NOT NULL,
	[MANV] [varchar](10) NOT NULL,
	[MAKH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
	[DIEMTL] [int] NOT NULL,
	[TINHTRANG] [bit] NULL,
 CONSTRAINT [PK__KHACHHAN__603F592CF4DB7A71] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [varchar](10) NOT NULL,
	[TENKM] [nvarchar](50) NULL,
	[NGAYBD] [date] NULL,
	[NGAYKT] [date] NULL,
	[GIAMGIA] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MALOAI] [varchar](10) NOT NULL,
	[TENLOAI] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](10) NOT NULL,
	[TENNV] [nvarchar](50) NOT NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
	[LUONG] [float] NOT NULL,
	[TINHTRANG] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAPKHO]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPKHO](
	[MANK] [int] IDENTITY(1,1) NOT NULL,
	[NGAYNHAP] [date] NOT NULL,
	[GIONHAP] [time](7) NOT NULL,
	[TONGGIA] [float] NOT NULL,
	[MANCC] [int] NOT NULL,
	[MANV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MANK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](10) NOT NULL,
	[TENSP] [nvarchar](50) NOT NULL,
	[GIABAN] [float] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DVT] [nvarchar](20) NULL,
	[NSX] [nvarchar](50) NULL,
	[MALOAI] [varchar](10) NOT NULL,
	[TINHTRANG] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/13/2021 1:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID] [int] IDENTITY(0,5) NOT NULL,
	[USERNAME] [varchar](10) NOT NULL,
	[PASS] [varchar](20) NOT NULL,
	[QUYEN] [nvarchar](50) NOT NULL,
	[ENABLE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (8, N'SP0002', 25000, 2, 50000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (8, N'SP0029', 30000, 1, 30000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (8, N'SP0020', 10000, 2, 20000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (12, N'SP0006', 55000, 1, 55000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (12, N'SP0004', 60000, 1, 60000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (13, N'SP0024', 26000, 2, 52000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (17, N'SP0009', 46000, 1, 46000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (17, N'SP0030', 31000, 1, 31000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (17, N'SP0018', 10000, 1, 10000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (20, N'SP0002', 25000, 2, 50000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (20, N'SP0004', 60000, 3, 180000)
INSERT [dbo].[CT_HOADON] ([MAHD], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (20, N'SP0017', 10000, 2, 20000)
GO
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (1, N'SP0004', 50000, 100, 5000000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (1, N'SP0010', 6000, 150, 900000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (1, N'SP0012', 1500, 200, 800000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (1, N'SP0027', 15000, 100, 1500000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (2, N'SP0030', 25000, 100, 2500000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (2, N'SP0032', 20000, 100, 2000000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (2, N'SP0038', 21000, 150, 3150000)
INSERT [dbo].[CT_NHAP] ([MANK], [MASP], [DONGIA], [SOLUONG], [THANHTIEN]) VALUES (2, N'SP0012', 2000, 100, 200000)
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [GIOLAP], [TONGTIEN], [CHIETKHAU], [THANHTOAN], [MAKM], [MANV], [MAKH]) VALUES (8, CAST(N'2021-03-21' AS Date), CAST(N'09:12:33' AS Time), 100000, 0, 100000, N'K000', N'NV002', 3)
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [GIOLAP], [TONGTIEN], [CHIETKHAU], [THANHTOAN], [MAKM], [MANV], [MAKH]) VALUES (12, CAST(N'2021-03-22' AS Date), CAST(N'11:30:11' AS Time), 115000, 0, 115000, N'K000', N'NV003', 2)
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [GIOLAP], [TONGTIEN], [CHIETKHAU], [THANHTOAN], [MAKM], [MANV], [MAKH]) VALUES (13, CAST(N'2021-03-22' AS Date), CAST(N'14:07:53' AS Time), 52000, 0, 52000, N'K000', N'NV004', 4)
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [GIOLAP], [TONGTIEN], [CHIETKHAU], [THANHTOAN], [MAKM], [MANV], [MAKH]) VALUES (17, CAST(N'2021-03-24' AS Date), CAST(N'08:35:22' AS Time), 87000, 0, 87000, N'K000', N'NV005', 5)
INSERT [dbo].[HOADON] ([MAHD], [NGAYLAP], [GIOLAP], [TONGTIEN], [CHIETKHAU], [THANHTOAN], [MAKM], [MANV], [MAKH]) VALUES (20, CAST(N'2021-04-01' AS Date), CAST(N'08:12:29' AS Time), 250000, 0, 250000, N'K000', N'NV002', 6)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (0, N'Khách Lẻ', N'0935472917', 20, 1)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (2, N'Lê Nhật Anh', N'0962438275', 87, 1)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (3, N'Nguyễn Thảo Vy', N'0735721721', 56, 1)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (4, N'Phạm Khánh Ngọc', N'0976362882', 37, 1)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (5, N'Nguyễn Minh Hùng', N'0932778277', 21, 1)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIEMTL], [TINHTRANG]) VALUES (6, N'Lê Minh Hoàng', N'0732394939', 96, 1)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENKM], [NGAYBD], [NGAYKT], [GIAMGIA]) VALUES (N'K000', N'Không có khuyến mãi', NULL, NULL, 0)
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENKM], [NGAYBD], [NGAYKT], [GIAMGIA]) VALUES (N'KM001', N'giảm 20% hóa đơn từ 100K', CAST(N'2021-04-15' AS Date), CAST(N'2021-05-31' AS Date), 20)
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENKM], [NGAYBD], [NGAYKT], [GIAMGIA]) VALUES (N'KM002', N'giảm 30% hóa đơn từ 200K', CAST(N'2021-05-01' AS Date), CAST(N'2021-06-30' AS Date), 30)
GO
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'BEER', N'Thức Uống Có Cồn')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'DRINK', N'Nước Giải Khát')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'FASTFD', N'Mì, Cháo, Phở Gói')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'MILK', N'Sữa')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'SNACKS', N'Bánh Kẹo')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'SPICE', N'Gia Vị')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'TPKHO', N'Thực Phẩm Khô')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (N'TPLANH', N'Thực Phẩm Đông Lạnh')
GO
SET IDENTITY_INSERT [dbo].[NCC] ON 

INSERT [dbo].[NCC] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (1, N'ABC', N'123 An Dương Vương Q5', N'0937492383')
INSERT [dbo].[NCC] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (2, N'MNP', N'78 CMT8 Q3', N'0364384654')
INSERT [dbo].[NCC] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (3, N'XYZ', N'26 Nguyễn Thị Minh Khai Q1', N'0736256253')
SET IDENTITY_INSERT [dbo].[NCC] OFF
GO
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NGAYSINH], [DIACHI], [SDT], [LUONG], [TINHTRANG]) VALUES (N'NV001', N'Phạm Minh Anh', CAST(N'1999-09-12' AS Date), NULL, N'0923476522', 10000000, 1)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NGAYSINH], [DIACHI], [SDT], [LUONG], [TINHTRANG]) VALUES (N'NV002', N'Nguyễn Bảo Ngọc', CAST(N'2000-07-14' AS Date), NULL, N'0723421843', 6000000, 1)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NGAYSINH], [DIACHI], [SDT], [LUONG], [TINHTRANG]) VALUES (N'NV003', N'Lê Tuấn Anh', CAST(N'2000-03-20' AS Date), NULL, N'0927463824', 6000000, 1)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NGAYSINH], [DIACHI], [SDT], [LUONG], [TINHTRANG]) VALUES (N'NV004', N'Nguyễn Lan Vy', CAST(N'2001-11-04' AS Date), NULL, N'0943862383', 6000000, 1)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NGAYSINH], [DIACHI], [SDT], [LUONG], [TINHTRANG]) VALUES (N'NV005', N'Hoàng Quốc Khánh', CAST(N'2001-02-27' AS Date), NULL, N'0723147541', 6000000, 1)
GO
SET IDENTITY_INSERT [dbo].[NHAPKHO] ON 

INSERT [dbo].[NHAPKHO] ([MANK], [NGAYNHAP], [GIONHAP], [TONGGIA], [MANCC], [MANV]) VALUES (1, CAST(N'2021-02-20' AS Date), CAST(N'08:20:33' AS Time), 8200000, 1, N'NV004')
INSERT [dbo].[NHAPKHO] ([MANK], [NGAYNHAP], [GIONHAP], [TONGGIA], [MANCC], [MANV]) VALUES (2, CAST(N'2021-03-15' AS Date), CAST(N'09:00:11' AS Time), 7650000, 2, N'NV003')
SET IDENTITY_INSERT [dbo].[NHAPKHO] OFF
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0001', N'Kẹo Play More
', 29000, 30, N'hũ 22g', N'7Eleven', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0002', N'Kẹo socola hương bạc hà Dynamite
', 25000, 30, N'gói 330g', N'Dinamite', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0003', N'Kẹo dẻo Zoo Jelly', 16000, 30, N'gói 200g', N'Bibica', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0004', N'Bánh kem trứng Custas
', 60000, 30, N'hộp 12 x 23,5g', N'Orion', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0005', N'Bánh bông lan cuộn kem Solite
', 45000, 20, N'hộp 20 x 18g', N'Solite', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0006', N'Bánh Choco-pie
', 55000, 25, N'hộp 12 x 33g', N'Orion', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0007', N'Bánh quy Oreo
', 15000, 35, N'gói 133g', N'Oreo', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0008', N'Bánh cracker phô mai Magic', 10000, 20, N'gói 108g', N'Magic', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0009', N'Bánh quy sữa Cosy Marie
', 46000, 20, N'gói 432g', N'Cosy', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0010', N'Snack Khoai Tây Lays
', 11000, 30, N'gói 52g', N'Lay''s', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0011', N'Snack Ohshi
', 6000, 50, N'gói 40g', N'Oishi', N'SNACKS', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0012', N'Mì Hảo Hảo tôm chua cay
', 4000, 50, N'gói 75g', N'Acecook', N'FASTFD', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0013', N'Mì khoai tây Omachi', 7500, 40, N'gói 78g', N'Omachi', N'FASTFD', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0014', N'Mì Modern lẩu Thái
', 7500, 30, N'ly 65g', N'Acecook', N'FASTFD', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0015', N'Nước Táo Lên Men Strongbow
', 18500, 35, N'chai 330ml', N'Strongbow
', N'BEER', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0016', N'Bia Corona Extra
', 24000, 25, N'chai 210ml', N'Coronita', N'BEER', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0017', N'Pessi
', 10000, 45, N'lon 330ml', N'Pepssi', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0018', N'Coca Cola', 10000, 45, N'lon 330ml', N'Coca Cola', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0019', N'Mirinda
', 10000, 40, N'chai 390ml', N'Mirinda', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0020', N'Aquafina
', 10000, 50, N'chai 500ml', N'Aquafina
', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0021', N'Lavie
', 10000, 50, N'chai 500ml', N'Lavie', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0022', N'Trà Olong Tea+
', 10000, 40, N'chai 450ml', N'Tea+', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0023', N'Nước Tăng Lực Sting
', 10000, 40, N'chai 330ml', N'Sting', N'DRINK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0024', N'sữa chua Vinamilk
', 26000, 20, N'Lốc 4 hộp x 100g', N'Vinamilk', N'TPLANH', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0025', N'sữa uống lên men Yakult
', 25000, 20, N'lốc 5 chai x 65ml', N'Yakult', N'TPLANH', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0026', N'Phô Mai Con Bò Cười
', 31000, 25, N'hộp 120g', N'Con Bò Cười
', N'TPLANH', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0027', N'Sữa đặc Ông Thọ
', 22000, 25, N'lon 380g', N'Vinamilk', N'MILK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0028', N'sữa đậu nành nguyên chất Fami
', 25000, 35, N'lốc 6 hộp x 200ml', N'Fami', N'MILK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0029', N'Sữa tươi có đường Vinamilk 100%
', 30000, 30, N'lốc 4 hộp x180ml', N'Vinamilk', N'MILK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0030', N'sữa tươi tiệt trùng TH true MILK
', 31000, 30, N'lốc 4 hộp x180ml', N'TH true MILK', N'MILK', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0031', N'Đường tinh luyện Biên Hòa Pure
', 23500, 40, N'gói 1kg', N'Biên Hòa ', N'SPICE', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0032', N'Bột ngọt Vedan
', 29000, 25, N'gói 400g', N'Vedan', N'SPICE', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0033', N'Hạt nêm ngọt tôm thơm thịt Chinsu
', 27000, 30, N'gói 400g', N'Chinsu', N'SPICE', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0034', N'Xúc xích Ponnie', 21000, 30, N'gói 175g', N'Ponnie', N'TPKHO', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0035', N'Lạp xưởng bò Vissan', 55000, 25, N'gói 200g', N'Vissan', N'TPKHO', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0036', N'Bột chiên giòn Aji-Quick', 30000, 20, N'gói 210g', N'Ajinomoto', N'TPKHO', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0037', N'Nước tương đậu nành đậm đặc Maggi
', 23000, 30, N'chai 700ml', N'Maggi', N'SPICE', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIABAN], [SOLUONG], [DVT], [NSX], [MALOAI], [TINHTRANG]) VALUES (N'SP0038', N'Nước mắm Nam Ngư
', 28000, 30, N'chai 750ml', N'Chinsu', N'SPICE', 1)
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([ID], [USERNAME], [PASS], [QUYEN], [ENABLE]) VALUES (0, N'NV001', N'123456', N'AD', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [USERNAME], [PASS], [QUYEN], [ENABLE]) VALUES (5, N'NV002', N'nv002', N'NV', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [USERNAME], [PASS], [QUYEN], [ENABLE]) VALUES (10, N'NV003', N'nv003', N'NV', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [USERNAME], [PASS], [QUYEN], [ENABLE]) VALUES (15, N'NV004', N'nv004', N'NV', 1)
INSERT [dbo].[TAIKHOAN] ([ID], [USERNAME], [PASS], [QUYEN], [ENABLE]) VALUES (20, N'NV005', N'nv005', N'NV', 1)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_SANPHAM1] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_SANPHAM1]
GO
ALTER TABLE [dbo].[CT_NHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_NHAP_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CT_NHAP] CHECK CONSTRAINT [FK_CT_NHAP_SANPHAM]
GO
ALTER TABLE [dbo].[CT_NHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTN_NK] FOREIGN KEY([MANK])
REFERENCES [dbo].[NHAPKHO] ([MANK])
GO
ALTER TABLE [dbo].[CT_NHAP] CHECK CONSTRAINT [FK_CTN_NK]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KM] FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYENMAI] ([MAKM])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_KM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_KH]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[NHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_NK_NCC] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NCC] ([MANCC])
GO
ALTER TABLE [dbo].[NHAPKHO] CHECK CONSTRAINT [FK_NK_NCC]
GO
ALTER TABLE [dbo].[NHAPKHO]  WITH CHECK ADD  CONSTRAINT [FK_NK_NV] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[NHAPKHO] CHECK CONSTRAINT [FK_NK_NV]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LOAI] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAI] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LOAI]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TK_NV] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TK_NV]
GO
