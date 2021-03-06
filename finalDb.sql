USE [master]
GO
/****** Object:  Database [gdfhrms]    Script Date: 24/03/2021 7:44:00 pm ******/
CREATE DATABASE [gdfhrms]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gdfhrms', FILENAME = N'C:\Users\samki\gdfhrms.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gdfhrms_log', FILENAME = N'C:\Users\samki\gdfhrms_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [gdfhrms] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gdfhrms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gdfhrms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gdfhrms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gdfhrms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gdfhrms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gdfhrms] SET ARITHABORT OFF 
GO
ALTER DATABASE [gdfhrms] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [gdfhrms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gdfhrms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gdfhrms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gdfhrms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gdfhrms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gdfhrms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gdfhrms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gdfhrms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gdfhrms] SET  ENABLE_BROKER 
GO
ALTER DATABASE [gdfhrms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gdfhrms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gdfhrms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gdfhrms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gdfhrms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gdfhrms] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [gdfhrms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gdfhrms] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gdfhrms] SET  MULTI_USER 
GO
ALTER DATABASE [gdfhrms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gdfhrms] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gdfhrms] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gdfhrms] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gdfhrms] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gdfhrms] SET QUERY_STORE = OFF
GO
USE [gdfhrms]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [gdfhrms]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lot] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NULL,
	[Area] [nvarchar](max) NULL,
	[Village] [nvarchar](max) NULL,
	[Reg] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[EId] [int] NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareerHistories]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareerHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EId] [int] NOT NULL,
	[DeptId] [int] NULL,
	[PosId] [int] NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CareerHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePIs]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePIs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NId] [int] NOT NULL,
	[RId] [int] NULL,
	[EId] [int] NULL,
	[MId] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Fname] [nvarchar](max) NULL,
	[Lname] [nvarchar](max) NULL,
	[Oname] [nvarchar](max) NULL,
	[RNumber] [int] NOT NULL,
	[Dob] [datetime2](7) NOT NULL,
	[Sex] [nvarchar](max) NULL,
	[NidNumber] [int] NOT NULL,
	[PNumber] [nvarchar](max) NULL,
	[PExpirationDate] [datetime2](7) NOT NULL,
	[TinNumber] [int] NOT NULL,
	[CNumber] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[HNumber] [int] NOT NULL,
	[WNumber] [int] NOT NULL,
 CONSTRAINT [PK_EmployeePIs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ethnicities]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethnicities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Ethnicities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaritalStatuses]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MaritalStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationalities]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationalities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Nationalities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religions]    Script Date: 24/03/2021 7:44:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Religions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210316205151_newDb', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210324183456_removedTheContactInfoModelAndMadeAddressACHildOfEmployeePi', N'5.0.2')
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([Id], [Lot], [Street], [Area], [Village], [Reg], [Ctry], [EId]) VALUES (3, N'some lot', N'ssome street', N'a area', N'a village', 1, 1, 2)
INSERT [dbo].[Addresses] ([Id], [Lot], [Street], [Area], [Village], [Reg], [Ctry], [EId]) VALUES (5, N'another lot', N'another street', N'another area', N'another village', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[CareerHistories] ON 

INSERT [dbo].[CareerHistories] ([Id], [EId], [DeptId], [PosId], [StartDate], [EndDate]) VALUES (1, 2, 1, 1, CAST(N'2017-09-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CareerHistories] ([Id], [EId], [DeptId], [PosId], [StartDate], [EndDate]) VALUES (3, 2, 2, 1, CAST(N'2016-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2016-09-02T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CareerHistories] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name]) VALUES (1, N'Guyana')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [Description], [Location]) VALUES (1, N'Gpd', N'some deswc', N'Faainance')
INSERT [dbo].[Departments] ([Id], [Name], [Description], [Location]) VALUES (2, N'Finance', N'Handles Paychecks', N'Opposite GPD')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeePIs] ON 

INSERT [dbo].[EmployeePIs] ([Id], [NId], [RId], [EId], [MId], [Title], [Fname], [Lname], [Oname], [RNumber], [Dob], [Sex], [NidNumber], [PNumber], [PExpirationDate], [TinNumber], [CNumber], [Email], [HNumber], [WNumber]) VALUES (2, 1, 1, 1, 1, N'Mr', N'Michael', N'Jackson', N'Dancer', 398765, CAST(N'1960-03-10T21:11:07.0000000' AS DateTime2), N'Male', 11213134, N'B212133', CAST(N'2023-03-10T21:11:07.6970000' AS DateTime2), 1553325, 2232432, N'some@sum.com', 3214579, 2134567)
INSERT [dbo].[EmployeePIs] ([Id], [NId], [RId], [EId], [MId], [Title], [Fname], [Lname], [Oname], [RNumber], [Dob], [Sex], [NidNumber], [PNumber], [PExpirationDate], [TinNumber], [CNumber], [Email], [HNumber], [WNumber]) VALUES (3, 1, 1, 1, 1, N'Mrs', N'Nancy', N'Drew', N'Mysteries', 123456, CAST(N'1969-03-24T19:39:27.4050000' AS DateTime2), N'Female', 1122331, N'B232344', CAST(N'2023-03-24T19:39:27.4050000' AS DateTime2), 1233219, 1234567, N'test@test.com', 7654321, 1235674)
SET IDENTITY_INSERT [dbo].[EmployeePIs] OFF
GO
SET IDENTITY_INSERT [dbo].[Ethnicities] ON 

INSERT [dbo].[Ethnicities] ([Id], [Name]) VALUES (1, N'CHinese')
SET IDENTITY_INSERT [dbo].[Ethnicities] OFF
GO
SET IDENTITY_INSERT [dbo].[MaritalStatuses] ON 

INSERT [dbo].[MaritalStatuses] ([Id], [Name]) VALUES (1, N'Married')
SET IDENTITY_INSERT [dbo].[MaritalStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Nationalities] ON 

INSERT [dbo].[Nationalities] ([Id], [Name]) VALUES (1, N'Guyanese')
SET IDENTITY_INSERT [dbo].[Nationalities] OFF
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([Id], [Name]) VALUES (1, N'Cadet')
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([Id], [Name]) VALUES (1, N'Demerara-Mahaica')
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[Religions] ON 

INSERT [dbo].[Religions] ([Id], [Name]) VALUES (1, N'Hindu')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (2, N'Christianity')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (3, N'Christian')
SET IDENTITY_INSERT [dbo].[Religions] OFF
GO
/****** Object:  Index [IX_Addresses_Ctry]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_Ctry] ON [dbo].[Addresses]
(
	[Ctry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Addresses_EId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_EId] ON [dbo].[Addresses]
(
	[EId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Addresses_Reg]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_Reg] ON [dbo].[Addresses]
(
	[Reg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CareerHistories_DeptId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_CareerHistories_DeptId] ON [dbo].[CareerHistories]
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CareerHistories_EId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_CareerHistories_EId] ON [dbo].[CareerHistories]
(
	[EId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CareerHistories_PosId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_CareerHistories_PosId] ON [dbo].[CareerHistories]
(
	[PosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeePIs_EId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_EmployeePIs_EId] ON [dbo].[EmployeePIs]
(
	[EId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeePIs_MId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_EmployeePIs_MId] ON [dbo].[EmployeePIs]
(
	[MId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeePIs_NId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_EmployeePIs_NId] ON [dbo].[EmployeePIs]
(
	[NId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeePIs_RId]    Script Date: 24/03/2021 7:44:02 pm ******/
CREATE NONCLUSTERED INDEX [IX_EmployeePIs_RId] ON [dbo].[EmployeePIs]
(
	[RId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT (N'') FOR [Lot]
GO
ALTER TABLE [dbo].[EmployeePIs] ADD  DEFAULT ((0)) FOR [CNumber]
GO
ALTER TABLE [dbo].[EmployeePIs] ADD  DEFAULT ((0)) FOR [HNumber]
GO
ALTER TABLE [dbo].[EmployeePIs] ADD  DEFAULT ((0)) FOR [WNumber]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Countries_Ctry] FOREIGN KEY([Ctry])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Countries_Ctry]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_EmployeePIs_EId] FOREIGN KEY([EId])
REFERENCES [dbo].[EmployeePIs] ([Id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_EmployeePIs_EId]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Regions_Reg] FOREIGN KEY([Reg])
REFERENCES [dbo].[Regions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Regions_Reg]
GO
ALTER TABLE [dbo].[CareerHistories]  WITH CHECK ADD  CONSTRAINT [FK_CareerHistories_Departments_DeptId] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[CareerHistories] CHECK CONSTRAINT [FK_CareerHistories_Departments_DeptId]
GO
ALTER TABLE [dbo].[CareerHistories]  WITH CHECK ADD  CONSTRAINT [FK_CareerHistories_EmployeePIs_EId] FOREIGN KEY([EId])
REFERENCES [dbo].[EmployeePIs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CareerHistories] CHECK CONSTRAINT [FK_CareerHistories_EmployeePIs_EId]
GO
ALTER TABLE [dbo].[CareerHistories]  WITH CHECK ADD  CONSTRAINT [FK_CareerHistories_Positions_PosId] FOREIGN KEY([PosId])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[CareerHistories] CHECK CONSTRAINT [FK_CareerHistories_Positions_PosId]
GO
ALTER TABLE [dbo].[EmployeePIs]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePIs_Ethnicities_EId] FOREIGN KEY([EId])
REFERENCES [dbo].[Ethnicities] ([Id])
GO
ALTER TABLE [dbo].[EmployeePIs] CHECK CONSTRAINT [FK_EmployeePIs_Ethnicities_EId]
GO
ALTER TABLE [dbo].[EmployeePIs]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePIs_MaritalStatuses_MId] FOREIGN KEY([MId])
REFERENCES [dbo].[MaritalStatuses] ([Id])
GO
ALTER TABLE [dbo].[EmployeePIs] CHECK CONSTRAINT [FK_EmployeePIs_MaritalStatuses_MId]
GO
ALTER TABLE [dbo].[EmployeePIs]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePIs_Nationalities_NId] FOREIGN KEY([NId])
REFERENCES [dbo].[Nationalities] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeePIs] CHECK CONSTRAINT [FK_EmployeePIs_Nationalities_NId]
GO
ALTER TABLE [dbo].[EmployeePIs]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePIs_Religions_RId] FOREIGN KEY([RId])
REFERENCES [dbo].[Religions] ([Id])
GO
ALTER TABLE [dbo].[EmployeePIs] CHECK CONSTRAINT [FK_EmployeePIs_Religions_RId]
GO
USE [master]
GO
ALTER DATABASE [gdfhrms] SET  READ_WRITE 
GO
