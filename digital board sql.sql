USE [MBGSPMainDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/4/2023 9:42:00 PM ******/
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
/****** Object:  Table [dbo].[TVDash_CebuImages]    Script Date: 7/4/2023 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_CebuImages](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Floor] [int] NOT NULL,
	[Order] [int] NOT NULL DEFAULT ((0)),
	[ImageKey] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[Content] [varchar](max) NULL,
 CONSTRAINT [PK_TVDash_CebuImages] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVDash_ClarkImages]    Script Date: 7/4/2023 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TVDash_ClarkImages](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Floor] [int] NOT NULL,
	[ImageKey] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[Order] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_TVDash_ClarkImages] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TVDash_CommonUser]    Script Date: 7/4/2023 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_CommonUser](
	[User_id] [int] NOT NULL,
	[Username] [varchar](100) NULL,
	[Roles] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TVDash_Roles]    Script Date: 7/4/2023 9:42:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TVDash_Roles](
	[tvroles_id] [int] NOT NULL,
	[tvrolesid] [varchar](100) NULL,
	[rolename] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[tvroles_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230321082353_InitialCreate', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322071106_UpdateFloor', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605081041_Update', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605083509_RemoveUpdate', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605111433_ClarkImageAddition', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605122735_ClarkFloorChange', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605124140_CebuImages', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230607050544_AddOrderColumn', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230607054302_RemoveOrderColumn', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230613110355_OrderColumnAdded', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616085023_OrderColumnAdded1', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616085150_DefVal', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230616085421_DefVal', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619044944_UpdateClark', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619122256_RemoveString', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619125911_AddIdentity', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230619131004_AddImagekey', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230620045705_AddClarkColumn', N'3.1.31')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230629142005_AddContent', N'3.1.31')
SET IDENTITY_INSERT [dbo].[TVDash_CebuImages] ON 

INSERT [dbo].[TVDash_CebuImages] ([ImageID], [ImageName], [Floor], [Order], [ImageKey], [Content]) VALUES (2, N'Screenshot-2023-06-2-23-07-04-08434.png', 1, 2, N'6a89f71f-3541-41d4-8d6b-5cb5a2d73571', NULL)
INSERT [dbo].[TVDash_CebuImages] ([ImageID], [ImageName], [Floor], [Order], [ImageKey], [Content]) VALUES (3, N'1687182278758-23-07-04-084412.png', 1, 1, N'c18e83c5-8b99-4201-a3c4-95517fbec66d', NULL)
INSERT [dbo].[TVDash_CebuImages] ([ImageID], [ImageName], [Floor], [Order], [ImageKey], [Content]) VALUES (4, N'MBcolor-23-07-04-084556.jpg', 1, 0, N'787c3478-f169-4894-af0a-e8f14b30aa02', NULL)
INSERT [dbo].[TVDash_CebuImages] ([ImageID], [ImageName], [Floor], [Order], [ImageKey], [Content]) VALUES (5, N'finance---Copy-23-07-04-085518.jpg', 1, 0, N'9c24760e-daed-43f1-a962-228d160f1811', NULL)
INSERT [dbo].[TVDash_CebuImages] ([ImageID], [ImageName], [Floor], [Order], [ImageKey], [Content]) VALUES (6, N'Screenshot-2023-06-2-23-07-04-08584.png', 2, 0, N'79fa8c67-7d5c-4619-a37b-731b02a6a27a', NULL)
SET IDENTITY_INSERT [dbo].[TVDash_CebuImages] OFF
SET IDENTITY_INSERT [dbo].[TVDash_ClarkImages] ON 

INSERT [dbo].[TVDash_ClarkImages] ([ImageID], [ImageName], [Floor], [ImageKey], [Order]) VALUES (1, N'finance---Copy-23-07-04-085518.jpg', 2, N'90ed0584-02d8-4c45-a4f3-12a68f4c2792', 0)
INSERT [dbo].[TVDash_ClarkImages] ([ImageID], [ImageName], [Floor], [ImageKey], [Order]) VALUES (2, N'Screenshot-2023-06-2-23-07-04-08584.png', 3, N'0fe53aa6-8db4-4dbe-b545-a047e5aac2e8', 2)
INSERT [dbo].[TVDash_ClarkImages] ([ImageID], [ImageName], [Floor], [ImageKey], [Order]) VALUES (3, N'1687182278758---Copy-23-07-04-090749.png', 3, N'36bd5705-4f0b-4fe2-aba9-b0d247bb1b2c', 1)
INSERT [dbo].[TVDash_ClarkImages] ([ImageID], [ImageName], [Floor], [ImageKey], [Order]) VALUES (4, N'E-car-comp-23-07-04-090749.svg', 3, N'26b4bd98-dda2-4475-ac52-e216e69e95a8', 0)
SET IDENTITY_INSERT [dbo].[TVDash_ClarkImages] OFF
INSERT [dbo].[TVDash_CommonUser] ([User_id], [Username], [Roles]) VALUES (1, N'JOSOSAS', N'TVADMIN')
INSERT [dbo].[TVDash_CommonUser] ([User_id], [Username], [Roles]) VALUES (2, N'JERROJA', N'TVADMIN')
INSERT [dbo].[TVDash_Roles] ([tvroles_id], [tvrolesid], [rolename]) VALUES (1, N'TVADMIN', N'Admin')
INSERT [dbo].[TVDash_Roles] ([tvroles_id], [tvrolesid], [rolename]) VALUES (2, N'TVMANAGER', N'Manager')
