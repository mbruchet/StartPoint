use DemoDb
go
/****** Object:  Table [dbo].[Accounting_Account]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_Account](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](max) NOT NULL,
	[IsContactAccount] [bit] NOT NULL,
	[IsProductAccount] [bit] NOT NULL,
	[IsVTAAccount] [bit] NOT NULL,
 CONSTRAINT [PK__Accounti__3214EC070F975522] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
 CONSTRAINT [UQ__Accounti__7E532BC61273C1CD] UNIQUE NONCLUSTERED 
(
	[Numero] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_Book]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_Book](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_BookAccount]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_BookAccount](
	[Id] [uniqueidentifier] NOT NULL,
	[BookId] [uniqueidentifier] NOT NULL,
	[AccountID] [uniqueidentifier] NOT NULL,
	[Section] [nvarchar](128) NOT NULL,
	[Line] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_Entry]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_Entry](
	[Id] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[GuideId] [uniqueidentifier] NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[AttachedFile] [nvarchar](500) NULL,
	[EventType] [nvarchar](500) NULL,
	[ProductType] [nvarchar](500) NULL,
	[ContactCategory] [nvarchar](500) NULL,
	[IsValid] [bit] NOT NULL,
	[ValidateDate] [datetime] NULL,
	[ValidateBy] [nvarchar](128) NULL,
 CONSTRAINT [PK__Accounti__3214EC0762208ABB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_EntryGuide]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_EntryGuide](
	[Id] [uniqueidentifier] NOT NULL,
	[BookId] [uniqueidentifier] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[IsRequiredFile] [bit] NOT NULL,
	[EntryCode] [nvarchar](50) NOT NULL,
	[EventType] [nvarchar](500) NULL,
	[ProductType] [nvarchar](500) NULL,
	[ContactCategory] [nvarchar](500) NULL,
 CONSTRAINT [PK__Accounti__3214EC0735BC7CAF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_EntryGuideLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_EntryGuideLine](
	[Id] [uniqueidentifier] NOT NULL,
	[Guideid] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NULL,
	[AmmountType] [nvarchar](128) NOT NULL,
	[AmmountDirection] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Accounting_EntryLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting_EntryLine](
	[Id] [uniqueidentifier] NOT NULL,
	[EntryId] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NULL,
	[Amount] [money] NOT NULL,
	[AmountDirection] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Civility]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Civility](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Civility] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[CodeBarGenerated]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeBarGenerated](
	[Id] [uniqueidentifier] NOT NULL,
	[Familly] [nvarchar](128) NOT NULL,
	[SubFamilly] [nvarchar](256) NOT NULL,
	[GenerateDate] [datetime] NOT NULL,
	[GenerateCode] [nvarchar](20) NULL,
	[objectId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[CodeBarRule]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeBarRule](
	[Id] [uniqueidentifier] NOT NULL,
	[Familly] [nvarchar](128) NOT NULL,
	[SubFamilly] [nvarchar](256) NOT NULL,
	[Pattern] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[ContactActivity]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactActivity](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[ContactCategory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[ContactStatus]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactStatus](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ContactStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Country]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Continent] [nvarchar](255) NULL,
	[IsDefault] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Currency]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[Ratio] [decimal](18, 0) NULL,
	[DecimalDigit] [int] NULL,
	[DecimalSeparator] [char](1) NULL,
	[CurrencySymbol] [nvarchar](500) NOT NULL,
	[RoundType] [int] NULL,
	[DecimalConversion] [nvarchar](500) NULL,
	[AwayFromZero] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Label] [nvarchar](500) NULL,
	[CivilityId] [uniqueidentifier] NULL,
	[FirstName] [nvarchar](128) NULL,
	[LastName] [nvarchar](255) NULL,
	[FullName] [nvarchar](500) NULL,
	[CompanyName] [nvarchar](500) NULL,
	[ContactStatutId] [uniqueidentifier] NULL,
	[ContactActivityId] [uniqueidentifier] NULL,
	[ContactFunction] [nvarchar](500) NULL,
	[ContactSizeCompany] [int] NULL,
	[MobilePhone] [nvarchar](26) NULL,
	[HomePhone] [nvarchar](26) NULL,
	[WorkingPhone] [nvarchar](26) NULL,
	[Email] [nvarchar](128) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Comment] [nvarchar](max) NULL,
	[CreditAmountMax] [money] NULL,
	[FaxNumber] [nvarchar](26) NULL,
	[PaymentMethodPreferedId] [uniqueidentifier] NULL,
	[RiskEvaluation] [int] NULL,
	[InvoiceStandardDiscount] [int] NULL,
	[LanguagePrefered] [nvarchar](26) NULL,
	[Siret] [nvarchar](128) NULL,
	[NAF] [nvarchar](128) NULL,
	[EUVAT] [nvarchar](128) NULL,
	[ContactCategoryId] [uniqueidentifier] NULL,
	[CustomerAccountNumber] [nvarchar](128) NULL,
	[SaleAccountEntryGuideId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[IsWelcomeSent] [bit] NOT NULL,
	[WelcomeSentDate] [date] NULL,
	[VTAAccountNumber] [nvarchar](128) NULL,
 CONSTRAINT [PK__Customer__3214EC079ECB2DB6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[CustomerCard]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCard](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StartUsage] [date] NOT NULL,
	[EndUsage] [date] NULL,
	[AmountTotal] [money] NULL,
	[AmountCredit] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[CustomerCardPayment]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCardPayment](
	[Id] [uniqueidentifier] NOT NULL,
	[CardId] [uniqueidentifier] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentMessage] [nvarchar](max) NULL,
	[PaymentAmount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[CustomerTask]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTask](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskTypeId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[FullDay] [bit] NOT NULL,
	[Comment] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Expense]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expense](
	[Id] [uniqueidentifier] NOT NULL,
	[ExpenseDate] [datetime] NOT NULL,
	[ExpenseCategoryId] [uniqueidentifier] NOT NULL,
	[ExpenseNumber] [nvarchar](128) NULL,
	[ExpenseFile] [image] NULL,
	[IsValidated] [bit] NOT NULL,
	[ExpenseAmount] [money] NULL,
	[CreateBy] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[ExpenseCategory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[MaximumAmount] [money] NULL,
	[MaximumAmountPerMonth] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[HolidayTypeId] [uniqueidentifier] NOT NULL,
	[DayDate] [date] NOT NULL,
	[RepeatitionType] [int] NOT NULL,
	[WeekDay] [int] NULL,
	[DayOfMonth] [int] NULL,
	[Duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[HolidayType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HolidayType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NULL,
	[Label] [nvarchar](500) NULL,
	[FullDay] [bit] NOT NULL,
	[IsPaied] [bit] NOT NULL,
	[Icon] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[ImportPrice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportPrice](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[NewPrice] [money] NULL,
	[OldPrice] [money] NULL,
	[NewPurchasePrice] [money] NULL,
	[OldPurchasePrice] [money] NULL,
	[ImportDate] [datetime] NULL,
	[ImportedBy] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[PurchasePrice] [money] NOT NULL,
	[PurchaseUnityId] [uniqueidentifier] NOT NULL,
	[ProductUnityId] [uniqueidentifier] NOT NULL,
	[PurchaseQuantity] [int] NULL,
	[ProductQuantity] [int] NULL,
	[PurchaseAcountNumber] [nvarchar](128) NOT NULL,
	[VTA] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Ingredient_Purchase]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient_Purchase](
	[Id] [uniqueidentifier] NOT NULL,
	[PurchaseDate] [datetime] NOT NULL,
	[IngredientId] [uniqueidentifier] NULL,
	[PurchaseQuantity] [int] NOT NULL,
	[PurchaseTTC] [money] NOT NULL,
	[PurchaseTVA] [money] NOT NULL,
	[PurchaseHT] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[IngredientInventory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientInventory](
	[Id] [uniqueidentifier] NOT NULL,
	[IngredientId] [uniqueidentifier] NOT NULL,
	[InventoryDate] [date] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[ValidDate] [datetime] NULL,
	[UnityId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__Ingredie__3214EC07C317A78C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[IngredientMouvementStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientMouvementStock](
	[Id] [uniqueidentifier] NOT NULL,
	[IngredientId] [uniqueidentifier] NOT NULL,
	[MouvementDate] [datetime] NOT NULL,
	[MouvementQuantityPurchase] [int] NULL,
	[MouvementQuantityItem] [int] NOT NULL,
	[MouvementDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[InitializeStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InitializeStock](
	[Id] [uniqueidentifier] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[InitialisationDate] [datetime] NOT NULL,
	[InitializeBy] [nvarchar](255) NOT NULL,
	[OldStockQuantity] [int] NOT NULL,
	[NewStockQuantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Id] [uniqueidentifier] NOT NULL,
	[InventoryRuleId] [uniqueidentifier] NOT NULL,
	[InventoryDate] [datetime] NOT NULL,
	[CreateBy] [nvarchar](128) NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[ValidateDate] [datetime] NULL,
	[ValidateBy] [nvarchar](128) NULL,
	[ReportContentFile] [image] NULL,
 CONSTRAINT [PK__Inventor__3214EC07C781FE5A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Inventory_Line]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Line](
	[Id] [uniqueidentifier] NOT NULL,
	[InventoryId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Quantity_ComputedStock] [int] NOT NULL,
	[Quantity_RealStock] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[InventoryRule]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryRule](
	[Id] [uniqueidentifier] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[ProductFamillyId] [uniqueidentifier] NULL,
	[ProductSubFamillyId] [uniqueidentifier] NULL,
	[Comment] [nvarchar](max) NULL,
	[RepeatType] [int] NOT NULL,
	[MinStartTime] [time](7) NOT NULL,
	[MaxEndTime] [time](7) NOT NULL,
	[AlertBeforeTime] [int] NOT NULL,
	[AlertBeforeMessage] [nvarchar](max) NULL,
	[AlertBeforeMessageTo] [nvarchar](500) NULL,
	[AlertBeforeMessageSubject] [nvarchar](500) NULL,
	[AlertFinished] [int] NOT NULL,
	[AlertFinishedMessage] [nvarchar](max) NULL,
	[AlertFinishedMessageTo] [nvarchar](500) NULL,
	[AlertFinishedMessageSubject] [nvarchar](500) NULL,
	[AlertTimeOver] [int] NOT NULL,
	[AlertTimeOverMessage] [nvarchar](max) NULL,
	[AlertTimeOverMessageTo] [nvarchar](500) NULL,
	[AlertTimeOverMessageSubject] [nvarchar](500) NULL,
	[WeekDay] [int] NULL,
	[MonthDay] [int] NULL,
 CONSTRAINT [PK__Inventor__3214EC074AA5FADE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[InventoryRule_Error]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryRule_Error](
	[Id] [uniqueidentifier] NOT NULL,
	[InventoryRuleId] [uniqueidentifier] NULL,
	[CheckingDate] [datetime] NOT NULL,
	[ErrorReason] [nvarchar](50) NULL,
	[Error_Category] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Message]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [uniqueidentifier] NOT NULL,
	[MessageTo] [nvarchar](max) NOT NULL,
	[MessageFrom] [nvarchar](max) NOT NULL,
	[MessageCC] [nvarchar](max) NULL,
	[MessageSubject] [nvarchar](1000) NULL,
	[MessageContent] [nvarchar](max) NULL,
	[FileAttached] [image] NULL,
	[MessageDate] [datetime] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[ActionLink] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[MouvementStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MouvementStock](
	[Id] [uniqueidentifier] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[MouvementQuantity] [int] NOT NULL,
	[MouvementDescription] [nvarchar](max) NULL,
	[MouvementDate] [datetime] NOT NULL,
	[MouvementDirection] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Navigation_Card]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_Card](
	[Id] [uniqueidentifier] NOT NULL,
	[TimeDuration] [int] NOT NULL,
	[CardNumber] [nvarchar](25) NULL,
	[IsUsed] [bit] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Navigation_CardType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation_CardType](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[TimeDuration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[NoWorkingDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoWorkingDay](
	[DayId] [uniqueidentifier] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NULL,
	[Label] [nvarchar](500) NULL,
	[DateOfDay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DayId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[NoWorkingDayType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoWorkingDayType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](128) NOT NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[IsFixed] [bit] NOT NULL,
	[Formula] [nvarchar](500) NULL,
	[IsPaied] [bit] NOT NULL,
	[IsWorked] [bit] NOT NULL,
	[BonusRatio] [money] NOT NULL,
	[Icon] [image] NULL,
 CONSTRAINT [PK__NoWorkin__3214EC073EE83FD0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_BuildComponentOrder]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_BuildComponentOrder](
	[Id] [uniqueidentifier] NOT NULL,
	[ComponentId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderNumber] [nvarchar](128) NULL,
	[OrderDate] [date] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_BuildComponentOrderStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_BuildComponentOrderStep](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[Step] [int] NOT NULL,
	[ControlValue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_BuildOrder]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_BuildOrder](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderNumber] [nvarchar](128) NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_Component]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_Component](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[TotalBuildTime] [int] NOT NULL,
	[TotalQuantityProducted] [int] NOT NULL,
	[MarginRatio] [decimal](18, 3) NULL,
	[ComponentCode] [nvarchar](128) NULL,
	[StockageUnityId] [uniqueidentifier] NULL,
	[QuantityPerUnity] [int] NULL,
	[LimitUsageDay] [int] NOT NULL,
	[TotalCost] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ComponentInventory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ComponentInventory](
	[Id] [uniqueidentifier] NOT NULL,
	[ComponentId] [uniqueidentifier] NOT NULL,
	[InventoryDate] [date] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[ValidDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ComponentMouvementStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ComponentMouvementStock](
	[Id] [uniqueidentifier] NOT NULL,
	[ComponentId] [uniqueidentifier] NOT NULL,
	[MouvementDate] [datetime] NOT NULL,
	[MouvementQuantityItem] [int] NOT NULL,
	[MouvementDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ComponentStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ComponentStep](
	[Id] [uniqueidentifier] NOT NULL,
	[ComponentId] [uniqueidentifier] NOT NULL,
	[IngredientId] [uniqueidentifier] NULL,
	[Step] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Task] [nvarchar](max) NOT NULL,
	[Control] [nvarchar](max) NOT NULL,
	[PreviousstepId] [uniqueidentifier] NULL,
	[UseComponentId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_Product]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_Product](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[TotalBuildTime] [int] NOT NULL,
	[TotalQuantityProducted] [int] NOT NULL,
	[TotalCost] [money] NOT NULL,
	[MarginRatio] [decimal](18, 3) NULL,
	[AdvicePrice] [decimal](18, 3) NULL,
	[DeliveryMethodInfo] [nvarchar](max) NULL,
	[ProductCode] [nvarchar](255) NULL,
	[PackageUnityId] [uniqueidentifier] NULL,
	[PackageQuantityItem] [int] NOT NULL,
	[LimitUsageDay] [int] NOT NULL,
	[PresentationDetail] [nvarchar](max) NULL,
 CONSTRAINT [PK__PAO_Prod__3214EC07FD1F4CC9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ProductInventory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ProductInventory](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[InventoryDate] [date] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[ValidDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ProductMouvementStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ProductMouvementStock](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[MouvementDate] [datetime] NOT NULL,
	[MouvementQuantityItem] [int] NOT NULL,
	[MouvementDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAO_ProductStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAO_ProductStep](
	[Id] [uniqueidentifier] NOT NULL,
	[IngredientId] [uniqueidentifier] NULL,
	[ComponentId] [uniqueidentifier] NULL,
	[Step] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Task] [nvarchar](max) NOT NULL,
	[Control] [nvarchar](max) NULL,
	[PreviousstepId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__PAO_Prod__3214EC07C9A43186] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PAOTrackerQueue]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAOTrackerQueue](
	[Id] [uniqueidentifier] NOT NULL,
	[SalesPointId] [uniqueidentifier] NOT NULL,
	[FamillyId] [uniqueidentifier] NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[FinishDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[IsCredit] [bit] NOT NULL,
	[RepeatIntervalType] [int] NULL,
	[PaymentPartsTotal] [int] NULL,
 CONSTRAINT [PK__PaymentM__3214EC074A0B87ED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PaymentMethodInterval]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethodInterval](
	[Id] [uniqueidentifier] NOT NULL,
	[PaymentMethodId] [uniqueidentifier] NOT NULL,
	[PaymentPart] [int] NOT NULL,
	[IntervalDay] [int] NOT NULL,
	[IntervalRatio] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PayRollTax]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayRollTax](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[BaseFormula] [nvarchar](4000) NULL,
	[CompanyRatio] [decimal](18, 2) NULL,
	[WorkerRatio] [decimal](18, 2) NULL,
	[PayRollTaxAgencyId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PayRollTaxAgency]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayRollTaxAgency](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[CompanyName] [nvarchar](500) NULL,
	[CompanyInfo] [nvarchar](500) NULL,
	[ContactName] [nvarchar](500) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](500) NULL,
	[SalesPhone] [nvarchar](500) NULL,
	[SupportPhone] [nvarchar](500) NULL,
	[SalesEmail] [nvarchar](500) NULL,
	[SupportEmail] [nvarchar](500) NULL,
	[WebSite] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PlanningDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanningDay](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[PlanningDate] [date] NOT NULL,
	[IsNoWorkingDay] [bit] NOT NULL,
	[NoWorkingDayTypeId] [uniqueidentifier] NULL,
	[IsHoliday] [bit] NOT NULL,
	[HolidayTypeId] [uniqueidentifier] NULL,
	[IsPaied] [bit] NOT NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[BreakingDayStartTime] [time](7) NULL,
	[BreakingDayEndTime] [time](7) NULL,
	[WorkingTimePeriodTypeId] [uniqueidentifier] NULL,
	[IconDay] [image] NULL,
 CONSTRAINT [PK__Planning__3214EC07455A1126] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Category]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Icon] [image] NULL,
	[LargePhoto] [image] NULL,
 CONSTRAINT [PK__Product___3214EC07C6D87BEC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Conversion]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Conversion](
	[Id] [uniqueidentifier] NOT NULL,
	[UnitySourceId] [uniqueidentifier] NOT NULL,
	[UnityTargetId] [uniqueidentifier] NOT NULL,
	[Ratio] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Product]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Product](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[CodeBarre] [nvarchar](255) NULL,
	[ProductLabel] [nvarchar](255) NOT NULL,
	[TradeMark] [nvarchar](255) NULL,
	[Model] [nvarchar](255) NULL,
	[Serie] [nvarchar](255) NULL,
	[StateId] [uniqueidentifier] NOT NULL,
	[ProductTypeId] [uniqueidentifier] NOT NULL,
	[ProductFamillyId] [uniqueidentifier] NOT NULL,
	[ProductSubFamillyId] [uniqueidentifier] NOT NULL,
	[ShortDescription] [nvarchar](1000) NULL,
	[LargeDescription] [nvarchar](max) NULL,
	[MainPhoto] [image] NULL,
	[SaleAccountNumber] [nvarchar](128) NULL,
	[PurchaseAccountNumber] [nvarchar](128) NULL,
	[Price] [money] NOT NULL,
	[VTA] [decimal](18, 2) NOT NULL,
	[ComputePriceMethod] [int] NULL,
	[RatioSalePrice] [int] NULL,
	[StockMinimum] [int] NULL,
	[PurchasePrice] [money] NULL,
	[PurchaseCategoryId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF),
UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_ProductType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_ProductType](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[SaleAccountingEntryGuideId] [nvarchar](60) NULL,
	[PurchaseAccountEntryGuideId] [nvarchar](60) NULL,
	[PurchaseUnityId] [uniqueidentifier] NULL,
	[SaleUnityId] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
	[SaleAccountNumber] [nvarchar](128) NULL,
	[PurchaseAccountNumber] [nvarchar](128) NULL,
	[IsMake] [bit] NOT NULL,
	[TargetUrlOnMadeProcess] [nvarchar](500) NULL,
 CONSTRAINT [PK__Product___3214EC074364CB31] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Promotion]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Promotion](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[QuantityMinimum] [int] NULL,
	[QuantityOffer] [int] NULL,
	[DiscountOffer] [money] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Status]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Status](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Level] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_Unity]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Unity](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Product_WareHouse]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_WareHouse](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[PeriodTime] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Purchase_Invoice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Invoice](
	[Id] [uniqueidentifier] NOT NULL,
	[PurchaseDate] [datetime] NOT NULL,
	[UserIdentity] [nvarchar](128) NOT NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[PaymentMethodId] [uniqueidentifier] NULL,
	[QuotationNumber] [nvarchar](128) NULL,
	[InvoiceNumber] [nvarchar](128) NOT NULL,
	[invoiceDescription] [nvarchar](max) NULL,
	[TotalTTC] [money] NOT NULL,
	[TotalHT] [money] NOT NULL,
	[TotalVTA] [money] NOT NULL,
	[TotalDiscount] [money] NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[CreateBy] [nvarchar](128) NOT NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK__Purchase_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Purchase_InvoiceLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_InvoiceLine](
	[Id] [uniqueidentifier] NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [money] NOT NULL,
	[VTA] [money] NOT NULL,
	[HT] [money] NOT NULL,
	[TTC] [money] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[PurchaseCategory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[RoleRules]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleRules](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RuleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Rules]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules](
	[Id] [uniqueidentifier] NOT NULL,
	[RuleName] [nvarchar](128) NOT NULL,
	[RuleDescription] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Sale_Invoice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_Invoice](
	[Id] [uniqueidentifier] NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[UserIdentity] [nvarchar](128) NOT NULL,
	[SalesPointId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[PaymentMethodId] [uniqueidentifier] NULL,
	[CurrencySaleId] [uniqueidentifier] NULL,
	[PaymentAmountOnOrder] [money] NULL,
	[PaymentAmountCurrency] [money] NULL,
	[PaymentAmountTranslated] [money] NULL,
	[QuotationNumber] [nvarchar](128) NULL,
	[InvoiceNumber] [nvarchar](128) NOT NULL,
	[invoiceDescription] [nvarchar](max) NULL,
	[TotalTTC] [money] NOT NULL,
	[TotalHT] [money] NOT NULL,
	[TotalVTA] [money] NOT NULL,
	[TotalDiscount] [money] NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[CreateBy] [nvarchar](128) NOT NULL,
	[TableName] [nvarchar](128) NULL,
	[IsPrinted] [bit] NOT NULL,
	[Photo] [image] NULL,
	[CustomerName] [nvarchar](500) NULL,
	[ShipToAddress1] [nvarchar](max) NULL,
	[ShipToAddress2] [nvarchar](max) NULL,
	[ShipToZipCode] [nvarchar](128) NULL,
	[ShipToCity] [nvarchar](500) NULL,
	[ShipToCountry] [nvarchar](500) NULL,
	[ShipToRemarks] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](255) NULL,
	[ShipToMethod] [nvarchar](128) NULL,
 CONSTRAINT [PK__Sale_Inv__3214EC078EEF4A31] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Sale_InvoiceLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_InvoiceLine](
	[Id] [uniqueidentifier] NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [money] NOT NULL,
	[VTA] [money] NOT NULL,
	[HT] [money] NOT NULL,
	[TTC] [money] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[Deliveried] [bit] NOT NULL,
	[IsShipped] [bit] NOT NULL,
	[ShippedDate] [datetime] NULL,
	[IsDone] [bit] NOT NULL,
	[MakingDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Sale_InvoicePayment]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_InvoicePayment](
	[Id] [uniqueidentifier] NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[PaymentPart] [int] NOT NULL,
	[PaymentLimitDate] [datetime] NOT NULL,
	[IsPaied] [bit] NOT NULL,
	[PaymentPaiedDate] [datetime] NULL,
	[PaymentAmount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Sale_Promotion]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_Promotion](
	[Id] [uniqueidentifier] NOT NULL,
	[BaseType] [int] NULL,
	[SalesMinimum] [money] NULL,
	[DiscountOffer] [money] NULL,
	[VoucherOffer] [money] NULL,
	[VoucherDuration] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Sale_Voucher]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale_Voucher](
	[Id] [uniqueidentifier] NOT NULL,
	[CutomerId] [uniqueidentifier] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[StartUsage] [datetime] NOT NULL,
	[EndUsage] [datetime] NOT NULL,
	[IsSent] [bit] NOT NULL,
	[VoucherNumber] [nvarchar](128) NULL,
	[IsUsed] [bit] NOT NULL,
	[AmountType] [int] NOT NULL,
	[Amount] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[SalesPoint]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPoint](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DatabaseCnx] [nvarchar](128) NOT NULL,
	[LogoFile] [nvarchar](255) NULL,
	[SkinPath] [nvarchar](255) NULL,
	[CompanyName] [nvarchar](500) NULL,
	[CompanyInfo] [nvarchar](500) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](500) NULL,
	[SalesPhone] [nvarchar](500) NULL,
	[SupportPhone] [nvarchar](500) NULL,
	[SalesEmail] [nvarchar](500) NULL,
	[SupportEmail] [nvarchar](500) NULL,
	[WebSite] [nvarchar](128) NULL,
	[SupportTableChooser] [bit] NOT NULL,
	[currency] [nvarchar](128) NULL,
	[IsPrintDirect] [bit] NOT NULL,
	[PrintFormat] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__SalesPoi__3214EC070221DCF0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[SalesPointWarehouse]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPointWarehouse](
	[Id] [uniqueidentifier] NOT NULL,
	[WareHouseId] [uniqueidentifier] NOT NULL,
	[SalesPointId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Stock_Transfert]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Transfert](
	[Id] [uniqueidentifier] NOT NULL,
	[WareHouseSourceId] [uniqueidentifier] NOT NULL,
	[WareHouseTargetId] [uniqueidentifier] NOT NULL,
	[MouvementDate] [datetime] NOT NULL,
	[MouvementDescription] [nvarchar](500) NULL,
	[MouvementQuantity] [int] NULL,
	[IsValidated] [bit] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[CivilityId] [uniqueidentifier] NULL,
	[FirstName] [nvarchar](128) NULL,
	[LastName] [nvarchar](255) NULL,
	[FullName] [nvarchar](500) NULL,
	[CompanyName] [nvarchar](500) NULL,
	[ContactStatutId] [uniqueidentifier] NULL,
	[ContactActivityId] [uniqueidentifier] NULL,
	[ContactFunction] [nvarchar](500) NULL,
	[ContactSizeCompany] [int] NULL,
	[MobilePhone] [nvarchar](26) NULL,
	[HomePhone] [nvarchar](26) NULL,
	[WorkingPhone] [nvarchar](26) NULL,
	[Email] [nvarchar](128) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Comment] [nvarchar](max) NULL,
	[CreditAmountMax] [money] NULL,
	[FaxNumber] [nvarchar](26) NULL,
	[PaymentMethodPreferedId] [uniqueidentifier] NULL,
	[RiskEvaluation] [int] NULL,
	[InvoiceStandardDiscount] [int] NULL,
	[LanguagePrefered] [nvarchar](26) NULL,
	[Siret] [nvarchar](128) NULL,
	[NAF] [nvarchar](128) NULL,
	[EUVAT] [nvarchar](128) NULL,
	[ContactCategoryId] [uniqueidentifier] NULL,
	[SupplierAccountNumber] [nvarchar](128) NULL,
	[PurchaseAccountEntryGuideId] [uniqueidentifier] NULL,
	[VTAAccountNumber] [nvarchar](128) NULL,
 CONSTRAINT [PK__Supplier__3214EC079ECB2DB6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[TaskType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](512) NOT NULL,
	[Icon] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[UserRules]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRules](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RuleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Users]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Login] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[LockedDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[IsLogged] [bit] NOT NULL,
	[LogginOnMachine] [nvarchar](128) NULL,
	[LoginBadPasswordAttempted] [int] NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[PasswordQuestion] [nvarchar](500) NULL,
	[PasswordQuestionAnswer] [nvarchar](500) NULL,
	[Comment] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[LastPasswordChanged] [datetime] NULL,
	[LastLockOutDate] [datetime] NULL,
	[MainPhoto] [image] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WareHouse]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WareHouse](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](255) NULL,
	[ContactFullName] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[PeriodTime] [int] NULL,
 CONSTRAINT [PK__WareHous__3214EC07D6DE571B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Worker]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[FullName] [nvarchar](500) NULL,
	[WorkerNumber] [nvarchar](128) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[City] [nvarchar](500) NULL,
	[PhoneNumber] [nvarchar](30) NULL,
	[Email] [nvarchar](128) NULL,
	[SituationFamilly] [nvarchar](128) NULL,
	[PartCount] [int] NULL,
	[HireDate] [datetime] NULL,
	[CollectiveAgrement] [nvarchar](255) NULL,
	[Affectation] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[JobLevel] [nvarchar](255) NULL,
	[IdentityPensionFund] [nvarchar](255) NULL,
	[PensionFundAgency] [nvarchar](500) NULL,
	[IdentitySocialSecurity] [nvarchar](255) NULL,
	[SocialSecurityAgency] [nvarchar](500) NULL,
	[MainPhoto] [image] NULL,
	[TimeSheetIdentity] [nvarchar](128) NULL,
	[SalaryHour] [money] NULL,
	[LayoffDate] [datetime] NULL,
	[WorkerJob] [uniqueidentifier] NULL,
 CONSTRAINT [PK__Worker__3214EC079F70A0B9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkerBonus]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerBonus](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[BonusTypeName] [nvarchar](500) NULL,
	[WorkingPaymentPeriodId] [uniqueidentifier] NULL,
	[SqlFormula] [nvarchar](max) NULL,
	[Base] [money] NULL,
	[BonusRatio] [money] NULL,
	[BonusAmount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkerJob]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerJob](
	[Id] [uniqueidentifier] NOT NULL,
	[JobCode] [nvarchar](128) NOT NULL,
	[JobTitle] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkerPenalty]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerPenalty](
	[Id] [uniqueidentifier] NOT NULL,
	[PaymentPeriodId] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[PenaltyAmount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkerTask]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerTask](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskTypeId] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[FullDay] [bit] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingBonusType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingBonusType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[SqlBaseFormula] [nvarchar](max) NULL,
	[BonusRatio] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingBonusTypeWorker]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingBonusTypeWorker](
	[Id] [uniqueidentifier] NOT NULL,
	[BonusTypeId] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[WorkingPaymentPeriodId] [uniqueidentifier] NULL,
	[BonusRatioWorker] [money] NULL,
 CONSTRAINT [PK__WorkingB__3214EC07B2A66E13] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingPaymentPeriod]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingPaymentPeriod](
	[Id] [uniqueidentifier] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[StartPeriod] [datetime] NOT NULL,
	[EndPeriod] [datetime] NOT NULL,
	[TotalTimeRequired] [int] NOT NULL,
	[TotalPaied] [money] NULL,
	[TotalTimeWorked] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingPayPeriodWorker]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingPayPeriodWorker](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[WorkingPaymentPeriodId] [uniqueidentifier] NOT NULL,
	[TotalHourWorked] [int] NULL,
	[AmountHour] [money] NULL,
	[AmountHourWorked] [money] NULL,
	[TotalBonusWorker] [money] NULL,
	[TotalPenaltyWorker] [money] NULL,
	[TotalPayRollTaxCompany] [money] NULL,
	[TotalPayRollTaxWorker] [money] NULL,
	[TotalToPaied] [money] NULL,
	[IsValidated] [bit] NOT NULL,
	[ValidateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingPenaltyType]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingPenaltyType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](128) NOT NULL,
	[Label] [nvarchar](500) NOT NULL,
	[PenaltyRatio] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingPenaltyTypeWorker]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingPenaltyTypeWorker](
	[Id] [uniqueidentifier] NOT NULL,
	[PenaltyTypeId] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[WorkingPaymentPeriodId] [uniqueidentifier] NOT NULL,
	[PenaltyRatioWorker] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingTimePeriod]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingTimePeriod](
	[Id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[StartHour] [time](7) NOT NULL,
	[EndHour] [time](7) NOT NULL,
	[BreakingTimeStart] [time](7) NOT NULL,
	[BreakingTimeEnd] [time](7) NOT NULL,
	[Icon] [image] NULL,
	[JobTitleId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingTimeSheet]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingTimeSheet](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[TimeDay] [date] NOT NULL,
	[TimeEntry] [time](7) NOT NULL,
	[IsValidated] [bit] NOT NULL,
	[ValidateDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingTimeSheetFile]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingTimeSheetFile](
	[Id] [uniqueidentifier] NOT NULL,
	[TimeDay] [date] NOT NULL,
	[FileContent] [image] NOT NULL,
	[ImportedDate] [datetime] NOT NULL,
	[ImportedBy] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[WorkingWorkerRotation]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingWorkerRotation](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkerId] [uniqueidentifier] NOT NULL,
	[WorkingTimePeriodId] [uniqueidentifier] NOT NULL,
	[WeekNumberModulo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

/****** Object:  UserDefinedFunction [dbo].[FNC_WEEKDAY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_WEEKDAY](@inputDate date) RETURNS int
AS
BEGIN
	DECLARE @WeekDay int;
	SELECT @WeekDay = DATEPART(dw, @inputDate);
	SET @WeekDay = CASE WHEN @WeekDay < 7 THEN @WeekDay + 1 ELSE 1 END;
	RETURN @weekDay;
END

GO

GO
/****** Object:  View [dbo].[VW_SYNCH_CHECK_INVENTORY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SYNCH_CHECK_INVENTORY]
AS
--Cas 1 Inventaire qui va démarrer
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire à démarrer', MessageContent = 'L''Inventaire "' + Comment + ' va démarrer dans ' + Convert(Varchar, DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime)) + ' minute(s)' FROM InventoryRule 
Where RepeatType = 1 And WeekDay = dbo.FNC_WEEKDAY(Getdate()) And Not Exists(Select 1 FROM Inventory
	where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id) And
	DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) >= 0 And
	DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) <= AlertBeforeTime 
UNION ALL
--Notifier les inventaires mensuel qui doivent commencer dans $AlertBeforeTime - les inventaire en retard ne seront pas notifiés
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire à démarrer', MessageContent = 'L''Inventaire "' + Comment + ' va démarrer dans ' + Convert(Varchar, DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime)) + ' minute(s)' FROM InventoryRule 
	WHERE RepeatType = 2 And DatePart(Day, getdate()) = MonthDay And DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) >= 0 AND
		DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) <= AlertBeforeTime And Not Exists(Select 1 FROM Inventory
	where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id)
--Notifier les inventaire quotidiens qui doivent commencer dans $AlertBeforeTime - les inventaire en retard ne seront pas notifiés
UNION ALL
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire à démarrer', MessageContent = 'L''Inventaire "' + Comment + ' va démarrer dans ' + Convert(Varchar, DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime)) + ' minute(s)' FROM InventoryRule 
	WHERE RepeatType = 0 And DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) >= 0 AND
		DATEDIFF(Minute, Convert(Time, Getdate()), MinStartTime) <= AlertBeforeTime And Not Exists(Select 1 FROM Inventory
	where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id)
UNION ALL
--Cas 2 Les inventaires en retard
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire en retard', 'Inventaire "' + Comment + '" en Retard depuis ' + Convert(Varchar, DATEDIFF(Minute, MinStartTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	Where RepeatType = 1 And WeekDay = 7 And Not Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id) And
			Convert(Time, getdate()) > MinStartTime
UNION ALL
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire en retard', 'Inventaire "' + Comment + '" en Retard depuis ' + Convert(Varchar, DATEDIFF(Minute, MinStartTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	WHERE RepeatType = 2 And DatePart(Day, getdate()) = MonthDay And
		Convert(Time, getdate()) > MinStartTime And Not Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id)
UNION ALL
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertBeforeMessageTo, MessageSubject = 'Inventaire en retard', 'Inventaire "' + Comment + '" en Retard depuis ' + Convert(Varchar, DATEDIFF(Minute, MinStartTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	WHERE RepeatType = 0 And
		Convert(Time, getdate()) > MinStartTime And Not Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id)
UNION ALL
--cas 3 l'inventaire devant se terminer et non encore terminé
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertFinishedMessageTo, MessageSubject = 'Inventaire à terminer', 'L''Inventaire "' + Comment + '" devait se terminer depuis ' + Convert(Varchar, DATEDIFF(Minute, MaxEndTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	Where RepeatType = 1 And WeekDay = 7 And Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id) And
			Convert(Time, getdate()) > MaxEndTime 
UNION ALL
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertFinishedMessageTo, MessageSubject = 'Inventaire à terminer', 'L''Inventaire "' + Comment + '" devait se terminer depuis ' + Convert(Varchar, DATEDIFF(Minute, MaxEndTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	WHERE RepeatType = 2 And DatePart(Day, getdate()) = MonthDay And
		Convert(Time, getdate()) > MaxEndTime And Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id) 
UNION ALL
Select Id, Comment, MinStartTime, MaxEndTime, InventoryRule.AlertFinishedMessageTo, MessageSubject = 'Inventaire à terminer', 'L''Inventaire "' + Comment + '" devait se terminer depuis ' + Convert(Varchar, DATEDIFF(Minute, MaxEndTime, Convert(Time, Getdate()))) + ' minute(s)' MessageContent FROM InventoryRule 
	WHERE RepeatType = 0 And
		Convert(Time, getdate()) > MinStartTime And Exists(Select 1 FROM Inventory
		where DateDiff(Day, Inventory.InventoryDate, getdate()) = 0 And InventoryRuleId = InventoryRule.Id);
GO
/****** Object:  View [dbo].[VW_TRACK_SALE]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_TRACK_SALE]
AS
--Vérifie s'il y a des vente depuis 1H
select NewId() Id, 'manager' MessageTo, 'Surveillance Vente' MessageSubject, 'Aucune vente n''a été créé depuis 1H, veuillez vérifier les caisses !' MessageContent
	Where not exists(Select 1 FROM Sale_Invoice Where DateDiff(hour, SaleDate, getdate()) < 1)
UNION ALL
--Vérifie s'il y a des ventes traitées mais non terminée depuis plus de 1H
Select NewId() Id, 'manager' MessageTo, 'Surveillance vente traité non terminé' MessageSubject,
	'Attention la vente N° ' + InvoiceNumber + ' a été traitée mais non terminé, veuillez la valider ou vérifier la caisse' MessageContent
  FROM Sale_Invoice WHERE Id in
	(Select InvoiceId From Sale_InvoiceLine Where IsDone = 1)
AND DateDiff(hour, SaleDate, getdate()) > 1
UNION ALL
--Surveille la durée de traitement de la vente
Select NewId() Id, 'manager' MessageTo, 'Surveillance vente non encore démarré' MessageSubject,
	'Attention la vente N° ' + InvoiceNumber + ' a été commandée depuis plus de ' + Convert(Varchar, DATEDIFF(MINUTE, SaleDate, getdate())) + ' minutes et n''a pas encore été traitée' MessageContent
  FROM Sale_Invoice WHERE Id not in
	(Select InvoiceId From Sale_InvoiceLine Where IsDone = 1)
AND DATEDIFF(MINUTE, SaleDate, getdate()) > 20
UNION ALL
--Surveille le temps de traitement moyen pour éviter qu'il n'augmente
Select NewId() Id, 'manager' MessageTo, 'Temps de production' MessageSubject,
 'Temps de production en augmentation, veuillez vérifier le poste de production' MessageContent FROM
(
SELECT OldTime =
	(SELECT AVG(DATEDIFF(Minute, SaleDate, MakingDate))  FROM Sale_InvoiceLine line Inner join Sale_Invoice on line.InvoiceId = Sale_Invoice.Id
	Where IsDone = 1 AND DATEDIFF(Hour, MakingDate, getdate()) < 1),
NewTime = (SELECT AVG(DATEDIFF(Minute, SaleDate, MakingDate)) FROM Sale_InvoiceLine line Inner join Sale_Invoice on line.InvoiceId = Sale_Invoice.Id
Where IsDone = 1)
) t1
WHERE OldTime < NewTime


GO
/****** Object:  View [dbo].[VW_CLOSEDAY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_CLOSEDAY]
AS
--Vérifie les inventaires
--Vérifie s'il existe un inventaire créé aujourd'hui et non encore validé
Select NewId() Id, 'manager' MessageTo, 'Inventaire boisson non terminé' MessageSubject, MessageContent = 'Inventaire boisson non terminé' WHERE Exists(
Select * FROM Inventory Where DATEDIFF(Day, InventoryDate, GETDATE()) = 0 AND IsValidated = 0)
UNION ALL
--Vérifie s'il existe un inventaire des ingrédients créé aujourd'hui et non encore validé
Select NewId() Id, 'manager' MessageTo, 'Inventaire ingrédient non terminé' MessageSubject, MessageContent = 'Inventaire des ingrédients non terminé' WHERE Exists(
Select * FROM IngredientInventory Where DATEDIFF(Day, InventoryDate, GETDATE()) = 0 AND IsValid = 0
)
UNION ALL
--Vérifie s'il existe un inventaire de composants créé aujourd'hui et non encore validé
Select NewId() Id, 'manager' MessageTo, 'Inventaire composant non terminé' MessageSubject, MessageContent = 'Inventaire des composants non terminé' WHERE Exists(
Select * FROM PAO_ComponentInventory Where DATEDIFF(Day, InventoryDate, GETDATE()) = 0 AND IsValid = 0
)
UNION ALL
--Vérifie s'il existe un inventaire de produits fabriqués créé aujourd'hui et non encore validé
Select NewId() Id, 'manager' MessageTo, 'Inventaire composant non terminé' MessageSubject, MessageContent = 'Inventaire des composants non terminé' WHERE Exists(
Select * FROM PAO_ProductInventory Where DATEDIFF(Day, InventoryDate, GETDATE()) = 0 AND IsValid = 0
)
UNION ALL
Select Id, AlertBeforeMessageto MessageTo, MessageSubject, MessageContent FROM VW_SYNCH_CHECK_INVENTORY
UNION ALL
--Vérifie les ventes
Select Id, MessageTo, MessageSubject, Messagecontent FROM VW_TRACK_SALE Where MessageSubject <> 'Surveillance Vente'
GO
/****** Object:  View [dbo].[VW_TaskContact]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_TaskContact]
AS
Select Id, FullName, 'Customer' ContactType, Email FROM Customer UNION ALL
Select Id, FullName, 'Supplier' ContactType, Email FROM Supplier UNION ALL
Select Id, FullName, 'Worker' ContactType, Email FROM Worker
GO
/****** Object:  View [dbo].[VW_WorkerTask]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_WorkerTask]
AS
Select t.Id, TaskTypeId, taskType.Label, WorkerId, worker.FullName WorkerFullName, worker.Email,
 ContactId, VW_TaskContact.FullName,  t.DueDate, t.StartTime, t.EndTime, t.FullDay, t.Comment FROM WorkerTask t
Inner join TaskType on t.TaskTypeId = TaskType.ID
Inner Join Worker on t.WorkerId = Worker.Id
Inner Join VW_TaskContact on t.ContactId = VW_TaskContact.Id
GO
/****** Object:  View [dbo].[VW_PurchasePrice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PurchasePrice]
AS
Select ProductId, AVG(TTC / Quantity) AvgPrice, Max(TTC / Quantity) MaxPrice FROM 
	[dbo].[Purchase_InvoiceLine] 
GROUP BY ProductId




GO
/****** Object:  View [dbo].[VW_EXPORT_STOCK]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_EXPORT_STOCK]
AS
Select p.Id ProductId, p.Code ProductCode, p.ProductLabel, p.CodeBarre, p.Model, p.Serie, p.ShortDescription, p.LargeDescription, 
	p.ProductTypeId, t.Name ProductTypeName, t.PurchaseUnityId, u1.Name PurchaseUnityName, pc1.Id FamillyId, pc1.Name FamillyName, pc2.Id SubFamillyId, pc2.Name SubFamillyName, t.SaleUnityId, u2.Name SaleUnityName, t.Quantity,
	 WareHouse.Id WareHouseId, WareHouse.Name WareHouseName, PurchasePrice = ISNULL(v.AvgPrice, p.PurchasePrice), p.StockMinimum,
	TotalInput = ISNull((Select Sum(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'I' And MouvementDescription <> 'Inventaire stock'), 0),
	TotalOutput = IsNull((Select Sum(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'O' AND MouvementDescription <> 'Annulation du stock'), 0),
	TotalInStock = ISNull((Select Sum(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'I' And MouvementDescription <> 'Inventaire stock'), 0) - 
		IsNull((Select Sum(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'O'  AND MouvementDescription <> 'Annulation du stock'), 0),
	AvgInput = IsNull((Select Avg(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'I' And MouvementDescription <> 'Inventaire stock'), 0),
	AvgOutput = IsNull((Select Avg(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'O' AND MouvementDescription <> 'Annulation du stock'), 0),
	MaxInput = IsNull((Select Max(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'I' And MouvementDescription <> 'Inventaire stock'), 0),
	MaxOutput = IsNull((Select Max(MouvementQuantity) FROM MouvementStock Where ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDirection LIKE 'O' AND MouvementDescription <> 'Annulation du stock'), 0),
	AvgInputPerDay = IsNull((Select AVG(AvgPerDay) FROM 
		(Select AVG(MouvementQuantity) AvgPerDay From 
			MouvementStock Where MouvementDirection = 'I' AND ProductId = p.Id And WareHouseId = WareHouse.Id And MouvementDescription <> 'Inventaire stock'
			Group by Convert(Varchar, MouvementDate, 103), WareHouseId, ProductId) T), 0),
	AvgOutputPerDay = IsNull((Select AVG(AvgPerDay) FROM 
			(Select AVG(MouvementQuantity) AvgPerDay From 
				MouvementStock Where MouvementDirection = 'O' AND ProductId = p.Id And WareHouseId = WareHouse.Id  AND MouvementDescription <> 'Annulation du stock'
				Group by Convert(Varchar, MouvementDate, 103), WareHouseId, ProductId) T), 0),
	wareHouse.PeriodTime,
	AvgOutputPerPeriod = IsNull((Select AVG(AvgPerDay) FROM 
			(Select AVG(MouvementQuantity) AvgPerDay From 
				MouvementStock Where MouvementDirection = 'O' AND ProductId = p.Id And WareHouseId = WareHouse.Id  AND MouvementDescription <> 'Annulation du stock'
				Group by Convert(Varchar, MouvementDate, 103), WareHouseId, ProductId) T) * wareHouse.PeriodTime, 0)
	FROM Product_Product p
	INNER JOIN Product_ProductType t on p.ProductTypeId = t.Id
	INNER JOIN Product_category pc1 on p.ProductFamillyId = pc1.Id
	INNER JOIN Product_Category pc2 on p.ProductSubFamillyId = pc2.Id
	LEFT JOIN Product_Unity u1 on t.PurchaseUnityId = u1.Id
	LEFT JOIN Product_Unity u2 on t.SaleUnityId = u2.Id
	LEFT JOiN VW_PurchasePrice v  on p.Id = v.ProductId
	, WareHouse



GO
/****** Object:  View [dbo].[VW_MouvementStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[VW_MouvementStock]
AS
Select * FROM MouvementStock Where MouvementDescription <> 'Annulation du stock' And MouvementDescription <> 'Stock initial' And MouvementDescription <> 'Inventaire stock'
GO
/****** Object:  View [dbo].[VW_MouvementStockPerDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_MouvementStockPerDay]
AS
Select Convert(Varchar, MouvementDate, 103) MouvementDay, MouvementDirection, WareHouseId, ProductId, Sum(MouvementQuantity) TotalMouvement FROM VW_MouvementStock
GROUP BY Convert(Varchar, MouvementDate, 103), MouvementDirection, WareHouseId, ProductId
GO
/****** Object:  View [dbo].[VW_Stock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[VW_Stock]
AS
SELECT
		ProductId
      ,product.Code ProductCode
      ,product.ProductLabel
      ,product.CodeBarre
      ,product.Model
      ,product.Serie
      ,product.ShortDescription
      ,product.LargeDescription
      ,product.ProductTypeId
      ,ProductTypeName = pt.Name
      ,pt.PurchaseUnityId
      ,PurchaseUnityName = pu.Name
      ,FamillyId = familly.Id
      ,FamillyName = familly.Name
      ,SubFamillyId = subFamilly.Id
      ,SubFamillyName = subFamilly.Name
      ,SaleUnityId = su.Id
      ,SaleUnityName = su.Name
      ,Quantity = pt.Quantity
      ,WareHouseId = w.Id
      ,WareHouseName = w.Name
      ,product.PurchasePrice
	  ,pc.Name PurchaseCategoryName
      ,product.StockMinimum
      ,TotalInput = ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock WHERE MouvementDirection = 'I' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId), 0)
      ,TotalOutput = ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock WHERE MouvementDirection = 'O' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId), 0)
      ,TotalInStock = ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock WHERE MouvementDirection = 'I' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId), 0) 
	  - ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock WHERE MouvementDirection = 'O' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId), 0)
      ,AvgInput = ISNULL((Select AVG(MouvementQuantity) FROM VW_MouvementStock WHERE MouvementDirection = 'I' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId), 0)
      ,AvgOutput = ISNULL((Select AVG(MouvementQuantity) FROM VW_MouvementStock WHERE MouvementDirection = 'O' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId),0)
      ,MaxInput  = ISNULL((Select MAX(MouvementQuantity) FROM VW_MouvementStock WHERE MouvementDirection = 'I' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId),0)
      ,MaxOutput = ISNULL((Select AVG(MouvementQuantity) FROM VW_MouvementStock WHERE MouvementDirection = 'O' AND ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId),0)
      ,AvgInputPerDay = ISNULL((Select Avg(TotalMouvement) FROM VW_MouvementStockPerDay Where MouvementDirection = 'I' And ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId)  ,0)
      ,AvgOutputPerDay = ISNULL((Select Avg(TotalMouvement) FROM VW_MouvementStockPerDay Where MouvementDirection = 'O' And ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId)  ,0)
      ,AvgInputPerPeriod  =  ISNULL((Select Avg(TotalMouvement) FROM VW_MouvementStockPerDay Where MouvementDirection = 'I' And ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId)  ,0) * pw.PeriodTime
      ,AvgOutputPerPeriod = ISNULL((Select Avg(TotalMouvement) FROM VW_MouvementStockPerDay Where MouvementDirection = 'O' And ProductId = pw.ProductId AND WareHouseId = pw.WareHouseId)  ,0) * pw.PeriodTime
      ,pw.PeriodTime
	  ,product.VTA
FROM Product_WareHouse pw
INNER JOIN Product_Product product on product.Id = pw.ProductId
INNER JOIN WareHouse w on pw.WareHouseId = w.Id
INNER JOIN Product_ProductType pt ON product.ProductTypeId = pt.Id
LEFT JOIN Product_Category familly on product.ProductFamillyId = familly.Id
LEFT JOIN Product_Category subFamilly on product.ProductSubFamillyId = subFamilly.Id
LEFT JOIN Product_Unity pu on pu.Id = pt.PurchaseUnityId
LEFT JOIN Product_Unity su on su.Id = pt.SaleUnityId
LEFT JOIN PurchaseCategory pc on pc.Id = product.PurchaseCategoryId





GO
/****** Object:  View [dbo].[VW_ProductFreeForTransfert]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ProductFreeForTransfert]
AS
With CTERequest(ProductId, ProductLabel, TotalInStock, AvgOutputPerPeriod, StockMinimum, Need, WareHouseTargetId)
AS
(
	Select ProductId, ProductLabel, TotalInStock, AvgOutputPerPeriod, StockMinimum, 
	Need = Case When AvgOutputPerPeriod > StockMinimum THEN AvgOutputPerPeriod ELSE StockMinimum END - TotalInStock, WareHouseId
	FROM VW_Stock Where (TotalInStock < Case When AvgOutputPerPeriod > StockMinimum THEN AvgOutputPerPeriod ELSE StockMinimum END)
),
CTEFree(ProductId, Free, WareHouseSourceId)
AS
(
Select ProductId, Free = TotalInStock - Case When AvgOutputPerPeriod > StockMinimum Then AvgOutputPerPeriod ELSE StockMinimum END,
	WareHouseId
FROM VW_Stock WHERE (TotalInStock > Case when AvgOutputPerPeriod > StockMinimum THEN AvgOutputPerPeriod ELSE StockMinimum END)
)
Select CTERequest.*, wtarget.Name WareHouseTargetName, WareHouseSourceId, Free, wsource.Name WareHouseSourceName FROM CTERequest
INNER JOIN CTEFree on CTERequest.ProductId = CTEFree.ProductId
LEFT JOIN WareHouse wtarget on CTERequest.WareHouseTargetId = wtarget.Id
LEFT JOIN WareHouse wsource on CTEFree.WareHouseSourceId = wsource.Id
GO
/****** Object:  View [dbo].[VW_ListProductByStockSalesPoint]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[VW_ListProductByStockSalesPoint]
AS
Select p.Id ProductId, p.Code, p.ProductLabel, p.Price, 
	p.TradeMark, p.Model, p.Serie, p.ShortDescription, v.ProductTypeName,
	p.MainPhoto, p.[ProductFamillyId], p.[ProductSubFamillyId],
	v.FamillyName, v.SubFamillyName, v.PurchaseUnityName, v.SaleUnityName,
	v.WareHouseId, v.WareHouseName, InStock = v.TotalInput - v.TotalOutput,
	s.Id SalesPointId, s.Name SalesPointName,
	p.LargeDescription
FROM Product_Product p
INNER JOIN VW_STOCK v ON p.Id = v.ProductId
INNER JOIN [dbo].[SalesPointWarehouse] sw on v.WareHouseId = sw.WareHouseId
INNER JOIN [dbo].SalesPoint s on sw.SalesPointId = s.Id
WHERE v.TotalInStock > 0








GO
/****** Object:  View [dbo].[VW_Product]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Select name from sys.columns where object_id = object_id('Product_Product') order by name
CREATE VIEW [dbo].[VW_Product]
AS
select 
Product_Product.Id
,Code
,CodeBarre
,ComputePriceMethod
,LargeDescription
,MainPhoto
,Model
,Price
,ProductFamillyId
,ProductFamilly.Name famillyName
,ProductLabel
,ProductSubFamillyId
,ProductSubFamilly.Name subFamillyName
,ProductTypeId
,ProductType.Name ProductTypeName
,PurchaseAccountNumber = ISNULL(Product_Product.PurchaseAccountNumber, ProductType.PurchaseAccountNumber)
,PurchasePrice
,PurchaseCategoryId
,pc.Name
,RatioSalePrice
,SaleAccountNumber = ISNULL(Product_Product.SaleAccountNumber, ProductType.SaleAccountNumber)
,Serie
,ShortDescription
,StateId
,StockMinimum
,TradeMark
,VTA
,SaleAccountingEntryGuideId
,SaleAccountingEntryGuide.Name SaleAccountingEntryGuideName
,PurchaseAccountEntryGuideId
,PurchaseAccountEntryGuide.Name PurchaseAccountEntryGuideName
,PurchaseUnityId
,PurchaseUnity.Name PurchaseUnityName
,SaleUnityId
,SaleUnity.Name SaleUnityName
,ProductType.Quantity ConversionQuantity
FROM Product_Product
INNER JOIN Product_ProductType ProductType ON ProductType.Id = Product_Product.ProductTypeId
LEFT JOIN Product_Category ProductFamilly on ProductFamilly.Id = Product_Product.ProductFamillyId
LEFT JOIN Product_Category ProductSubFamilly on ProductSubFamilly.Id = Product_Product.ProductSubFamillyId
LEFT JOIN Accounting_EntryGuide SaleAccountingEntryGuide on SaleAccountingEntryGuide.Id = ProductType.SaleAccountingEntryGuideId
LEFT JOIN Accounting_EntryGuide PurchaseAccountEntryGuide ON PurchaseAccountEntryGuide.Id = ProductType.PurchaseAccountEntryGuideId
LEFT JOIN Product_Unity SaleUnity ON SaleUnity.Id = ProductType.SaleUnityId
LEFT JOIN Product_Unity PurchaseUnity ON PurchaseUnity.Id = ProductType.PurchaseUnityId
LEFT JOIN PurchaseCategory pc on pc.Id = Product_Product.PurchaseCategoryId

GO
/****** Object:  View [dbo].[VW_Purchase_InvoiceLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Purchase_InvoiceLine]
AS
Select 
	Purchase_InvoiceLine.Id, 
	InvoiceId, 
	LineNumber,
	ProductId, 
	ProductLabel, 
	[PurchaseUnityName],
	Purchase_InvoiceLine.Price,
	Quantity,
	Discount,
	Purchase_InvoiceLine.VTA,
	HT,
	TTC,
	WareHouseId,
	WareHouse.Name WareHouseName
 FROM Purchase_InvoiceLine
 INNER JOIN VW_Product on Purchase_InvoiceLine.ProductId = VW_Product.Id
 INNER JOIN WareHouse on WareHouse.Id = Purchase_InvoiceLine.WareHouseId

GO
/****** Object:  View [dbo].[VW_AccountingEntry]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_AccountingEntry]
AS
Select entry.*, 
	TotalD = (Select Sum(Amount) FROM Accounting_EntryLine Where EntryId = entry.Id And AmountDirection = 'D'),
	TotalC = (Select Sum(Amount) FROM Accounting_EntryLine Where EntryId = entry.Id And AmountDirection = 'C'),
	guide.Id EntryGuideId, guide.Name EntryGuideName, book.Id EntryBookId, book.Name EntryBookName FROM Accounting_Entry entry
LEFT JOIN Accounting_EntryGuide guide ON entry.GuideId = guide.Id
INNER JOIN Accounting_Book book	 on guide.BookId = book.Id
GO
/****** Object:  View [dbo].[VW_AccountingBook]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_AccountingBook]
AS
Select book.*, TotalD = ISNULL((Select Sum(TotalD) FROM VW_accountingEntry Where EntryBookId =  book.Id), 0),
	TotalC = ISNULL((Select Sum(TotalC) FROM VW_accountingEntry Where EntryBookId =  book.Id), 0),
	EntryCount = (Select Count(*) FROM VW_accountingEntry Where EntryBookId =  book.Id)
FROM Accounting_Book book

GO
/****** Object:  View [dbo].[VW_Accounting_BookAccount]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Accounting_BookAccount]
AS
Select ba.Id, ba.Section, ba.Line, a.Id AccountId, a.Numero, a.Label AccountName, a.IsContactAccount, a.IsProductAccount, b.Id BookId, b.Name BookName, 
b.Description BookDescription, 
TotalD = 
	ISNULL((Select sum(Amount) FROM Accounting_EntryLine line
	Inner join VW_AccountingEntry entry on line.EntryId = entry.Id
	WHERE line.AccountId = a.Id AND entry.EntryBookId = b.Id AND line.AmountDirection = 'D'
	GROUP BY line.AccountId, entry.EntryBookId, AmountDirection), 0),
TotalC = 
	ISNULL((Select sum(Amount) FROM Accounting_EntryLine line
	Inner join VW_AccountingEntry entry on line.EntryId = entry.Id
	WHERE line.AccountId = a.Id AND entry.EntryBookId = b.Id AND line.AmountDirection = 'C'
	GROUP BY line.AccountId, entry.EntryBookId, AmountDirection), 0)
FROM Accounting_BookAccount ba
INNER JOIN Accounting_Account a on ba.AccountID  = a.Id
INNER JOIN Accounting_Book b on ba.BookId = b.Id;
GO
/****** Object:  View [dbo].[VW_AVG_PAO_STOCKProduct]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_AVG_PAO_STOCKProduct]
AS
SELECT mouvement.[ProductId],
	product.Name ProductName
	,[MouvementDate]
	,Avg([MouvementQuantityItem]) AvgQuantity
	,(Select Sum([MouvementQuantityItem]) FROM [PAO_ProductMouvementStock] WHERE ProductId = mouvement.ProductId) TotalInStock
  FROM [PAO_ProductMouvementStock] mouvement
  Inner Join [dbo].[PAO_Product] product
  On product.ProductId = mouvement.ProductId
  Where [MouvementQuantityItem] < 1
  Group by product.Name
    ,mouvement.[ProductId]
    ,[MouvementDate]



GO
/****** Object:  View [dbo].[VW_PAO_STOCKProduct]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[VW_PAO_STOCKProduct]
AS
Select ProductId, ProductName,	Avg(AvgQuantity) AvgQuantity, Sum(TotalInStock) TotalInStock
	FROM [dbo].[VW_AVG_PAO_STOCKProduct]
	GROUP BY ProductId, ProductName


GO
/****** Object:  View [dbo].[VW_Product_Famillies_BySalesPoint]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Product_Famillies_BySalesPoint]
AS
SELECT cat.[Id]
      ,cat.[Name]
      ,cat.[Description]
      ,cat.[ParentId]
      ,cat.[Icon]
      ,cat.[LargePhoto]
	  ,v.SalesPointId
	  ,v.SalesPointName 
FROM [Product_Category] cat
INNER JOIN
(
	SELECT DISTINCT 
		  [ProductFamillyId]
		  ,[SalesPointId]
		  ,SalesPointName
	  FROM [VW_ListProductByStockSalesPoint]
) v on cat.Id = v.ProductFamillyId



GO
/****** Object:  View [dbo].[VW_SalePerDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[VW_SalePerDay]
AS
	Select SaleDay = Convert(DateTime, Convert(Varchar, SaleDate, 103)), SalePerDay = Count(*), TotalCA = Sum(TotalTTC), SalesCountPerDay = Count(*) FROM Sale_Invoice
		 Where IsValidated = 1
		GROUP BY Convert(Varchar, SaleDate, 103)

GO
/****** Object:  View [dbo].[VW_GeneralDashboardModel_Section1]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_GeneralDashboardModel_Section1] AS
WITH CAPerCustomer(Customer, SalesCountPerCustomer, TotalCA)
AS
(
	Select CustomerId, SalePerCustomer = Count(*), TotalCA = Sum(TotalTTC) FROM Sale_Invoice
		Where IsValidated = 1
	GROUP BY CustomerId
)
SELECT
ProductCount =  (Select count(*) FROM Product_Product),
SalesCount = (Select count(*) FROM Sale_Invoice Where DateDiff(Month, Sale_Invoice.SaleDate, GETDATE()) = 0 AND IsValidated = 1),
SalesAvgPerDay = ISNULL((select avg(SalesCountPerDay) FROM VW_SalePerDay Where DateDiff(Month, SaleDay, GETDATE()) = 0), 0),
SalesAvgPerDayPrevious = ISNULL((select avg(SalesCountPerDay) FROM VW_SalePerDay Where DateDiff(Month, SaleDay, GETDATE()) > 0), 0),
TotalCA = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where DateDiff(Month, Sale_Invoice.SaleDate, GETDATE()) = 0 AND IsValidated = 1), 0.00),
CAAvgPerDay = ISNULL((select sum(TotalCA) FROM VW_SalePerDay Where DateDiff(Month, SaleDay, GETDATE()) = 0), 0.00),
CAAvgPerDayPrevious = ISNULL((select avg(TotalCA) FROM VW_SalePerDay Where DateDiff(Month, SaleDay, GETDATE()) > 0), 0.00),
CustomerCount = (Select count(*) FROM Customer),
SaleAvgPerCustomer = (Select Avg(SalesCountPerCustomer) FROM CAPerCustomer),
CAAvgPerCustomer = (Select Avg(TotalCA) From CAPerCustomer),
PurchaseTotal = ISNULL((Select Sum(TotalTTC) FROM Purchase_Invoice Where DATEDIFF(Month, Purchasedate, getdate()) = 0 AND IsValidated = 1), 0.00),
ExpenseTotal = ISNULL((Select Sum(ExpenseAmount) FROM Expense Where IsValidated = 1 And DATEDIFF(Month, ExpenseDate, Getdate()) = 0), 0.00),
TotalWorker = ISNULL((Select count(*) FROM Worker Where HireDate is null or HireDate > getdate()), 0),
PurchaseIngredientTotal = ISNULL((Select Sum(PurchaseTtc) FROM Ingredient_Purchase Where DATEDIFF(Month, PurchaseDate, GETDATE()) = 0), 0)

GO
/****** Object:  View [dbo].[VW_SaleInvoiceLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_SaleInvoiceLine]
AS
Select 
Sale_invoiceline.Id,
InvoiceId, 
Sale_Invoice.InvoiceNumber,
Sale_Invoice.SaleDate,
LineNumber, 
ProductId,
Product_Product.ProductLabel,
Sale_invoiceline.Price,
Sale_invoiceline.Quantity,
Discount,
Sale_invoiceline.VTA,
HT,
TTC,
WareHouseId,
WareHouse.Name WareHouseName,
Product_ProductType.TargetUrlOnMadeProcess,
Sale_invoiceline.IsDone
FROM Sale_invoiceline
INNER JOIN Sale_Invoice on Sale_Invoice.Id = Sale_invoiceline.InvoiceId
INNER JOIN Product_Product on Product_Product.Id = Sale_InvoiceLine.ProductId
INNER JOIN Product_ProductType on Product_Product.ProductTypeId = Product_ProductType.Id
INNER JOIN WareHouse on WareHouse.Id = Sale_InvoiceLine.WareHouseId



GO
/****** Object:  View [dbo].[VW_PAOProductSituation]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAOProductSituation]
AS
WITH CTEStock(ProductId, PAOId, ProductCode, ProductLabel, StockMinimum, TotalInput, TotalOutput, TotalPart)
AS
(
	Select prod.Id, fiche.Id, prod.Code, prod.ProductLabel, prod.StockMinimum, ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock where MouvementDirection = 'I' And ProductId = prod.Id), 0), 
		ISNULL((Select Sum(MouvementQuantity) FROM MouvementStock where MouvementDirection = 'O' And ProductId = prod.Id), 0),
		fiche.TotalQuantityProducted
		FROM Product_Product prod
	Inner Join PAO_Product fiche on prod.Id = fiche.ProductId
),
cteTrackSale(ProductId, AvgOutputPerDay, MaxOutput, MinOutput)
AS
(
	Select ProductId, Avg(TotalQuantity), Max(TotalQuantity), Min(TotalQuantity) FROM(
	Select VW_SaleInvoiceLine.ProductId, Convert(Varchar, SaleDate, 103) SaleDay, Sum(Quantity)  TotalQuantity 
	FROM VW_SaleInvoiceLine
		INNER JOIN PAO_Product fiche on VW_SaleInvoiceLine.ProductId = fiche.ProductId
		GROUP BY Convert(Varchar, SaleDate, 103), VW_SaleInvoiceLine.ProductId) t1
	GROUP BY t1.ProductId
)
Select CTEStock.ProductId, CTEStock.PAOId, ProductCode, ProductLabel, StockMinimum, TotalInput, TotalOutput, 
	TotalInput - TotalOutput TotalInStock,
	Case When StockMinimum > (TotalInput - TotalOutput) THEN StockMinimum - TotalInput - TotalOutput ELSE 0 END TotalRequest,
	TotalPart,
	Case When StockMinimum > (TotalInput - TotalOutput) THEN Ceiling(Convert(Decimal, (StockMinimum - TotalInput - TotalOutput)) / Convert(Decimal, TotalPart)) ELSE 0 END TotalToBuild,
	ISNULL(CTETrackSale.AvgOutputPerDay, 0) AvgOutputPerDay, ISNULL(CTETrackSale.MaxOutput, 0) MaxOutput, ISNULL(CTETrackSale.MinOutput, 0) MinOutput
 FROM CTEStock
 LEFT JOIN CTETrackSale on CTEStock.ProductId = CTETrackSale.ProductId


GO
/****** Object:  View [dbo].[VW_InvoicePayment]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_InvoicePayment] AS
Select Sale_Invoice.InvoiceNumber, Sale_InvoicePayment.Id, Sale_InvoicePayment.InvoiceId, Sale_InvoicePayment.PaymentPart, 
Convert(Date, Sale_InvoicePayment.PaymentLimitDate) PaymentLimitDate, Sale_InvoicePayment.IsPaied, Sale_InvoicePayment.PaymentAmount, 
Customer.FullName CustomerName,  Convert(Date, Sale_Invoice.SaleDate) SaleDate, Sale_Invoice.TotalTTC FROM Sale_InvoicePayment
Inner join Sale_Invoice on Sale_InvoicePayment.InvoiceId = Sale_Invoice.Id
Inner join Customer on Sale_Invoice.CustomerId = Customer.Id
GO
/****** Object:  View [dbo].[VW_InvoicePaymentLate]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_InvoicePaymentLate]
AS
Select * FROM VW_InvoicePayment Where DateDiff(Day, PaymentLimitDate, GETDATE()) > 0 and IsPaied = 0
GO
/****** Object:  View [dbo].[VW_Accounting_Account]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Accounting_Account]
AS
Select Id, Numero, Label, IsContactAccount, IsProductAccount,
TotalD = ISNULL((Select Sum(Amount)  FROM Accounting_EntryLine WHERE AccountId = a.Id AND AmountDirection = 'D'), 0),
TotalC = ISNULL((Select Sum(Amount)  FROM Accounting_EntryLine WHERE AccountId = a.Id AND AmountDirection = 'C') , 0)
FROM Accounting_Account a

--Select * FROM Accounting_EntryLine

GO
/****** Object:  View [dbo].[VW_CHECK_INVENTORY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_CHECK_INVENTORY]
AS
select r.*, ire.CheckingDate, ire.ErrorReason FROM InventoryRule_Error ire
Inner join InventoryRule r on ire.InventoryRuleId = r.Id



GO
/****** Object:  View [dbo].[VW_CHECK_INVENTORY_ERROR]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_CHECK_INVENTORY_ERROR]
AS
select r.id, r.Comment, ire.CheckingDate, ire.ErrorReason FROM InventoryRule_Error ire
Inner join InventoryRule r on ire.InventoryRuleId = r.Id


GO
/****** Object:  View [dbo].[VW_CHECK_PLANNING]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_CHECK_PLANNING]
AS
WITH CTE(WorkerId, PlanningDate, Planning_StartTime, Planning_Endtime, Planning_BreakingDayStarTime, Planning_BreakingDayEndTime, 
	TimeSheet_StartTime, TimeSheet_EndTime, TimeSheet_BreakingDayStartTime, TimeSheet_BreakingDayEndTime)
	AS
(
Select WorkerId, PlanningDate, StartTime, EndTime, BreakingDayStartTime, BreakingDayEndTime,
	Control_StartTime = (Select Min(TimeEntry) From WorkingTimeSheet Where WorkingTimeSheet.WorkerId = PlanningDay.WorkerId And 
		TimeDay = PlanningDay.PlanningDate),
	Control_EndTime = (Select Max(TimeEntry) From WorkingTimeSheet Where WorkingTimeSheet.WorkerId = PlanningDay.WorkerId And 
		TimeDay = PlanningDay.PlanningDate),
	Control_BreakStartTime = (Select Max(TimeEntry) From WorkingTimeSheet Where WorkingTimeSheet.WorkerId = PlanningDay.WorkerId And 
		TimeDay = PlanningDay.PlanningDate And TimeEntry < BreakingDayStartTime),
	Control_BreakEndTime = (Select Min(TimeEntry) From WorkingTimeSheet Where WorkingTimeSheet.WorkerId = PlanningDay.WorkerId And 
		TimeDay = PlanningDay.PlanningDate And TimeEntry > BreakingDayEndTime)
FROM PlanningDay
)
Select WorkerId, Worker.FullName, PlanningDate, Planning_StartTime, Planning_Endtime, Planning_BreakingDayStarTime, Planning_BreakingDayEndTime, 
	TimeSheet_StartTime, TimeSheet_EndTime, TimeSheet_BreakingDayStartTime, TimeSheet_BreakingDayEndTime,
	---Heure d'arrivée
	Control_StartTimeOver = Case When (TimeSheet_StartTime > Planning_StartTime) THEN	
		DateDiff(Hour, Planning_StartTime, TimeSheet_StartTime) ELSE 0 END,
	Control_StartTimeHS = CASE WHEN (TimeSheet_StartTime < Planning_StartTime) THEN	
		DATEDIFF(Hour, Planning_StartTime, TimeSheet_StartTime) ELSE 0 END,
	--Heure de fin
	Control_EndTimeOver = Case When (TimeSheet_EndTime < Planning_EndTime) THEN	
		DateDiff(Hour, TimeSheet_EndTime, Planning_EndTime) ELSE 0 END,
	Control_EndTimeHS = CASE WHEN (TimeSheet_EndTime > Planning_EndTime) THEN	
		DATEDIFF(Hour, Planning_Endtime, TimeSheet_EndTime) ELSE 0 END,
	--Heure de début de la pause 
	Control_StartBreakingTimeOver = Case When (TimeSheet_BreakingDayStartTime < Planning_BreakingDayStarTime) THEN	
		DateDiff(Hour, TimeSheet_BreakingDayStartTime, Planning_BreakingDayStarTime) ELSE 0 END,
	Control_StartBreakingTimeHS = CASE WHEN (TimeSheet_BreakingDayStartTime > Planning_BreakingDayStarTime) THEN	
		DATEDIFF(Hour, Planning_BreakingDayStarTime, TimeSheet_BreakingDayStartTime) ELSE 0 END,
	--Heure de fin de la pause
	Control_EndBreakingTimeOver = Case When (TimeSheet_BreakingDayEndTime < Planning_BreakingDayEndTime) THEN	
		DateDiff(Hour, Planning_BreakingDayEndTime, TimeSheet_BreakingDayEndTime) ELSE 0 END,
	Control_EndBreakingTimeHS = CASE WHEN (TimeSheet_BreakingDayEndTime > Planning_BreakingDayEndTime) THEN	
		DATEDIFF(Hour, Planning_BreakingDayEndTime, TimeSheet_BreakingDayEndTime) ELSE 0 END
FROM CTE
INNER JOIN Worker ON CTE.WorkerId = Worker.Id;


GO
/****** Object:  View [dbo].[VW_Customer]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Customer]
AS
SELECT        Customer.Id, Customer.Code, Customer.Label, Customer.CivilityId, Customer.FirstName, Customer.LastName, Customer.FullName, Customer.CompanyName, 
                         Customer.ContactStatutId, Customer.ContactActivityId, Customer.ContactFunction, Customer.ContactSizeCompany, Customer.MobilePhone, Customer.HomePhone, 
                         Customer.WorkingPhone, Customer.Email, Customer.Address1, Customer.Address2, Customer.ZipCode, Customer.City, Customer.Country, Customer.Comment, 
                         Customer.CreditAmountMax, Customer.FaxNumber, Customer.PaymentMethodPreferedId, Customer.RiskEvaluation, Customer.InvoiceStandardDiscount, 
                         Customer.LanguagePrefered, Customer.Siret, Customer.NAF, Customer.EUVAT, Customer.ContactCategoryId, Customer.CustomerAccountNumber, 
                         Customer.SaleAccountEntryGuideId, Customer.UserId, Customer.IsWelcomeSent, Customer.WelcomeSentDate, Civility.Code AS CivilityCode, 
                         Civility.Label AS CivilityLabel, ContactCategory.Code AS CategoryCode, ContactCategory.Label AS CategoryLabel, ContactActivity.Code AS ActivityCode, 
                         ContactActivity.Label AS ActivityLabel, ContactStatus.Code AS StatusCode, ContactStatus.Label AS StatusLabel,
			TotalCA = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where CustomerId = Customer.Id), 0)
FROM Customer 
	LEFT JOIN Civility ON Customer.CivilityId = Civility.Id 
	LEFT JOIN ContactActivity ON Customer.ContactActivityId = ContactActivity.Id 
	LEFT JOIN ContactCategory ON Customer.ContactCategoryId = ContactCategory.Id 
	LEFT JOIN ContactStatus ON Customer.ContactStatutId = ContactStatus.Id

GO
/****** Object:  View [dbo].[VW_Dispatch_CA_SalesPointFamilly]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VW_Dispatch_CA_SalesPointFamilly]
AS
Select SalesPointFamilly = salesPoint.Name + ' - '  + familly.Name, TotalCA = sum(line.TTC) FROM Sale_InvoiceLine line
Inner join Product_Product product on line.ProductId = product.Id
Inner join Product_Category familly on product.ProductFamillyId = familly.Id
Inner Join Sale_Invoice invoice on line.InvoiceId = invoice.Id
Inner join SalesPoint salesPoint on salesPoint.id= invoice.SalesPointId
Where invoice.IsValidated = 1 and DateDiff(Month, invoice.SaleDate, getdate()) = 0
Group by salesPoint.Name + ' - ' + familly.Name
GO
/****** Object:  View [dbo].[VW_GeneralDashboardModel_CA]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[VW_GeneralDashboardModel_CA]
AS
Select
YesterdayCA = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where IsValidated = 1 And DATEDIFF(Day, SaleDate, DATEADD(Day, -1, GetDate())) = 0), 0.00),
TodayCa = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where IsValidated = 1 And DATEDIFF(Day, SaleDate, GetDate()) = 0), 0.00),
WeekCA = ISNULL((Select Sum(TotaltTC) FROM Sale_Invoice Where IsValidated = 1 AND DATEDIFF(Week, SaleDate, GetDAte()) = 0), 0.00),
MonthlyCA = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where IsValidated = 1 AND DATEDIFF(Month, SaleDAte, GetDate()) = 0), 0.00),
LastMonthlyCA = ISNULL((Select Sum(TotalTTC) FROM Sale_Invoice Where IsValidated = 1 AND DATEDIFF(Month, SaleDAte, DateAdd(Month, -1, GetDate())) = 0), 0.00)

GO
/****** Object:  View [dbo].[VW_HR_PAYROLL]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_HR_PAYROLL]
AS
Select Worker.Id, FullName, Period.PaymentDate, WorkingPayPeriodWorker.TotalHourWorked, PayRoll = TotalToPaied + TotalPayRollTaxCompany + TotalPayRollTaxWorker FROM Worker
INNER JOIN WorkingPayPeriodWorker on WorkingPayPeriodWorker.WorkerId = Worker.Id
INNER JOIN WorkingPaymentPeriod Period on Period.Id = WorkingPayPeriodWorker.WorkingPaymentPeriodId


GO
/****** Object:  View [dbo].[VW_ImportPrice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VW_ImportPrice]
AS
Select ImportPrice.Id, ProductId, Product.ProductLabel, NewPrice, OldPrice, NewPurchasePrice, OldPurchasePrice, ImportDate, ImportedBy
	FROM ImportPrice INNER JOIN Product_Product product ON Product.Id = ImportPrice.ProductId

GO
/****** Object:  View [dbo].[VW_Ingredient]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Ingredient]
AS
SELECT TOP 1000 Ingredient.[Id]
      ,[Code]
      ,[Label]
      ,[PurchasePrice]
      ,[PurchaseUnityId]
	  ,PurchaseUnityName = p1.Name
      ,[ProductUnityId]
	  ,ProductUnityName = p2.Name
      ,[PurchaseQuantity]
      ,[ProductQuantity]
      ,[PurchaseAcountNumber]
  FROM [Ingredient]
  LEFT JOIN Product_Unity p1 on p1.Id = [PurchaseUnityId]
  LEFT JOIN Product_Unity p2 on p2.Id = [ProductUnityId]

GO
/****** Object:  View [dbo].[VW_IngredientComponent]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VW_IngredientComponent]
AS
SELECT step.IngredientId, ingredient.Label IngredientName, Quantity, step.ComponentId, 
	Ingredient.ProductQuantity, QtyInStock =
	Isnull((Select sum([MouvementQuantityItem]) FROM IngredientMouvementStock Where IngredientId = step.IngredientId), 0),
	ComponentUnity.Name UnityName, ingredient.PurchasePrice
  FROM [PAO_ComponentStep] step
  INNER JOIN [dbo].[Ingredient] ingredient on step.IngredientId = ingredient.Id
  INNER JOIN [dbo].[Product_Unity] ComponentUnity on ingredient.PurchaseUnityId = ComponentUnity.Id
  Where IngredientId is not null;



GO
/****** Object:  View [dbo].[VW_IngredientProduct]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_IngredientProduct]
AS
SELECT step.IngredientId, ingredient.Label IngredientName, Quantity, step.ProductId, 
	Ingredient.ProductQuantity, QtyInStock =
	Isnull((Select sum([MouvementQuantityItem]) FROM IngredientMouvementStock Where IngredientId = step.IngredientId), 0),
	ProductUnity.Name UnityName, ingredient.PurchasePrice
  FROM [PAO_ProductStep] step
  INNER JOIN [dbo].[Ingredient] ingredient on step.IngredientId = ingredient.Id
  INNER JOIN [dbo].[Product_Unity] ProductUnity on ingredient.PurchaseUnityId = ProductUnity.Id
  Where IngredientId is not null;





GO
/****** Object:  View [dbo].[VW_InitialisationStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VW_InitialisationStock]
AS
Select  [InitializeStock].Id, WareHouse.Id WareHouseId, WareHouse.Name WareHouseName, Product_Product.Id ProductId, 
Product_Product.ProductLabel, [InitializeStock].InitialisationDate,
[InitializeStock].InitializeBy, [InitializeStock].OldStockQuantity, [InitializeStock].NewStockQuantity
FROM [dbo].[InitializeStock]
INNER JOIN WareHouse on [dbo].[InitializeStock].WareHouseId = wareHouse.Id
INNER JOIN Product_Product on [dbo].[InitializeStock].ProductId = Product_Product.Id


GO
/****** Object:  View [dbo].[VW_Inventory]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Inventory]
AS
Select Inventory.Id Id,  Inventory .InventoryDate, Inventory.CreateBy InventoryCreateBy, Inventory.IsValidated, Inventory.ValidateDate, Inventory.ValidateBy InventoryValidateBy,
 w.Id WareHouseId, w.Name WareHouseName, ir.Id InventoryRuleId, ir.Comment InventoryRuleText
  FROM Inventory 
  INNER JOIN InventoryRule ir on ir.Id =  Inventory.InventoryRuleId
  Inner Join WareHouse w on ir.WareHouseId = w.Id


GO
/****** Object:  View [dbo].[VW_InventoryLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_InventoryLine]
AS
Select Inventory_Line.Id LineId, Inventory.Id InventoryId, InventoryRule.WareHouseId,
	w.Name WareHouseName, LineNumber, Inventory_Line.ProductId, p.ProductLabel, 
	Quantity_ComputedStock, Quantity_RealStock
  FROM Inventory_Line
  INNER JOIN Inventory on Inventory.Id = Inventory_Line.InventoryId
  INNER JOIN InventoryRule on InventoryRule.Id =  Inventory.InventoryRuleId
  Inner Join Product_Product p on Inventory_Line.ProductId = p.Id
  Inner Join WareHouse w on InventoryRule.WareHouseId = w.Id

GO
/****** Object:  View [dbo].[VW_LIST_PAYMENT_LATE]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_LIST_PAYMENT_LATE]
AS
Select * FROM Sale_InvoicePayment WHERE PaymentLimitDate < GETDATE() And IsPaied = 0;


GO
/****** Object:  View [dbo].[VW_ListPAOProduct]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[VW_ListPAOProduct]
AS
	Select PAO_Product.Id, Name, ProductID, Product.ProductLabel, TotalBuildTime, TotalQuantityProducted, TotalCost,
	product.Price SalesPrice
	FROM PAO_Product INNER JOIN [dbo].[Product_Product] Product
		on PAO_Product.ProductId = Product.ID




GO
/****** Object:  View [dbo].[VW_NextCustomerPayment]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_NextCustomerPayment]
AS
Select PaymentLimitDate, PaymentPart, PaymentAmount, Sale_Invoice.InvoiceNumber, Sale_Invoice.Id InvoiceId, Customer.Id CustomerId, Customer.FullName CustomerFullName FROM Sale_InvoicePayment
Inner join Sale_Invoice on Sale_Invoice.Id = Sale_InvoicePayment.InvoiceId
Inner join Customer on Sale_Invoice.CustomerId = Customer.Id
WHERE Sale_InvoicePayment.IsPaied = 0
GO
/****** Object:  View [dbo].[VW_PAO_BuildComponentOrder]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[VW_PAO_BuildComponentOrder]
AS
Select corder.Id, Component.Name ComponentName, Component.ComponentCode, corder.Quantity, corder.OrderNumber, corder.OrderDate, LimitUsage = DateAdd(day, component.LimitUsageDay, corder.OrderDate),
 WareHouse.Name WareHouseName, TotalQuantity = Component.TotalQuantityProducted * corder.Quantity
FROM PAO_BuildComponentOrder corder
INNER JOIN PAO_Component Component On Component.Id = corder.ComponentId
INNER JOIN WareHouse on WareHouse.Id = corder.WareHouseId



GO
/****** Object:  View [dbo].[VW_PAO_BuildComponentOrderStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_PAO_BuildComponentOrderStep]
AS
Select step.Id, step.OrderId, step.Step, step.ControlValue, compStep.IngredientId,
Ingredient.Label IngredientLabel, Ingredient.PurchasePrice FROM [dbo].[PAO_BuildComponentOrderStep] step
JOIN PAO_BuildComponentOrder ord on step.OrderId = ord.Id
JOIN PAO_Component component on ord.ComponentId = component.Id
JOIN PAO_ComponentStep compStep on component.Id = compStep.ComponentId 
AND step.Step = compStep.Step
JOIN Ingredient ingredient on compStep.IngredientId = ingredient.Id


GO
/****** Object:  View [dbo].[VW_PAO_BuildOrderStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  View [dbo].[VW_PAO_BuildProductOrder]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

GO
/****** Object:  View [dbo].[VW_PAO_CA]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PAO_CA]
AS
WITH CTE(ProductId, TotalQuantity)
AS
(
	Select ProductId, Sum(MouvementQuantityItem) TotalQuantity FROM [dbo].[PAO_ProductMouvementStock]
	WHERE MouvementQuantityItem < 1
		Group by ProductId 
)
Select PAO_Product.Id, PAO_Product.Name, IsNull(TotalQuantity, 0) TotalQuantity, Price, TotalCA = IsNull(TotalQuantity, 0) * Price 
FROM PAO_Product
INNER JOIN Product_Product ON Product_Product.Id = PAO_Product.ProductId
Left Join CTE on PAO_Product.Id = CTE.ProductId


GO
/****** Object:  View [dbo].[VW_PAO_Component]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PAO_Component]
AS
SELECT [Id]
      ,[Name]
      ,[TotalBuildTime]
      ,[TotalQuantityProducted]
      ,[MarginRatio]
      ,[ComponentCode]
      ,[StockageUnityId]
      ,[QuantityPerUnity]
      ,[LimitUsageDay]
	  ,TotalCost
  FROM [dbo].[PAO_Component] component

GO
/****** Object:  View [dbo].[VW_PAO_ComponentStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAO_ComponentStep]
AS
Select Step.[Id]
      ,Step.[ComponentId]
      ,Step.[IngredientId]
	  ,Ingredient.Label IngredientLabel
      ,Step.[Step]
      ,Step.[Quantity]
	  ,unity.Name UnityName
      ,Step.[Task]
      ,Step.[Control]
      ,Step.[PreviousstepId]
	  , UseComponent.Id UseComponentId
	  , UseComponent.Name UseComponentName
	  , Cost = Case
		When IngredientId is not null THEN
			(Select PurchasePrice / ProductQuantity FROM [Ingredient] Where Id = IngredientId) * Quantity
		When UseComponentId is not null THEN 
			(Select TotalCost / TotalQuantityProducted FROM PAO_Component Where Id = UseComponentId) * Quantity
		ELSE 0
	END FROM PAO_ComponentStep step 
	Left Join Ingredient on step.IngredientId = Ingredient.Id
	Left Join Product_Unity unity on Ingredient.ProductUnityId= unity.Id
	Left Join PAO_Component UseComponent on UseComponent.Id = step.UseComponentId

GO
/****** Object:  View [dbo].[VW_PAO_ComponentStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAO_ComponentStock]
AS
Select PAO_Component.Id, PAO_Component.Name, QtyInStock = ISNULL(Sum(MouvementQuantityItem), 0) FROM 
[dbo].[PAO_Component] 
LEFT JOIN [dbo].[PAO_ComponentMouvementStock] on PAO_Component.Id = [dbo].[PAO_ComponentMouvementStock].ComponentId
Group by PAO_Component.Id, Name


GO
/****** Object:  View [dbo].[VW_PAO_IngredientStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * FROM Ingredient

CREATE VIEW [dbo].[VW_PAO_IngredientStock]
AS
Select Ingredient.Id, Code, Label, QtyInStock = ISNULL(Sum(MouvementQuantityItem), 0)
FROM Ingredient LEFT JOIN
	[dbo].[IngredientMouvementStock] ON Ingredient.Id = IngredientMouvementStock.IngredientId
GROUP BY Ingredient.Id, Code, Label

GO
/****** Object:  View [dbo].[VW_PAO_INVENTORYCOMPONENT]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAO_INVENTORYCOMPONENT]
AS
Select ComponentInventory.Id Id, PAO_Component.Id ComponentId, PAO_Component.Name, InventoryDate, 
QuantityInStock, IsValid, ValidDate FROM [dbo].[PAO_ComponentInventory] ComponentInventory
Inner join PAO_Component on ComponentInventory.ComponentId = PAO_Component.Id


GO
/****** Object:  View [dbo].[VW_PAO_INVENTORYINGREDIENT]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAO_INVENTORYINGREDIENT]
AS
Select IngredientInventory.Id Id, Ingredient.Id IngredientId, Ingredient.Label, InventoryDate, 
QuantityInStock, IsValid, ValidDate FROM IngredientInventory
Inner join Ingredient on IngredientInventory.IngredientId = Ingredient.Id



GO
/****** Object:  View [dbo].[VW_PAO_INVENTORYPRODUCT]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PAO_INVENTORYPRODUCT]
AS
Select ProductInventory.Id Id, PAO_Product.Id ProductId, PAO_Product.ProductId SalesProductId, PAO_Product.Name, InventoryDate, 
QuantityInStock, IsValid, ValidDate FROM [dbo].[PAO_ProductInventory] ProductInventory
Inner join PAO_Product on ProductInventory.ProductId = PAO_Product.Id



GO
/****** Object:  View [dbo].[vw_PAO_ProductStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_PAO_ProductStep]
AS
Select Step.[Id]
      ,Step.[ProductId]
      ,Step.[IngredientId]
	  ,Ingredient.Label IngredientLabel
      ,Step.[ComponentId]
      ,Step.[Step]
      ,Step.[Quantity]
	  ,unity.Name UnityName
      ,Step.[Task]
      ,Step.[Control]
      ,Step.[PreviousstepId],
	  PAO_Component.Name Component, 
	  Cost = Case
		When IngredientId is not null THEN
			(Select PurchasePrice / ProductQuantity FROM [dbo].[Ingredient] Where Id = IngredientId) * Quantity
		When ComponentId is not null THEN 
			(Select TotalCost / TotalQuantityProducted) * Quantity
		ELSE 0
	END FROM PAO_ProductStep step 
	Left Join Ingredient on step.IngredientId = Ingredient.Id
	Left Join Product_Unity unity on Ingredient.ProductUnityId= unity.Id
	Left Join PAO_Component ON step.ComponentId = PAO_Component.Id





GO
/****** Object:  View [dbo].[VW_PAO_RequirementProduct]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PAO_RequirementProduct]
AS
WITH CTEOutput(ProductId, MouvementDay, TotalPerDay)
 AS
 (
	Select ProductId, Convert(Varchar, MouvementDate, 103) MouvementDay, 
	TotalPerDay = Sum(MouvementQuantityItem) FROM PAO_ProductMouvementStock
	Where MouvementQuantityItem < 0
	Group by ProductId, Convert(Varchar, MouvementDate, 103)
)
,CTEInStock(ProductId, QtyInStock)
AS
(
	Select ProductId, Sum(MouvementQuantityItem) FROM PAO_ProductMouvementStock
	Group by ProductId
)
Select Id, Name, IsNull(CTEOutput.TotalPerDay, 0) AvgPerDay, IsNull(CTEInStock.QtyInStock, 0) QtyInStock,
QtyRequired = Case When IsNull(CTEInStock.QtyInStock, 0) < IsNull(CTEOutput.TotalPerDay, 0) THEN
	IsNull(CTEOutput.TotalPerDay, 0) - IsNull(CTEInStock.QtyInStock, 0)
	ELSE 
		Case When IsNull(CTEInStock.QtyInStock, 0) = 0 THEN
			PAO_Product.TotalQuantityProducted
		ELSE 0
		END
	 END, PAO_Product.PackageQuantityItem, PAO_Product.TotalQuantityProducted
 FROM PAO_Product
 LEFT JOIN CTEOutput on PAO_Product.Id = CTEOutput.ProductId
 LEFT JOIN CTEInStock on PAO_Product.Id = CTEInStock.ProductId



GO
/****** Object:  View [dbo].[VW_PAO_TrackComponentStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[VW_PAO_TrackComponentStock]
AS
	Select mouvStock.Id, mouvStock.ComponentId, Component.Name ComponentName, MouvementDate,
	 MouvementQuantityItem, MouvementDescription
	FROM [PAO_ComponentMouvementStock] mouvStock INNER JOIN PAO_Component Component on 
		Component.Id = mouvStock.ComponentId




GO
/****** Object:  View [dbo].[VW_PAO_TrackProductStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE View [dbo].[VW_PAO_TrackProductStock]
AS
	Select mouvStock.Id, mouvStock.ProductId, prod.Name productName, MouvementDate,
	 MouvementQuantityItem, MouvementDescription
	FROM [PAO_ProductMouvementStock] mouvStock INNER JOIN PAO_Product prod on 
		prod.Id = mouvStock.ProductId




GO
/****** Object:  View [dbo].[VW_ProductByCustomer]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_ProductByCustomer]
AS
Select familly.Name ProductFamillyName, subFamilly.Name ProductSubFamillyName, Product_Product.ProductLabel,  Customer.FullName CustomerFullName,
Quantity = sum(Sale_InvoiceLine.Quantity), TotalCA = SUM(Sale_InvoiceLine.TTC)
FROM Product_Product inner join Sale_InvoiceLine on Product_Product.Id = Sale_InvoiceLine.ProductId
inner join Sale_Invoice on Sale_InvoiceLine.InvoiceId = Sale_Invoice.Id
inner join Customer on Sale_Invoice.CustomerId = Customer.Id
left join Product_Category familly on Product_Product.ProductFamillyId = familly.Id
left join Product_Category subFamilly on Product_Product.ProductSubFamillyId = subFamilly.Id
Where Sale_Invoice.IsValidated = 1
GROUP BY familly.Name, subFamilly.Name, Product_Product.ProductLabel, Customer.FullName

GO
/****** Object:  View [dbo].[vW_ProductFamilly]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vW_ProductFamilly]
AS
	Select Id, Name FROM Product_Category
		Where ParentId is null;
GO
/****** Object:  View [dbo].[VW_ProductUnityIngredient]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VW_ProductUnityIngredient]
AS
Select * FROM Product_Unity 
	Where Id In
		(Select [ProductUnityId] FROM [dbo].[Ingredient])


GO
/****** Object:  View [dbo].[VW_PurchaseInvoice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_PurchaseInvoice]
AS
Select invoice.*, method.Label PaymentMethod, Supplier.FullName SupplierName, Supplier.Email SupplierEmail, Supplier.WorkingPhone SupplierPhone FROM Purchase_Invoice invoice
	Left join PaymentMethod method on invoice.PaymentMethodId = method.Id
	Left Join Supplier on invoice.SupplierId = Supplier.Id

GO
/****** Object:  View [dbo].[VW_PurchaseInvoiceLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_PurchaseInvoiceLine]
AS
Select invoice.Id InvoiceId, invoice.InvoiceNumber, invoice.PurchaseDate, Product.Id ProductId, Product.ProductLabel ProductLabel, Product.Code ProductCode,
	wareHouse.Id WareHouseId, wareHouse.Name WareHouseName, line.Discount, line.HT, line.Id lineId, line.LineNumber, line.Price, line.Quantity, line.TTC, line.VTA
 FROM Purchase_InvoiceLine line
INNER JOIN Purchase_Invoice invoice on line.InvoiceId = invoice.Id
INNER JOIN Product_Product product on line.ProductId = product.Id
INNER JOIN WareHouse wareHouse on line.WareHouseId = wareHouse.Id
GO
/****** Object:  View [dbo].[VW_SaleInvoice]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_SaleInvoice]
AS
Select Sale_Invoice.Id, SaleDate, UserIDentity, SalesPointId,
	SalesPoint.Name SalesPointName, CustomerID, Customer.FullName CustomerFullName, 
	PaymentMethodId, Case When PaymentMethodId is null THEN PaymentMethod ELSE PaymentMethod.Label END PaymentMethodLabel,
	CurrencySaleId, Currency.Label CurrencyLabel,
	PaymentAmountOnOrder, PaymentAmountCurrency, PAymentAmountTranslated, 
	quotationNumber, InvoiceNumber, InvoiceDescription, TotalTTC, TotalHT, TotalVTA, TotalDiscount, 
	IsValidated, CreateBy, TableName, IsPrinted, Photo, CustomerName, ShipToAddress1, ShipToAddress2, ShipToZipCode, ShipToCity, 
	ShipToCountry, ShipToRemarks, PaymentMethod, Customer.Email CustomerEmail, Case when  Customer.MobilePhone is null Then Customer.HomePhone ELSE Customer.MobilePhone END CustomerPhone
 FROM Sale_Invoice
 INNER JOIN SalesPoint on SalesPoint.Id = Sale_Invoice.SalesPointId
 LEFT JOIN Customer on Customer.Id = Sale_Invoice.CustomerId
 LEFT JOIN PaymentMethod on PaymentMethod.Id = Sale_Invoice.PaymentMethodId
 LEFT JOIN Currency ON Currency.Id = Sale_Invoice.CurrencySaleId




GO
/****** Object:  View [dbo].[VW_SaleLine]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[VW_SaleLine]
AS
	Select invoice.Id InvoiceId, 
		invoice.InvoiceNumber,
		invoice.SaleDate,
		invoice.TableName,
		SalesPoint.Id SalesPointId,
		SalesPoint.Name SalesPointName,
		line.Id lineId,
		line.LineNumber,
		line.Price,
		line.Quantity,
		line.TTC,
		line.HT,
		line.Discount,
		line.VTA,
		line.IsDone,
		WareHouse.Id WareHouseId,
		WareHouse.Name WareHouseName,
		Product.Id ProductId,
		Product.ProductLabel,
		Product.ProductFamillyId,
		Product.ProductSubFamillyId,
		Product.ProductTypeId,
		familly.Name ProductFamillyName,
		ISNULL(pao.PresentationDetail, product.ShortDescription) PresentationDetail,
		type.TargetUrlOnMadeProcess
	FROM Sale_InvoiceLine line 
	INNER JOIN Sale_Invoice invoice on line.InvoiceId = invoice.Id
	INNER JOIN SalesPoint on invoice.SalesPointId = SalesPoint.Id
	INNER JOIN WareHouse on line.WareHouseId = WareHouse.Id
	INNER JOIN Product_Product product on line.ProductId = product.Id
	INNER JOIN Product_ProductType type on product.ProductTypeId = type.Id
	LEFT JOIN Product_Category familly on product.ProductFamillyId = familly.Id
	LEFT JOIN PAO_Product pao on pao.ProductId = product.Id


GO
/****** Object:  View [dbo].[VW_SalesCAByCustomer]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[VW_SalesCAByCustomer]
AS
	Select Id, Code, Label, FullName, mobilePhone, Email, Country, City,
		TotalCA = ISNULL((Select Sum(TotalHT) FROM Sale_Invoice Where CustomerId = Id AND IsValidated = 1), 0)
	  From Customer



GO
/****** Object:  View [dbo].[VW_SalesPointWareHouse]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SalesPointWareHouse]
AS
Select w.*, s.Id SalesPointId, s.Name SalesPointName, s.SupportPhone, s.SupportEmail FROM WareHouse w
	INNER JOIN SalesPointWarehouse sw on w.Id = sw.WareHouseId
	INNER JOIN SalesPoint s on sw.SalesPointId = s.Id
--Select sw.* FROM SalesPointWarehouse sw
GO
/****** Object:  View [dbo].[VW_Shipping]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_Shipping]
AS
Select 
	Sale_InvoiceLine.Id LineId,
	Sale_InvoiceLine.LineNumber LineNumber,
	Sale_Invoice.Id InvoiceId,
	Sale_Invoice.InvoiceNumber,
	Sale_Invoice.tableName,
	SalesPoint.Id SalesPointId,
	SalesPoint.Name SalesPointName,
	Customer.FullName CustomerName,
	WareHouse.Id WareHouseId,
	WareHouse.Name WareHouseName,
	Familly.Id FamillyId,
	Familly.Name FamillyName,
	SubFamilly.Id SubFamillyId,
	SubFamilly.Name SubFamillyName,
	Product_Product.Code ProductCode,
	Product_Product.ProductLabel ProductLabel,
	Product_Product.CodeBarre ProductCodeBarre,
	Quantity,
	Sale_Invoice.ShipToAddress1,
	Sale_Invoice.ShipToAddress2,
	Sale_Invoice.ShipToZipCode,
	Sale_Invoice.ShipToCity,
	Sale_Invoice.ShipToCountry,
	Sale_Invoice.ShipToRemarks,
	Sale_InvoiceLine.IsShipped,
	Sale_InvoiceLine.ShippedDate
 FROM Sale_InvoiceLine
 Inner Join Sale_Invoice ON Sale_Invoice.Id = Sale_InvoiceLine.InvoiceId
 Inner Join SalesPoint ON SalesPoint.Id = Sale_Invoice.SalesPointId
 Inner Join WareHouse On  Sale_InvoiceLine.WareHouseId = WareHouse.Id
 Inner Join Product_Product On Product_Product.Id = Sale_InvoiceLine.ProductId
 Left Join Customer On Customer.Id = Sale_Invoice.CustomerId
 Left Join Product_Category Familly on Familly.Id = Product_Product.ProductFamillyId
 Left Join Product_Category SubFamilly on SubFamilly.Id = Product_Product.ProductSubFamillyId
WHERE Sale_Invoice.ShipToMethod is not null;


GO
/****** Object:  View [dbo].[VW_StockTransfert]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_StockTransfert]
AS
	Select 
		Stock_Transfert.Id, 
		WareHouseSourceId, source.Name WareHouseSourceName,
		WareHouseTargetId, target.Name WareHouseTargetName,
		MouvementDate,
		MouvementDescription,
		MouvementQuantity,
		IsValidated,
		ProductId,
		Product_Product.ProductLabel
	FROM Stock_Transfert
	INNER JOIN Product_Product on Product_Product.Id = Stock_Transfert.ProductId
	LEFT JOIN WareHouse Source on Source.Id = Stock_Transfert.WareHouseSourceId
	LEFT JOIN WareHouse target on Target.Id = Stock_Transfert.WareHouseTargetId



GO
/****** Object:  View [dbo].[VW_TrackIngredientStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[VW_TrackIngredientStock]
AS
	Select IngredientMouvementStock.Id, IngredientId, Ingredient.Label IngredientName, MouvementDate, MouvementQuantityPurchase, 
		MouvementQuantityItem, MouvementDescription
	FROM IngredientMouvementStock INNER JOIN Ingredient on Ingredient.Id = IngredientMouvementStock.IngredientId


GO
/****** Object:  View [dbo].[VW_WorkingPayPeriodWorker]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[VW_WorkingPayPeriodWorker] AS
Select WorkingPayPeriodWorker.*, Worker.FullName FROM WorkingPayPeriodWorker
Inner join Worker on WorkingPayPeriodWorker.WorkerId = Worker.Id
GO
/****** Object:  StoredProcedure [dbo].[PRC_AddTrackItem]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PRC_AddTrackItem]
(
	@lineId uniqueidentifier
)
AS
BEGIN
	declare @sale_Id uniqueidentifier;
	declare @famillyId uniqueidentifier;

	Select @sale_Id = InvoiceId From Sale_InvoiceLine Where Id = @lineId;

	Select @famillyId = Product_Category.Id From Product_Category
		inner join Product_Product on Product_Category.Id = Product_Product.ProductFamillyId
		Inner join Sale_InvoiceLine on Product_Product.Id = Sale_InvoiceLine.ProductId
		 WHERE Sale_InvoiceLine.Id = @lineId;

	Insert into PAOTrackerQueue(Id, SalesPointId, FamillyId, InvoiceId, FinishDate)
		Select NEWID(), invoice.SalesPointId, @famillyId, invoice.Id, getdate()
				FROM Sale_Invoice invoice where Id = @sale_Id
				AND Not Exists(Select 1 FROM Sale_InvoiceLine Where InvoiceId = @sale_Id
					And IsDone = 0);
END
GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_HOLIDAYDAYS]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PRC_COMPUTE_HOLIDAYDAYS]
(
	@StartDate date,
	@EndDate date
)
AS
BEGIN
	declare @HolidayDays table(WorkerId uniqueidentifier, HolidayTypeId uniqueidentifier, StartDate date, EndDate date);

	--congé non répétitif
	Insert @HolidayDays
		Select WorkerId, HolidayTypeId, StartDate=DayDate, EndDate = dateAdd(day, Duration - 1, DayDate)
			FROM Holiday
			INNER JOIN Worker on Holiday.WorkerId = Worker.ID
			Where RepeatitionType = 0 AND  LayoffDate is null or LayoffDate > @StartDate


	--congé hebdomadaire
	Declare @t table(DateDay date, WeekDay int, WeekNumber int, DayOfMonth int);
	Declare @curDate date;

	set @curDate = @startDate;

	While @curDate <= @endDate
	BEGIN
		Insert into @t VALUES(@curDate, dbo.FNC_WEEKDAY(@curDate), datePart(wk, @curDate), datePart(Day, @curDate));
		set @curDate = dateAdd(Day, 1, @curDate)
	END

	Insert @HolidayDays
		Select WorkerId, HolidayTypeId, t.DateDay StartDate, 
			dateAdd(day, Duration - 1, t.DateDay) EndDate FROM holiday
		INNER JOIN @t t ON Holiday.WeekDay = t.WeekDay
		WHERE 
			CASE 
				WHEN holiday.RepeatitionType = 1 THEN 1
				WHEN holiday.RepeatitionType = 2 THEN
					CASE WHEN t.WeekNumber % 2 = 0 THEN 1 ELSE 0 END
				ELSE 0
			END = 1
		 Order by WorkerId;

	--congé mensuel
	Insert @HolidayDays
		Select WorkerId, HolidayTypeId, t.DateDay StartDate, 
			dateAdd(day, Duration - 1, t.DateDay) EndDate FROM holiday
		INNER JOIN @t t ON Holiday.DayOfMonth = t.DayOfMonth
		 Order by WorkerId;

	Select * FROM @HolidayDays;
END






GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_NoWorkingDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_COMPUTE_NoWorkingDay]
(	
	@startDate date,
	@endDate date = null
)
AS
BEGIN
	 SET NOCOUNT ON
	if(@enddate is null)
		set @enddate = dateadd(day, -1, dateadd(month, 1, @startDate));

	Truncate table NoWorkingDay;

	Insert Into NoWorkingDay(DayId, Id, Code, Label, DAteOfDay)
	Select NewId(), Id, Code, Label, 
		CAST(CAST(DatePart(Year, @StartDate) AS varchar) + '-' + CAST(NoWorkingDayType.Month AS varchar) + '-' + CAST(NoWorkingDayType.Day AS varchar) AS DATE)
	  FROM [NoWorkingDayType]
	  WHERE IsFixed = 1

	declare @Id uniqueidentifier, @Code nvarchar(128), @Label nvarchar(500), @Formula nvarchar(max);

	declare curRule Cursor for 
		Select Id, Code, Label, Formula FROM [NoWorkingDayType]
			WHERE IsFixed = 0

	Open curRule

	FETCH NEXT FROM curRule INTO @Id, @Code, @Label, @Formula

	WHILE @@FETCH_STATUS = 0
	BEGIN
		declare @date date;

		set @Formula = Replace(@Formula, '$Year', DatePart(Year, @startDate));
	
		declare @stmt nvarchar(4000) = N'Insert Into NoWorkingDay(DayId, Id, Code, Label, DAteOfDay) select NewId(), @Id, @Code, @Label, ' + @Formula;
		declare @params nvarchar(2000) = N'@Id uniqueidentifier, @Code nvarchar(128), @Label nvarchar(500)';

		EXEC sp_executesql @stmt, @params, @Id=@Id, @Code=@Code, @Label = @Label
	
		FETCH NEXT FROM curRule INTO @Id, @Code, @Label, @Formula
	END

	CLOSE curRule;
	DEALLOCATE CurRule;
END







GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_PLANNING]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PRC_COMPUTE_PLANNING]
(
	@Year int,
	@Month int
)
AS
BEGIN
	SET NOCOUNT  ON;

	declare @startOfMonth date = CAST(CAST(@Year AS varchar) + '-' + CAST(@Month AS varchar) + '-' + CAST(1 AS varchar) AS DATE);
	declare @endOfMonth date;

	Select @endOfMonth = dbo.FNC_LASTDAYOFMONTH(@startOfMonth);

	delete FROM PlanningDay where PlanningDate between @startOfMonth and @endOfMonth

	--1°) Ajoute les jours de congés
	Declare @t table(WorkerId uniqueidentifier, HolidayTypeId uniqueidentifier, StartDate date, enddate date);

	Insert @t
	EXECUTE [dbo].[PRC_COMPUTE_HOLIDAYDAYS] 
	   @startOfMonth
	  ,@endOfMonth;

	Insert Into PlanningDay
	Select NewId(), WorkerId, startDate, 0, null, 1, HolidayTypeId, HolidayType.IsPaied, '07:00', '22:00', NULL, NULL, Null, HolidayType.Icon
	  From @t t INNER JOIN HolidayType on t.HolidayTypeId = HolidayType.Id and not exists(Select 1 FROM PlanningDay
		where WorkerId = t.WorkerId And PlanningDate = t.StartDate)

	--2°) Ajoute les jours fériés
	Insert Into PlanningDay
	Select NewId(), Worker.Id, DateOfDay, IsWorked = 0, nw.Id, 0, NULL, nw.IsPaied, '07:00', '22:00', NULL, NULL, Null, nw.Icon
	from Worker, NoWorkingDay nd
		Inner join NoWorkingDayType nw on nw.Id = nd.iD wHERE DateOfDay Between @startOfMonth and @endOfMonth
	AND not Exists(Select 1 FROM PlanningDay Where PlanningDate = DateOfDay And WorkerId = worker.Id);

	--3°) Ajoute les jours ordinaires au planning
	declare @curDay date;
	set @curDay = @startOfMonth;

	WHILE @curDay <= @endOfMonth
	BEGIN
		declare @WorkingWorkerId uniqueidentifier
	
		declare curWorker cursor for
		Select Id FROM Worker Where LayoffDate is null or LayoffDate > @curDay

		open curWorker 

		FETCH NEXT FROM curWorker INTO @WorkingWorkerId

		WHILE @@FETCH_STATUS = 0
		BEGIN

			If not exists(Select 1 FROM PlanningDay Where WorkerId = @WorkingWorkerId AND PlanningDate = @curDay)
			BEGIN
				INSERT INTO PlanningDay(Id, WorkerId, PlanningDate, IsPaied, StartTime, EndTime, BreakingDayStartTime, BreakingDayEndTime, 
					WorkingTimePeriodTypeId, IconDay)
					Select NewID(), @WorkingWorkerId, @curDay, 1, StartHour, EndHour, BreakingTimeStart, BreakingTimeEnd,
					Id, Icon
					FROM [dbo].[FNC_GetWorkingTimePeriod](@WorkingWorkerId, @curDay)
					WHERE @curDay not in
						(Select PlanningDate From PlanningDay Where PlanningDate = @curDay AND WorkerId = @WorkingWorkerId)
			END

			FETCH NEXT FROM curWorker INTO @WorkingWorkerId;
		END

		CLOSE curWorker;
		DEALLOCATE curWorker;

		set @curDay = DATEADD(day, 1, @curDay);
	END

	Select * FROM PlanningDay WHERE PlanningDate between @startOfMonth and @endOfMonth order by PlanningDate

	END

GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_SALARY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PRC_COMPUTE_SALARY]
(
	@periodId uniqueidentifier 
)
AS
BEGIN
	declare @WorkerId uniqueidentifier, @WorkingPaymentPeriodId uniqueidentifier, @BonusTypeId uniqueidentifier, @Label nvarchar(500), 
		@SqlBaseFormula nvarchar(4000), @BonusRatio money, @BonusRatioWorker money;

	declare curPrime cursor for
		Select WorkingBonusTypeWorker.WorkerId, WorkingBonusTypeWorker.WorkingPaymentPeriodId,  
			WorkingBonusTypeWorker.BonusTypeId, dbo.WorkingBonusType.Label,
			 dbo.WorkingBonusType.SqlBaseFormula, dbo.WorkingBonusType.BonusRatio, WorkingBonusTypeWorker.BonusRatioWorker
		FROM [dbo].[WorkingBonusTypeWorker]
		INNER JOIN dbo.WorkingBonusType ON dbo.[WorkingBonusTypeWorker].BonusTypeId = 
		dbo.WorkingBonusType.Id
		WHERE WorkingBonusTypeWorker.WorkingPaymentPeriodId = @periodId;

	OPEN curPrime;

	FETCH NEXT FROM curPrime INTO @WorkerId, @WorkingPaymentPeriodId, @BonusTypeId, @Label, @SqlBaseFormula, @BonusRatio, @BonusRatioWorker

	WHILE @@FETCH_STATUS = 0
	BEGIN
		if @SqlBaseFormula is null or @SqlBaseFormula = ''
		BEGIN
			EXEC sp_executesql N'INSERT WorkerBonus(Id, WorkerId, BonusTypeName, WorkingPaymentPeriodId, SqlFormula, Base, BonusRatio, BonusAmount)
				Select NewId(), @WorkerId, @Label, @WorkingPaymentPeriodId, NULL, 0, 0, @BonusRatioWorker',
				N'@WorkerId uniqueidentifier, @WorkingPaymentPeriodId uniqueidentifier, @Label nvarchar(4000), @p0 uniqueidentifier, @BonusRatioWorker money', 
					@WorkerId = @WorkerId, @WorkingPaymentPeriodId = @WorkingPaymentPeriodId, @Label = @Label, @p0 = @WorkerId, @BonusRatioWorker = @BonusRatioWorker;
		END
		ELSE
		BEGIN
			Declare @sql nvarchar(4000) =  N'INSERT WorkerBonus(Id, WorkerId, BonusTypeName, WorkingPaymentPeriodId, SqlFormula, Base, BonusRatio, BonusAmount)
				Select NewId(), @WorkerId, @Label, @WorkingPaymentPeriodId, ''' + @SqlBaseFormula + ''', ' + @SqlBaseFormula + ', 0, ' + 
				@SqlBaseFormula + '* ' + Convert(Varchar, ISNULL(@BonusRatio, 0));

			PRINT @sql;

			EXEC sp_executesql @sql, N'@WorkerId uniqueidentifier, @WorkingPaymentPeriodId uniqueidentifier, @Label nvarchar(4000), @p0 uniqueidentifier, @BonusRatioWorker money', 
					@WorkerId = @WorkerId, @WorkingPaymentPeriodId = @WorkingPaymentPeriodId, @Label = @Label, @p0 = @WorkerId, @BonusRatioWorker = @BonusRatioWorker;
		END

		FETCH NEXT FROM curPrime INTO @WorkerId, @WorkingPaymentPeriodId, @BonusTypeId, @Label, @SqlBaseFormula, @BonusRatio, @BonusRatioWorker
	END

	CLOSE curPrime;
	DEALLOCATE curPrime;

	--2°) On calcul les heures travaillés
	Declare @startDate date;
	declare @endDate date;
	select @startDate = StartPeriod, @endDate = EndPeriod FROM [dbo].[WorkingPaymentPeriod] Where Id = @periodId;

	Delete From WorkingPayPeriodWorker WHERE WorkingPaymentPeriodId = @periodId;

	Insert Into WorkingPayPeriodWorker(Id, WorkerId, WorkingPaymentPeriodId, TotalHourWorked, AmountHour, AmountHourWorked, TotalBonusWorker, TotalPenaltyWorker, TotalPayRollTaxCompany, TotalPayRollTaxWorker)
		Select NewId(), WorkerId, @periodId, Sum(DateDiff(hour, StartTime, Endtime)), 
			(Select [SalaryHour] From Worker Where WorkerId = Worker.Id),
			(Select [SalaryHour] From Worker Where WorkerId = Worker.Id) * Sum(DateDiff(hour, StartTime, Endtime)),
			(Select Sum(BonusAmount) FROM WorkerBonus  WHERE WorkerBonus.WorkerId = WorkerId and WorkerBonus.WorkingPaymentPeriodId = @periodId),
			ISNULL((Select Sum([PenaltyRatioWorker]) FROM [dbo].[WorkingPenaltyTypeWorker] Where [dbo].[WorkingPenaltyTypeWorker].WorkerId = WorkerId AND [WorkingPaymentPeriodId] = @periodId), 0),
			0,
			0
			FROM PlanningDay Where PlanningDate Between @startDate And @endDate
			Group By WorkerId;

	Update WorkingPayPeriodWorker Set TotalToPaied = (ISnull(AmountHourWorked, 0) + IsNull(TotalBonusWorker, 0)) - IsNull(TotalPenaltyWorker, 0) - IsNull(TotalPayRollTaxWorker, 0);
END;




GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_WORKER_BONUSCOMPUTED]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_COMPUTE_WORKER_BONUSCOMPUTED]
AS
BEGIN
Declare @StartPeriod datetime;
Declare @EndPeriod datetime;
Declare @PeriodId uniqueidentifier;

Select @StartPeriod = dbo.FNC_GETFIRSTDAYOFMONTH(GetDate());
Select @EndPeriod = dbo.FNC_LASTDAYOFMONTH(GETDATE());
Select @PeriodId = Id From WorkingPaymentPeriod Where StartPeriod = @StartPeriod and EndPeriod = @EndPeriod;

Declare @WorkerId uniqueidentifier, @Email nvarchar(500), @BonusTypeName nvarchar(500), @SqlFormula nvarchar(max), @base money, @bonusRatio decimal(18,2), @bonusAmount money;
Declare @WorkingPaymentPeriodId uniqueidentifier;

Select @WorkingPaymentPeriodId = Id From WorkingPaymentPeriod Where StartPeriod >= @StartPeriod And EndPeriod <= @EndPeriod;

DECLARE @T table(RowNumber int, WorkerId uniqueidentifier, Email nvarchar(500), Label nvarchar(500), SqlBaseFormula nvarchar(max), BonusRatio decimal(18,2));

DELETE FROM WorkerBonus WHERE WorkerBonus.WorkingPaymentPeriodId = @PeriodId;

INSERT @T
Select ROW_NUMBER() OVER (ORDER BY WorkerId) RowNumber, WorkerId, Email, Label, SqlBaseFormula, BonusRatio  FROM WorkingBonusTypeWorker
	Inner join WorkingBonusType on WorkingBonusTypeWorker.BonusTypeId = WorkingBonusType.Id
	INNER JOIN Worker on WorkingBonusTypeWorker.WorkerId = Worker.Id
	Where SqlBaseFormula <> '' and SqlBaseFormula is not null;

DECLARE @current int = 1; 
DECLARE @max int;
DECLARE @params nvarchar(4000);
SET @params = '@UserId uniqueidentifier, @UserLogin nvarchar(500), @startDate datetime, @endDate datetime, @result decimal OUTPUT' ;

select @max = max(RowNumber) from @T;

WHILE @current <= @max
BEGIN

	Select @WorkerId = WorkerId, @Email = Email, @BonusTypeName = Label, @SqlFormula = SqlBaseFormula, @bonusRatio = BonusRatio
		FROM @T WHERE RowNumber = @current;

	PRINT @SqlFormula

	EXEC sp_executesql @SqlFormula, @params, @UserId = @workerId, @UserLogin = @Email, @StartDate = @StartPeriod, @EndDate = @EndPeriod, @result = @base output;
	
	PRINT 'BASE : ' + Convert(VARCHAR, Isnull(@base, 0));

	Set @bonusAmount = @base * (@bonusRatio / 100);
	
	Insert WorkerBonus(Id, WorkerId, BonusTypeName, WorkingPaymentPeriodId, SqlFormula, Base,	 BonusRatio, BonusAmount)
	Select NewId(), @WorkerId, @BonusTypeName, @PeriodId,  @SqlFormula, @base, @bonusRatio, @bonusAmount

	Set @current = @current + 1;
END

--Select * FROM @T;

Select * FROM WorkerBonus Where WorkingPaymentPeriodId = @PeriodId;
END;


GO
/****** Object:  StoredProcedure [dbo].[PRC_COMPUTE_WORKER_PENALTY]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_COMPUTE_WORKER_PENALTY]
AS
BEGIN
	Declare @PeriodId uniqueidentifier;
	Declare @WorkerId uniqueidentifier;
	Declare @Ratio decimal(18, 2);
	Declare @PenaltyTypeId uniqueIdentifier;
	Declare @PenaltyTypeRatio decimal(18,2);
	Declare @SalaryHour money;
	Declare @SalaryDay money;
	Declare @StartPeriod datetime;
	Declare @EndPeriod datetime;
	Declare @current int;
	Declare @max int;
	Declare @t table(RowNumber int, Id uniqueidentifier, PenaltyTypeId uniqueidentifier, WorkerId uniqueidentifier, WorkingPaymentPeriodId uniqueidentifier, PenaltyRatioWorker decimal(18, 2));
	Declare @JobID uniqueidentifier;
	Declare @HourPerDay int;

	Declare @PenaltyAmount money;

	Select @StartPeriod = dbo.FNC_GETFIRSTDAYOFMONTH(GetDate());
	Select @EndPeriod = dbo.FNC_LASTDAYOFMONTH(GETDATE());
	Select @PeriodId = Id From WorkingPaymentPeriod Where StartPeriod = @StartPeriod and EndPeriod = @EndPeriod;

	Insert @t
	SELECT ROW_NUMBER() OVER(ORDER BY Id) RowNumber, Id, PenaltyTypeId, WorkerId, WorkingPaymentPeriodId, PenaltyRatioWorker FROM WorkingPenaltyTypeWorker
		Where WorkingPaymentPeriodId = @PeriodId


	Delete FROM WorkerPenalty Where PaymentPeriodId = @PeriodId;

	Set @current = 1;

	Select @max = MAX(RowNumber) FROM @t;

	WHILE @current <= @max
	BEGIN
		Select @PenaltyTypeId = PenaltyTypeId, @WorkerId = WorkerId, @PeriodId = WorkingPaymentPeriodId, @Ratio = PenaltyRatioWorker
			FROM @t WHERE RowNumber = @current;

		Select @PenaltyTypeRatio = PenaltyRatio FROM WorkingPenaltyType Where Id = @PenaltyTypeId

		If @PenaltyTypeRatio is null
			Set @PenaltyAmount = @Ratio;
		ELSE
		BEGIN
			Select @SalaryHour = SalaryHour, @JobID = Worker.WorkerJob From Worker Where Id = @WorkerId;
			Select @HourPerDay = Avg(DateDiff(Hour, StartHour, EndHour)) FROM [dbo].[WorkingTimePeriod] Where JobTitleId = @JobID;
			Print @HourPerDay
			Print @SalaryHour;
			Set @SalaryDay = @HourPerDay * @SalaryHour;
			Set @PenaltyAmount = @PenaltyTypeRatio * @SalaryDay;
		END

		Insert Into WorkerPenalty(Id, PaymentPeriodId, WorkerId, PenaltyAmount)
		Select NEWID(), @PeriodId, @WorkerId, @PenaltyAmount;

		set @current = @current + 1;
	END
END
Select * FROM WorkerPenalty
GO
/****** Object:  StoredProcedure [dbo].[PRC_GET_TRACK_Sales]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_GET_TRACK_Sales]
(
	@startDate datetime,
	@EndDate datetime
)
AS
Select 
	SalesPoint.Id SalePointId,
	SalesPoint.Name SalesPointName,
	ProductId,
	Product_product.ProductLabel,
	Product_product.ProductFamillyId, 
	Product_product.ProductSubFamillyId,
	familly.Name FamillyName,
	subFamilly.Name subFamillyName,
	WareHouse.Id WareHouseId,
	WareHouse.Name WareHouseName,
	Sum(Quantity) TotalQuantity,
	Sum(TTC) TotalCA
 FROM Sale_InvoiceLine
	 Inner Join Sale_Invoice on Sale_InvoiceLine.InvoiceID = Sale_Invoice.Id
	 Inner Join SalesPoint on Sale_Invoice.SalesPointId = SalesPoint.Id
	 Inner Join Product_Product on Product_Product.Id = Sale_InvoiceLine.ProductId
	 Inner join WareHouse on WareHouse.Id = Sale_InvoiceLine.WareHouseId
	 Left Join Product_Category familly on Product_Product.ProductFamillyId = familly.Id
	 Left Join Product_Category subFamilly on Product_Product.ProductSubFamillyId = subFamilly.Id
WHERE Sale_Invoice.SaleDate between @StartDate AND @EndDate AND Sale_Invoice.IsValidated = 1
 Group by 	
	SalesPoint.Id,
	SalesPoint.Name,
	ProductId,
	Product_product.ProductLabel,
	Product_product.ProductFamillyId, 
	Product_product.ProductSubFamillyId,
	familly.Name,
	subFamilly.Name,
	WareHouse.Id,
	WareHouse.Name

GO
/****** Object:  StoredProcedure [dbo].[PRC_GET_TRACK_SalesByCustomer]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_GET_TRACK_SalesByCustomer]
(
	@startDate datetime,
	@EndDate datetime
)
As
Select 
	sale_Invoice.CustomerId,
	Isnull(Customer.FullName, 'non spécifié') CustomerName,
	Sum(Quantity) TotalQuantity,
	Sum(TTC) TotalCA
 FROM Sale_InvoiceLine
	 Inner Join Sale_Invoice on Sale_InvoiceLine.InvoiceID = Sale_Invoice.Id
	 Left Join Customer on Sale_Invoice.CustomerId = Customer.Id
WHERE Sale_Invoice.SaleDate between @StartDate AND @EndDate AND Sale_Invoice.IsValidated = 1
 Group by 	
	Sale_Invoice.CustomerId,
	Customer.FullName
Order by TotalCA desc


GO
/****** Object:  StoredProcedure [dbo].[PRC_GetMakeComponentStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_GetMakeComponentStep] (@ComponentId uniqueidentifier, @Quantity int)
AS
BEGIN
Select step.Id, step.Step, step.Quantity, step.Task, step.Control, ComponentUsed.Id ComponentUsedId, ComponentUsed.Name ComponentUsedName, 
	Ingredient.Id IngredientId, Ingredient.Label IngredientName,
	CASE WHEN UseComponentId is not null THEN
		(select ISNULL(Sum(MouvementQuantityItem), 0) FROM PAO_ComponentMouvementStock WHERE ComponentId = componentUsed.Id)
	ELSE 0 END ComponentInStock,
	CASE WHEN IngredientId is not null THEN
		(Select ISNULL(Sum(MouvementQuantityItem), 0) FROM IngredientMouvementStock WHERE IngredientMouvementStock.IngredientId = Ingredient.Id)
	ELSE 0 END IngredientInStock,
	Ingredient.PurchaseQuantity,
	Ingredient.PurchasePrice,
	componentUsed.TotalQuantityProducted,
	Ingredient.ProductQuantity IngredientProductQuantityUsed,
	@Quantity * step.Quantity TotalToUse
	FROM PAO_ComponentStep step 
	LEFT JOIN PAO_Component componentUsed on step.UseComponentId = componentUsed.Id
	LEFT JOIN Ingredient on step.IngredientId = Ingredient.Id
	Where ComponentId = @ComponentId
	ORDER BY step;
END

GO
/****** Object:  StoredProcedure [dbo].[PRC_GETMakeProductStep]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_GETMakeProductStep] (@productId uniqueidentifier)
AS
BEGIN
Select step.Id, step.Step, step.Quantity, step.Task, step.Control, component.Id componentId, component.Name componentName, 
	Ingredient.Id IngredientId, Ingredient.Label IngredientName,
	CASE WHEN ComponentId is not null THEN
		(select ISNULL(Sum(MouvementQuantityItem), 0) FROM PAO_ComponentMouvementStock WHERE ComponentId = component.Id)
	ELSE 0 END ComponentInStock,
	CASE WHEN IngredientId is not null THEN
		(Select ISNULL(Sum(MouvementQuantityItem), 0) FROM IngredientMouvementStock WHERE IngredientMouvementStock.IngredientId = Ingredient.Id)
	ELSE 0 END IngredientInStock,
	Ingredient.PurchaseQuantity,
	Ingredient.PurchasePrice,
	component.TotalQuantityProducted,
	Ingredient.ProductQuantity IngredientProductQuantityUsed,
	(Select TotalToBuild FROM VW_PAOProductSituation WHERE PAOId = @productId) * step.Quantity TotalToUse
	FROM PAO_ProductStep step 
	LEFT JOIN PAO_Component component on step.ComponentId = component.Id
	LEFT JOIN Ingredient on step.IngredientId = Ingredient.Id
	Where ProductId = @productId
	ORDER BY step;
END

GO
/****** Object:  StoredProcedure [dbo].[PRC_GETNEW_CUSTOMER]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_GETNEW_CUSTOMER]
AS
BEGIN
Update Customer Set IsWelcomeSent = 1, WelcomeSentDate = GETDATE()
	Output inserted.*
	WHERE (DATEDIFF(day, WelcomeSentDate, Getdate()) = 0 OR WelcomeSentDate is null);
END


GO
/****** Object:  StoredProcedure [dbo].[PRC_INVOICE_COMPUTE_PAYMENT]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_INVOICE_COMPUTE_PAYMENT]
AS
	Set nocount on;
	
	INSERT INTO Sale_InvoicePayment
	 Select NEWID(), Sale_Invoice.Id InvoiceId,  PaymentPart, DATEADD(Day, IntervalDay, SaleDate) PaymentDate, 0,  null, TotalTTC * IntervalRatio FROM PaymentMethodInterval
		Inner Join PaymentMethod on PaymentMethodInterval.PaymentMethodId = PaymentMethod.Id	
		Inner Join Sale_Invoice on Sale_Invoice.PaymentMethodId = PaymentMethod.Id
		 where Sale_Invoice.IsValidated = 1 And PaymentMethod.IsCredit = 1 And TotalTTC > 0 AND Sale_Invoice.Id not in 
			(Select InvoiceId From Sale_InvoicePayment);

	SELECT * FROM Sale_InvoicePayment ORDER BY PaymentLimitDate desc;

GO
/****** Object:  StoredProcedure [dbo].[PRC_PAO_SetInventoryComponentStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[PRC_PAO_SetInventoryComponentStock]
(
	@ComponentId uniqueidentifier,
	@NewQuantityStock int,
	@InventoryDate date
)
AS
BEGIN
	--1°) Annulation du stock initial
	If Exists(Select 1 FROM [dbo].[PAO_ComponentMouvementStock] Where ComponentId = @ComponentId)
	Begin
		Insert Into [dbo].[PAO_ComponentMouvementStock](Id, ComponentId, MouvementDate, MouvementQuantityItem, MouvementDescription)
			Select NewId(), @ComponentId, getdate(), 0 - Sum([MouvementQuantityItem]), 'Annulation du stock initial'
				FROM [dbo].[PAO_ComponentMouvementStock] Where ComponentId = @ComponentId
	END

	--2°) Déclaration du stock de l'inventaire
	Insert Into [dbo].[PAO_ComponentMouvementStock](Id, ComponentId, MouvementDate, MouvementQuantityItem, MouvementDescription)
		VALUES (NewId(), @ComponentId, getdate(), @NewQuantityStock, 'Inventaire du ' + Convert(Varchar, @InventoryDate));
	
END



GO
/****** Object:  StoredProcedure [dbo].[PRC_PAO_SetInventoryIngredientStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_PAO_SetInventoryIngredientStock]
(
	@IngredientId uniqueidentifier,
	@NewQuantityStock int,
	@InventoryDate date
)
AS
BEGIN
	--1°) Annulation du stock initial
	If Exists(Select 1 FROM [dbo].[IngredientMouvementStock] Where IngredientId = @IngredientId)
	Begin
		Insert Into [dbo].[IngredientMouvementStock](Id, IngredientId, MouvementDate, MouvementQuantityItem, MouvementDescription)
			Select NewId(), @IngredientId, getdate(), 0 - Sum([MouvementQuantityItem]), 'Annulation du stock initial'
				FROM [dbo].[IngredientMouvementStock] Where IngredientId = @IngredientId
	END

	--2°) Déclaration du stock de l'inventaire
	Insert Into [dbo].[IngredientMouvementStock](Id, IngredientId, MouvementDate, MouvementQuantityItem, MouvementDescription)
		VALUES (NewId(), @IngredientId, getdate(), @NewQuantityStock, 'Inventaire du ' + Convert(Varchar, @InventoryDate));
	
END


GO
/****** Object:  StoredProcedure [dbo].[PRC_PAO_SetInventoryProductStock]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PRC_PAO_SetInventoryProductStock]
(
	@ProductId uniqueidentifier,
	@NewQuantityStock int,
	@InventoryDate date
)
AS
BEGIN
	--1°) Annulation du stock initial
	If Exists(Select 1 FROM [dbo].[PAO_ProductMouvementStock] Where ProductId = @ProductId)
	Begin
		Insert Into [dbo].[PAO_ProductMouvementStock](Id, ProductId, MouvementDate, MouvementQuantityItem, MouvementDescription)
			Select NewId(), @ProductId, getdate(), 0 - Sum([MouvementQuantityItem]), 'Annulation du stock initial'
				FROM [dbo].[PAO_ProductMouvementStock] Where ProductId = @ProductId
	END

	--2°) Déclaration du stock de l'inventaire
	Insert Into [dbo].[PAO_ProductMouvementStock](Id, ProductId, MouvementDate, MouvementQuantityItem, MouvementDescription)
		VALUES (NewId(), @ProductId, getdate(), @NewQuantityStock, 'Inventaire du ' + Convert(Varchar, @InventoryDate));
	
END



GO
/****** Object:  StoredProcedure [dbo].[PRC_PAO_UpdateCost]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_PAO_UpdateCost]
(
	@ProductId uniqueidentifier
)
AS
Update PAO_Product Set TotalCost = 
	(Select Sum(Cost) FROM vw_PAO_ProductStep Where ProductId = @ProductId)
	Where Id = @ProductId


GO
/****** Object:  StoredProcedure [dbo].[PRC_PAO_UpdateCostComponent]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PRC_PAO_UpdateCostComponent]
(
	@ComponentId uniqueidentifier
)
AS
Declare @Cost money = (Select Sum(Cost) FROM VW_PAO_ComponentStep Where (IngredientId is not null or UseComponentId is not null) AND ComponentId = @componentId);
Update PAO_Component Set TotalCost = @cost WHERE Id = @componentId
Select TotalCost FROM PAO_Component WHERE Id = @componentId


GO
/****** Object:  StoredProcedure [dbo].[PRC_RH_COMPUTE_WorkingPaymentPeriod]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_RH_COMPUTE_WorkingPaymentPeriod]
AS
BEGIN
	set nocount on;

	declare @firstDayOfMonth date;
	declare @lastDayOfMonth date;
	declare @noworkingDay int;
	declare @totalDayWorking int;
	declare @workingHourPerDay int;

	Select @firstDayOfMonth = dbo.FNC_GETFIRSTDAYOFMONTH(getdate());


	Select @lastDayOfMonth = dbo.FNC_LASTDAYOFMONTH(getdate());


	Select @noworkingDay = Count(*) FROM NoWorkingDay Inner join NoWorkingDayType on NoWorkingDay.Id = NoWorkingDayType.Id
	Where DateOfDay between @firstDayOfMonth and @lastDayOfMonth And IsWorked = 0 And IsPaied = 1;


	Select @totalDayWorking = DATEDIFF(day, @firstDayOfMonth, DateAdd(day, 1, @lastDayOfMonth)) - @noworkingDay;

	Select @workingHourPerDay = Avg(DateDiff(Hour, StartHour, EndHour)) FROM WorkingTimePeriod;

	INSERT INTO WorkingPaymentPeriod OUTPUT inserted.*
	Select NewId() Id, DateAdd(Month, 1, @firstDayOfMonth) PaymentDate, startPeriod = @firstDayOfMonth, EndPeriod = @lastDayOfMonth, TotalTimeRequired = @totalDayWorking * @workingHourPerDay , TotalPaied = null, null
	Where Not Exists(Select 1 FROM WorkingPaymentPeriod Where StartPeriod = @firstDayOfMonth and EndPeriod = @lastDayOfMonth);
END;


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_GETCA_WORKER]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_GETCA_WORKER](@userName nvarchar(255)) RETURNS money
AS
BEGIN
	DECLARE @totalTTC money;
	select @totalTTC = Sum(TotalTTC) FROM Sale_Invoice Where UserIdentity = @userName;
	RETURN @totalTTC;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FNC_GETFIRSTDAYOFMONTH]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FNC_GETFIRSTDAYOFMONTH](@date datetime) RETURNS date
AS
BEGIN
	DECLARE @d date;
	Select @d = Convert(Date, @date - (DatePart(Day, @date) - 1));
	RETURN @d;
END

GO
/****** Object:  UserDefinedFunction [dbo].[FNC_GetWorkingTimePeriod]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FNC_GetWorkingTimePeriod](@WorkerId uniqueidentifier, @CurDate date) 
	RETURNS @WorkingTime table(Id uniqueidentifier, Code nvarchar(256), Name nvarchar(1000), StartHour time, EndHour time, BreakingTimeStart time,
	 BreakingTimeEnd time, Icon image, JobTitleId uniqueidentifier)
AS 
BEGIN
	INSERT @WorkingTime
		Select Id, Code, Name, StartHour, EndHour, BreakingTimeStart, BreakingTimeEnd, Icon, JobTitleId  FROM WorkingTimePeriod Where JobTitleId = 
		(Select Worker.WorkerJob FROM Worker Where Id = @workerId)
		AND Case
		When exists(Select 1 FROM WorkingWorkerRotation Where WorkerId = @workerId) THEN
			CASE WHEN Id = (Select WorkingTimePeriodId FROM WorkingWorkerRotation Where WorkerId = @workerId AND DatePart(WK, @CurDate) % WeekNumberModulo = 0) 
			THEN 1
			ELSE 0
			END
		ELSE 1
		END = 1;
		RETURN;
END





GO
/****** Object:  UserDefinedFunction [dbo].[FNC_LASTDAYOFMONTH]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FNC_LASTDAYOFMONTH](@date datetime) RETURNS date
AS
BEGIN
	DECLARE @d date;
	Select @d = dbo.FNC_GETFIRSTDAYOFMONTH(@date);
	Set @d = DATEADD(Day, -1, DATEADD(MONTH, 1, @d));
	RETURN @d;
END


GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PAO_RawMaterialsConsumption]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[FNC_PAO_RawMaterialsConsumption]
(
	@startDate date,
	@endDate date
)
RETURNS @rtnTable Table(
IngredientId uniqueidentifier, IngredientLabel nvarchar(500), PurchasePrice money, ProductQuantity int, ProductUnityName nvarchar(128), 
	QuantityPackagePurchased int, TotalQuantityPurchased int, totalPurchaseAmount money, TotalQuantityOutput int, totalOutputAmount money, 
	TotalQuantitySales int, TotalAmountSales money
)
AS
BEGIN
	WITH CTEProduct(ProductId, QtySales, TotalQuantityProducted, TotalPackage)
	AS
	(
		Select Id, ISNULL((Select Sum(MouvementQuantityItem) FROM 
			[dbo].[PAO_ProductMouvementStock] WHERE MouvementQuantityItem < 0 AND ProductId = Id), 0), TotalQuantityProducted,
			ISNULL((Select Sum(MouvementQuantityItem) FROM 
			[dbo].[PAO_ProductMouvementStock] WHERE MouvementQuantityItem < 0 AND ProductId = Id), 0) / TotalQuantityProducted 
		 From PAO_Product	
	)
	,CTEIngredient(IngredientId, QtySales)
	AS
	(
		Select IngredientId, SUM(TotalPackage * Quantity) FROM [dbo].[PAO_ProductStep]
		INNER JOIN CTEProduct ON CTEProduct.ProductId = CTEProduct.ProductId
		WHERE IngredientId is not null
		GROUP BY IngredientId
	)
	Insert @rtnTable
	Select ingredient.Id IngredientId, Ingredient.Label IngredientLabel, Ingredient.PurchasePrice, Ingredient.ProductQuantity, Product_Unity.Name ProductUnityName,
	t1.QuantityPackagePurchased, t1.TotalQuantityPurchased, t1.QuantityPackagePurchased * Ingredient.PurchasePrice  totalPurchaseAmount,
	t2.TotalQuantityOutput, t2.TotalQuantityOutput * (Ingredient.PurchasePrice / Ingredient.ProductQuantity) totalOutputAmount,
	CTEIngredient.QtySales, CTEIngredient.QtySales * Ingredient.PurchasePrice
	FROM Ingredient INNER JOIN Product_Unity on Ingredient.ProductUnityId = Product_Unity.Id
	LEFT JOIN
	(Select IngredientId, 
		Sum(MouvementQuantityPurchase) QuantityPackagePurchased, 
		Sum(MouvementQuantityItem) TotalQuantityPurchased
		FROM IngredientMouvementStock
		WHERE MouvementQuantityPurchase is not null
			AND MouvementDate Between @startDate and @endDate
		Group by IngredientId
	 ) t1 ON Ingredient.Id = t1.IngredientId
	LEFT JOIN
	(Select IngredientId, -1 * Sum(MouvementQuantityItem) TotalQuantityOutput
	FROM IngredientMouvementStock 
	WHERE MouvementQuantityPurchase is null AND MouvementQuantityItem < 0
		AND MouvementDate Between @startDate and @endDate
		Group by IngredientId
	) t2 ON Ingredient.Id = t2.IngredientId
	INNER JOIN CTEIngredient ON Ingredient.Id = CTEIngredient.IngredientId;

	return;
END



GO
/****** Object:  UserDefinedFunction [dbo].[FNC_PAO_TotalCA]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[FNC_PAO_TotalCA]
(
	@startDate date,
	@endDate date
)
RETURNS @rtnTable Table(
ProductId uniqueidentifier, ProductName nvarchar(128), TotalQuantity int, Price money, TotalCA money
)
AS
BEGIN
	WITH CTE(ProductId, TotalQuantity)
	AS
	(
		Select ProductId, Sum(MouvementQuantityItem) TotalQuantity FROM [dbo].[PAO_ProductMouvementStock]
		WHERE MouvementQuantityItem < 1 AND MouvementDate Between @startDate AND @endDate
			Group by ProductId 
	)
	Insert @rtnTable 
	Select PAO_Product.Id, PAO_Product.Name, IsNull(TotalQuantity, 0) TotalQuantity, Price, TotalCA = IsNull(TotalQuantity, 0) * Price 
	FROM PAO_Product
	INNER JOIN Product_Product ON Product_Product.Id = PAO_Product.ProductId
	Left Join CTE on PAO_Product.Id = CTE.ProductId

	return;
END




GO
/****** Object:  UserDefinedFunction [dbo].[Fnc_TestGetCA]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[Fnc_TestGetCA](@workerId uniqueidentifier) RETURNS money
AS
BEGIN
	Declare @CA money = 1000;
	RETURN @CA;
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetPassoverDay]    Script Date: 23/04/2015 07:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[GetPassoverDay](@annee int) returns date as
BEGIN
	DECLARE @G int, @C int,@C_4 int;
	DECLARE @E int,@H int, @K int;
	DECLARE @P int,@Q int, @I int;
	DECLARE @B int,@J1 int, @J2 int;
	DECLARE @R int;
	DECLARE @jourDePaque date;
	set @G=@annee%19;
	set @C=@annee/100;
	set @C_4=@C/4;
	set @E=(8*@c+13)/25;
	set @H=(19*@g+ @C-@C_4-@E+15)%30;
	IF (@H=29) set @H=@H-1;
	ELSE IF (@H=28 AND @G>10) set @H=@H-1;
	set @K=@H/28;
	set @P=29/(@H+1);
	set @Q=(21-@G)/11;
	set @I=(@K*@P*@Q-1)*@K+@H;
	set @B=@annee/4+@annee;
	set @J1=@B+@I+2+@C_4-@C;
	set @J2=@J1%7;
	set @R=28+@I-@J2;
	set @jourDePaque='01/03/'+convert(char(4),@annee);
	set @jourDePaque=dateadd(dd,@r-1,@jourDePaque);
	return @jourDePaque;
END


GO
ALTER TABLE [dbo].[Accounting_Account] ADD  CONSTRAINT [DF__Accounting__Id__145C0A3F]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Accounting_Account] ADD  DEFAULT ((0)) FOR [IsContactAccount]
GO
ALTER TABLE [dbo].[Accounting_Account] ADD  DEFAULT ((0)) FOR [IsProductAccount]
GO
ALTER TABLE [dbo].[Accounting_Account] ADD  DEFAULT ((0)) FOR [IsVTAAccount]
GO
ALTER TABLE [dbo].[Accounting_Book] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Accounting_BookAccount] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Accounting_Entry] ADD  CONSTRAINT [DF__Accountin__Entry__73852659]  DEFAULT (getdate()) FOR [EntryDate]
GO
ALTER TABLE [dbo].[Accounting_Entry] ADD  CONSTRAINT [DF__Accountin__IsVal__30C33EC3]  DEFAULT ((0)) FOR [IsValid]
GO
ALTER TABLE [dbo].[Civility] ADD  CONSTRAINT [DF_Civility_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CodeBarGenerated] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CodeBarGenerated] ADD  DEFAULT (getdate()) FOR [GenerateDate]
GO
ALTER TABLE [dbo].[CodeBarRule] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ContactActivity] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ContactCategory] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ContactStatus] ADD  CONSTRAINT [DF_ContactStatus_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Id__0D2FE9C3]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [IsWelcomeSent]
GO
ALTER TABLE [dbo].[CustomerCard] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CustomerCard] ADD  DEFAULT (getdate()) FOR [StartUsage]
GO
ALTER TABLE [dbo].[CustomerCardPayment] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CustomerTask] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CustomerTask] ADD  DEFAULT ((0)) FOR [FullDay]
GO
ALTER TABLE [dbo].[Expense] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Expense] ADD  DEFAULT (getdate()) FOR [ExpenseDate]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_IsValidated]  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[ExpenseCategory] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Holiday] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Holiday] ADD  DEFAULT (getdate()) FOR [DayDate]
GO
ALTER TABLE [dbo].[Holiday] ADD  DEFAULT ((0)) FOR [RepeatitionType]
GO
ALTER TABLE [dbo].[HolidayType] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HolidayType] ADD  DEFAULT ((1)) FOR [FullDay]
GO
ALTER TABLE [dbo].[ImportPrice] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ImportPrice] ADD  DEFAULT (getdate()) FOR [ImportDate]
GO
ALTER TABLE [dbo].[Ingredient] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Ingredient] ADD  CONSTRAINT [DF__Ingredien__Purch__5FC911C6]  DEFAULT ('6010001') FOR [PurchaseAcountNumber]
GO
ALTER TABLE [dbo].[Ingredient] ADD  DEFAULT ((0)) FOR [VTA]
GO
ALTER TABLE [dbo].[Ingredient_Purchase] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Ingredient_Purchase] ADD  DEFAULT (getdate()) FOR [PurchaseDate]
GO
ALTER TABLE [dbo].[Ingredient_Purchase] ADD  DEFAULT ((0)) FOR [PurchaseQuantity]
GO
ALTER TABLE [dbo].[IngredientInventory] ADD  CONSTRAINT [DF__IngredientIn__Id__3ACC9741]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[IngredientInventory] ADD  CONSTRAINT [DF__Ingredien__Inven__3CB4DFB3]  DEFAULT (getdate()) FOR [InventoryDate]
GO
ALTER TABLE [dbo].[IngredientInventory] ADD  CONSTRAINT [DF__Ingredien__IsVal__3DA903EC]  DEFAULT ((0)) FOR [IsValid]
GO
ALTER TABLE [dbo].[IngredientMouvementStock] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[IngredientMouvementStock] ADD  DEFAULT (getdate()) FOR [MouvementDate]
GO
ALTER TABLE [dbo].[InitializeStock] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[InitializeStock] ADD  DEFAULT (getdate()) FOR [InitialisationDate]
GO
ALTER TABLE [dbo].[InitializeStock] ADD  DEFAULT ((0)) FOR [OldStockQuantity]
GO
ALTER TABLE [dbo].[Inventory] ADD  CONSTRAINT [DF__Inventory__Id__3F3159AB]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Inventory] ADD  CONSTRAINT [DF__Inventory__Inven__4119A21D]  DEFAULT (getdate()) FOR [InventoryDate]
GO
ALTER TABLE [dbo].[Inventory] ADD  CONSTRAINT [DF_Inventory_CreateBy]  DEFAULT (N'getd') FOR [CreateBy]
GO
ALTER TABLE [dbo].[Inventory] ADD  CONSTRAINT [DF_Inventory_IsValidated]  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[Inventory_Line] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__InventoryRul__Id__1E6F845E]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__Repea__1F63A897]  DEFAULT ((0)) FOR [RepeatType]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__Alert__2057CCD0]  DEFAULT ((0)) FOR [AlertBeforeTime]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__Alert__214BF109]  DEFAULT ((0)) FOR [AlertFinished]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__Alert__22401542]  DEFAULT ((0)) FOR [AlertTimeOver]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__WeekD__2334397B]  DEFAULT ((0)) FOR [WeekDay]
GO
ALTER TABLE [dbo].[InventoryRule] ADD  CONSTRAINT [DF__Inventory__Month__24285DB4]  DEFAULT ((1)) FOR [MonthDay]
GO
ALTER TABLE [dbo].[InventoryRule_Error] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[InventoryRule_Error] ADD  DEFAULT (getdate()) FOR [CheckingDate]
GO
ALTER TABLE [dbo].[InventoryRule_Error] ADD  DEFAULT ('OverTime') FOR [Error_Category]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT (getdate()) FOR [MessageDate]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[MouvementStock] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[MouvementStock] ADD  DEFAULT (getdate()) FOR [MouvementDate]
GO
ALTER TABLE [dbo].[Navigation_Card] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Navigation_Card] ADD  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[Navigation_CardType] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NoWorkingDay] ADD  DEFAULT (newid()) FOR [DayId]
GO
ALTER TABLE [dbo].[NoWorkingDayType] ADD  CONSTRAINT [DF__NoWorkingDay__Id__50D0E6F9]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NoWorkingDayType] ADD  CONSTRAINT [DF__NoWorking__Bonus__51C50B32]  DEFAULT ((1)) FOR [BonusRatio]
GO
ALTER TABLE [dbo].[PAO_BuildComponentOrder] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_BuildComponentOrderStep] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_BuildOrder] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_Component] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_Component] ADD  DEFAULT ((30)) FOR [LimitUsageDay]
GO
ALTER TABLE [dbo].[PAO_Component] ADD  DEFAULT ((0)) FOR [TotalCost]
GO
ALTER TABLE [dbo].[PAO_ComponentInventory] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_ComponentInventory] ADD  DEFAULT (getdate()) FOR [InventoryDate]
GO
ALTER TABLE [dbo].[PAO_ComponentMouvementStock] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_ComponentStep] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_Product] ADD  CONSTRAINT [DF__PAO_Product__Id__55B597A7]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_Product] ADD  CONSTRAINT [DF__PAO_Produ__Total__579DE019]  DEFAULT ((0)) FOR [TotalCost]
GO
ALTER TABLE [dbo].[PAO_Product] ADD  DEFAULT ((1)) FOR [PackageQuantityItem]
GO
ALTER TABLE [dbo].[PAO_Product] ADD  DEFAULT ((30)) FOR [LimitUsageDay]
GO
ALTER TABLE [dbo].[PAO_ProductInventory] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_ProductInventory] ADD  DEFAULT (getdate()) FOR [InventoryDate]
GO
ALTER TABLE [dbo].[PAO_ProductMouvementStock] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_ProductStep] ADD  CONSTRAINT [DF__PAO_ProductS__Id__7AE71C56]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAO_ProductStep] ADD  CONSTRAINT [DF_PAO_ProductStep_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[PAOTrackerQueue] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PAOTrackerQueue] ADD  DEFAULT (getdate()) FOR [FinishDate]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  CONSTRAINT [DF__PaymentMetho__Id__44B528D7]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  CONSTRAINT [DF__PaymentMe__IsCre__45A94D10]  DEFAULT ((0)) FOR [IsCredit]
GO
ALTER TABLE [dbo].[PaymentMethod] ADD  CONSTRAINT [DF_PaymentMethod_RepeatIntervalType]  DEFAULT ((0)) FOR [RepeatIntervalType]
GO
ALTER TABLE [dbo].[PaymentMethodInterval] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PayRollTax] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PayRollTaxAgency] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PlanningDay] ADD  CONSTRAINT [DF__PlanningDay__Id__08E035F2]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PlanningDay] ADD  CONSTRAINT [DF__PlanningD__Plann__0AC87E64]  DEFAULT (getdate()) FOR [PlanningDate]
GO
ALTER TABLE [dbo].[PlanningDay] ADD  CONSTRAINT [DF__PlanningD__IsNoW__0BBCA29D]  DEFAULT ((0)) FOR [IsNoWorkingDay]
GO
ALTER TABLE [dbo].[PlanningDay] ADD  CONSTRAINT [DF__PlanningD__IsHol__0DA4EB0F]  DEFAULT ((0)) FOR [IsHoliday]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF__Product_Cate__Id__1758727B]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_Conversion] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_Product] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_Product] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product_Product] ADD  DEFAULT ((0)) FOR [VTA]
GO
ALTER TABLE [dbo].[Product_ProductType] ADD  CONSTRAINT [DF__Product_Prod__Id__75F77EB0]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_ProductType] ADD  CONSTRAINT [DF__Product_P__Quant__70FDBF69]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product_ProductType] ADD  DEFAULT ((0)) FOR [IsMake]
GO
ALTER TABLE [dbo].[Product_Promotion] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_Promotion] ADD  DEFAULT ((0)) FOR [QuantityOffer]
GO
ALTER TABLE [dbo].[Product_Promotion] ADD  DEFAULT ((0)) FOR [DiscountOffer]
GO
ALTER TABLE [dbo].[Product_Status] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_Unity] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_WareHouse] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Product_WareHouse] ADD  DEFAULT ((1)) FOR [PeriodTime]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF__Purchase_Invoice__Id__6AA5C795]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF__Purchase_Invo__PurchaseD__6B99EBCE]  DEFAULT (getdate()) FOR [PurchaseDate]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF_Purchase_Invoice_TotalTTC]  DEFAULT ((0)) FOR [TotalTTC]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF_Purchase_Invoice_TotalHT]  DEFAULT ((0)) FOR [TotalHT]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF_Purchase_Invoice_TotalVTA]  DEFAULT ((0)) FOR [TotalVTA]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF_Purchase_Invoice_TotalDiscount]  DEFAULT ((0)) FOR [TotalDiscount]
GO
ALTER TABLE [dbo].[Purchase_Invoice] ADD  CONSTRAINT [DF__Purchase_Invo__IsVal__070CFC19]  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PurchaseCategory] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[RoleRules] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Rules] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF__Sale_Invoice__Id__6AA5C795]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF__Sale_Invo__SaleD__6B99EBCE]  DEFAULT (getdate()) FOR [SaleDate]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF__Sale_Invo__Payme__6E765879]  DEFAULT ((0)) FOR [PaymentAmountOnOrder]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF__Sale_Invo__Payme__705EA0EB]  DEFAULT ((0)) FOR [PaymentAmountCurrency]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF_Sale_Invoice_TotalTTC]  DEFAULT ((0)) FOR [TotalTTC]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF_Sale_Invoice_TotalHT]  DEFAULT ((0)) FOR [TotalHT]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF_Sale_Invoice_TotalVTA]  DEFAULT ((0)) FOR [TotalVTA]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF_Sale_Invoice_TotalDiscount]  DEFAULT ((0)) FOR [TotalDiscount]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  CONSTRAINT [DF__Sale_Invo__IsVal__070CFC19]  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[Sale_Invoice] ADD  DEFAULT ((0)) FOR [IsPrinted]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] ADD  DEFAULT ((0)) FOR [Deliveried]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] ADD  DEFAULT ((0)) FOR [IsShipped]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] ADD  DEFAULT ((0)) FOR [IsDone]
GO
ALTER TABLE [dbo].[Sale_InvoicePayment] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_InvoicePayment] ADD  DEFAULT ((0)) FOR [IsPaied]
GO
ALTER TABLE [dbo].[Sale_Promotion] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_Promotion] ADD  DEFAULT ((1)) FOR [BaseType]
GO
ALTER TABLE [dbo].[Sale_Promotion] ADD  DEFAULT ((0)) FOR [DiscountOffer]
GO
ALTER TABLE [dbo].[Sale_Promotion] ADD  DEFAULT ((0)) FOR [VoucherOffer]
GO
ALTER TABLE [dbo].[Sale_Promotion] ADD  DEFAULT ((7)) FOR [VoucherDuration]
GO
ALTER TABLE [dbo].[Sale_Voucher] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Sale_Voucher] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Sale_Voucher] ADD  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[Sale_Voucher] ADD  DEFAULT ((0)) FOR [AmountType]
GO
ALTER TABLE [dbo].[Sale_Voucher] ADD  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[SalesPoint] ADD  CONSTRAINT [DF__SalesPoint__Id__75E27017]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SalesPoint] ADD  DEFAULT ((1)) FOR [SupportTableChooser]
GO
ALTER TABLE [dbo].[SalesPoint] ADD  DEFAULT ((0)) FOR [IsPrintDirect]
GO
ALTER TABLE [dbo].[SalesPoint] ADD  DEFAULT ('A4') FOR [PrintFormat]
GO
ALTER TABLE [dbo].[SalesPointWarehouse] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Stock_Transfert] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Stock_Transfert] ADD  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF__Supplier__Id__0D2FE9C3]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[UserRoles] ADD  CONSTRAINT [DF_UserRoles_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[UserRules] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsLogged]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [LoginBadPasswordAttempted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[WareHouse] ADD  CONSTRAINT [DF__WareHouse__Id__05F8DC4F]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Worker] ADD  CONSTRAINT [DF__Worker__Id__2DBCB4E6]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Worker] ADD  CONSTRAINT [DF__Worker__SalaryHo__5E5FEC41]  DEFAULT ((0)) FOR [SalaryHour]
GO
ALTER TABLE [dbo].[WorkerBonus] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkerJob] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkerPenalty] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkerTask] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkerTask] ADD  DEFAULT ((0)) FOR [FullDay]
GO
ALTER TABLE [dbo].[WorkingBonusType] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker] ADD  CONSTRAINT [DF__WorkingBonus__Id__0B27A5C0]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingPaymentPeriod] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingPaymentPeriod] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[WorkingPaymentPeriod] ADD  DEFAULT ((0)) FOR [TotalTimeRequired]
GO
ALTER TABLE [dbo].[WorkingPayPeriodWorker] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingPayPeriodWorker] ADD  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[WorkingPenaltyType] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingTimePeriod] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingTimeSheet] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingTimeSheet] ADD  DEFAULT (getdate()) FOR [TimeDay]
GO
ALTER TABLE [dbo].[WorkingTimeSheet] ADD  DEFAULT ((0)) FOR [IsValidated]
GO
ALTER TABLE [dbo].[WorkingTimeSheetFile] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[WorkingTimeSheetFile] ADD  DEFAULT (getdate()) FOR [TimeDay]
GO
ALTER TABLE [dbo].[WorkingTimeSheetFile] ADD  DEFAULT (getdate()) FOR [ImportedDate]
GO
ALTER TABLE [dbo].[WorkingWorkerRotation] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Accounting_BookAccount]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounting_Account] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_BookAccount]  WITH CHECK ADD FOREIGN KEY([BookId])
REFERENCES [dbo].[Accounting_Book] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_Entry]  WITH CHECK ADD  CONSTRAINT [FK__Accountin__Guide__2FCF1A8A] FOREIGN KEY([GuideId])
REFERENCES [dbo].[Accounting_EntryGuide] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_Entry] CHECK CONSTRAINT [FK__Accountin__Guide__2FCF1A8A]
GO
ALTER TABLE [dbo].[Accounting_EntryGuide]  WITH CHECK ADD  CONSTRAINT [FK__Accountin__BookI__29221CFB] FOREIGN KEY([BookId])
REFERENCES [dbo].[Accounting_Book] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_EntryGuide] CHECK CONSTRAINT [FK__Accountin__BookI__29221CFB]
GO
ALTER TABLE [dbo].[Accounting_EntryGuideLine]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounting_Account] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_EntryGuideLine]  WITH CHECK ADD  CONSTRAINT [FK__Accountin__Guide__2BFE89A6] FOREIGN KEY([Guideid])
REFERENCES [dbo].[Accounting_EntryGuide] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_EntryGuideLine] CHECK CONSTRAINT [FK__Accountin__Guide__2BFE89A6]
GO
ALTER TABLE [dbo].[Accounting_EntryLine]  WITH CHECK ADD FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounting_Account] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_EntryLine]  WITH CHECK ADD  CONSTRAINT [FK__Accountin__Entry__339FAB6E] FOREIGN KEY([EntryId])
REFERENCES [dbo].[Accounting_Entry] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accounting_EntryLine] CHECK CONSTRAINT [FK__Accountin__Entry__339FAB6E]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Civili__0E240DFC] FOREIGN KEY([CivilityId])
REFERENCES [dbo].[Civility] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Civili__0E240DFC]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Contac__0F183235] FOREIGN KEY([ContactStatutId])
REFERENCES [dbo].[ContactStatus] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Contac__0F183235]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Contac__100C566E] FOREIGN KEY([ContactActivityId])
REFERENCES [dbo].[ContactActivity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Contac__100C566E]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Contac__353DDB1D] FOREIGN KEY([ContactCategoryId])
REFERENCES [dbo].[ContactCategory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Contac__353DDB1D]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Paymen__11007AA7] FOREIGN KEY([PaymentMethodPreferedId])
REFERENCES [dbo].[PaymentMethod] ([Id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Paymen__11007AA7]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__SaleAc__4850AF91] FOREIGN KEY([SaleAccountEntryGuideId])
REFERENCES [dbo].[Accounting_EntryGuide] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__SaleAc__4850AF91]
GO
ALTER TABLE [dbo].[CustomerCard]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerCardPayment]  WITH CHECK ADD FOREIGN KEY([CardId])
REFERENCES [dbo].[CustomerCard] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerTask]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CustomerTask]  WITH CHECK ADD FOREIGN KEY([TaskTypeId])
REFERENCES [dbo].[TaskType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Expense]  WITH CHECK ADD FOREIGN KEY([ExpenseCategoryId])
REFERENCES [dbo].[ExpenseCategory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Holiday]  WITH CHECK ADD FOREIGN KEY([HolidayTypeId])
REFERENCES [dbo].[HolidayType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Holiday]  WITH CHECK ADD  CONSTRAINT [FK__Holiday__WorkerI__1A3FCC1E] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Holiday] CHECK CONSTRAINT [FK__Holiday__WorkerI__1A3FCC1E]
GO
ALTER TABLE [dbo].[ImportPrice]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD FOREIGN KEY([ProductUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD FOREIGN KEY([ProductUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD FOREIGN KEY([PurchaseUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ingredient_Purchase]  WITH CHECK ADD FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IngredientInventory]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Ingre__3BC0BB7A] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IngredientInventory] CHECK CONSTRAINT [FK__Ingredien__Ingre__3BC0BB7A]
GO
ALTER TABLE [dbo].[IngredientInventory]  WITH CHECK ADD  CONSTRAINT [FK__Ingredien__Unity__3E9D2825] FOREIGN KEY([UnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[IngredientInventory] CHECK CONSTRAINT [FK__Ingredien__Unity__3E9D2825]
GO
ALTER TABLE [dbo].[IngredientMouvementStock]  WITH CHECK ADD FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InitializeStock]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InitializeStock]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Inven__40257DE4] FOREIGN KEY([InventoryRuleId])
REFERENCES [dbo].[InventoryRule] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK__Inventory__Inven__40257DE4]
GO
ALTER TABLE [dbo].[Inventory_Line]  WITH CHECK ADD FOREIGN KEY([InventoryId])
REFERENCES [dbo].[Inventory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory_Line]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Line]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
GO
ALTER TABLE [dbo].[InventoryRule]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Produ__37FA4C37] FOREIGN KEY([ProductSubFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
GO
ALTER TABLE [dbo].[InventoryRule] CHECK CONSTRAINT [FK__Inventory__Produ__37FA4C37]
GO
ALTER TABLE [dbo].[InventoryRule]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Produ__38EE7070] FOREIGN KEY([ProductFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryRule] CHECK CONSTRAINT [FK__Inventory__Produ__38EE7070]
GO
ALTER TABLE [dbo].[InventoryRule]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Produ__39E294A9] FOREIGN KEY([ProductSubFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
GO
ALTER TABLE [dbo].[InventoryRule] CHECK CONSTRAINT [FK__Inventory__Produ__39E294A9]
GO
ALTER TABLE [dbo].[InventoryRule]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__WareH__3AD6B8E2] FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryRule] CHECK CONSTRAINT [FK__Inventory__WareH__3AD6B8E2]
GO
ALTER TABLE [dbo].[InventoryRule_Error]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Inven__3BCADD1B] FOREIGN KEY([InventoryRuleId])
REFERENCES [dbo].[InventoryRule] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryRule_Error] CHECK CONSTRAINT [FK__Inventory__Inven__3BCADD1B]
GO
ALTER TABLE [dbo].[MouvementStock]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MouvementStock]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Navigation_Card]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Navigation_CardType]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_BuildComponentOrder]  WITH CHECK ADD FOREIGN KEY([ComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_BuildComponentOrderStep]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[PAO_BuildComponentOrder] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_Component]  WITH CHECK ADD FOREIGN KEY([StockageUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ComponentInventory]  WITH CHECK ADD FOREIGN KEY([ComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ComponentMouvementStock]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ComponentMouvementStock_PAO_Component] FOREIGN KEY([ComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ComponentMouvementStock] CHECK CONSTRAINT [FK_PAO_ComponentMouvementStock_PAO_Component]
GO
ALTER TABLE [dbo].[PAO_ComponentStep]  WITH CHECK ADD FOREIGN KEY([ComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ComponentStep]  WITH CHECK ADD FOREIGN KEY([PreviousstepId])
REFERENCES [dbo].[PAO_ComponentStep] ([Id])
GO
ALTER TABLE [dbo].[PAO_ComponentStep]  WITH CHECK ADD FOREIGN KEY([UseComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
GO
ALTER TABLE [dbo].[PAO_Product]  WITH CHECK ADD  CONSTRAINT [FK_PAO_Product_Product_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_Product] CHECK CONSTRAINT [FK_PAO_Product_Product_Product]
GO
ALTER TABLE [dbo].[PAO_Product]  WITH CHECK ADD  CONSTRAINT [FK_PAO_Product_Product_Unity] FOREIGN KEY([PackageUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[PAO_Product] CHECK CONSTRAINT [FK_PAO_Product_Product_Unity]
GO
ALTER TABLE [dbo].[PAO_ProductInventory]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductInventory_PAO_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[PAO_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ProductInventory] CHECK CONSTRAINT [FK_PAO_ProductInventory_PAO_Product]
GO
ALTER TABLE [dbo].[PAO_ProductMouvementStock]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductMouvementStock_PAO_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[PAO_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ProductMouvementStock] CHECK CONSTRAINT [FK_PAO_ProductMouvementStock_PAO_Product]
GO
ALTER TABLE [dbo].[PAO_ProductStep]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductStep_Ingredient] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([Id])
GO
ALTER TABLE [dbo].[PAO_ProductStep] CHECK CONSTRAINT [FK_PAO_ProductStep_Ingredient]
GO
ALTER TABLE [dbo].[PAO_ProductStep]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductStep_PAO_Component] FOREIGN KEY([ComponentId])
REFERENCES [dbo].[PAO_Component] ([Id])
GO
ALTER TABLE [dbo].[PAO_ProductStep] CHECK CONSTRAINT [FK_PAO_ProductStep_PAO_Component]
GO
ALTER TABLE [dbo].[PAO_ProductStep]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductStep_PAO_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[PAO_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAO_ProductStep] CHECK CONSTRAINT [FK_PAO_ProductStep_PAO_Product]
GO
ALTER TABLE [dbo].[PAO_ProductStep]  WITH CHECK ADD  CONSTRAINT [FK_PAO_ProductStep_PAO_ProductStep] FOREIGN KEY([PreviousstepId])
REFERENCES [dbo].[PAO_ProductStep] ([Id])
GO
ALTER TABLE [dbo].[PAO_ProductStep] CHECK CONSTRAINT [FK_PAO_ProductStep_PAO_ProductStep]
GO
ALTER TABLE [dbo].[PAOTrackerQueue]  WITH CHECK ADD FOREIGN KEY([FamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAOTrackerQueue]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Sale_Invoice] ([Id])
GO
ALTER TABLE [dbo].[PAOTrackerQueue]  WITH CHECK ADD FOREIGN KEY([SalesPointId])
REFERENCES [dbo].[SalesPoint] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentMethodInterval]  WITH CHECK ADD FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayRollTax]  WITH CHECK ADD FOREIGN KEY([PayRollTaxAgencyId])
REFERENCES [dbo].[PayRollTaxAgency] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanningDay]  WITH CHECK ADD  CONSTRAINT [FK__PlanningD__Holid__0E990F48] FOREIGN KEY([HolidayTypeId])
REFERENCES [dbo].[HolidayType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanningDay] CHECK CONSTRAINT [FK__PlanningD__Holid__0E990F48]
GO
ALTER TABLE [dbo].[PlanningDay]  WITH CHECK ADD  CONSTRAINT [FK__PlanningD__NoWor__0CB0C6D6] FOREIGN KEY([NoWorkingDayTypeId])
REFERENCES [dbo].[NoWorkingDayType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanningDay] CHECK CONSTRAINT [FK__PlanningD__NoWor__0CB0C6D6]
GO
ALTER TABLE [dbo].[PlanningDay]  WITH CHECK ADD  CONSTRAINT [FK__PlanningD__Worke__09D45A2B] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanningDay] CHECK CONSTRAINT [FK__PlanningD__Worke__09D45A2B]
GO
ALTER TABLE [dbo].[PlanningDay]  WITH CHECK ADD  CONSTRAINT [FK__PlanningD__Worki__0F8D3381] FOREIGN KEY([WorkingTimePeriodTypeId])
REFERENCES [dbo].[WorkingTimePeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanningDay] CHECK CONSTRAINT [FK__PlanningD__Worki__0F8D3381]
GO
ALTER TABLE [dbo].[Product_Category]  WITH CHECK ADD  CONSTRAINT [FK__Product_C__Paren__184C96B4] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Product_Category] ([Id])
GO
ALTER TABLE [dbo].[Product_Category] CHECK CONSTRAINT [FK__Product_C__Paren__184C96B4]
GO
ALTER TABLE [dbo].[Product_Conversion]  WITH CHECK ADD FOREIGN KEY([UnitySourceId])
REFERENCES [dbo].[Product_Unity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Conversion]  WITH CHECK ADD FOREIGN KEY([UnityTargetId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[Product_Conversion]  WITH CHECK ADD FOREIGN KEY([UnityTargetId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD FOREIGN KEY([ProductFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD FOREIGN KEY([ProductSubFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD FOREIGN KEY([ProductSubFamillyId])
REFERENCES [dbo].[Product_Category] ([Id])
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD  CONSTRAINT [FK__Product_P__Produ__62AFA012] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[Product_ProductType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Product] CHECK CONSTRAINT [FK__Product_P__Produ__62AFA012]
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD FOREIGN KEY([PurchaseCategoryId])
REFERENCES [dbo].[PurchaseCategory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Product]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[Product_Status] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductType]  WITH CHECK ADD  CONSTRAINT [FK__Product_P__Purch__76EBA2E9] FOREIGN KEY([PurchaseUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_ProductType] CHECK CONSTRAINT [FK__Product_P__Purch__76EBA2E9]
GO
ALTER TABLE [dbo].[Product_ProductType]  WITH CHECK ADD  CONSTRAINT [FK__Product_P__SaleU__77DFC722] FOREIGN KEY([SaleUnityId])
REFERENCES [dbo].[Product_Unity] ([Id])
GO
ALTER TABLE [dbo].[Product_ProductType] CHECK CONSTRAINT [FK__Product_P__SaleU__77DFC722]
GO
ALTER TABLE [dbo].[Product_Promotion]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_WareHouse]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_WareHouse]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Invoice_PaymentMethod] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_Invoice] CHECK CONSTRAINT [FK_Purchase_Invoice_PaymentMethod]
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_InvoiceLine_Product_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine] CHECK CONSTRAINT [FK_Purchase_InvoiceLine_Product_Product]
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_InvoiceLine_Purchase_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Purchase_Invoice] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Purchase_InvoiceLine] CHECK CONSTRAINT [FK_Purchase_InvoiceLine_Purchase_Invoice]
GO
ALTER TABLE [dbo].[RoleRules]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleRules]  WITH CHECK ADD FOREIGN KEY([RuleId])
REFERENCES [dbo].[Rules] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Invoice_Currency] FOREIGN KEY([CurrencySaleId])
REFERENCES [dbo].[Currency] ([Id])
GO
ALTER TABLE [dbo].[Sale_Invoice] CHECK CONSTRAINT [FK_Sale_Invoice_Currency]
GO
ALTER TABLE [dbo].[Sale_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Invoice_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_Invoice] CHECK CONSTRAINT [FK_Sale_Invoice_Customer]
GO
ALTER TABLE [dbo].[Sale_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Invoice_PaymentMethod] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_Invoice] CHECK CONSTRAINT [FK_Sale_Invoice_PaymentMethod]
GO
ALTER TABLE [dbo].[Sale_Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Invoice_SalesPoint] FOREIGN KEY([SalesPointId])
REFERENCES [dbo].[SalesPoint] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_Invoice] CHECK CONSTRAINT [FK_Sale_Invoice_SalesPoint]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_Sale_InvoiceLine_Product_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] CHECK CONSTRAINT [FK_Sale_InvoiceLine_Product_Product]
GO
ALTER TABLE [dbo].[Sale_InvoiceLine]  WITH CHECK ADD  CONSTRAINT [FK_Sale_InvoiceLine_Sale_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Sale_Invoice] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_InvoiceLine] CHECK CONSTRAINT [FK_Sale_InvoiceLine_Sale_Invoice]
GO
ALTER TABLE [dbo].[Sale_InvoicePayment]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Sale_Invoice] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sale_Voucher]  WITH CHECK ADD FOREIGN KEY([CutomerId])
REFERENCES [dbo].[Customer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesPointWarehouse]  WITH CHECK ADD FOREIGN KEY([SalesPointId])
REFERENCES [dbo].[SalesPoint] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalesPointWarehouse]  WITH CHECK ADD FOREIGN KEY([WareHouseId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock_Transfert]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product_Product] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock_Transfert]  WITH CHECK ADD FOREIGN KEY([WareHouseSourceId])
REFERENCES [dbo].[WareHouse] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stock_Transfert]  WITH CHECK ADD FOREIGN KEY([WareHouseTargetId])
REFERENCES [dbo].[WareHouse] ([Id])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__Civili__0E240DFC] FOREIGN KEY([CivilityId])
REFERENCES [dbo].[Civility] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__Civili__0E240DFC]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__Contac__0F183235] FOREIGN KEY([ContactStatutId])
REFERENCES [dbo].[ContactStatus] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__Contac__0F183235]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__Contac__100C566E] FOREIGN KEY([ContactActivityId])
REFERENCES [dbo].[ContactActivity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__Contac__100C566E]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__Contac__353DDB1D] FOREIGN KEY([ContactCategoryId])
REFERENCES [dbo].[ContactCategory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__Contac__353DDB1D]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__Paymen__11007AA7] FOREIGN KEY([PaymentMethodPreferedId])
REFERENCES [dbo].[PaymentMethod] ([Id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__Paymen__11007AA7]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK__Supplier__SaleAc__4850AF91] FOREIGN KEY([PurchaseAccountEntryGuideId])
REFERENCES [dbo].[Accounting_EntryGuide] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK__Supplier__SaleAc__4850AF91]
GO
ALTER TABLE [dbo].[UserRules]  WITH CHECK ADD FOREIGN KEY([RuleId])
REFERENCES [dbo].[Rules] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRules]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD FOREIGN KEY([WorkerJob])
REFERENCES [dbo].[WorkerJob] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerBonus]  WITH CHECK ADD FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerBonus]  WITH CHECK ADD FOREIGN KEY([WorkingPaymentPeriodId])
REFERENCES [dbo].[WorkingPaymentPeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerPenalty]  WITH CHECK ADD FOREIGN KEY([PaymentPeriodId])
REFERENCES [dbo].[WorkingPaymentPeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerPenalty]  WITH CHECK ADD FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerTask]  WITH CHECK ADD FOREIGN KEY([TaskTypeId])
REFERENCES [dbo].[TaskType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkerTask]  WITH CHECK ADD FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK__WorkingBo__Bonus__7E8CC4B1] FOREIGN KEY([BonusTypeId])
REFERENCES [dbo].[WorkingBonusType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker] CHECK CONSTRAINT [FK__WorkingBo__Bonus__7E8CC4B1]
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK__WorkingBo__Worke__7FC0E00C] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker] CHECK CONSTRAINT [FK__WorkingBo__Worke__7FC0E00C]
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK__WorkingBo__Worki__00750D23] FOREIGN KEY([WorkingPaymentPeriodId])
REFERENCES [dbo].[WorkingPaymentPeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingBonusTypeWorker] CHECK CONSTRAINT [FK__WorkingBo__Worki__00750D23]
GO
ALTER TABLE [dbo].[WorkingPayPeriodWorker]  WITH CHECK ADD FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingPayPeriodWorker]  WITH CHECK ADD FOREIGN KEY([WorkingPaymentPeriodId])
REFERENCES [dbo].[WorkingPaymentPeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK_WorkingPenaltyTypeWorker_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker] CHECK CONSTRAINT [FK_WorkingPenaltyTypeWorker_Worker]
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK_WorkingPenaltyTypeWorker_WorkingPaymentPeriod] FOREIGN KEY([WorkingPaymentPeriodId])
REFERENCES [dbo].[WorkingPaymentPeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker] CHECK CONSTRAINT [FK_WorkingPenaltyTypeWorker_WorkingPaymentPeriod]
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker]  WITH CHECK ADD  CONSTRAINT [FK_WorkingPenaltyTypeWorker_WorkingPenaltyType] FOREIGN KEY([PenaltyTypeId])
REFERENCES [dbo].[WorkingPenaltyType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingPenaltyTypeWorker] CHECK CONSTRAINT [FK_WorkingPenaltyTypeWorker_WorkingPenaltyType]
GO
ALTER TABLE [dbo].[WorkingTimePeriod]  WITH CHECK ADD FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[WorkerJob] ([Id])
GO
ALTER TABLE [dbo].[WorkingTimeSheet]  WITH CHECK ADD  CONSTRAINT [FK__WorkingTi__Worke__47D18CA4] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingTimeSheet] CHECK CONSTRAINT [FK__WorkingTi__Worke__47D18CA4]
GO
ALTER TABLE [dbo].[WorkingWorkerRotation]  WITH CHECK ADD  CONSTRAINT [FK__WorkingWo__Worke__750E476F] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingWorkerRotation] CHECK CONSTRAINT [FK__WorkingWo__Worke__750E476F]
GO
ALTER TABLE [dbo].[WorkingWorkerRotation]  WITH CHECK ADD FOREIGN KEY([WorkingTimePeriodId])
REFERENCES [dbo].[WorkingTimePeriod] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO