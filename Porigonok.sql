USE [poprig]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentTypeID] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Email] [varchar](max) NULL,
	[Phone] [varchar](max) NOT NULL,
	[Logo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Priority] [int] NOT NULL,
	[DirectorName] [varchar](max) NULL,
	[INN] [varchar](max) NOT NULL,
	[KPP] [varchar](max) NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentPriorityHistory]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentPriorityHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[PriorityValue] [int] NOT NULL,
 CONSTRAINT [PK_AgentPriorityHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CountInPack] [int] NOT NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[CountInStock] [float] NULL,
	[MinCount] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[Image] [nvarchar](100) NULL,
	[MaterialTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCountHistory]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCountHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CountValue] [float] NOT NULL,
 CONSTRAINT [PK_MaterialCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupplier]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupplier](
	[MaterialID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialSupplier] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC,
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ArticleNumber] [nvarchar](10) NOT NULL,
	[ProductionPersonCount] [int] NULL,
	[ProductionWorkshopNumber] [int] NULL,
	[MinCostForAgent] [decimal](10, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_sale_k_import]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_sale_k_import](
	[ID] [int] NULL,
	[Продукция] [nvarchar](255) NULL,
	[Наименование агента] [nvarchar](255) NULL,
	[Дата реализации] [datetime] NULL,
	[Количество продукции] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCostHistory]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCostHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CostValue] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ProductCostHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Count] [float] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[AgentID] [int] NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 16.04.2023 1:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[INN] [varchar](12) NOT NULL,
	[StartDate] [date] NOT NULL,
	[QualityRating] [int] NULL,
	[SupplierType] [nvarchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (1, 1, N'МонтажОрионУрал', N'pzaitev@blokin.org', N'(35222) 67-39-26', N'\agents\agent_96.png', N'027573, Тамбовская область, город Коломна, ул. Ленина, 20', 50, N'Давыдоваа Нина Евгеньевна', N'1692286718', N'181380912')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (2, 1, N'МетизСтрой', N'kristina.pakomov@burova.ru', N' 8-800-172-62-56', N'\agents\agent_94.png', N'254238, Нижегородская область, город Павловский Посад, проезд Балканская, 23', 374, N'Ева Борисовна Беспалова', N'4024742936', N'295608432')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (3, 2, N'РадиоСевер', N'maiy.belov@rogov.ru', N'(495) 368-86-51', N'\agents\agent_123.png', N'491360, Московская область, город Одинцово, въезд Ленина, 19', 431, N'Карпов Иосиф Максимович', N'5889206249', N'372789083')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (4, 3, N'Компания КазАлмаз', N'irina.gusina@vlasova.ru', N'8-800-533-24-75', N'\agents\agent_80.png', N'848810, Кемеровская область, город Лотошино, пер. Ломоносова, 90', 396, N'Марк Фёдорович Муравьёва', N'3084797352', N'123190924')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (5, 3, N'Компания СервисРадиоГор', N'nika.nekrasova@kovalev.ru', N' 8-800-676-32-86', N'\agents\agent_40.png', N'547196, Ульяновская область, город Серебряные Пруды, въезд Балканская, 81', 169, N'Попов Вадим Александрович', N'8880473721', N'729975116')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (6, 4, N'ВодТверьХозМашина', N'tkrylov@baranova.net', N' +7 (922) 849-91-96', N'\agents\agent_56.png', N'145030, Сахалинская область, город Шатура, въезд Гоголя, 79', 8, N'Александра Дмитриевна Ждановаа', N'4174253174', N'522227145')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (7, 2, N'Тех', N'vasilisa99@belyev.ru', N'+7 (922) 427-13-31', N'\agents\agent_61.png', N'731935, Калининградская область, город Павловский Посад, наб. Гагарина, 59', 278, N'Аким Романович Логинова', N'9282924869', N'587356429')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (8, 3, N'ТверьМетизУралСнос', N' rlazareva@novikov.ru', N'(35222) 57-92-75', N'\agents\agent_109.png', N'880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', 165, N'Зоя Андреевна Соболева', N'1076095397', N'947828491')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (9, 4, N'МясРеч', N'bkozlov@volkov.ru', N'8-800-453-63-45', N'\agents\agent_58.png', N'903648, Калужская область, город Воскресенск, пр. Будапештсткая, 91', 355, N'Белоусоваа Ирина Максимовна', N'9254261217', N'656363498')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (11, 4, N'CибПивОмскСнаб', N'evorontova@potapova.ru', N'+7 (922) 153-95-22', N'\agents\agent_46.png', N'816260, Ивановская область, город Москва, ул. Гагарина, 31', 477, N'Людмила Александровна Сафонова', N'5676173945', N'256512286')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (12, 4, N'ЦементАсбоцемент', N' polykov.veronika@artemeva.ru', N' (495) 184-87-92', N'отсутствует', N'619540, Курская область, город Раменское, пл. Балканская, 12', 426, N'Воронова Мария Александровна', N'4345774724', N'352469905')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (13, 4, N'ТелеГлавВекторСбыт', N'nsitnikov@kovaleva.ru', N'(35222) 56-15-37', N'\agents\agent_31.png', N'062489, Челябинская область, город Пушкино, въезд Бухарестская, 07', 185, N'Екатерина Фёдоровна Ковалёва', N'9504787157', N'419758597')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (14, 2, N'Инфо', N'arsenii.mikailova@prokorov.com', N'8-800-793-59-97', N'\agents\agent_89.png', N'100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', 304, N'Баранова Виктор Романович', N'6549468639', N'718386757')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (15, 4, N'ЭлектроРемОрионЛизинг', N'anfisa.fedotova@tvetkov.ru', N'(495) 519-97-41', N'\agents\agent_68.png', N'594365, Ярославская область, город Павловский Посад, бульвар Космонавтов, 64', 198, N'Тарасова Дан Львович', N'1340072597', N'500478249')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (16, 3, N'Компания ТелекомХмельГаражПром', N' qkolesnikova@kalinina.ru', N'(812) 983-91-73', N'\agents\agent_71.png', N'126668, Ростовская область, город Зарайск, наб. Гагарина, 69', 457, N'Костина Татьяна Борисовна', N'1614623826', N'824882264')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (17, 3, N'Компания Алмаз', N'akalinina@zaitev.ru', N'+7 (922) 688-74-22', N'\agents\agent_121.png', N'016215, Воронежская область, город Зарайск, ул. Косиора, 48', 259, N'Фоминаа Лариса Романовна', N'6698862694', N'662876919')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (18, 2, N'МясТрансМоторЛизинг', N' vlad.sokolov@andreev.org', N' +7 (922) 676-34-94', N'\agents\agent_62.png', N'765320, Ивановская область, город Шатура, спуск Гоголя, 88', 268, N'Тамара Дмитриевна Семёноваа', N'6148685143', N'196332656')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (19, 5, N'Монтаж', N' zakar.sazonova@gavrilov.ru', N'(495) 867-76-15', N'не указано', N'066594, Магаданская область, город Шаховская, спуск Сталина, 59', 300, N'Блохина Сергей Максимович', N'6142194281', N'154457435')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (20, 3, N'ВостокГлав', N'gordei95@kirillov.ru', N'(812) 949-29-26', N'\agents\agent_63.png', N'217022, Ростовская область, город Озёры, ул. Домодедовская, 19', 107, N'Инга Фёдоровна Дмитриева', N'3580946305', N'405017349')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (21, 5, N'Газ', N'ulyna.antonov@noskov.ru', N'(35222) 22-45-58', N'\agents\agent_76.png', N'252821, Тамбовская область, город Пушкино, ул. Чехова, 40', 170, N'Терентьев Илларион Максимович', N'8876413796', N'955381891')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (23, 2, N'Электро', N'likacev.makar@antonov.ru', N' 8-800-714-36-41', N'\agents\agent_93.png', N'966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', 366, N'Шарапова Елена Дмитриевна', N'7896029866', N'786038848')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (24, 1, N'Гор', N'maiy12@koklov.net', N'(495) 973-48-55', N'\agents\agent_52.png', N'376483, Калужская область, город Сергиев Посад, ул. Славы, 09', 175, N'Нонна Львовна Одинцоваа', N'7088187045', N'440309946')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (25, 3, N'Компания Гараж', N' asiryeva@andreeva.com', N'+7 (922) 848-38-54', N'\agents\agent_66.png', N'395101, Белгородская область, город Балашиха, бульвар 1905 года, 00', 413, N'Владлена Фёдоровна Ларионоваа', N'6190244524', N'399106161')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (26, 6, N'ОрионГлав', N'sermakova@sarova.net', N' +7 (922) 684-13-74', N'\agents\agent_106.png', N'729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', 482, N'Тимофеева Григорий Андреевич', N'9032455179', N'763045792')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (27, 5, N'ГлавITФлотПроф', N'savva.rybov@kolobov.ru', N' (812) 146-66-46', N'\agents\agent_64.png', N'447811, Мурманская область, город Егорьевск, ул. Ленина, 24', 62, N'Зыкова Стефан Максимович', N'2561361494', N'525678825')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (28, 6, N'ТверьМонтажОмск', N'dteterina@selezneva.ru', N'8-800-363-43-86', N'\agents\agent_128.png', N'761751, Амурская область, город Балашиха, шоссе Гоголя, 02', 272, N'Матвей Романович Большакова', N'2421347164', N'157370604')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (29, 2, N'РемСантехОмскБанк', N'anisimov.mark@vorobev.ru', N' (812) 182-44-77', N'\agents\agent_57.png', N'289468, Омская область, город Видное, пер. Балканская, 33', 442, N'Фокина Искра Максимовна', N'6823050572', N'176488617')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (30, 2, N'ЭлектроМоторТрансСнос', N'inessa.voronov@sidorova.ru', N' (35222) 43-62-19', N'отсутствует', N'913777, Самарская область, город Красногорск, ул. Бухарестская, 49', 151, N'Людмила Евгеньевна Новиковаа', N'6608362851', N'799760512')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (31, 1, N'ТверьХозМорСбыт', N' marina58@koroleva.com', N'(495) 416-75-67', N'\agents\agent_117.png', N'252101, Ростовская область, город Дорохово, пер. Ленина, 85', 207, N'Аким Львович Субботина', N'6681338084', N'460530907')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (32, 3, N'Компания ТомскХоз', N' nelli11@gureva.ru', N' +7 (922) 849-13-37', N'\agents\agent_115.png', N'861543, Томская область, город Истра, бульвар Славы, 42', 464, N'Лазарева Аркадий Сергеевич', N'8430391035', N'961540858')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (33, 3, N'Компания МясДизайнДизайн', N' gleb.gulyev@belyeva.com', N' (812) 535-17-25', N'\agents\agent_53.png', N'557264, Брянская область, город Серпухов, въезд Гоголя, 34', 491, N'Клементина Сергеевна Стрелкова', N'8004989990', N'908629456')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (34, 3, N'Компания ЖелДорТверьМонтаж', N' burova.zlata@zueva.ru', N'(495) 521-61-75', N'\agents\agent_85.png', N'152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', 2, N'Нестор Максимович Гуляев', N'3325722996', N'665766347')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (35, 3, N'МетизТехАвтоПроф', N'anastasiy.gromov@samsonova.com', N' (495) 581-42-46', N'\agents\agent_33.png', N'713016, Брянская область, город Подольск, пл. Домодедовская, 93', 321, N'Егор Фёдорович Третьякова', N'2988890076', N'215491048')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (36, 5, N'Гараж', N'antonin51@korolev.com', N'(35222) 54-72-59', N'\agents\agent_90.png', N'585758, Самарская область, город Красногорск, бульвар Балканская, 13', 107, N'Панфилов Константин Максимович', N'2638464552', N'746822723')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (37, 1, N'ГазДизайнЖелДор', N'elizaveta.komarov@rybakov.net', N'(495) 797-97-33', N'\agents\agent_49.png', N'695230, Курская область, город Красногорск, пр. Гоголя, 64', 236, N'Лев Иванович Третьяков', N'2396029740', N'458924890')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (38, 2, N'РемГаражЛифт', N'novikova.gleb@sestakov.ru', N' 8-800-772-27-53', N'\agents\agent_65.png', N'048715, Ивановская область, город Люберцы, проезд Космонавтов, 89', 374, N'Филатов Владимир Максимович', N'1656477206', N'988968838')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (39, 5, N'СантехБашкир', N' nikodim81@kiseleva.com', N' +7 (922) 155-87-39', N'\agents\agent_99.png', N'180288, Тверская область, город Одинцово, ул. Бухарестская, 37', 369, N'Виктор Иванович Молчанов', N'4159215346', N'639267493')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (40, 1, N'ЮпитерЛенГараж-М', N'larkipova@gorbunov.ru', N'(495) 327-58-25', N'\agents\agent_48.png', N'339507, Московская область, город Видное, ул. Космонавтов, 11', 470, N'Васильева Валерия Борисовна', N'2038393690', N'259672761')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (41, 4, N'ОрионСофтВодСнос', N'isukanov@sobolev.com', N'(35222) 59-75-11', N'\agents\agent_97.png', N'577227, Калужская область, город Павловский Посад, наб. Чехова, 35', 361, N'Мухина Ян Фёдорович', N'1522348613', N'977738715')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (42, 2, N'КазХоз', N'istrelkova@fomin.ru', N'+7 (922) 728-85-62', N'нет', N'384162, Астраханская область, город Одинцово, бульвар Гагарина, 57', 213, N'Степанова Роман Иванович', N'6503377671', N'232279972')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (43, 6, N'БухВжух', N'valentina.bolsakova@aksenova.ru', N'(495) 367-21-41', N'отсутствует', N'481744, Амурская область, город Щёлково, пл. Сталина, 48', 327, N'Тарасов Болеслав Александрович', N'2320989197', N'359282667')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (44, 2, N'ХозЮпитер', N'jisakova@nazarova.com', N'+7 (922) 332-48-96', N'\agents\agent_114.png', N'038182, Курганская область, город Москва, спуск Космонавтов, 16', 375, N'Максимоваа Вера Фёдоровна', N'6667635058', N'380592865')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (45, 5, N'ВостокКазРыб', N'flukin@misin.org', N' (495) 987-31-63', N'\agents\agent_112.png', N'059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', 361, N'Самсонов Родион Романович', N'7411284960', N'176779733')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (46, 4, N'ЦементКрепТех-М', N' yna.evdokimov@gordeeva.ru', N' (812) 838-79-58', N'\agents\agent_82.png', N'263764, Свердловская область, город Раменское, пер. Косиора, 28', 189, N'Сергеев Владлен Александрович', N'5359981084', N'680416300')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (47, 5, N'Строй', N'soloveva.adam@andreev.ru', N'(812) 447-45-59', N'отсутствует', N'763019, Омская область, город Шатура, пл. Сталина, 56', 12, N'Кудрявцев Адриан Андреевич', N'6678884759', N'279288618')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (48, 4, N'БашкирЮпитерТомск', N'dyckov.veniamin@kotova.ru', N'(812) 189-59-57', N'\agents\agent_59.png', N'035268, Сахалинская область, город Волоколамск, проезд Ладыгина, 51', 139, N'Фадеева Раиса Александровна', N'1606315697', N'217799345')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (49, 3, N'Компания КазМеталКазань', N' mmoiseev@teterin.ru', N'(495) 685-34-29', N'\agents\agent_130.png', N'532703, Пензенская область, город Чехов, наб. Чехова, 81', 252, N'Валерий Владимирович Хохлова', N'4598939812', N'303467543')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (50, 3, N'Компания Газ', N'alina56@zdanov.com', N' (35222) 75-96-85', N'\agents\agent_120.png', N'310403, Кировская область, город Солнечногорск, пл. Балканская, 76', 445, N'Давид Андреевич Фадеев', N'2262431140', N'247369527')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (51, 3, N'Компания Монтаж', N'afanasev.anastasiy@muravev.ru', N' (35222) 92-45-98', N'\agents\agent_75.png', N'036381, Брянская область, город Кашира, бульвар Гагарина, 76', 124, N'Силин Даниил Иванович', N'6206428565', N'118570048')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (52, 4, N'СервисХмельМонтаж', N'galina31@melnikov.ru', N'+7 (922) 344-73-38', N'\agents\agent_92.png', N'928260, Нижегородская область, город Балашиха, пл. Косиора, 44', 124, N'Анжелика Дмитриевна Горбунова', N'3459886235', N'356196105')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (53, 2, N'ВодГараж', N' pmaslov@fomiceva.com', N'+7 (922) 363-86-67', N'\agents\agent_67.png', N'988899, Саратовская область, город Раменское, пр. Славы, 40', 250, N'Лаврентий Фёдорович Логинова', N'5575072431', N'684290320')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (54, 1, N'CибГаз', N'inna.sarova@panfilov.ru', N'(495) 945-37-25', N'\agents\agent_103.png', N'365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', 488, N'Вячеслав Романович Третьякова', N'6483417250', N'455013058')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (55, 1, N'БашкирФлотМотор-H', N' morozova.nika@kazakova.ru', N' (495) 793-84-82', N'\agents\agent_36.png', N'008081, Тюменская область, город Ногинск, въезд Гагарина, 94', 416, N'Марат Алексеевич Фролов', N'1657476072', N'934931159')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (56, 6, N'МеталСервисМор', N'xdanilov@titov.ru', N'(35222) 91-28-62', N'нет', N'293265, Иркутская область, город Клин, пр. Славы, 12', 475, N'Коновалова Кирилл Львович', N'6922817841', N'580142825')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (57, 4, N'Рем', N'zanna25@nikiforova.com', N' (495) 987-88-53', N'\agents\agent_79.png', N'707812, Иркутская область, город Шаховская, ул. Гагарина, 17', 329, N'Шароваа Елизавета Львовна', N'3203830728', N'456254820')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (58, 3, N'СантехСеверЛенМашина', N' pgorbacev@vasilev.net', N'(812) 918-88-43', N'\agents\agent_74.png', N'606990, Новосибирская область, город Павловский Посад, въезд Домодедовская, 38', 201, N'Павел Максимович Рожков', N'3506691089', N'830713603')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (59, 3, N'Цемент', N'panova.klementina@bobrov.ru', N'8-800-517-78-47', N'\agents\agent_54.png', N'084315, Амурская область, город Шаховская, наб. Чехова, 62', 340, N'Анфиса Фёдоровна Буроваа', N'9662118663', N'650216214')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (60, 4, N'Вод', N' savva86@zaiteva.ru', N'(495) 142-19-84', N'\agents\agent_129.png', N'964386, Оренбургская область, город Чехов, пл. Косиора, 80', 359, N'Зоя Романовна Селезнёва', N'1296063939', N'447430051')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (61, 6, N'Орион', N' aleksei63@kiselev.ru', N'8-800-621-61-93', N'\agents\agent_77.png', N'951035, Ивановская область, город Ступино, шоссе Космонавтов, 73', 166, N'Мартынов Михаил Борисович', N'2670166502', N'716874456')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (62, 2, N'СтройГорНефть', N' lysy.kolesnikova@molcanova.com', N' (812) 385-21-37', N'\agents\agent_37.png', N'444539, Ульяновская область, город Лотошино, спуск Будапештсткая, 95', 161, N'Тарасова Макар Максимович', N'5916775587', N'398299418')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (63, 3, N'Компания Хмель', N'ermakov.mark@isakova.ru', N' (812) 421-77-82', N'отсутствует', N'889757, Новосибирская область, город Раменское, бульвар 1905 года, 93', 2, N'Владимир Борисович Суворова', N'9004087602', N'297273898')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (64, 3, N'Компания ВодАлмазIT', N'zakar37@nikolaeva.ru', N'(35222) 52-76-16', N'\agents\agent_111.png', N'302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', 31, N'Гуляев Егор Евгеньевич', N'2345297765', N'908449277')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (65, 6, N'БашкирРечТомск', N' aleksandra77@karpov.com', N'8-800-254-71-85', N'\agents\agent_100.png', N'136886, Амурская область, город Видное, въезд Космонавтов, 39', 84, N'Назарова Вера Андреевна', N'7027724917', N'823811460')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (66, 4, N'СофтРосБух', N'ivanova.antonin@rodionov.ru', N'+7 (922) 445-69-17', N'\agents\agent_124.png', N'747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', 69, N'Белова Полина Владимировна', N'8321561226', N'807803984')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (67, 1, N'ТелекомЮпитер', N'kulikov.adrian@zuravlev.org', N'(812) 895-67-23', N'\agents\agent_81.png', N'959793, Курская область, город Егорьевск, бульвар Ленина, 72', 302, N'Калинина Татьяна Ивановна', N'9383182378', N'944520594')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (68, 4, N'УралСтройХмель', N' aleksandr95@kolobova.ru', N'(35222) 39-23-65', N'\agents\agent_113.png', N'462632, Костромская область, город Шаховская, шоссе Сталина, 92', 372, N'Август Борисович Красильникова', N'8773558039', N'402502867')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (69, 5, N'АсбоцементТехАвто', N'matveev.yliy@kiseleva.ru', N'+7 (922) 977-68-84', N'\agents\agent_110.png', N'304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', 247, N'Сидорова Любовь Ивановна', N'7626076463', N'579234124')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (70, 3, N'Компания ФинансСервис', N' robert.serbakov@safonova.ru', N'(812) 878-42-71', N'\agents\agent_38.png', N'841700, Брянская область, город Серпухов, спуск Домодедовская, 35', 395, N'Клавдия Сергеевна Виноградова', N'7491491391', N'673621812')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (71, 2, N'Софт', N'jterentev@ersov.com', N'(35222) 12-82-65', N'\agents\agent_122.png', N'453714, Смоленская область, город Одинцово, спуск Косиора, 84', 292, N'Петухова Прохор Фёдорович', N'3889910123', N'952047511')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (72, 2, N'ТелекомГор', N'gorskov.larisa@kalinin.com', N'(35222) 78-93-21', N'\agents\agent_98.png', N'210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', 255, N'Ксения Андреевна Михайлова', N'3748947224', N'766431901')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (73, 6, N'РемСтрем', N'rafail96@sukin.ru', N' (35222) 55-28-24', N'\agents\agent_116.png', N'373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', 88, N'Альбина Александровна Романова', N'9006569852', N'152177100')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (74, 3, N'Лифт', N' zinaida01@bespalova.ru', N' (812) 484-92-38', N'\agents\agent_101.png', N'479565, Курганская область, город Клин, пл. Ленина, 54', 92, N'Вера Евгеньевна Денисоваа', N'6169713039', N'848972934')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (75, 3, N'Компания МоторТелекомЦемент-М', N'larisa44@silin.org', N'(812) 857-95-57', N'\agents\agent_118.png', N'021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', 237, N'Иван Евгеньевич Белоусова', N'7326832482', N'440199498')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (76, 2, N'ЮпитерТяжОрионЭкспедиция', N' gblokin@orlov.net', N' (35222) 95-63-65', N'\agents\agent_44.png', N'960726, Томская область, город Орехово-Зуево, въезд 1905 года, 51', 446, N'Валерий Евгеньевич Виноградов', N'6843174002', N'935556458')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (77, 5, N'Транс', N'artem.fadeev@polykov.com', N'8-800-954-23-89', N'\agents\agent_127.png', N'508299, Кемеровская область, город Кашира, пер. Гагарина, 42', 38, N'Евсеева Болеслав Сергеевич', N'9604275878', N'951258069')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (78, 2, N'РемВод', N'komarov.elizaveta@agafonova.ru', N'+7 (922) 353-31-72', N'\agents\agent_126.png', N'449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', 1, N'Медведеваа Ярослава Фёдоровна', N'3986603105', N'811373078')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (79, 6, N'АсбоцементЛифтРеч-H', N'vladlena58@seliverstova.ru', N'(495) 245-57-16', N'\agents\agent_105.png', N'599158, Ростовская область, город Озёры, ул. Космонавтов, 05', 407, N'Кондратьева Таисия Андреевна', N'6567878928', N'560960507')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (80, 3, N'РосАвтоМонтаж', N'lapin.inessa@isaeva.com', N'(495) 445-97-76', N'\agents\agent_55.png', N'331914, Курская область, город Ногинск, спуск Ладыгина, 66', 10, N'Диана Алексеевна Исаковаа', N'4735043946', N'263682488')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (81, 3, N'Компания СервисТелеМотор', N' veronika.egorov@bespalova.com', N' +7 (922) 461-25-29', N'\agents\agent_102.png', N'625988, Вологодская область, город Озёры, пр. Гоголя, 18', 81, N'Фролова Эдуард Борисович', N'3248454160', N'138472695')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (82, 6, N'ФинансТелеТверь', N' medvedev.klim@afanasev.com', N'(812) 115-56-93', N'\agents\agent_45.png', N'687171, Томская область, город Лотошино, пл. Славы, 59', 100, N'Зайцеваа Дарья Сергеевна', N'2646091050', N'971874277')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (83, 2, N'ВодГор', N'tvetkova.robert@sorokin.com', N' (35222) 73-72-16', N'\agents\agent_125.png', N'265653, Калужская область, город Ступино, шоссе Гоголя, 89', 72, N'Фаина Фёдоровна Филиппова', N'4463113470', N'899603778')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (84, 2, N'ТяжРадиоУралПроф', N'liliy62@grisina.ru', N'+7 (922) 885-66-15', N'\agents\agent_88.png', N'521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', 278, N'София Алексеевна Мухина', N'5688533246', N'401535045')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (85, 2, N'ГаражЛофт', N'lydmila.belyeva@karpov.ru', N'(495) 427-55-66', N'\agents\agent_108.png', N'294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', 335, N'Клавдия Фёдоровна Кудряшова', N'2816939574', N'754741128')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (86, 2, N'ITСтройАлмаз', N'fokin.eduard@samoilov.com', N'8-800-185-78-91', N'\agents\agent_83.png', N'361730, Костромская область, город Волоколамск, шоссе Славы, 36', 159, N'Алексеева Валериан Андреевич', N'7689065648', N'456612755')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (87, 3, N'Асбоцемент', N'antonin19@panfilov.ru', N' 8-800-211-16-23', N'\agents\agent_34.png', N'030119, Курганская область, город Дмитров, пер. Славы, 47', 273, N'Никитинаа Антонина Андреевна', N'1261407459', N'745921890')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (88, 4, N'ТекстильУралАвтоОпт', N'hkononova@pavlova.ru', N' (35222) 98-76-54', N'не указано', N'028936, Магаданская область, город Видное, ул. Гагарина, 54', 176, N'Алина Сергеевна Дьячковаа', N'3930950057', N'678529397')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (89, 3, N'Компания КрепЦемент', N'rusakov.efim@nikiforov.ru', N' (812) 963-77-87', N'\agents\agent_50.png', N'423477, Мурманская область, город Кашира, бульвар Домодедовская, 61', 426, N'Екатерина Львовна Суворова', N'3025099903', N'606083992')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (90, 2, N'КазаньТекстиль', N'osimonova@andreeva.com', N'(35222) 86-74-21', N'\agents\agent_47.png', N'231891, Челябинская область, город Шатура, бульвар Ладыгина, 40', 156, N'Александров Бронислав Максимович', N'4584384019', N'149680499')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (91, 2, N'КазЮпитерТомск', N'tgavrilov@frolov.ru', N'+7 (922) 772-33-58', N'\agents\agent_60.png', N'393450, Тульская область, город Кашира, пр. 1905 года, 47', 244, N'Рафаил Андреевич Копылов', N'9201745524', N'510248846')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (92, 5, N'Бух', N'belova.vikentii@konstantinova.net', N' +7 (922) 375-49-21', N'\agents\agent_78.png', N'409600, Новгородская область, город Ногинск, пл. Гагарина, 68', 82, N'Татьяна Сергеевна Королёваа', N'1953785418', N'122905583')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (93, 6, N'Радио', N'rtretykova@kozlov.ru', N'8-800-897-32-78', N'\agents\agent_43.png', N'798718, Ленинградская область, город Пушкино, бульвар Балканская, 37', 221, N'Эмма Андреевна Колесникова', N'9077613654', N'657690787')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (94, 4, N'Креп', N'savina.dominika@belousova.com', N' (495) 217-46-29', N'\agents\agent_39.png', N'336489, Калининградская область, город Можайск, наб. Славы, 35', 371, N'Назар Алексеевич Григорьева', N'4880732317', N'258673591')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (95, 2, N'Мобайл', N' dsiryev@dementeva.com', N'8-800-618-73-37', N'\agents\agent_107.png', N'606703, Амурская область, город Чехов, пл. Будапештсткая, 91', 464, N'Екатерина Сергеевна Бобылёва', N'7803888520', N'885703265')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (96, 1, N'CибБашкирТекстиль', N'vzimina@zdanova.com', N'(495) 285-78-38', N'\agents\agent_69.png', N'429540, Мурманская область, город Воскресенск, пл. Славы, 36', 218, N'Григорий Владимирович Елисеева', N'7392007090', N'576103661')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (97, 1, N'МеталТекстильЛифтТрест', N' muravev.trofim@sazonov.net', N'(812) 753-96-76', N'\agents\agent_86.png', N'786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', 425, N'Одинцов Назар Борисович', N'2971553297', N'821859486')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (98, 6, N'ОрионТомскТех', N'faina.tikonova@veselov.com', N'+7 (922) 542-89-15', N'\agents\agent_119.png', N'738763, Курская область, город Егорьевск, спуск Чехова, 66', 73, N'Георгий Александрович Лукин', N'9351493429', N'583041591')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (99, 6, N'ЖелДорДизайнМетизТраст', N'lnikitina@kulikova.com', N'(812) 123-63-47', N'не указано', N'170549, Сахалинская область, город Видное, проезд Космонавтов, 89', 290, N'Игорь Львович Агафонова', N'7669116841', N'906390137')
INSERT [dbo].[Agent] ([ID], [AgentTypeID], [Title], [Email], [Phone], [Logo], [Address], [Priority], [DirectorName], [INN], [KPP]) VALUES (100, 2, N'БухМясМоторПром', N'varvara49@savin.ru', N'(35222) 83-23-59', N'\agents\agent_95.png', N'677498, Костромская область, город Зарайск, спуск Славы, 59', 158, N'Нина Дмитриевна Черноваа', N'7377410338', N'592041317')
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[AgentType] ON 

INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (1, N'МКК', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (2, N'ОАО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (3, N'ООО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (4, N'ЗАО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (5, N'МФО', NULL)
INSERT [dbo].[AgentType] ([ID], [Title], [Image]) VALUES (6, N'ПАО', NULL)
SET IDENTITY_INSERT [dbo].[AgentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (1, N'Песок', 13, N'13', 13, 13, N'13', CAST(13.00 AS Decimal(10, 2)), N'13', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (2, N'Камень', 14, N'14', 14, 141, N'14', CAST(14.00 AS Decimal(10, 2)), N'14', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (3, N'Цемент', 15, N'15', 15, 15, N'15', CAST(15.00 AS Decimal(10, 2)), N'15', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (4, N'Картон', 16, N'16', 16, 16, N'16', CAST(16.00 AS Decimal(10, 2)), N'16', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (5, N'Дерево', 17, N'17', 17, 17, N'17', CAST(17.00 AS Decimal(10, 2)), N'17', 5)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (6, N'Доска', 18, N'19', 19, 19, N'19', CAST(19.00 AS Decimal(10, 2)), N'19', 6)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (7, N'Обсидиан', 19, N'19 ', 19, 19, N'19', CAST(19.00 AS Decimal(10, 2)), N'19', 7)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (9, N'Железо', 20, N'20', 20, 20, N'20', CAST(20.00 AS Decimal(10, 2)), N'20', 8)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (10, N'Алмаз', 21, N'21', 21, 21, N'21', CAST(21.00 AS Decimal(10, 2)), N'21', 9)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (11, N'Незерит', 22, N'22', 22, 22, N'22', CAST(22.00 AS Decimal(10, 2)), N'22', 11)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (1, N'Песок', 13)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (2, N'Камень', 14)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (3, N'Цемент', 15)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (4, N'Картон', 16)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (5, N'Дерево', 17)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (6, N'Доска', 18)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (7, N'Обсидиан', 19)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (8, N'Железо', 20)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (9, N'Алмаз', 21)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (11, N'Незерит', 22)
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (53, N'Попрыгунчик детский красный 1289', 1, N'82925345', 4, 10, CAST(1919.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (54, N'Попрыгунчик детский желтый 6678', 2, N'80007300', 2, 1, CAST(1768.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (55, N'Попрыгунчик детский 6888', 1, N'13875235', 4, 12, CAST(1972.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (56, N'Попрыгунчик для мальчиков 3929', 1, N'2158097', 1, 9, CAST(255.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (57, N'Попрыгунчик детский 2071', 1, N'3157982', 3, 6, CAST(275.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (58, N'Попрыгунчик для собачек 5096', 3, N'67975083', 4, 9, CAST(1465.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (59, N'Попрыгунчик для мальчиков 5389', 3, N'70873532', 3, 2, CAST(1739.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (60, N'Попрыгунчик детский розовый 5376', 1, N'74291677', 4, 6, CAST(1889.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (61, N'Попрыгунчик для мальчиков 3307', 4, N'30269726', 4, 10, CAST(1533.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (62, N'Попрыгунчик для кошечек 2604', 1, N'11890154', 2, 7, CAST(842.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (63, N'Шар 6366', 3, N'25514523', 4, 4, CAST(1932.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (64, N'Попрыгунчик детский желтый 6051', 4, N'88211092', 4, 12, CAST(727.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (65, N'Попрыгунчик для девочек 2311', 3, N'25262035', 4, 1, CAST(1308.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (66, N'Попрыгунчик для собачек 4387', 5, N'89607276', 3, 8, CAST(912.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (67, N'Попрыгун 3016', 4, N'74919447', 1, 12, CAST(615.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (68, N'Попрыгунчик детский красный 3240', 2, N'88098604', 3, 8, CAST(882.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (69, N'Попрыгунчик детский розовый 1657', 1, N'86558177', 4, 3, CAST(662.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (70, N'Попрыгунчик детский красный 6591', 3, N'79704172', 5, 7, CAST(592.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (71, N'Попрыгунчик для девочек 1895', 4, N'54983244', 4, 4, CAST(1586.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (72, N'Попрыгунчик для кошечек 3741', 3, N'43987093', 5, 4, CAST(1668.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (73, N'Попрыгунчик детский красный 3839', 2, N'26655484', 5, 2, CAST(1921.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (74, N'Попрыгунчик детский красный 4969', 1, N'10614909', 5, 12, CAST(913.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (75, N'Попрыгунчик для собачек 5754', 4, N'79018408', 2, 8, CAST(633.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (76, N'Попрыгунчик для собачек 4485', 3, N'33440129', 2, 12, CAST(1995.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (77, N'Попрыгунчик для девочек 1656', 4, N'22217580', 5, 6, CAST(1494.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (78, N'Попрыгунчик для мальчиков 4791', 2, N'45540528', 3, 11, CAST(1260.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (79, N'Попрыгунчик для девочек 6849', 3, N'10084400', 1, 11, CAST(933.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (80, N'Попрыгунчик детский желтый 1371', 4, N'85514178', 3, 7, CAST(252.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (81, N'Попрыгунчик для девочек 3389', 3, N'26434211', 3, 10, CAST(597.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (82, N'Попрыгунчик детский розовый 5197', 4, N'89612317', 1, 3, CAST(1948.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (83, N'Попрыгунчик для собачек 3500', 2, N'79994924', 2, 9, CAST(1142.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (84, N'Попрыгун 6882', 5, N'12732041', 1, 6, CAST(809.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (85, N'Попрыгунчик для кошечек 4740', 5, N'80698285', 1, 6, CAST(1973.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (86, N'Шар 2243', 3, N'42536654', 3, 12, CAST(1247.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (87, N'Попрыгунчик детский красный 1740', 3, N'43330133', 5, 3, CAST(1749.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (88, N'Попрыгунчик детский красный 5400', 3, N'68237918', 4, 5, CAST(1570.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (89, N'Попрыгунчик для девочек 1560', 1, N'47378395', 5, 6, CAST(235.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (90, N'Шар 4124', 4, N'39025230', 5, 8, CAST(1160.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (91, N'Попрыгунчик детский желтый 2582', 3, N'32125209', 3, 11, CAST(1730.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (92, N'Попрыгунчик детский 6029', 2, N'69184347', 3, 7, CAST(419.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (93, N'Попрыгун 2299', 3, N'34750945', 2, 2, CAST(1688.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (94, N'Попрыгунчик детский красный 1972', 2, N'59509797', 1, 7, CAST(794.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (95, N'Попрыгунчик детский 5117', 2, N'80875656', 3, 12, CAST(338.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (96, N'Попрыгунчик детский розовый 5501', 3, N'25409940', 2, 7, CAST(652.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (97, N'Попрыгунчик детский розовый 6346', 4, N'30282346', 1, 10, CAST(1024.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (98, N'Попрыгун 6412', 2, N'28152672', 2, 9, CAST(523.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (99, N'Попрыгунчик детский 1916', 3, N'73345857', 5, 8, CAST(832.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (100, N'Попрыгунчик для собачек 4529', 2, N'81713527', 3, 6, CAST(1923.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (101, N'Попрыгунчик для собачек 4381', 4, N'27301447', 2, 5, CAST(1234.00 AS Decimal(10, 2)), NULL, NULL)
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent], [Description], [Image]) VALUES (102, N'Попрыгунчик детский розовый 2694', 2, N'13340356', 4, 6, CAST(1691.00 AS Decimal(10, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для кошечек 2604', N'КазаньТекстиль', CAST(N'2010-06-21T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 5754', N'Компания ФинансСервис', CAST(N'2016-02-17T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'РемГаражЛифт', CAST(N'2012-11-07T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 6412', N'Радио', CAST(N'2019-06-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 3839', N'Орион', CAST(N'2014-06-11T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1289', N'РемСантехОмскБанк', CAST(N'2012-08-12T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1740', N'Газ', CAST(N'2012-09-26T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 1657', N'РемГаражЛифт', CAST(N'2018-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 6678', N'CибБашкирТекстиль', CAST(N'2018-09-15T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 6051', N'Компания МясДизайнДизайн', CAST(N'2011-08-27T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1972', N'Компания Гараж', CAST(N'2011-08-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 6346', N'РемГаражЛифт', CAST(N'2015-02-02T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4529', N'Креп', CAST(N'2011-07-01T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 1916', N'ЮпитерЛенГараж-М', CAST(N'2013-12-23T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для кошечек 2604', N'Тех', CAST(N'2017-11-11T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'МетизТехАвтоПроф', CAST(N'2014-04-15T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'ГазДизайнЖелДор', CAST(N'2018-06-22T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 2582', N'Рем', CAST(N'2013-07-11T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 1657', N'МясТрансМоторЛизинг', CAST(N'2016-08-13T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 1916', N'Газ', CAST(N'2014-07-28T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4387', N'СтройГорНефть', CAST(N'2010-04-15T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4387', N'КазХоз', CAST(N'2017-10-12T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Шар 4124', N'ТекстильУралАвтоОпт', CAST(N'2012-09-02T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 1657', N'КазЮпитерТомск', CAST(N'2015-08-08T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4381', N'Компания СервисРадиоГор', CAST(N'2012-05-25T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 5400', N'ЭлектроМоторТрансСнос', CAST(N'2014-03-06T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 3240', N'РемСантехОмскБанк', CAST(N'2016-05-18T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 2694', N'Компания КрепЦемент', CAST(N'2014-07-11T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 6346', N'Компания Хмель', CAST(N'2016-08-18T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 3929', N'Компания СервисРадиоГор', CAST(N'2019-07-25T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 6029', N'ВодГараж', CAST(N'2019-03-17T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для кошечек 3741', N'Строй', CAST(N'2014-08-06T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 6849', N'Компания СервисРадиоГор', CAST(N'2011-09-12T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4387', N'Монтаж', CAST(N'2011-08-28T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 2299', N'Компания Хмель', CAST(N'2015-12-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1289', N'МясТрансМоторЛизинг', CAST(N'2016-02-25T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 5376', N'CибПивОмскСнаб', CAST(N'2017-06-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Шар 4124', N'CибБашкирТекстиль', CAST(N'2016-11-27T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 6591', N'Тех', CAST(N'2012-03-12T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 5389', N'Цемент', CAST(N'2018-06-13T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 3500', N'ЭлектроМоторТрансСнос', CAST(N'2017-11-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Шар 4124', N'Компания ТелекомХмельГаражПром', CAST(N'2016-02-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 3389', N'КазаньТекстиль', CAST(N'2010-06-20T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 1371', N'Тех', CAST(N'2015-06-23T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4387', N'Компания МясДизайнДизайн', CAST(N'2013-01-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 2311', N'МясРеч', CAST(N'2015-02-28T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1972', N'МясТрансМоторЛизинг', CAST(N'2019-07-05T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 6029', N'Бух', CAST(N'2014-03-06T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 3500', N'Креп', CAST(N'2017-05-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 4791', N'Компания Монтаж', CAST(N'2015-01-17T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 3016', N'ФинансТелеТверь', CAST(N'2018-04-14T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 6591', N'Креп', CAST(N'2014-12-12T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 1657', N'ЮпитерЛенГараж-М', CAST(N'2015-03-28T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 2299', N'ТелеГлавВекторСбыт', CAST(N'2017-11-24T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 6412', N'CибПивОмскСнаб', CAST(N'2019-06-27T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 3389', N'Асбоцемент', CAST(N'2014-06-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 5117', N'Рем', CAST(N'2019-03-18T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1972', N'ТелеГлавВекторСбыт', CAST(N'2015-09-12T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 1916', N'Цемент', CAST(N'2012-01-02T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'МясРеч', CAST(N'2011-02-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для кошечек 4740', N'Гор', CAST(N'2016-10-07T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 3929', N'КазЮпитерТомск', CAST(N'2017-06-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 2071', N'Строй', CAST(N'2016-02-26T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 6678', N'Строй', CAST(N'2013-11-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 6029', N'МясРеч', CAST(N'2015-07-01T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 6882', N'СантехСеверЛенМашина', CAST(N'2015-08-27T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 5754', N'Цемент', CAST(N'2013-08-27T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 1895', N'Орион', CAST(N'2013-05-10T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'ВодГараж', CAST(N'2013-12-01T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 3016', N'Компания ФинансСервис', CAST(N'2011-06-11T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 6678', N'Компания Гараж', CAST(N'2019-05-24T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 6412', N'Строй', CAST(N'2017-04-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 6888', N'РемСантехОмскБанк', CAST(N'2013-04-08T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 2694', N'Компания Монтаж', CAST(N'2019-08-16T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгун 6412', N'РосАвтоМонтаж', CAST(N'2011-12-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 3839', N'Компания Гараж', CAST(N'2016-07-19T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 5501', N'Монтаж', CAST(N'2014-03-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 3240', N'ЦементАсбоцемент', CAST(N'2011-06-14T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 3389', N'ЮпитерТяжОрионЭкспедиция', CAST(N'2017-05-20T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1289', N'ВодГараж', CAST(N'2010-04-13T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1289', N'ЦементАсбоцемент', CAST(N'2019-10-15T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 5117', N'БашкирЮпитерТомск', CAST(N'2019-10-08T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 3839', N'Компания МясДизайнДизайн', CAST(N'2018-04-08T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Шар 2243', N'ЭлектроМоторТрансСнос', CAST(N'2012-06-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 1371', N'СтройГорНефть', CAST(N'2012-04-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 6849', N'Орион', CAST(N'2015-08-17T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 3389', N'Компания Монтаж', CAST(N'2016-09-14T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 3929', N'ВодТверьХозМашина', CAST(N'2012-03-23T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Шар 4124', N'БашкирФлотМотор-H', CAST(N'2010-11-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский 6029', N'ГазДизайнЖелДор', CAST(N'2016-11-17T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 5501', N'Гор', CAST(N'2010-05-03T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 6051', N'ЭлектроРемОрионЛизинг', CAST(N'2019-03-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для собачек 4485', N'Компания ТелекомХмельГаражПром', CAST(N'2017-10-14T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 2694', N'РосАвтоМонтаж', CAST(N'2017-02-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для девочек 2311', N'Компания Гараж', CAST(N'2017-08-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский розовый 5376', N'ФинансТелеТверь', CAST(N'2017-03-09T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 2582', N'Компания МясДизайнДизайн', CAST(N'2017-11-13T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский желтый 2582', N'ЭлектроМоторТрансСнос', CAST(N'2015-12-02T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик для мальчиков 3307', N'ГлавITФлотПроф', CAST(N'2011-06-14T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (NULL, N'Попрыгунчик детский красный 1289', N'Компания Хмель', CAST(N'2014-08-14T00:00:00.000' AS DateTime), 16)
GO
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (53, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (54, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (55, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (56, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (57, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (58, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (59, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (60, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (61, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (62, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (63, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (64, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (65, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (66, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (67, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (68, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (69, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (70, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (71, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (72, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (73, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (74, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (75, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (76, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (77, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (78, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (79, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (80, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (81, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (82, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (83, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (84, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (85, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (86, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (87, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (88, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (89, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (90, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (91, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (92, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (93, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (94, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (95, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (96, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (97, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (98, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (99, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (100, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (101, NULL, NULL, NULL, NULL)
INSERT [dbo].[product_sale_k_import] ([ID], [Продукция], [Наименование агента], [Дата реализации], [Количество продукции]) VALUES (102, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (53, 1, 15)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (54, 5, 65)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (67, 2, 65)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (72, 3, 77)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (78, 4, 87)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (80, 6, 89)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (85, 7, 34)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (86, 9, 66)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (98, 11, 45)
INSERT [dbo].[ProductMaterial] ([ProductID], [MaterialID], [Count]) VALUES (100, 10, 100)
GO
SET IDENTITY_INSERT [dbo].[ProductSale] ON 

INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (6, 62, 90, CAST(N'2010-06-21' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (7, 75, 70, CAST(N'2016-02-17' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (8, 76, 38, CAST(N'2012-11-07' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (9, 98, 93, CAST(N'2019-06-01' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (10, 73, 61, CAST(N'2014-06-11' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (11, 53, 29, CAST(N'2012-08-12' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (12, 87, 21, CAST(N'2012-09-26' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (13, 69, 38, CAST(N'2018-02-28' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (14, 54, 96, CAST(N'2018-09-15' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (15, 64, 33, CAST(N'2011-08-27' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (16, 94, 25, CAST(N'2011-08-19' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (17, 97, 38, CAST(N'2015-02-02' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (18, 100, 94, CAST(N'2011-07-01' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (19, 99, 40, CAST(N'2013-12-23' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (20, 62, 7, CAST(N'2017-11-11' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (21, 76, 35, CAST(N'2014-04-15' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (22, 76, 37, CAST(N'2018-06-22' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (23, 91, 57, CAST(N'2013-07-11' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (24, 69, 18, CAST(N'2016-08-13' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (25, 99, 21, CAST(N'2014-07-28' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (26, 66, 62, CAST(N'2010-04-15' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (27, 66, 42, CAST(N'2017-10-12' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (28, 90, 88, CAST(N'2012-09-02' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (29, 69, 91, CAST(N'2015-08-08' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (30, 101, 5, CAST(N'2012-05-25' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (32, 68, 29, CAST(N'2016-05-18' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (33, 102, 89, CAST(N'2014-07-11' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (34, 97, 63, CAST(N'2016-08-18' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (35, 56, 5, CAST(N'2019-07-25' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (36, 92, 53, CAST(N'2019-03-17' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (37, 72, 47, CAST(N'2014-08-06' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (38, 79, 5, CAST(N'2011-09-12' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (39, 66, 19, CAST(N'2011-08-28' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (40, 93, 63, CAST(N'2015-12-25' AS Date), 4)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (41, 53, 18, CAST(N'2016-02-25' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (42, 60, 11, CAST(N'2017-06-07' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (43, 90, 96, CAST(N'2016-11-27' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (44, 70, 7, CAST(N'2012-03-12' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (45, 59, 59, CAST(N'2018-06-13' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (46, 83, 30, CAST(N'2017-11-05' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (47, 90, 16, CAST(N'2016-02-26' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (48, 81, 90, CAST(N'2010-06-20' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (49, 80, 7, CAST(N'2015-06-23' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (50, 66, 33, CAST(N'2013-01-24' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (51, 65, 9, CAST(N'2015-02-28' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (52, 94, 18, CAST(N'2019-07-05' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (53, 92, 92, CAST(N'2014-03-06' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (54, 83, 94, CAST(N'2017-05-01' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (55, 78, 51, CAST(N'2015-01-17' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (56, 67, 82, CAST(N'2018-04-14' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (57, 70, 94, CAST(N'2014-12-12' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (58, 69, 40, CAST(N'2015-03-28' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (59, 93, 13, CAST(N'2017-11-24' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (60, 98, 11, CAST(N'2019-06-27' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (61, 81, 87, CAST(N'2014-06-04' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (62, 95, 57, CAST(N'2019-03-18' AS Date), 11)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (63, 94, 13, CAST(N'2015-09-12' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (64, 99, 59, CAST(N'2012-01-02' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (65, 76, 9, CAST(N'2011-02-01' AS Date), 12)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (66, 85, 24, CAST(N'2016-10-07' AS Date), 17)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (67, 56, 91, CAST(N'2017-06-07' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (68, 57, 47, CAST(N'2016-02-26' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (69, 54, 47, CAST(N'2013-11-09' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (70, 92, 9, CAST(N'2015-07-01' AS Date), 14)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (71, 84, 58, CAST(N'2015-08-27' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (72, 75, 59, CAST(N'2013-08-27' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (73, 71, 61, CAST(N'2013-05-10' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (74, 76, 53, CAST(N'2013-12-01' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (76, 54, 25, CAST(N'2019-05-24' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (77, 98, 47, CAST(N'2017-04-02' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (78, 55, 29, CAST(N'2013-04-08' AS Date), 10)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (79, 102, 51, CAST(N'2019-08-16' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (80, 98, 80, CAST(N'2011-12-26' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (81, 73, 25, CAST(N'2016-07-19' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (82, 96, 19, CAST(N'2014-03-17' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (83, 68, 12, CAST(N'2011-06-14' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (84, 81, 76, CAST(N'2017-05-20' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (85, 53, 53, CAST(N'2010-04-13' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (86, 53, 12, CAST(N'2019-10-15' AS Date), 9)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (87, 95, 48, CAST(N'2019-10-08' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (88, 73, 33, CAST(N'2018-04-08' AS Date), 8)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (89, 86, 30, CAST(N'2012-06-14' AS Date), 2)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (90, 80, 62, CAST(N'2012-04-23' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (91, 79, 61, CAST(N'2015-08-17' AS Date), 6)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (92, 81, 51, CAST(N'2016-09-14' AS Date), 7)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (93, 56, 6, CAST(N'2012-03-23' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (94, 90, 55, CAST(N'2010-11-17' AS Date), 5)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (95, 92, 37, CAST(N'2016-11-17' AS Date), 13)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (96, 96, 24, CAST(N'2010-05-03' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (97, 64, 15, CAST(N'2019-03-06' AS Date), 1)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (98, 76, 16, CAST(N'2017-10-14' AS Date), 20)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (99, 102, 80, CAST(N'2017-02-08' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (100, 65, 25, CAST(N'2017-08-02' AS Date), 3)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (101, 60, 82, CAST(N'2017-03-09' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (102, 91, 33, CAST(N'2017-11-13' AS Date), 18)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (103, 91, 30, CAST(N'2015-12-02' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (104, 61, 27, CAST(N'2011-06-14' AS Date), 19)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (105, 53, 63, CAST(N'2014-08-14' AS Date), 16)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (106, 56, 51, CAST(N'2022-10-07' AS Date), 1)
GO
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (107, 54, 80, CAST(N'2022-09-30' AS Date), 15)
INSERT [dbo].[ProductSale] ([ID], [ProductID], [AgentID], [SaleDate], [ProductCount]) VALUES (109, 62, 47, CAST(N'2022-10-26' AS Date), 15)
SET IDENTITY_INSERT [dbo].[ProductSale] OFF
GO
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (1, N' Для маленьких деток', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (2, N' Для больших деток', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (3, N' Взрослый', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (4, N' Цифровой', NULL)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (5, N' Упругий', NULL)
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([AgentTypeID])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[AgentPriorityHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgentPriorityHistory_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[AgentPriorityHistory] CHECK CONSTRAINT [FK_AgentPriorityHistory_Agent]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCountHistory_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [FK_MaterialCountHistory_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductCostHistory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCostHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductCostHistory] CHECK CONSTRAINT [FK_ProductCostHistory_Product]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Agent]
GO
