/****** Object:  UserDefinedFunction [dbo].[FNC_SplitKeyWord]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_SplitKeyWord](@keyword nvarchar(500)) RETURNS NVARCHAR(MAX)
AS
BEGIN
	declare @replaceTo nvarchar(500);

	declare @max int = len(@keyword);
	declare @c int = 0;
	declare @n nvarchar(5);

	declare @a nvarchar(1);

	SET @replaceTo = '';

	while @c <= @max
	begin
		set @a = SUBSTRING(@keyword, @c, 1);
	
		 if(@a <> '')
	
		 BEGIN
			SELECT @n = CASE WHEN ASCII(@a) Between 65 AND 90 THEN
				' ' + @a ELSE @a END

			SET @replaceTo = @replaceTo + @n;
		END

		set @c = @c + 1
	end

	RETURN RTRIM(LTRIM(@replaceTo));

END
GO
/****** Object:  Table [dbo].[EventEntry]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventEntry](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[ObjectType] [nvarchar](128) NOT NULL,
	[EventType] [nvarchar](25) NOT NULL,
	[ObjectPrimarykey] [uniqueidentifier] NULL,
	[IsExecuted] [bit] NOT NULL,
	[ExecuteDate] [datetime] NULL,
	[ExecuteResultat] [int] NULL,
	[ExecuteResultatMessage] [nvarchar](max) NULL,
	[IsStarted] [bit] NULL,
	[StartedDate] [datetime] NULL,
	[StartBy] [nvarchar](128) NULL,
	[StartOn] [nvarchar](255) NULL,
	[ProcessorInstance] [nvarchar](255) NULL,
	[EventArgument] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[History]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[ObjectType] [nvarchar](128) NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[HistoryVersion] [int] NOT NULL,
	[ObjectPrimaryKey] [uniqueidentifier] NOT NULL,
	[UserLogin] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Interface_Translation]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interface_Translation](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](128) NOT NULL,
	[LanguageId] [uniqueidentifier] NOT NULL,
	[ViewName] [nvarchar](128) NULL,
	[KeyWord] [nvarchar](500) NULL,
	[KeyValue] [nvarchar](max) NULL,
 CONSTRAINT [PK__Interfac__3214EC072387D34D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[LogEvent]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogEvent](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[EventSource] [nvarchar](128) NOT NULL,
	[EventLevel] [int] NOT NULL,
	[EventSubject] [nvarchar](500) NOT NULL,
	[EventMessage] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Media]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [uniqueidentifier] NOT NULL,
	[OrganizationId] [uniqueidentifier] NOT NULL,
	[MediaType] [nvarchar](255) NULL,
	[MediaKey] [nvarchar](500) NULL,
	[MediaContent] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Organization]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DatabaseCnx] [nvarchar](128) NOT NULL,
	[LicenseKey] [nvarchar](128) NOT NULL,
	[StartUsageDate] [datetime] NOT NULL,
	[EndUsageDate] [datetime] NULL,
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Translation_Language]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translation_Language](
	[Id] [uniqueidentifier] NOT NULL,
	[LanguageCode] [nvarchar](10) NULL,
	[LanguageName] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
ALTER TABLE [dbo].[ChatRoom] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[EventEntry] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[History] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[History] ADD  DEFAULT ((1)) FOR [HistoryVersion]
GO
ALTER TABLE [dbo].[Interface_Translation] ADD  CONSTRAINT [DF__Interface_Tr__Id__2BFE89A6]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[LogEvent] ADD  DEFAULT (getdate()) FOR [EventDate]
GO
ALTER TABLE [dbo].[Media] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Organization] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Organization] ADD  DEFAULT (getdate()) FOR [StartUsageDate]
GO
ALTER TABLE [dbo].[Translation_Language] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[EventEntry]  WITH CHECK ADD FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Interface_Translation]  WITH CHECK ADD  CONSTRAINT [FK__Interface__Langu__2CF2ADDF] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Translation_Language] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Interface_Translation] CHECK CONSTRAINT [FK__Interface__Langu__2CF2ADDF]
GO
ALTER TABLE [dbo].[LogEvent]  WITH CHECK ADD FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

/****** Object:  StoredProcedure [dbo].[PRC_Get_History_LastVersion]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRC_Get_History_LastVersion]
AS
BEGIN 
	WITH CTE(OrgId, ObType, ObPK, MaxVersion)
	AS
	(
		Select OrganizationId, ObjectType, ObjectPrimaryKey, Max(HistoryVersion)
			 FROM History
			 Group by OrganizationId, ObjectType, ObjectPrimaryKey
	)
	Select History.* FROM History
	Inner join CTE on CTE.OrgId = History.OrganizationId
	 And CTE.ObType = History.ObjectType AND CTE.ObPK = History.ObjectPrimaryKey
	 And CTE.MaxVersion = History.HistoryVersion
END


GO
/****** Object:  StoredProcedure [dbo].[PRC_PURGE_HISTORY]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PRC_PURGE_HISTORY]
AS
BEGIN
	declare @sqlStatment nvarchar(4000);
	declare @date datetime = getdate();
	declare @datestr nvarchar(100);

	select @datestr = Convert(Varchar, datepart(year, @date)) + 
	Convert(Varchar, datepart(month, @date)) + 
	Convert(Varchar, datepart(day, @date)) + 
	Convert(Varchar, datepart(hour, @date)) + 
	Convert(Varchar, datepart(minute, @date)) +
	Convert(Varchar, datepart(SECOND, @date))

	declare @tableName nvarchar(128) = 'HISTORY_PURG_' + @datestr 

	Set @sqlStatment = 'Select * INTO ' + @tableName + ' FROM History;'

	PRINT @sqlStatment;

	EXEC sp_executesql @sqlStatment

	Declare @organizationId uniqueidentifier;
	Declare @objectType nvarchar(128);
	Declare @ObjectPrimaryKey uniqueidentifier;
	Declare @maVersion int;

	declare Version_cursor CURSOR FOR 
	Select OrganizationId, ObjectType, ObjectPrimaryKey, max(HistoryVersion) maxVersion FROM History
	group by OrganizationId, ObjectType, ObjectPrimaryKey;

	OPEN Version_cursor;

	FETCH NEXT FROM Version_cursor INTO @OrganizationId, @ObjectType, @ObjectPrimaryKey, @maVersion

	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM Version_cursor INTO  @OrganizationId, @ObjectType, @ObjectPrimaryKey, @maVersion
		DELETE FROM History WHERE OrganizationId = @OrganizationId
			AND ObjectType = @ObjectType AND ObjectPrimaryKey = @ObjectPrimaryKey
			AND HistoryVersion < @maVersion
	END

	CLOSE Version_cursor
	DEALLOCATE Version_cursor

END



GO
/****** Object:  StoredProcedure [dbo].[PRC_PURGE_LOGGING]    Script Date: 23/04/2015 07:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PRC_PURGE_LOGGING]
AS
BEGIN
	SET NOCOUNT ON;
	Truncate table [dbo].[LogEvent];
END
