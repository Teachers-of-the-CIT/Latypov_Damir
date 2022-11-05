USE [Perfumer]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sale] [nvarchar](100) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[GoodsCategoryId] [int] NULL,
	[ImageId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsCategory]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageJournal]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageJournal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuePoint]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuePoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [nvarchar](100) NOT NULL,
	[Town] [nvarchar](100) NOT NULL,
	[Stree] [nvarchar](100) NOT NULL,
	[House] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[IssuePointId] [int] NULL,
	[UserId] [int] NULL,
	[ReceiveCode] [int] NULL,
	[Status] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderGoods]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderGoods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GoodsId] [int] NULL,
	[OrderId] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05-Nov-22 12:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Login] [nvarchar](100) NULL,
	[Passowrd] [nvarchar](100) NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Goods] ON 
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (1, N'5', 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', 1, 1)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (2, N'2', 14, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', 2, 2)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (3, N'4', 7, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', 2, 3)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (4, N'3', 9, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', 2, 4)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (5, N'3', 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', 2, 5)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (6, N'2', 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', 2, 6)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (7, N'5', 16, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', 2, 7)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (8, N'3', 5, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', 2, 8)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (9, N'5', 2, N'Туалетная вода Dilis Parfum Mila, 100 мл', 2, 9)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (10, N'3', 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл', 2, 10)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (11, N'4', 8, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (12, N'5', 7, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (13, N'2', 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (14, N'4', 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (15, N'2', 5, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (16, N'3', 16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (17, N'4', 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (18, N'4', 9, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (19, N'5', 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (20, N'4', 6, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (21, N'2', 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (22, N'4', 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (23, N'3', 6, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (24, N'4', 3, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (25, N'2', 14, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (26, N'4', 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (27, N'4', 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (28, N'2', 5, N'Dilis Parfum Мужской Walker Breeze', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (29, N'5', 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (30, N'2', 8, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Goods] OFF
GO
SET IDENTITY_INSERT [dbo].[GoodsCategory] ON 
GO
INSERT [dbo].[GoodsCategory] ([Id], [Name]) VALUES (1, N'Мужской парфюм
')
GO
INSERT [dbo].[GoodsCategory] ([Id], [Name]) VALUES (2, N'Женский парфюм
')
GO
SET IDENTITY_INSERT [dbo].[GoodsCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageJournal] ON 
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (1, N'А112Т4.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (2, N'F893T5.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (3, N'G832G6.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (4, N'E530Y6.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (5, N'F346G5.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (6, N'J432E4.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (7, N'D344Y7.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (8, N'V324R5.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (9, N'E245R5.jpg')
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (10, N'D378D3.jpg')
GO
SET IDENTITY_INSERT [dbo].[ImageJournal] OFF
GO
SET IDENTITY_INSERT [dbo].[IssuePoint] ON 
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (1, N'344288', N' г. Ангарск', N' ул. Чехова', N'1')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (2, N'614164', N' г.Ангарск', N'  ул. Степная', N'30')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (3, N'394242', N' г. Ангарск', N' ул. Коммунистическая', N'43')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (4, N'660540', N' г. Ангарск', N' ул. Солнечная', N'25')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (5, N'125837', N' г. Ангарск', N' ул. Шоссейная', N'40')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (6, N'125703', N' г. Ангарск', N' ул. Партизанская', N'49')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (7, N'625283', N' г. Ангарск', N' ул. Победы', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (8, N'614611', N' г. Ангарск', N' ул. Молодежная', N'50')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (9, N'454311', N' г.Ангарск', N' ул. Новая', N'19')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (10, N'660007', N' г.Ангарск', N' ул. Октябрьская', N'19')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (11, N'603036', N' г. Ангарск', N' ул. Садовая', N'4')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (12, N'450983', N' г.Ангарск', N' ул. Комсомольская', N'26')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (13, N'394782', N' г. Ангарск', N' ул. Чехова', N'3')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (14, N'603002', N' г. Ангарск', N' ул. Дзержинского', N'28')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (15, N'450558', N' г. Ангарск', N' ул. Набережная', N'30')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (16, N'394060', N' г.Ангарск', N' ул. Фрунзе', N'43')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (17, N'410661', N' г. Ангарск', N' ул. Школьная', N'50')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (18, N'625590', N' г. Ангарск', N' ул. Коммунистическая', N'20')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (19, N'625683', N' г. Ангарск', N' ул. 8 Марта', N'')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (20, N'400562', N' г. Ангарск', N' ул. Зеленая', N'32')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (21, N'614510', N' г. Ангарск', N' ул. Маяковского', N'47')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (22, N'410542', N' г. Ангарск', N' ул. Светлая', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (23, N'620839', N' г. Ангарск', N' ул. Цветочная', N'8')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (24, N'443890', N' г. Ангарск', N' ул. Коммунистическая', N'1')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (25, N'603379', N' г. Ангарск', N' ул. Спортивная', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (26, N'603721', N' г. Ангарск', N' ул. Гоголя', N'41')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (27, N'410172', N' г. Ангарск', N' ул. Северная', N'13')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (28, N'420151', N' г. Ангарск', N' ул. Вишневая', N'32')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (29, N'125061', N' г. Ангарск', N' ул. Подгорная', N'8')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (30, N'630370', N' г. Ангарск', N' ул. Шоссейная', N'24')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (31, N'614753', N' г. Ангарск', N' ул. Полевая', N'35')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (32, N'426030', N' г. Ангарск', N' ул. Маяковского', N'44')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (33, N'450375', N' г. Ангарск', N' ул. Клубная', N'44')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (34, N'625560', N' г. Ангарск', N' ул. Некрасова', N'12')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (35, N'630201', N' г. Ангарск', N' ул. Комсомольская', N'17')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (36, N'190949', N' г. Ангарск', N' ул. Мичурина', N'26')
GO
SET IDENTITY_INSERT [dbo].[IssuePoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, NULL, 201, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (2, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, NULL, 202, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (3, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, NULL, 203, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (4, CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, NULL, 204, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (5, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, NULL, 205, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (6, CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, NULL, 206, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (7, CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, NULL, 207, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (8, CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, NULL, 208, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (9, CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, NULL, 209, N'????? ')
GO
INSERT [dbo].[Order] ([Id], [DateOrder], [DeliveryDate], [IssuePointId], [UserId], [ReceiveCode], [Status]) VALUES (10, CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, NULL, 210, N'????????')
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Администратор')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Менеджер
')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Клиент
')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (11, N'Глеб', N'Михайлович', N'Федоров', N'o@outlook.com', N'2L6KZG', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (12, N'Софья', N'Дмитриевна', N'Семенова', N'hr6zdl@yandex.ru', N'uzWC67', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (13, N'Егор', N'Германович', N'Васильев', N'kaft93x@outlook.com', N'8ntwUp', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (14, N'Ирина', N'Александровна', N'Смирнова', N'dcu@yandex.ru', N'YOyhfR', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (15, N'Андрей', N'Владимирович', N'Петров', N'19dn@outlook.com', N'RSbvHv', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (16, N'Максим', N'Андреевич', N'Егоров', N'pa5h@mail.ru', N'rwVDh9', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (17, N'Артур', N'Алексеевич', N'Никитин', N'281av0@gmail.com', N'LdNyos', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (18, N'Максим', N'Сергеевич', N'Киселев', N'8edmfh@outlook.com', N'gynQMT', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (19, N'Тимур', N'Егорович', N'Борисов', N'sfn13i@mail.ru', N'AtnDjr', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (20, N'Арсений', N'Тимурович', N'Климов', N'g0orc3x1@outlook.com', N'JlFRCZ', 3)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Goods]  WITH CHECK ADD FOREIGN KEY([GoodsCategoryId])
REFERENCES [dbo].[GoodsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Goods]  WITH CHECK ADD FOREIGN KEY([ImageId])
REFERENCES [dbo].[ImageJournal] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([IssuePointId])
REFERENCES [dbo].[IssuePoint] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderGoods]  WITH CHECK ADD FOREIGN KEY([GoodsId])
REFERENCES [dbo].[Goods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderGoods]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
