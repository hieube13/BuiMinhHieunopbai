USE [dbMarkets]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](10) NULL,
	[Active] [bit] NOT NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesPrices]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesPrices](
	[AttributesPriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AttributesPrices] PRIMARY KEY CLUSTERED 
(
	[AttributesPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Cover] [nvarchar](255) NULL,
	[SchemaMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Parent] [int] NULL,
	[Levels] [int] NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](100) NULL,
	[Type] [nvarchar](10) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Amount] [int] NULL,
	[Discount] [int] NULL,
	[TotalMoney] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Paid] [bit] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[TotalMoney] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](250) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NOT NULL,
	[Title] [nvarchar](250) NULL,
	[MetaDesc] [nvarchar](250) NULL,
	[MetaKey] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Thumb] [nvarchar](255) NULL,
	[Video] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NOT NULL,
	[HomeFlag] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Tags] [nvarchar](max) NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[MetaDesc] [nvarchar](255) NULL,
	[MetaKey] [nvarchar](255) NULL,
	[UnitsInStock] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[QuangCaoID] [int] IDENTITY(1,1) NOT NULL,
	[SubTitle] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[ImageBG] [nvarchar](250) NULL,
	[ImageProduct] [nvarchar](250) NULL,
	[UrlLink] [nvarchar](250) NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_QuangCaos] PRIMARY KEY CLUSTERED 
(
	[QuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [nvarchar](150) NULL,
	[Phone] [nchar](10) NULL,
	[Company] [nvarchar](150) NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinDangs]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinDangs](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[SContents] [nvarchar](255) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Author] [nvarchar](255) NULL,
	[AccountID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[isHot] [bit] NOT NULL,
	[isNewfeed] [bit] NOT NULL,
	[MetaKey] [nvarchar](255) NULL,
	[MetaDesc] [nvarchar](255) NULL,
	[Views] [int] NULL,
 CONSTRAINT [PK_tblTinTucs] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 12/7/2023 1:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (1, N'Real Madrid', N'Real Madrid Club de Fútbol, thường được gọi là Real Madrid hay đơn giản là Real, là một câu lạc bộ bóng đá chuyên nghiệp của Tây Ban Nha có trụ sở tại Madrid. Real Madrid là Câu lạc bộ bóng đá xuất sắc nhất thế kỷ 20 của FIFA', 0, 0, 0, 1, N'hala madrid', N'hala madrid', N'hala madrid', N'hala madrid', N'hala madrid', N'hala madrid', N'hala madrid')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (2, N'Barca', N'Futbol Club Barcelona, thường được biết đến với tên gọi tắt Barcelona, hay đơn giản là Barça, là một câu lạc bộ bóng đá chuyên nghiệp có trụ sở tại Barcelona, Catalunya, Tây Ban Nha, thi đấu tại La Liga, giải đấu hàng đầu của bóng đá Tây Ban Nha.', 0, 0, 0, 1, N'ngulol barca', N'ngulol barca', N'ngulol barca', N'ngulol barca', N'ngulol barca', N'ngulol barca', N'ngulol barca')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (4, N'Man City', N'Câu lạc bộ bóng đá Manchester City là một câu lạc bộ bóng đá Anh có trụ sở tại Manchester, thi đấu tại Giải bóng đá Ngoại hạng Anh, giải đấu hàng đầu của bóng đá Anh. Được thành lập vào ngày 16 tháng 4 năm 1880 với tên gọi St', 0, 0, 0, 1, N'MC', N'MC', N'MC', N'MC', N'MC', N'MC', N'MC')
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [ParentID], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [MetaDesc], [MetaKey], [Cover], [SchemaMarkup]) VALUES (5, N'Bayern', N'Fußball-Club Bayern München e. V., còn được biết đến là FC Bayern, Bayern Munich hoặc đơn giản là Bayern, là một câu lạc bộ thể thao có trụ sở tại München, Đức', 0, 0, 0, 1, N'Bayern', N'Bayern', N'Bayern', N'Bayern', N'Bayern', N'Bayern', N'Bayern')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (1, N'Cristiano Ronaldo', N'CR7', N'Cristiano Ronaldo dos Santos Aveiro GOIH ComM là một cầu thủ bóng đá chuyên nghiệp người Bồ Đào Nha hiện đang thi đấu ở vị trí tiền đạo và là đội trưởng của câu lạc bộ Saudi Pro League Al Nassr và đội tuyển bóng đá quốc gia Bồ Đào Nha', 1, 10, 1, N'cr7.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'CR7', N'CR7 ', N'CR7 ', N'CR7 ', N'CR7 ', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (5, N'Leonel Messi', N'M10', N'Lionel Andrés Messi, còn được gọi là Leo Messi, là một cầu thủ bóng đá chuyên nghiệp người Argentina hiện đang thi đấu ở vị trí tiền đạo và là đội trưởng của câu lạc bộ Major League Soccer Inter Miami và đội tuyển bóng đá quốc gia Argentina', 2, 10, 1, N'm10.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'M10', N'M10', N'M10', N'M10', N'M10', 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (6, N'Karim Benzema', N'Ben ú', N'Karim Mostafa Benzema là một cầu thủ bóng đá chuyên nghiệp người Pháp hiện đang thi đấu ở vị trí tiền đạo cắm cho câu lạc bộ Saudi Pro League Al-Ittihad', 1, 9, 1, N'benzema.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Ben ú', N'Ben ú', N'Ben ú', N'Ben ú', N'Ben ú', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (7, N'Luka Modric', N'Cụ Chanh', N'Luka Modrić là một cầu thủ bóng đá chuyên nghiệp người Croatia hiện đang thi đấu cho câu lạc bộ La Liga Real Madrid và là đội trưởng của đội tuyển bóng đá quốc gia Croatia. Vị trí sở trường của anh là tiền vệ trung tâm, nhưng anh còn có thể thi đấu tốt ở vị trí tiền vệ tấn công lẫn tiền vệ phòng ngự', 1, 9, 1, N'modric.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Cụ Chanh', N'Cụ Chanh', N'Cụ Chanh', N'Cụ Chanh', N'Cụ Chanh', 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (8, N'Kylian Mbappe', N'Rùa', N'Kylian Mbappé Lottin là một cầu thủ bóng đá chuyên nghiệp người Pháp hiện đang thi đấu ở vị trí tiền đạo chơi cho câu lạc bộ Ligue 1 Paris Saint-Germain và là đội trưởng Đội tuyển bóng đá quốc gia Pháp', 1, 9, 1, N'mbappe.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Rùa', N'Rùa', N'Rùa', N'Rùa', N'Rùa', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (9, N'Robert Lewandoski', N'Lewy', N'Robert Lewandowski là một cầu thủ bóng đá chuyên nghiệp người Ba Lan, chơi ở vị trí tiền đạo cho câu lạc bộ La Liga Barcelona và là đội trưởng của Đội tuyển bóng đá quốc gia Ba Lan.', 2, 9, 1, N'Lewan.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Lewy', N'Lewy', N'Lewy', N'Lewy', N'Lewy', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (10, N'Vinicius Junior', N'Vini', N'Vinícius José Paixão de Oliveira Júnior, thường được gọi là Vinícius Júnior hay Vinícius Jr., là cầu thủ bóng đá chuyên nghiệp người Brasil thi đấu ở vị trí tiền đạo cánh cho câu lạc bộ Real Madrid tại La Liga và Đội tuyển bóng đá quốc gia Brasil.', 1, 9, 1, N'Vinicius.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Vini', N'Vini', N'Vini', N'Vini', N'Vini', 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (11, N'Erling Haaland', N'Hà Lan', N'Erling Braut Haaland là một cầu thủ bóng đá chuyên nghiệp người Na Uy thi đấu ở vị trí tiền đạo cắm cho câu lạc bộ Premier League Manchester City và Đội tuyển bóng đá quốc gia Na Uy. Được coi là một trong những cầu thủ giỏi nhất thế giới, anh nổi tiếng với tốc độ, sức mạnh và khả năng dứt điểm trong vòng cấm', 4, 9, 1, N'haaland.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Hà Lan', N'Hà Lan', N'Hà Lan', N'Hà Lan', N'Hà Lan', 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (12, N'Jude Bellingham', N'Bé Linh', N'Jude Victor William Bellingham là một cầu thủ bóng đá chuyên nghiệp người Anh thi đấu ở vị trí tiền vệ cho câu lạc bộ La Liga Real Madrid và Đội tuyển bóng đá quốc gia Anh.', 1, 9, 1, N'bellingham.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Bé Linh', N'Bé Linh', N'Bé Linh', N'Bé Linh', N'Bé Linh', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (13, N'Federico Valverde', N'Chim ưng', N'Federico Santiago Valverde Dipetta là một cầu thủ bóng đá chuyên nghiệp người Uruguay thi đấu ở vị trí tiền vệ trung tâm cho câu lạc bộ Tây Ban Nha Real Madrid và đội tuyển bóng đá quốc gia Uruguay', 1, 9, 1, N'valverde.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Chim ưng', N'Chim ưng', N'Chim ưng', N'Chim ưng', N'Chim ưng', 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (14, N'Harry Kane', N'Kane', N'Harry Edward Kane là một cầu thủ bóng đá chuyên nghiệp người Anh hiện đang thi đấu ở vị trí tiền đạo cắm cho câu lạc bộ Bundesliga Bayern Munich và là đội trưởng của Đội tuyển bóng đá quốc gia Anh', 5, 8, 1, N'kane.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Kane', N'Kane', N'Kane', N'Kane', N'Kane', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (15, N'Aurelian Tchouameni', N'Châu Bùi', N'Aurélien Djani Tchouaméni, là một cầu thủ bóng đá chuyên nghiệp người Pháp, anh đang chơi ở vị trí tiền vệ phòng ngự cho câu lạc bộ Real Madrid tại La Liga và Đội tuyển bóng đá quốc gia Pháp', 1, 8, 1, N'tchou.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Châu Bùi', N'Châu Bùi', N'Châu Bùi', N'Châu Bùi', N'Châu Bùi', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (16, N'Eduardo Camavinga', N'Vinh gà', N'Eduardo Camavinga là một cầu thủ bóng đá chuyên nghiệp chơi ở vị trí tiền vệ cho Real Madrid và đội tuyển bóng đá quốc gia Pháp. Sinh ra ở Cabinda, Angola, Camavinga chuyển đến Pháp khi mới hai tuổi. Vào ngày 5 tháng 11 năm 2019, anh chính thức được công nhận quốc tịch Pháp', 1, 8, 1, N'camavinga.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Vinh gà', N'Vinh gà', N'Vinh gà', N'Vinh gà', N'Vinh gà', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (17, N'Julian Alvarez', N'Alvarez', N'Julián Álvarez là một cầu thủ bóng đá chuyên nghiệp người Argentina hiện đang thi đấu ở vị trí tiền đạo cho câu lạc bộ Manchester City tại Premier League và Đội tuyển bóng đá quốc gia Argentina', 4, 8, 1, N'julian.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Alvarez', N'Alvarez', N'Alvarez', N'Alvarez', N'Alvarez', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (18, N'Toni Kroos', N'Tám nghiệp', N'Toni Kroos là một cầu thủ bóng đá người Đức hiện đang chơi cho câu lạc bộ Real Madrid tại La Liga ở vị trí tiền vệ trung tâm, nhưng cũng có thể chơi ở vị trí tiền vệ kiến thiết từ tuyến dưới. Nổi tiếng với tầm nhìn, kỹ năng chuyền bóng, khả năng sáng tạo, tạt bóng và khả năng tạo cơ hội từ các tình huống đá phạt', 1, 8, 1, N'kroos.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Tám nghiệp', N'Tám nghiệp', N'Tám nghiệp', N'Tám nghiệp', N'Tám nghiệp', 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (19, N'Ruben Dias', N'Dias', N'Rúben dos Santos Gato Alves Dias là cầu thủ bóng đá chuyên nghiệp người Bồ Đào Nha hiện đang thi đấu ở vị trí trung vệ cho câu lạc bộ Manchester City tại Premier League và Đội tuyển bóng đá quốc gia Bồ Đào Nha Dias xuất thân từ lò đào tạo trẻ của Benfica', 4, 8, 1, N'rubendias.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Dias', N'Dias', N'Dias', N'Dias', N'Dias', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (20, N'Rodri', N'Rodri', N'Rodrigo Hernández Cascante, thường được biết đến với tên Rodri hoặc Rodrigo, là một cầu thủ bóng đá chuyên nghiệp người Tây Ban Nha hiện đang thi đấu ở vị trí tiền vệ phòng ngự cho câu lạc bộ Ngoại hạng Anh Manchester City và đội tuyển bóng đá quốc gia Tây Ban Nha', 4, 8, 1, N'rodri.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Rodri', N'Rodri', N'Rodri', N'Rodri', N'Rodri', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (21, N'Declan Rice', N'Gạo', N'Declan Rice là một cầu thủ bóng đá chuyên nghiệp người Anh chơi ở vị trí tiền vệ phòng ngự cho câu lạc bộ Arsenal tại Premier League và Đội tuyển bóng đá quốc gia Anh.', 1, 7, 1, N'Rice.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Gạo', N'Gạo', N'Gạo', N'Gạo', N'Gạo', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (22, N'Eder Militao', N'Khá tao', N'Éder Gabriel Militão là một cầu thủ bóng đá chuyên nghiệp người Brasil hiện thi đấu cho câu lạc bộ Real Madrid của Tây Ban Nha và đội tuyển quốc gia Brazil ở vị trí trung vệ.', 1, 7, 1, N'militao.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Khá tao', N'Khá tao', N'Khá tao', N'Khá tao', N'Khá tao', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (23, N'Rodrygo', N'Rodrygo', N'Rodrygo Silva de Goes, còn gọi là Rodrygo, là một cầu thủ bóng đá người Brazil chơi cho Real Madrid và đội tuyển bóng đá quốc gia Brasil ở vị trí tiền đạo cánh. Anh từng có tên trong Bảng xếp hạng "Cầu thủ trẻ xuất sắc nhất" hai năm liên tiếp: 2019 và 2020', 1, 7, 1, N'rodrygo.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Rodrygo', N'Rodrygo', N'Rodrygo', N'Rodrygo', N'Rodrygo', 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (24, N'Marcus Rashford', N'Tiến sĩ', N'Marcus Rashford là một cầu thủ bóng đá chuyên nghiệp người Anh thi đấu ở vị trí tiền đạo cho câu lạc bộ bóng đá Manchester United và Đội tuyển bóng đá quốc gia Anh.', 1, 7, 1, N'Rash4.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Tiến sĩ', N'Tiến sĩ', N'Tiến sĩ', N'Tiến sĩ', N'Tiến sĩ', 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (25, N'Bukayo Saka Phấn Đào', N'Saka', N'Bukayo Saka là một cầu thủ bóng đá chuyên nghiệp người Anh thi đấu ở vị trí tiền đạo cánh phải, hậu vệ cánh trái hoặc tiền vệ cho câu lạc bộ Arsenal và đội tuyển quốc gia Anh. Saka từng có mặt trong Bảng xếp hạng "Cầu thủ trẻ xuất sắc nhất 2020" ở vị trí thứ 15', 1, 7, 1, N'saka.jpg', NULL, CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-22T01:07:36.310' AS DateTime), 1, 1, 1, N'Saka', N'Saka', N'bukayo-saka-phan-dao', N'Saka', N'Saka', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (26, N'Joško Gvardiol', N'Gvar', N'Joško Gvardiol là một cầu thủ bóng đá chuyên nghiệp người Croatia thi đấu ở vị trí hậu vệ cho câu lạc bộ Premier League Manchester City và Đội tuyển bóng đá quốc gia Croatia. Mặc dù chủ yếu là trung vệ, anh thường chơi ở vị trí hậu vệ trái', 4, 7, 1, N'gvardiol.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Gvar', N'Gvar', N'Gvar', N'Gvar', N'Gvar', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (27, N'Bruno Fernadez', N'mõm', N'Bruno Miguel Borges Fernandes là một cầu thủ bóng đá chuyên nghiệp người Bồ Đào Nha hiện đang thi đấu ở vị trí tiền vệ tấn công cho đội tuyển quốc gia Bồ Đào Nha và là đội trưởng của câu lạc bộ Ngoại hạng Anh Manchester United.', 1, 7, 1, N'Bruno.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'mõm', N'mõm', N'mõm', N'mõm', N'mõm', 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (28, N'Rafael Leao', N'Leao', N'Rafael Alexandre Conceição Leão là một cầu thủ bóng đá chuyên nghiệp người Bồ Đào Nha hiện đang thi đấu ở vị trí tiền đạo cho câu lạc bộ Milan tại Serie A và Đội tuyển bóng đá quốc gia Bồ Đào Nha', 1, 6, 1, N'Leao.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Leao', N'Leao', N'Leao', N'Leao', N'Leao', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (29, N'Thibaut Courtois', N'Củ tỏi', N'Thibaut Nicolas Marc Courtois là một cầu thủ bóng đá chuyên nghiệp người Bỉ thi đấu ở vị trí thủ môn cho câu lạc bộ Real Madrid tại La Liga và Đội tuyển bóng đá quốc gia Bỉ. Anh được nhiều người coi là một trong những thủ môn xuất sắc nhất thế giới.', 1, 6, 1, N'cutoi.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Củ tỏi', N'Củ tỏi', N'Củ tỏi', N'Củ tỏi', N'Củ tỏi', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (30, N'Kevin De Bruyne', N'Kevin', N'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ, thi đấu ở vị trí tiền vệ và đội trưởng cả câu lạc bộ Premier League Manchester City và Đội tuyển bóng đá quốc gia Bỉ', 4, 6, 1, N'Kevin.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Kevin', N'Kevin', N'Kevin', N'Kevin', N'Kevin', 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (31, N'Joshua Kimmich', N'kimmy', N'Joshua Walter Kimmich là một cầu thủ bóng đá chuyên nghiệp người Đức hiện đang chơi ở vị trí tiền vệ phòng ngự hoặc hậu vệ phải cho câu lạc bộ FC Bayern München và đội tuyển quốc gia Đức.', 5, 6, 1, N'kimmich.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'kimmy', N'kimmy', N'kimmy', N'kimmy', N'kimmy', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (32, N'Enzo Fernandez ', N'Enzo', N'Enzo Jeremías Fernández là một cầu thủ bóng đá chuyên nghiệp người Argentina hiện đang thi đấu ở vị trí tiền vệ trung tâm cho câu lạc bộ Premier League Chelsea và Đội tuyển bóng đá quốc gia Argentina', 1, 6, 1, N'enzo.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Enzo', N'Enzo', N'Enzo', N'Enzo', N'Enzo', 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (33, N'Martin Odegaard', N'Ode', N'Martin Ødegaard là cầu thủ bóng đá người Na Uy thi đấu ở vị trí tiền vệ tấn công đồng thời là đội trưởng của câu lạc bộ Arsenal tại Premier League và Đội tuyển bóng đá quốc gia Na Uy', 1, 6, 1, N'ode.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Ode', N'Ode', N'Ode', N'Ode', N'Ode', 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (34, N'Antoine Griezmann', N'Antoi', N'Antoine Griezmann là một cầu thủ bóng đá chuyên nghiệp người Pháp hiện đang thi đấu ở vị trí tiền đạo cho câu lạc bộ Atlético Madrid tại La Liga và đội tuyển bóng đá quốc gia Pháp', 1, 6, 1, N'Griezman.jpg', N'1234567', CAST(N'2023-09-19T15:30:00.000' AS DateTime), CAST(N'2023-09-20T15:30:00.000' AS DateTime), 1, 1, 1, N'Antoi', N'Antoi', N'Antoi', N'Antoi', N'Antoi', 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (38, N'Raphael Varane Man U', N'Varan', N'Raphaël Xavier Varane là cầu thủ bóng đá chuyên nghiệp người Pháp thi đấu ở vị trí trung vệ cho câu lạc bộ Manchester United tại Premier League. Anh được coi là một trong những hậu vệ xuất sắc nhất trong thế hệ của mình, Varane được biết đến với khả năng phòng ngự và tốc độ.', 1, 5, 1, N'varan.jpg', NULL, NULL, CAST(N'2023-09-22T01:25:57.357' AS DateTime), 1, 1, 1, N'Varane', N'Varane', N'raphael-varane-man-u', N'Varane', N'Varane', 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (39, N'Casemiro', N'Case', N'Carlos Henrique Casimiro, đơn giản là Casemiro, là một cầu thủ bóng đá chuyên nghiệp người Brasil đang thi đấu ở vị trí tiền vệ phòng ngự cho câu lạc bộ Manchester United tại Premier League và Đội tuyển bóng đá quốc gia Brasil.', 5, 6, 1, N'casemiro.jpg', NULL, NULL, CAST(N'2023-09-22T01:30:33.263' AS DateTime), 1, 1, 1, N'case', N'case', N'casemiro', N'case', N'case', 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (45, N'Coca Cola', N'Coca cola', N'Coca cola', 2, 4, 1, N'coca-cola.jpg', NULL, CAST(N'2023-12-07T03:30:30.087' AS DateTime), CAST(N'2023-12-07T03:30:30.087' AS DateTime), 0, 1, 1, N'Coca cola', N'Coca cola', N'coca-cola', N'Coca cola', N'Coca cola', 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (46, N'Evan Ferguson', N'Evan F', N'Evan Joe Ferguson là cầu thủ bóng đá người Ireland thi đấu ở vị trí tiền đạo cho Brighton & Hove Albion tại Premier League và Đội tuyển bóng đá quốc gia Cộng hòa Ireland. Ferguson trưởng thành từ câu lạc bộ Bohemians, ra mắt đội một của Bohemians khi mới 14 tuổi trước khi gia nhập Brighton năm 2021', 5, 4, 1, N'evan-ferguson.jpg', NULL, CAST(N'2023-12-07T04:40:16.817' AS DateTime), CAST(N'2023-12-07T04:40:16.817' AS DateTime), 0, 1, 1, N'Evan F', N'Evan F', N'evan-ferguson', N'Evan F', N'Evan F', 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [MetaDesc], [MetaKey], [UnitsInStock]) VALUES (47, N'Pepsi', N'Peppppp', N'Pepsi', 5, 12, 1, N'pepsi.jpg', NULL, CAST(N'2023-12-07T12:25:43.970' AS DateTime), CAST(N'2023-12-07T12:25:43.970' AS DateTime), 0, 1, 1, N'Pepsi', N'Pepsi', N'pepsi', N'Pepsi', N'Pepsi', 22)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', N'Quản trị viên')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (2, N'Staff', N'Nhân viên bán hàng')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (3, N'NewBie', N'New')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Attributes]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Products]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TransactStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
