USE [salon1]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Birthday] [date] NULL,
	[Email] [nvarchar](255) NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[ServiceID] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Discount] [float] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[Услуга] [nvarchar](255) NULL,
	[Начало оказания услуги] [datetime] NULL,
	[Клиент] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 16.04.2023 1:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (51, N'Кузьмина', N'Дэнна', N'Витальевна', N'2', N' 7(9940)977-45-73 ', CAST(N'1993-08-24' AS Date), N' nichoj@mac.com', CAST(N'2016-03-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (52, N'Мамонтова', N'Марфа', N'Мироновна', N'2', N' 7(38)095-64-18 ', CAST(N'1984-10-19' AS Date), N' rfoley@verizon.net', CAST(N'2018-02-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (53, N'Степанова', N' Амелия', N' Робертовна', N'2', N' 7(1217)441-28-42 ', CAST(N'1970-06-06' AS Date), N' rasca@hotmail.com', CAST(N'2017-09-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (54, N'Колесникова', N'Алина', N'Еремеевна', N'2', N' 7(74)977-39-71 ', CAST(N'2001-04-19' AS Date), N' gfxguy@outlook.com', CAST(N'2017-01-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (55, N'Морозов', N'Наум', N'Валерьянович', N'1', N' 7(636)050-96-13 ', CAST(N'1985-07-04' AS Date), N' salesgeek@mac.com', CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (56, N'Сысоева', N'Дарина', N'Ярославовна', N'2', N' 7(0698)387-96-04 ', CAST(N'1982-02-03' AS Date), N' treit@verizon.net', CAST(N'2016-05-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (57, N'Горбачёва', N' Никки', N' Еремеевна', N'2', N' 7(94)789-69-20 ', CAST(N'1987-04-21' AS Date), N' chinthaka@att.net', CAST(N'2018-08-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (58, N'Бирюкова', N' Инара', N' Улебовна', N'2', N' 7(098)346-50-58 ', CAST(N'1978-07-21' AS Date), N' smpeters@hotmail.com', CAST(N'2017-10-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (59, N'Киселёв', N' Устин', N' Яковлевич', N'1', N' 7(83)334-52-76 ', CAST(N'1985-01-08' AS Date), N' dalamb@verizon.net', CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (60, N'Крюкова', N' Авигея', N' Святославовна', N'2', N' 7(499)318-88-53 ', CAST(N'2000-08-10' AS Date), N' simone@gmail.com', CAST(N'2018-01-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (61, N'Костина', N'Любава', N'Авксентьевна', N'2', N' 7(6419)959-21-87 ', CAST(N'1972-07-13' AS Date), N' gordonjcp@hotmail.com', CAST(N'2016-02-26T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (62, N'Попова', N'Харита', N'Якуновна', N'2', N' 7(335)386-81-06 ', CAST(N'1997-12-16' AS Date), N' firstpr@verizon.net', CAST(N'2016-07-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (63, N'Андреева', N'Патрисия', N'Валерьевна', N'2', N' 7(9648)953-81-26 ', CAST(N'1993-11-18' AS Date), N' jigsaw@aol.com', CAST(N'2016-07-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (64, N'Гусева', N' Роза', N' Дмитриевна', N'2', N' 7(23)064-51-84 ', CAST(N'1999-02-13' AS Date), N' martyloo@live.com', CAST(N'2017-12-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (65, N'Быков', N' Трофим', N' Константинович', N'1', N' 7(3414)460-12-05 ', CAST(N'1994-12-20' AS Date), N' jguyer@aol.com', CAST(N'2016-04-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (66, N'Гусев', N' Яков', N' Авксентьевич', N'1', N' 7(0972)781-11-37 ', CAST(N'1995-12-10' AS Date), N' jdhedden@icloud.com', CAST(N'2017-11-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (67, N'Турова', N'Георгина', N'Семёновна', N'2', N' 7(555)321-42-99 ', CAST(N'1974-05-28' AS Date), N' yruan@optonline.net', CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (68, N'Трофимова', N'Альжбета', N'Якововна', N'2', N' 7(1084)658-92-95 ', CAST(N'1988-10-22' AS Date), N' gbacon@mac.com', CAST(N'2017-09-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (69, N'Баранова', N' Эльмира', N' Дмитриевна', N'2', N' 7(9240)643-15-50 ', CAST(N'1977-01-15' AS Date), N' jgmyers@comcast.net', CAST(N'2016-07-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (70, N'Федотов', N' Осип', N' Анатольевич', N'1', N' 7(590)702-33-06 ', CAST(N'1971-04-13' AS Date), N' breegster@hotmail.com', CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (71, N'Борисов', N' Аввакум', N' Артемович', N'1', N' 7(2296)930-08-88 ', CAST(N'1974-04-25' AS Date), N' chlim@live.com', CAST(N'2017-03-11T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (72, N'Артемьева', N' Лиза', N' Максимовна', N'2', N' 7(696)972-70-21 ', CAST(N'1996-05-17' AS Date), N' snunez@yahoo.ca', CAST(N'2018-10-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (73, N'Воронова', N'Изабелла', N'Вячеславовна', N'2', N' 7(17)433-44-98 ', CAST(N'1999-09-24' AS Date), N' kildjean@sbcglobal.net', CAST(N'2017-12-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (74, N'Федотова', N'Сандра', N'Владленовна', N'2', N' 7(126)195-25-86 ', CAST(N'1985-03-29' AS Date), N' penna@verizon.net', CAST(N'2016-11-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (75, N'Ефремов', N' Витольд', N' Авксентьевич', N'1', N' 7(93)922-14-03 ', CAST(N'1975-12-02' AS Date), N' kwilliams@yahoo.ca', CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (76, N'Ермакова', N'Алла', N'Мироновна', N'2', N' 7(06)437-13-73 ', CAST(N'1976-01-22' AS Date), N' whimsy@aol.com', CAST(N'2017-02-09T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (77, N'Шашкова', N'Гелла', N'Эдуардовна', N'2', N' 7(57)446-21-04 ', CAST(N'1979-02-24' AS Date), N' jadavis@mac.com', CAST(N'2016-11-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (78, N'Быкова', N' Тала', N' Георгьевна', N'2', N' 7(13)915-53-53 ', CAST(N'2000-02-22' AS Date), N' ganter@optonline.net', CAST(N'2016-08-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (79, N'Орлова', N'Влада', N'Мартыновна', N'2', N' 7(2506)433-38-35 ', CAST(N'1990-06-26' AS Date), N' rnelson@yahoo.ca', CAST(N'2016-03-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (80, N'Анисимова', N' Тамара', N' Витальевна', N'2', N' 7(66)128-04-10 ', CAST(N'1988-06-16' AS Date), N' schwaang@mac.com', CAST(N'2016-02-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (81, N'Архипова', N'Прасковья', N'Валерьевна', N'2', N' 7(86)540-10-21 ', CAST(N'1979-01-09' AS Date), N' cgcra@live.com', CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (82, N'Новиков', N'Адриан', N'Аркадьевич', N'1', N' 7(70)572-33-62 ', CAST(N'1974-01-15' AS Date), N' multiplx@verizon.net', CAST(N'2018-11-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (83, N'Лазарева', N'Эльвина', N'Робертовна', N'2', N' 7(5564)609-81-37 ', CAST(N'1996-02-16' AS Date), N' ahuillet@comcast.net', CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (84, N'Афанасьева', N'Розалия', N'Макаровна', N'2', N' 7(0661)413-23-32 ', CAST(N'1977-05-01' AS Date), N' malattia@hotmail.com', CAST(N'2017-09-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (85, N'Устинова', N'Юнона', N'Валентиновна', N'2', N' 7(33)367-13-07', CAST(N'1982-08-08' AS Date), N' kempsonc@live.com', CAST(N'2017-05-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (86, N'Алексеева', N' Элина', N' Матвеевна', N'2', N' 7(8086)245-64-81 ', CAST(N'2002-05-07' AS Date), N' pthomsen@verizon.net', CAST(N'2018-03-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (87, N'Гущина', N' Янита', N' Федоровна', N'2', N' 7(4544)716-68-96 ', CAST(N'1999-03-02' AS Date), N' lishoy@att.net', CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (88, N'Суворова', N'Божена', N'Анатольевна', N'2', N' 7(347)895-86-57 ', CAST(N'1981-03-09' AS Date), N' attwood@aol.com', CAST(N'2016-01-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (89, N'Горшкова', N' Марта', N' Иосифовна', N'2', N' 7(544)650-59-03 ', CAST(N'2001-02-13' AS Date), N' gbacon@mac.com', CAST(N'2016-08-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (90, N'Смирнов', N'Мартын', N'Арсеньевич', N'1', N' 7(6251)589-02-43 ', CAST(N'1996-06-25' AS Date), N' haddawy@live.com', CAST(N'2017-02-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (91, N'Корнилова', N'Анэля', N'Михайловна', N'2', N' 7(20)980-01-60 ', CAST(N'1973-04-02' AS Date), N' jonathan@aol.com', CAST(N'2016-05-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (92, N'Ефимова', N' Магда', N' Платоновна', N'2', N' 7(9261)386-15-92 ', CAST(N'1995-08-16' AS Date), N' rbarreira@me.com', CAST(N'2017-08-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (93, N'Бурова', N'Светлана', N'Лукьевна', N'2', N' 7(358)173-82-21 ', CAST(N'1979-01-04' AS Date), N' wsnyder@aol.com', CAST(N'2016-10-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (94, N'Сидорова', N'Татьяна', N'Михайловна', N'2', N' 7(51)732-91-79 ', CAST(N'1974-04-24' AS Date), N' tbeck@mac.com', CAST(N'2018-10-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (95, N'Ершова', N' Номи', N' Андреевна', N'2', N' 7(7757)315-90-99 ', CAST(N'2001-09-13' AS Date), N' miltchev@mac.com', CAST(N'2016-06-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (96, N'Овчинникова', N'Лаура', N'Еремеевна', N'2', N' 7(85)829-33-79 ', CAST(N'1992-04-03' AS Date), N' carcus@yahoo.ca', CAST(N'2018-11-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (97, N'Мишина', N'Иветта', N'Андреевна', N'2', N' 7(3926)244-81-96 ', CAST(N'2002-10-05' AS Date), N' aukjan@yahoo.com', CAST(N'2016-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (98, N'Колобова', N' Злата', N' Романовна', N'2', N' 7(50)884-07-35 ', CAST(N'1994-08-25' AS Date), N' sinkou@aol.com', CAST(N'2016-12-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (99, N'Селиверстов', N'Глеб', N'Максимович', N'1', N' 7(20)554-28-68 ', CAST(N'1999-06-20' AS Date), N' jigsaw@sbcglobal.net', CAST(N'2016-01-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [Phone], [Birthday], [Email], [RegistrationDate], [PhotoPath]) VALUES (100, N'Дмитриева', N' Элина', N' Даниловна', N'2', N' 7(787)140-48-84 ', CAST(N'1988-12-10' AS Date), N' vmalik@live.com', CAST(N'2017-02-11T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (1, 79, CAST(N'2019-04-27T13:50:00.000' AS DateTime), 174, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (2, 88, CAST(N'2019-05-31T08:20:00.000' AS DateTime), 116, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (3, 68, CAST(N'2019-09-20T17:30:00.000' AS DateTime), 175, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (4, 84, CAST(N'2019-10-17T17:50:00.000' AS DateTime), 179, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (5, 57, CAST(N'2019-07-12T16:30:00.000' AS DateTime), 189, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (6, 56, CAST(N'2019-09-06T12:40:00.000' AS DateTime), 121, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (7, 81, CAST(N'2019-09-28T18:40:00.000' AS DateTime), 124, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (8, 69, CAST(N'2019-09-11T13:10:00.000' AS DateTime), 178, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (9, 60, CAST(N'2019-06-21T11:40:00.000' AS DateTime), 137, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (10, 54, CAST(N'2019-12-20T13:30:00.000' AS DateTime), 111, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (11, 69, CAST(N'2019-03-19T12:30:00.000' AS DateTime), 162, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (12, 68, CAST(N'2019-12-23T17:00:00.000' AS DateTime), 138, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (13, 84, CAST(N'2019-01-17T16:00:00.000' AS DateTime), 141, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (14, 94, CAST(N'2019-12-18T16:30:00.000' AS DateTime), 135, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (15, 64, CAST(N'2019-01-22T14:40:00.000' AS DateTime), 179, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (16, 81, CAST(N'2019-09-07T18:10:00.000' AS DateTime), 107, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (17, 84, CAST(N'2019-01-01T08:50:00.000' AS DateTime), 114, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (18, 80, CAST(N'2019-06-24T16:40:00.000' AS DateTime), 121, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (19, 51, CAST(N'2019-04-28T08:30:00.000' AS DateTime), 124, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (20, 54, CAST(N'2019-06-13T15:40:00.000' AS DateTime), 141, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (21, 95, CAST(N'2019-12-25T08:00:00.000' AS DateTime), 178, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (22, 94, CAST(N'2019-10-07T14:00:00.000' AS DateTime), 194, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (23, 100, CAST(N'2019-05-22T15:50:00.000' AS DateTime), 137, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (24, 83, CAST(N'2019-10-05T13:30:00.000' AS DateTime), 162, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (25, 72, CAST(N'2019-01-27T08:10:00.000' AS DateTime), 131, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (26, 80, CAST(N'2019-11-15T17:30:00.000' AS DateTime), 203, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (27, 69, CAST(N'2019-05-06T16:40:00.000' AS DateTime), 115, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (28, 54, CAST(N'2019-02-13T09:00:00.000' AS DateTime), 126, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (29, 63, CAST(N'2019-05-20T14:40:00.000' AS DateTime), 170, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (30, 86, CAST(N'2019-01-19T13:50:00.000' AS DateTime), 136, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (31, 78, CAST(N'2019-06-07T08:50:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (32, 51, CAST(N'2019-03-21T11:50:00.000' AS DateTime), 175, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (33, 79, CAST(N'2019-08-04T12:30:00.000' AS DateTime), 159, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (34, 53, CAST(N'2019-01-11T19:10:00.000' AS DateTime), 150, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (35, 56, CAST(N'2019-05-26T08:20:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (36, 51, CAST(N'2019-05-04T16:00:00.000' AS DateTime), 111, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (37, 74, CAST(N'2019-07-23T13:30:00.000' AS DateTime), 139, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (38, 84, CAST(N'2019-01-04T18:40:00.000' AS DateTime), 146, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (39, 52, CAST(N'2019-10-12T19:10:00.000' AS DateTime), 121, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (40, 54, CAST(N'2019-10-24T15:00:00.000' AS DateTime), 203, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (41, 84, CAST(N'2019-05-29T14:00:00.000' AS DateTime), 187, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (42, 51, CAST(N'2019-09-20T11:20:00.000' AS DateTime), 143, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (43, 52, CAST(N'2019-05-07T15:10:00.000' AS DateTime), 171, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (44, 72, CAST(N'2019-09-11T14:40:00.000' AS DateTime), 123, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (45, 91, CAST(N'2019-11-26T11:30:00.000' AS DateTime), 125, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (46, 52, CAST(N'2019-03-28T09:20:00.000' AS DateTime), 194, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (47, 53, CAST(N'2019-01-17T18:00:00.000' AS DateTime), 111, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (48, 100, CAST(N'2019-01-28T15:20:00.000' AS DateTime), 189, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (49, 67, CAST(N'2019-06-22T16:10:00.000' AS DateTime), 137, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (50, 97, CAST(N'2019-12-15T10:10:00.000' AS DateTime), 186, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (51, 91, CAST(N'2019-06-07T12:40:00.000' AS DateTime), 116, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (52, 67, CAST(N'2019-09-14T16:20:00.000' AS DateTime), 125, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (53, 61, CAST(N'2019-11-04T12:30:00.000' AS DateTime), 165, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (54, 92, CAST(N'2019-02-26T15:40:00.000' AS DateTime), 164, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (55, 87, CAST(N'2019-09-13T11:50:00.000' AS DateTime), 193, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (56, 62, CAST(N'2019-11-22T10:40:00.000' AS DateTime), 194, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (57, 88, CAST(N'2019-12-09T09:00:00.000' AS DateTime), 143, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (58, 100, CAST(N'2019-10-31T08:40:00.000' AS DateTime), 136, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (59, 57, CAST(N'2019-08-31T11:40:00.000' AS DateTime), 165, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (60, 86, CAST(N'2019-06-24T17:40:00.000' AS DateTime), 126, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (61, 85, CAST(N'2019-11-29T14:00:00.000' AS DateTime), 115, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (62, 96, CAST(N'2019-08-25T19:50:00.000' AS DateTime), 165, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (63, 72, CAST(N'2019-11-13T11:00:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (64, 88, CAST(N'2019-07-30T11:20:00.000' AS DateTime), 189, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (65, 95, CAST(N'2019-05-25T19:00:00.000' AS DateTime), 189, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (66, 78, CAST(N'2019-06-26T19:30:00.000' AS DateTime), 141, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (67, 98, CAST(N'2019-11-06T11:20:00.000' AS DateTime), 165, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (68, 54, CAST(N'2019-04-29T16:10:00.000' AS DateTime), 126, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (69, 96, CAST(N'2019-10-21T19:10:00.000' AS DateTime), 174, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (70, 63, CAST(N'2019-06-23T09:40:00.000' AS DateTime), 173, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (71, 76, CAST(N'2019-11-09T11:40:00.000' AS DateTime), 196, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (72, 92, CAST(N'2019-10-02T19:10:00.000' AS DateTime), 158, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (73, 68, CAST(N'2019-06-07T19:40:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (74, 87, CAST(N'2019-01-17T11:00:00.000' AS DateTime), 193, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (75, 100, CAST(N'2019-01-11T16:40:00.000' AS DateTime), 159, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (76, 88, CAST(N'2019-11-13T09:00:00.000' AS DateTime), 162, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (77, 85, CAST(N'2019-10-10T08:10:00.000' AS DateTime), 143, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (78, 56, CAST(N'2019-03-01T16:00:00.000' AS DateTime), 137, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (79, 78, CAST(N'2019-07-21T14:30:00.000' AS DateTime), 195, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (80, 89, CAST(N'2019-12-21T13:40:00.000' AS DateTime), 203, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (81, 91, CAST(N'2019-10-01T12:20:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (82, 97, CAST(N'2019-08-19T17:10:00.000' AS DateTime), 178, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (83, 61, CAST(N'2019-03-01T15:00:00.000' AS DateTime), 124, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (84, 89, CAST(N'2019-05-11T14:50:00.000' AS DateTime), 115, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (85, 54, CAST(N'2019-12-21T19:00:00.000' AS DateTime), 114, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (86, 78, CAST(N'2019-01-30T10:50:00.000' AS DateTime), 170, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (87, 73, CAST(N'2019-03-09T16:30:00.000' AS DateTime), 176, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (88, 72, CAST(N'2019-08-08T18:20:00.000' AS DateTime), 126, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (89, 88, CAST(N'2019-03-04T14:20:00.000' AS DateTime), 132, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (90, 92, CAST(N'2019-06-17T10:20:00.000' AS DateTime), 138, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (91, 63, CAST(N'2019-02-11T09:10:00.000' AS DateTime), 204, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (92, 92, CAST(N'2019-02-01T12:20:00.000' AS DateTime), 138, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (93, 96, CAST(N'2019-12-11T09:50:00.000' AS DateTime), 171, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (94, 77, CAST(N'2019-01-13T18:10:00.000' AS DateTime), 171, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (95, 64, CAST(N'2019-03-23T08:30:00.000' AS DateTime), 193, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (96, 61, CAST(N'2019-10-02T14:10:00.000' AS DateTime), 173, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (97, 80, CAST(N'2019-01-20T09:20:00.000' AS DateTime), 114, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (98, 62, CAST(N'2019-01-27T12:50:00.000' AS DateTime), 193, NULL)
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (99, 96, CAST(N'2019-05-19T08:00:00.000' AS DateTime), 140, NULL)
GO
INSERT [dbo].[ClientService] ([ID], [ClientID], [StartTime], [ServiceID], [Comment]) VALUES (100, 58, CAST(N'2019-11-30T19:10:00.000' AS DateTime), 179, NULL)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'1', N'м')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'2', N'ж')
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (107, N'Удаление доброкачественных образований кожи', N' Услуги салона красоты\face.png', 900, 1910.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (108, N'Плазмолифтинг', N' Услуги салона красоты\face.png', 900, 2450.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (109, N'Криолифтинг', N' Услуги салона красоты\face.png', 900, 1090.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (110, N'Покрытие ногтей гель-лаком', N' Услуги салона красоты\Покрытие ногтей гель-лаком.jpg', 900, 2100.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (111, N'Комбинированный маникюр', N' Услуги салона красоты\Комбинированный маникюр.jpg', 3600, 2390.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (112, N'Уход для проблемной и комбинированной кожи', N' Услуги салона красоты\face.png', 3600, 2440.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (113, N'Миостимуляция', N' Услуги салона красоты\face.png', 3600, 2380.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (114, N'Пирсинг', N' Услуги салона красоты\Прокол ушей пистолетом.png', 3300, 1330.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (115, N'Реконструкция и лечение волос и кожи головы', N' Услуги салона красоты\face.png', 3300, 2360.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (116, N'Массаж ЖИВА', N' Услуги салона красоты\массаж.jpg', 3300, 2330.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (117, N'Увлажнение с коллагеном', N' Услуги салона красоты\96.png', 3300, 2490.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (118, N'Русский спа массаж', N' Услуги салона красоты\массаж.jpg', 3000, 2540.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (119, N'Радиоволновой лифтинг', N' Услуги салона красоты\face.png', 3000, 1590.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (120, N'Химические завивки', N' Услуги салона красоты\стрижка.png', 3000, 1090.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (121, N'Художественное оформление ресниц', N' Услуги салона красоты\Ресницы.png', 3000, 2040.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (122, N'Визаж', N' Услуги салона красоты\makeup.jpg', 3000, 1260.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (123, N'Декорирование ресниц стразами', N' Услуги салона красоты\Ресницы.png', 3000, 1920.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (124, N'Моментальный лифтинг', N' Услуги салона красоты\face.png', 3000, 2020.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (125, N'Полировка ногтей', N' Услуги салона красоты\Полировка ногтей.jpg', 3000, 2310.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (126, N'Коррекция нарощенных ресниц', N' Услуги салона красоты\Ресницы.png', 2700, 1310.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (127, N'Фракционное омоложение лазерной системой Palomar', N' Услуги салона красоты\face.png', 2700, 1140.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (128, N'Снятие ресниц', N' Услуги салона красоты\Снятие ресниц.jpg', 2700, 1680.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (129, N'Свадебная прическа', N' Услуги салона красоты\стрижка.png', 2700, 2070.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (130, N'Моделирование ресниц', N' Услуги салона красоты\Моделирование ресниц.jpg', 2700, 2140.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (131, N'Укрепление ногтей гелем', N' Услуги салона красоты\Укрепление ногтей гелем.jpg', 2700, 1260.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (132, N'ИК-сауна', N' Услуги салона красоты\ИК-сауна.jpg', 2700, 1160.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (133, N'Декорирование нарощенных ресниц стразами', N' Услуги салона красоты\Декорирование нарощенных ресниц стразами.jpg', 2700, 1130.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (134, N'Общий массаж', N' Услуги салона красоты\массаж.jpg', 2700, 1970.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (135, N'Наращивание ресниц', N' Услуги салона красоты\Ресницы.png', 2400, 1430.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (136, N'Мезотерапия', N' Услуги салона красоты\Мезотерапия.jpg', 2400, 2040.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (137, N'Эстетическая лазерная шлифовка кожи', N' Услуги салона красоты\piling.jpg', 2400, 1750.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (138, N'Наращивание ногтей гелем', N' Услуги салона красоты\ногти.png', 2400, 1540.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (139, N'Европейский маникюр', N' Услуги салона красоты\Европейский маникюр.jpg', 3600, 1990.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (140, N'Татуаж', N' Услуги салона красоты\брови.png', 3600, 1330.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (141, N'Консультация врача-косметолога', N' Услуги салона красоты\122454.png', 3600, 2350.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (142, N'Массаж лица', N' Услуги салона красоты\массаж.jpg', 3600, 2370.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (143, N'Окрашивание бровей', N' Услуги салона красоты\Окрашивание бровей.jpg', 3600, 1120.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (144, N'Гликолевый поверхностный базовый пилинг', N' Услуги салона красоты\piling.jpg', 2100, 2230.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (145, N'Окрашивание ресниц', N' Услуги салона красоты\Ресницы.png', 2100, 1100.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (146, N'Стрижка челки', N' Услуги салона красоты\стрижка.png', 2100, 1930.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (147, N'Детский маникюр', N' Услуги салона красоты\ногти.png', 2100, 1900.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (148, N'Ламинирование ресниц', N' Услуги салона красоты\Ресницы.png', 3300, 1740.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (149, N'Альгинатные маски', N' Услуги салона красоты\mask.jpeg', 3300, 2370.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (150, N'Классический маникюр', N' Услуги салона красоты\Классический маникюр.png', 3300, 1680.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (151, N'Аппаратная косметология', N' Услуги салона красоты\96.png', 3300, 1180.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (152, N'Массаж масляный', N' Услуги салона красоты\массаж.jpg', 3000, 1090.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (153, N'Стоун-терапия', N' Услуги салона красоты\Стоун-терапия.jpg', 3000, 2100.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (154, N'Мужская стрижка', N' Услуги салона красоты\man.png', 3000, 1690.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (155, N'Ботокс', N' Услуги салона красоты\96.png', 3000, 1820.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (156, N'Солярий', N' Услуги салона красоты\soliarij.jpg', 3000, 1790.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (157, N'Детокс спа', N' Услуги салона красоты\face.png', 1800, 1330.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (158, N'Макияж', N' Услуги салона красоты\makeup.jpg', 1800, 2470.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (159, N'Депиляция воском', N' Услуги салона красоты\Депиляция воском.jpg', 1800, 2330.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (160, N'Стрижка бороды машинкой', N' Услуги салона красоты\man.png', 2700, 1750.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (161, N'Миндальный пилинг', N' Услуги салона красоты\piling.jpg', 2700, 2430.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (162, N'Микротоковая терапия', N' Услуги салона красоты\face.png', 2700, 2410.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (163, N'Классический массаж', N' Услуги салона красоты\массаж.jpg', 2700, 1120.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (164, N'Ультразвуковой пилинг', N' Услуги салона красоты\piling.jpg', 2700, 1440.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (165, N'Прессотерапия', N' Услуги салона красоты\Прессотерапия.jpg', 2400, 2350.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (166, N'Испанский массаж', N' Услуги салона красоты\массаж.jpg', 2400, 2190.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (167, N'Гречишный массаж', N' Услуги салона красоты\Гречишный массаж.jpg', 2400, 1520.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (168, N'Перманентный макияж (татуаж)', N' Услуги салона красоты\брови.png', 2400, 1270.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (169, N'Время вспять с коллагеном', N' Услуги салона красоты\96.png', 2400, 1850.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (170, N'Покрытие ногтей', N' Услуги салона красоты\ногти.png', 2400, 2410.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (171, N'Инъекционные методики', N' Услуги салона красоты\96.png', 2400, 1660.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (172, N'Моделирование ресниц+тушь', N' Услуги салона красоты\Ресницы.png', 2100, 1390.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (173, N'Наращивание ресниц кукольного эффекта', N' Услуги салона красоты\Ресницы.png', 2100, 2120.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (174, N'Оформление бровей', N' Услуги салона красоты\брови.png', 2100, 2280.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (175, N'Детская стрижка', N' Услуги салона красоты\стрижка.png', 2100, 2330.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (176, N'Гавайский массаж Ломи-Ломи', N' Услуги салона красоты\массаж.jpg', 2100, 1040.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (177, N'Парафинотерапия', N' Услуги салона красоты\Парафинотерапия.jpg', 2100, 1180.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (178, N'Озонотерапия', N' Услуги салона красоты\face.png', 2100, 1740.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (179, N'Снятие лака', N' Услуги салона красоты\ногти.png', 2100, 1240.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (180, N'Классический педикюр', N' Услуги салона красоты\Экспресс-педикюр.jpg', 2100, 2040.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (181, N'Контурная пластика', N' Услуги салона красоты\Контурная пластика.jpg', 2100, 1550.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (182, N'Маски для лица', N' Услуги салона красоты\mask.jpeg', 1200, 2250.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (183, N'Демакияж', N' Услуги салона красоты\Демакияж.jpg', 1200, 1470.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (184, N'Лазерный пилинг', N' Услуги салона красоты\piling.jpg', 1200, 1650.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (185, N'Полуперманентная тушь', N' Услуги салона красоты\Ресницы.png', 1800, 2340.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (186, N'Спортивный массаж', N' Услуги салона красоты\массаж.jpg', 1800, 1650.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (187, N'Лечебное покрытие ногтей', N' Услуги салона красоты\ногти.png', 1800, 1220.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (188, N'Консультация врача', N' Услуги салона красоты\122454.png', 1800, 2120.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (189, N'Наращивание ресниц лисьего эффекта', N' Услуги салона красоты\Ресницы.png', 1800, 1370.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (190, N'Ремонт одного ногтя', N' Услуги салона красоты\ногти.png', 1800, 2340.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (191, N'Омоложение зоны вокруг глаз', N' Услуги салона красоты\брови.png', 1800, 2540.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (192, N'Наращивание ресниц беличьего эффекта', N' Услуги салона красоты\Ресницы.png', 1800, 1010.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (193, N'Покраска ресниц', N' Услуги салона красоты\Ресницы.png', 1800, 2400.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (194, N'Шугаринг', N' Услуги салона красоты\Шугаринг.jpg', 1800, 1400.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (195, N'Стрижка с покраской', N' Услуги салона красоты\стрижка.png', 1500, 2300.0000, 0.1, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (196, N'Химический пилинг', N' Услуги салона красоты\piling.jpg', 1500, 1880.0000, 0.15, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (197, N'Прокол ушей пистолетом', N' Услуги салона красоты\Прокол ушей пистолетом.png', 1500, 2040.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (198, N'Мезонити (Тредлифтинг)', N' Услуги салона красоты\96.png', 1500, 2140.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (199, N'Фракционный лазер Palomar Emerge', N' Услуги салона красоты\face.png', 1500, 1720.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (200, N'Экспресс SPA', N' Услуги салона красоты\Экспресс SPA.png', 900, 2420.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (201, N'Вечерняя прическа', N' Услуги салона красоты\стрижка.png', 900, 2020.0000, 0.25, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (202, N'Экспресс-педикюр', N' Услуги салона красоты\Экспресс-педикюр.jpg', 1200, 2170.0000, 0.2, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (203, N'Фонофорез лица', N' Услуги салона красоты\face.png', 1200, 1120.0000, 0.05, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (204, N'Полировка с маслом', N' Услуги салона красоты\piling.jpg', 1200, 1280.0000, NULL, NULL)
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (205, N'Коррекция ресниц', N' Услуги салона красоты\Ресницы.png', 1200, 2010.0000, 0.1, NULL)
GO
INSERT [dbo].[Service] ([ID], [Title], [MainImagePath], [DurationInSeconds], [Cost], [Discount], [Description]) VALUES (206, N'Массаж оздоровительный', N' Услуги салона красоты\массаж.jpg', 1200, 1440.0000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Оформление бровей', CAST(N'2019-04-27T13:50:00.000' AS DateTime), N'Орлова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Массаж ЖИВА', CAST(N'2019-05-31T08:20:00.000' AS DateTime), N'Суворова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Детская стрижка', CAST(N'2019-09-20T17:30:00.000' AS DateTime), N'Трофимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Снятие лака', CAST(N'2019-10-17T17:50:00.000' AS DateTime), N'Афанасьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-12T16:30:00.000' AS DateTime), N'Горбачёва')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-09-06T12:40:00.000' AS DateTime), N'Сысоева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Моментальный лифтинг', CAST(N'2019-09-28T18:40:00.000' AS DateTime), N'Архипова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Озонотерапия', CAST(N'2019-09-11T13:10:00.000' AS DateTime), N'Баранова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-21T11:40:00.000' AS DateTime), N'Крюкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Комбинированный маникюр', CAST(N'2019-12-20T13:30:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Микротоковая терапия', CAST(N'2019-03-19T12:30:00.000' AS DateTime), N'Баранова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-12-23T17:00:00.000' AS DateTime), N'Трофимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-01-17T16:00:00.000' AS DateTime), N'Афанасьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц', CAST(N'2019-12-18T16:30:00.000' AS DateTime), N'Сидорова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Снятие лака', CAST(N'2019-01-22T14:40:00.000' AS DateTime), N'Гусева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Удаление доброкачественных образований кожи', CAST(N'2019-09-07T18:10:00.000' AS DateTime), N'Архипова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Пирсинг', CAST(N'2019-01-01T08:50:00.000' AS DateTime), N'Афанасьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-06-24T16:40:00.000' AS DateTime), N'Анисимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Моментальный лифтинг', CAST(N'2019-04-28T08:30:00.000' AS DateTime), N'Кузьмина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-13T15:40:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Озонотерапия', CAST(N'2019-12-25T08:00:00.000' AS DateTime), N'Ершова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Шугаринг', CAST(N'2019-10-07T14:00:00.000' AS DateTime), N'Сидорова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-05-22T15:50:00.000' AS DateTime), N'Дмитриева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Микротоковая терапия', CAST(N'2019-10-05T13:30:00.000' AS DateTime), N'Лазарева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Укрепление ногтей гелем', CAST(N'2019-01-27T08:10:00.000' AS DateTime), N'Артемьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Фонофорез лица', CAST(N'2019-11-15T17:30:00.000' AS DateTime), N'Анисимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-06T16:40:00.000' AS DateTime), N'Баранова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-02-13T09:00:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покрытие ногтей', CAST(N'2019-05-20T14:40:00.000' AS DateTime), N'Андреева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Мезотерапия', CAST(N'2019-01-19T13:50:00.000' AS DateTime), N'Алексеева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T08:50:00.000' AS DateTime), N'Быкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Детская стрижка', CAST(N'2019-03-21T11:50:00.000' AS DateTime), N'Кузьмина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Депиляция воском', CAST(N'2019-08-04T12:30:00.000' AS DateTime), N'Орлова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Классический маникюр', CAST(N'2019-01-11T19:10:00.000' AS DateTime), N'Степанова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-05-26T08:20:00.000' AS DateTime), N'Сысоева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Комбинированный маникюр', CAST(N'2019-05-04T16:00:00.000' AS DateTime), N'Кузьмина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Европейский маникюр', CAST(N'2019-07-23T13:30:00.000' AS DateTime), N'Федотова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Стрижка челки', CAST(N'2019-01-04T18:40:00.000' AS DateTime), N'Афанасьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Художественное оформление ресниц', CAST(N'2019-10-12T19:10:00.000' AS DateTime), N'Мамонтова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Фонофорез лица', CAST(N'2019-10-24T15:00:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Лечебное покрытие ногтей', CAST(N'2019-05-29T14:00:00.000' AS DateTime), N'Афанасьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Окрашивание бровей', CAST(N'2019-09-20T11:20:00.000' AS DateTime), N'Кузьмина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Инъекционные методики', CAST(N'2019-05-07T15:10:00.000' AS DateTime), N'Мамонтова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Декорирование ресниц стразами', CAST(N'2019-09-11T14:40:00.000' AS DateTime), N'Артемьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Полировка ногтей', CAST(N'2019-11-26T11:30:00.000' AS DateTime), N'Корнилова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Шугаринг', CAST(N'2019-03-28T09:20:00.000' AS DateTime), N'Мамонтова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Комбинированный маникюр', CAST(N'2019-01-17T18:00:00.000' AS DateTime), N'Степанова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-01-28T15:20:00.000' AS DateTime), N'Дмитриева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-06-22T16:10:00.000' AS DateTime), N'Турова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Спортивный массаж', CAST(N'2019-12-15T10:10:00.000' AS DateTime), N'Мишина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Массаж ЖИВА', CAST(N'2019-06-07T12:40:00.000' AS DateTime), N'Корнилова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Полировка ногтей', CAST(N'2019-09-14T16:20:00.000' AS DateTime), N'Турова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Прессотерапия', CAST(N'2019-11-04T12:30:00.000' AS DateTime), N'Костина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Ультразвуковой пилинг', CAST(N'2019-02-26T15:40:00.000' AS DateTime), N'Ефимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покраска ресниц', CAST(N'2019-09-13T11:50:00.000' AS DateTime), N'Гущина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Шугаринг', CAST(N'2019-11-22T10:40:00.000' AS DateTime), N'Попова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Окрашивание бровей', CAST(N'2019-12-09T09:00:00.000' AS DateTime), N'Суворова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Мезотерапия', CAST(N'2019-10-31T08:40:00.000' AS DateTime), N'Дмитриева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Прессотерапия', CAST(N'2019-08-31T11:40:00.000' AS DateTime), N'Горбачёва')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-06-24T17:40:00.000' AS DateTime), N'Алексеева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-11-29T14:00:00.000' AS DateTime), N'Устинова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Прессотерапия', CAST(N'2019-08-25T19:50:00.000' AS DateTime), N'Овчинникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-11-13T11:00:00.000' AS DateTime), N'Артемьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-07-30T11:20:00.000' AS DateTime), N'Суворова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц лисьего эффекта', CAST(N'2019-05-25T19:00:00.000' AS DateTime), N'Ершова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Консультация врача-косметолога', CAST(N'2019-06-26T19:30:00.000' AS DateTime), N'Быкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Прессотерапия', CAST(N'2019-11-06T11:20:00.000' AS DateTime), N'Колобова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-04-29T16:10:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Оформление бровей', CAST(N'2019-10-21T19:10:00.000' AS DateTime), N'Овчинникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-06-23T09:40:00.000' AS DateTime), N'Андреева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Химический пилинг', CAST(N'2019-11-09T11:40:00.000' AS DateTime), N'Ермакова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Макияж', CAST(N'2019-10-02T19:10:00.000' AS DateTime), N'Ефимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-06-07T19:40:00.000' AS DateTime), N'Трофимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покраска ресниц', CAST(N'2019-01-17T11:00:00.000' AS DateTime), N'Гущина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Депиляция воском', CAST(N'2019-01-11T16:40:00.000' AS DateTime), N'Дмитриева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Микротоковая терапия', CAST(N'2019-11-13T09:00:00.000' AS DateTime), N'Суворова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Окрашивание бровей', CAST(N'2019-10-10T08:10:00.000' AS DateTime), N'Устинова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Эстетическая лазерная шлифовка кожи', CAST(N'2019-03-01T16:00:00.000' AS DateTime), N'Сысоева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Стрижка с покраской', CAST(N'2019-07-21T14:30:00.000' AS DateTime), N'Быкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Фонофорез лица', CAST(N'2019-12-21T13:40:00.000' AS DateTime), N'Горшкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-10-01T12:20:00.000' AS DateTime), N'Корнилова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Озонотерапия', CAST(N'2019-08-19T17:10:00.000' AS DateTime), N'Мишина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Моментальный лифтинг', CAST(N'2019-03-01T15:00:00.000' AS DateTime), N'Костина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Реконструкция и лечение волос и кожи головы', CAST(N'2019-05-11T14:50:00.000' AS DateTime), N'Горшкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Пирсинг', CAST(N'2019-12-21T19:00:00.000' AS DateTime), N'Колесникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покрытие ногтей', CAST(N'2019-01-30T10:50:00.000' AS DateTime), N'Быкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Гавайский массаж Ломи-Ломи', CAST(N'2019-03-09T16:30:00.000' AS DateTime), N'Воронова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Коррекция нарощенных ресниц', CAST(N'2019-08-08T18:20:00.000' AS DateTime), N'Артемьева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'ИК-сауна', CAST(N'2019-03-04T14:20:00.000' AS DateTime), N'Суворова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-06-17T10:20:00.000' AS DateTime), N'Ефимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Полировка с маслом', CAST(N'2019-02-11T09:10:00.000' AS DateTime), N'Андреева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ногтей гелем', CAST(N'2019-02-01T12:20:00.000' AS DateTime), N'Ефимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Инъекционные методики', CAST(N'2019-12-11T09:50:00.000' AS DateTime), N'Овчинникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Инъекционные методики', CAST(N'2019-01-13T18:10:00.000' AS DateTime), N'Шашкова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покраска ресниц', CAST(N'2019-03-23T08:30:00.000' AS DateTime), N'Гусева')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Наращивание ресниц кукольного эффекта', CAST(N'2019-10-02T14:10:00.000' AS DateTime), N'Костина')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Пирсинг', CAST(N'2019-01-20T09:20:00.000' AS DateTime), N'Анисимова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Покраска ресниц', CAST(N'2019-01-27T12:50:00.000' AS DateTime), N'Попова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Татуаж', CAST(N'2019-05-19T08:00:00.000' AS DateTime), N'Овчинникова')
INSERT [dbo].[Sheet1$] ([Услуга], [Начало оказания услуги], [Клиент]) VALUES (N'Снятие лака', CAST(N'2019-11-30T19:10:00.000' AS DateTime), N'Бирюкова')
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
