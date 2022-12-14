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
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (1, N'5', 6, N'???????????????? Dragon Parfums Dragon Noir, 100 ????', 1, 1)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (2, N'2', 14, N'?????????????????? ???????? Paris Line??Parfums??Cosa Nostra Platinum, 100 ????', 2, 2)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (3, N'4', 7, N'?????????????????? ???????? Paris Line??Parfums??Vodka Extreme, 100 ????', 2, 3)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (4, N'3', 9, N'??????????????????????????????????Parfums??Constantine Mademoiselle 5, 50 ????', 2, 4)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (5, N'3', 18, N'?????????????????? ???????? Today??Parfum??G-Club Egoist, 100 ????', 2, 5)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (6, N'2', 4, N'?????????????????? ???????? Paris Line??Parfums??Dollar, 100 ????', 2, 6)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (7, N'5', 16, N'???????????????????????????????? Today??Parfum??Prestige ???6 Eclat, 17 ????', 2, 7)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (8, N'3', 5, N'??????????????????????????????????Parfums??Constantine Mademoiselle 7, 50 ????', 2, 8)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (9, N'5', 2, N'?????????????????? ???????? Dilis??Parfum??Mila, 100 ????', 2, 9)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (10, N'3', 16, N'???????? Dilis Parfum Classic Collection ???18, 30 ????', 2, 10)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (11, N'4', 8, N'???????????????????????????????? TRUSSARDI Donna Trussardi (2011), 50 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (12, N'5', 7, N'?????????????????? ???????? Paris Line??Parfums??Cosa Nostra, 100 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (13, N'2', 11, N'???????? Dilis??Parfum?????????????? ????????????, 9.5 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (14, N'4', 12, N'?????????????????? ???????? Dilis??Parfum??Steelman Zone, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (15, N'2', 5, N'?????????????????????? ???????? Yves de Sistelle Incidence pour Femme, 65 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (16, N'3', 16, N'??????????????????????????????????Parfums??Constantine New York??Perfume??Six, 50 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (17, N'4', 6, N'?????????????????? ???????? Dilis??Parfum??Cool&Grey, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (18, N'4', 9, N'?????????????????? ???????? Today??Parfum??G-Club Millioner, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (19, N'5', 13, N'???????? Dilis??Parfum??Classic Collection ???34, 30 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (20, N'4', 6, N'?????????????????? ??????????Parfums??Constantine Gentleman ???3, 100 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (21, N'2', 9, N'?????????????????? ???????? Today??Parfum??Cola Cherry, 50 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (22, N'4', 15, N'?????????????????? ???????? HUGO BOSS Boss Bottled, 50 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (23, N'3', 6, N'???????????????????????????????? DOLCE & GABBANA Dolce&Gabbana pour', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (24, N'4', 3, N'???????????????????????????????? DOLCE & GABBANA Dolce Shine, 75 ????', 2, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (25, N'2', 14, N'?????????????????? ???????? Paris Line??Parfums??Dollar Diamond, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (26, N'4', 7, N'???????????????????????????????? LACOSTE Lacoste pour Femme, 30 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (27, N'4', 12, N'?????????????????? ???????? Dilis??Parfum??Aqua Cool, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (28, N'2', 5, N'Dilis??Parfum???????????????? Walker Breeze', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (29, N'5', 3, N'?????????????????? ???????? HUGO BOSS Boss Bottled, 100 ????', 1, NULL)
GO
INSERT [dbo].[Goods] ([Id], [Sale], [Quantity], [Description], [GoodsCategoryId], [ImageId]) VALUES (30, N'2', 8, N'?????????????????? ???????? DOLCE & GABBANA 3 L''Imperatrice, 50 ????', 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Goods] OFF
GO
SET IDENTITY_INSERT [dbo].[GoodsCategory] ON 
GO
INSERT [dbo].[GoodsCategory] ([Id], [Name]) VALUES (1, N'?????????????? ????????????
')
GO
INSERT [dbo].[GoodsCategory] ([Id], [Name]) VALUES (2, N'?????????????? ????????????
')
GO
SET IDENTITY_INSERT [dbo].[GoodsCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageJournal] ON 
GO
INSERT [dbo].[ImageJournal] ([Id], [Name]) VALUES (1, N'??112??4.jpg')
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
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (1, N'344288', N' ??. ??????????????', N' ????. ????????????', N'1')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (2, N'614164', N' ??.??????????????', N'?? ????. ??????????????', N'30')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (3, N'394242', N' ??. ??????????????', N' ????. ????????????????????????????????', N'43')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (4, N'660540', N' ??. ??????????????', N' ????. ??????????????????', N'25')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (5, N'125837', N' ??. ??????????????', N' ????. ??????????????????', N'40')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (6, N'125703', N' ??. ??????????????', N' ????. ????????????????????????', N'49')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (7, N'625283', N' ??. ??????????????', N' ????. ????????????', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (8, N'614611', N' ??. ??????????????', N' ????. ????????????????????', N'50')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (9, N'454311', N' ??.??????????????', N' ????. ??????????', N'19')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (10, N'660007', N' ??.??????????????', N' ????. ??????????????????????', N'19')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (11, N'603036', N' ??. ??????????????', N' ????. ??????????????', N'4')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (12, N'450983', N' ??.??????????????', N' ????. ??????????????????????????', N'26')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (13, N'394782', N' ??. ??????????????', N' ????. ????????????', N'3')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (14, N'603002', N' ??. ??????????????', N' ????. ????????????????????????', N'28')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (15, N'450558', N' ??. ??????????????', N' ????. ????????????????????', N'30')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (16, N'394060', N' ??.??????????????', N' ????. ????????????', N'43')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (17, N'410661', N' ??. ??????????????', N' ????. ????????????????', N'50')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (18, N'625590', N' ??. ??????????????', N' ????. ????????????????????????????????', N'20')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (19, N'625683', N' ??. ??????????????', N' ????. 8 ??????????', N'')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (20, N'400562', N' ??. ??????????????', N' ????. ??????????????', N'32')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (21, N'614510', N' ??. ??????????????', N' ????. ??????????????????????', N'47')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (22, N'410542', N' ??. ??????????????', N' ????. ??????????????', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (23, N'620839', N' ??. ??????????????', N' ????. ??????????????????', N'8')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (24, N'443890', N' ??. ??????????????', N' ????. ????????????????????????????????', N'1')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (25, N'603379', N' ??. ??????????????', N' ????. ????????????????????', N'46')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (26, N'603721', N' ??. ??????????????', N' ????. ????????????', N'41')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (27, N'410172', N' ??. ??????????????', N' ????. ????????????????', N'13')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (28, N'420151', N' ??. ??????????????', N' ????. ????????????????', N'32')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (29, N'125061', N' ??. ??????????????', N' ????. ??????????????????', N'8')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (30, N'630370', N' ??. ??????????????', N' ????. ??????????????????', N'24')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (31, N'614753', N' ??. ??????????????', N' ????. ??????????????', N'35')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (32, N'426030', N' ??. ??????????????', N' ????. ??????????????????????', N'44')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (33, N'450375', N' ??. ??????????????', N' ????. ??????????????', N'44')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (34, N'625560', N' ??. ??????????????', N' ????. ??????????????????', N'12')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (35, N'630201', N' ??. ??????????????', N' ????. ??????????????????????????', N'17')
GO
INSERT [dbo].[IssuePoint] ([Id], [Index], [Town], [Stree], [House]) VALUES (36, N'190949', N' ??. ??????????????', N' ????. ????????????????', N'26')
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
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'??????????????????????????')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'????????????????
')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'????????????
')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (11, N'????????', N'????????????????????', N'??????????????', N'o@outlook.com', N'2L6KZG', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (12, N'??????????', N'????????????????????', N'????????????????', N'hr6zdl@yandex.ru', N'uzWC67', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (13, N'????????', N'????????????????????', N'????????????????', N'kaft93x@outlook.com', N'8ntwUp', 1)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (14, N'??????????', N'??????????????????????????', N'????????????????', N'dcu@yandex.ru', N'YOyhfR', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (15, N'????????????', N'????????????????????????', N'????????????', N'19dn@outlook.com', N'RSbvHv', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (16, N'????????????', N'??????????????????', N'????????????', N'pa5h@mail.ru', N'rwVDh9', 2)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (17, N'??????????', N'????????????????????', N'??????????????', N'281av0@gmail.com', N'LdNyos', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (18, N'????????????', N'??????????????????', N'??????????????', N'8edmfh@outlook.com', N'gynQMT', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (19, N'??????????', N'????????????????', N'??????????????', N'sfn13i@mail.ru', N'AtnDjr', 3)
GO
INSERT [dbo].[User] ([Id], [FirstName], [MiddleName], [LastName], [Login], [Passowrd], [RoleId]) VALUES (20, N'??????????????', N'??????????????????', N'????????????', N'g0orc3x1@outlook.com', N'JlFRCZ', 3)
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
