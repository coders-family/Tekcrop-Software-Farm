USE [Techcrop]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPerson]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPerson](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactPerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPost]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPost](
	[Id] [bigint] IDENTITY(105324,15) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Desp] [nvarchar](max) NOT NULL,
	[Position] [nvarchar](100) NOT NULL,
	[Skill] [nvarchar](max) NOT NULL,
	[Vacancy] [nvarchar](50) NULL,
	[Nature] [nvarchar](50) NULL,
	[Experience] [nvarchar](100) NULL,
	[Requirements] [nvarchar](max) NULL,
	[Salary] [nvarchar](50) NULL,
	[AddedDate] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
	[LastDate] [datetime] NULL,
 CONSTRAINT [PK_JobPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruiter]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruiter](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CV] [nvarchar](50) NULL,
	[JobId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Recruiter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 4/8/2019 2:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ConfirmPassword] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b0104f70-1403-4ba9-a234-afaa1129fc20', N'ariful.funny@gmail.com', N'ARIFUL.FUNNY@GMAIL.COM', N'ariful.funny@gmail.com', N'ARIFUL.FUNNY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG8Abk7dC5cWGYefqy20KccdRQF2XSx3VenPGvFgOlIK/nSepUbIqIIzFuKfSKAJVQ==', N'CQHJSO457NI4QPW526WDLFJ4ZSHK5MEV', N'efbe2d3b-4f4d-4687-b08c-79eda6c01436', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ContactPerson] ON 

INSERT [dbo].[ContactPerson] ([Id], [Name], [Phone], [Email], [Message]) VALUES (4, N'Naimul islam', N'014833455558', N'iubat.naimul3070@gmail.com', N'i am naimul islam.. v')
INSERT [dbo].[ContactPerson] ([Id], [Name], [Phone], [Email], [Message]) VALUES (5, N'Naimul islam', N'014833455558', N'iubat.naimul3070@gmail.com', N'i am naimul islam.. very much interested to know about your company')
SET IDENTITY_INSERT [dbo].[ContactPerson] OFF
SET IDENTITY_INSERT [dbo].[JobPost] ON 

INSERT [dbo].[JobPost] ([Id], [Name], [Desp], [Position], [Skill], [Vacancy], [Nature], [Experience], [Requirements], [Salary], [AddedDate], [Address], [LastDate]) VALUES (135278, N'Android Developer', N'Take part in development as a member of our development teams.
Design and build advanced applications for the Android platform.
Work with outside data sources and API’s.
Test code for robustness, including edge cases, usability, and general reliability.
Work on bug fixing and improving application performance.
Continuously discover, evaluate, and implement new technologies to maximize development efficiency.
Translate client requirements into technical implementation.
Implementing new technologies and framework.
Perform project related communication with onshore counterparts.
Plan and execute unit tests.', N'Developer', N'Experience with Android SDK, Android Studio,  Eclipse IDE, Android SDK, NDK, and JNI experience', N'02', N'Full-time', N'1 to 2 year(s)', N'Bachelors degree in Engineering, Computer Science or Information Technology preferred.', N'Negotiable', CAST(N'2019-02-21T00:00:00.000' AS DateTime), N'Arlington, VA', CAST(N'2019-04-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[JobPost] OFF
INSERT [dbo].[Recruiter] ([Id], [Name], [Address], [Email], [Phone], [CV], [JobId]) VALUES (1, N'Ariful Islam', N'Uttara, dhaka-1230', N'naimul3070@hotmail.com', N'01773611681', N'CVFiles/1_135278_Ariful Islam.docx', N'135278')
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([UserID], [FirstName], [LastName], [Email], [Username], [Password], [ConfirmPassword]) VALUES (1, N'Ariful', N'Islam', N'arifulcse2743@gmail.com', N'ariful', N'Shanto668', N'Shanto668')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
