USE [WebApiDb]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/14/2016 18:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [UserName], [Password], [Name]) VALUES (1, N'akhil', N'akhil', N'Akhil Mittal')
INSERT [dbo].[User] ([UserId], [UserName], [Password], [Name]) VALUES (2, N'api', N'api', N'API User')
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Tokens]    Script Date: 04/14/2016 18:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[TokenId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AuthToken] [nvarchar](250) NOT NULL,
	[IssuedOn] [datetime] NOT NULL,
	[ExpiresOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED 
(
	[TokenId] ASC,
	[AuthToken] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tokens] ON
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (17, 1, N'4bffc06f-d8b1-4eda-b4e6-df9568dd53b1', CAST(0x0000A5B80188281E AS DateTime), CAST(0x0000A5B90004E37E AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (18, 1, N'50978e84-b5e2-435a-9e50-775e50bd7eb8', CAST(0x0000A5BC011FB9A9 AS DateTime), CAST(0x0000A5BC0123D859 AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (19, 1, N'85d5ec6d-e7e3-442c-a9f2-d5eea8574779', CAST(0x0000A5BC0120C0EB AS DateTime), CAST(0x0000A5BC0124DF9B AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (20, 1, N'4b451415-8ee9-4af8-a9d7-9093eb365fcb', CAST(0x0000A5BC0121F75C AS DateTime), CAST(0x0000A5BC0126160C AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (21, 1, N'f2b39f7e-8b69-45ee-b111-6380c6cf946b', CAST(0x0000A5BC01225C9F AS DateTime), CAST(0x0000A5BC014B8F7F AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (22, 1, N'2c45ea7d-4643-48de-a7db-26c0343bfefa', CAST(0x0000A5BD00E67479 AS DateTime), CAST(0x0000A5BD00EA9329 AS DateTime))
INSERT [dbo].[Tokens] ([TokenId], [UserId], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (23, 1, N'4a6ec0ad-b643-44c4-9cc8-18cb88795880', CAST(0x0000A5BD00E6E4B7 AS DateTime), CAST(0x0000A5BD0172F817 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tokens] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 04/14/2016 18:45:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (1, N'laptop')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (3, N'Mobile')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (4, N'Xamarin')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (5, N'IPhone')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (6, N'Visual Studio')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (7, N'Samsung Phone')
INSERT [dbo].[Products] ([ProductId], [ProductName]) VALUES (8, N'Samsung Phone')
SET IDENTITY_INSERT [dbo].[Products] OFF
