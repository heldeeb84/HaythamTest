/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Todos]    Script Date: 10/28/2020 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Todos](
	[TodoID] [int] IDENTITY(1,1) NOT NULL,
	[TodoTitle] [nvarchar](max) NOT NULL,
	[UserID] [nvarchar](max) NULL,
	[TodoDate] [datetime] NOT NULL,
	[IsDone] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Todos] PRIMARY KEY CLUSTERED 
(
	[TodoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202010271807473_Init', N'Mandour.Migrations.Configuration', 0x1F8B0800000000000400CD57C96EDB4810BD07987F20789A00B6DACB256350091CC90E84C40B4225F71659921BD30BD3DD34A46FCB613E697E61AAB9B32959569C20035DA862F5AB577BF3DFEFFF44EFD682078FA00D53721C9E8E4EC20064A2522657E330B7CBE337E1BBB77FBC8AAE52B10EBED67AE74E0F4F4A330E1FACCD2E0831C903086A4682255A19B5B4A34409425345CE4E4EFE22A7A704102244AC20883EE7D23201C51FFC3B513281CCE694DFA814B8A9E4F8262E50835B2AC064348171784365AA723D2A35C3E092338A2C62E0CB30A0522A4B2D72BCF86220B65AC9559CA180F2F92603D45B526EA0E27ED1AA3FD78D9333E706690FD650496EAC1207029E9E577121FEF11F8A6ED8C40D23778511B61BE77511BD713857A9C278F9962E265C3B2D3FB2A342FF28A8A4474DF2B146DCEF2898E4DCE61AC61272AB293F0AEEF30567C947D8CCD5DF20C732E7BC4B0949E1BB9E0045F75A65A0EDE6332C3B4467D33020FDB3C43FDC1CF5CE95DECCA43D3F0B835B2441171C9ACC773C8FADD2F00124686A21BDA7D682C6C4CD5228623760B0C5DE9C590EB549AC376C9B1043B6FE0472651F5C4CD76170CDD690D6928AC617C9B0CBF090D539ECB384B5AC5BCF7E9919E7D01443511B72CF736CD32D517C1A6866A64A3630EF95E240E51E9488B4153BAC639C109632CC5465A1AA4A2786B5DD52D518B2AAB04DE57C9F71091B83ED7747CBA11C29A34ABE8D69C3A91D57A49C57F55C233B065B7443B30C73D81974952488CB2937398E0F1F01A2C42089D932091AB68D25AC7EBA02EF2D9A46A6D74C1B8BE9A70BEAF23449C540CDCBC08EE8D6C6BA41F627401BF35ADB3DF7F2DC9B493E401BBD6B744860F316BE41436287E1E2649C504EF58E4932513C17F2A9A9B40FA59A0F3E50257E3E563D01BA40B5EC30466583FB844AE9F391EA0EEFE2D4B2214A44BC04F925400635E0CD7EBFA09E6A475FA5B1DEB4A5D77E51D50AFB2F1F83DE2855C200C3F3C852D717F1C6581023A7308ABFF10967E86FAB8005CD96606CB92243BC039C797798FFCF7D821893F2E75C2A7EDB92672EB47BD7F881DB6BB0D7E523D5C903D57F0ABA7EDD853B7C77BF08CADFCF293EDB97EFE705B33F75370F17C88B566FD962E8ED4221E392E3CBB6F2B0DD23D2FD2289A660D8AA8570DF271212D7472D68AD33934B5587177DEA32AA55BCE8DF80A5983A7AA92D5BD2C4E2EB048C29EE745F29CF51E54A2C209DC9BBDC66B9BD3406C482F7EEA31179DA7E71F5E8738EEE32F7CFFC0C17902673D57727DFE78CA70DEFEB2DB5B303C25549D5B4C80AEFB408B7DA3448B78355B20BA80ADF143290AEE5E720328E60E64EC6F4117E841BF6EC2758D164534FEDDD20FB13D10F7B346574A5A93015467BDE7D6513F799FDF63FF1DC17BB980F0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202010280809471_Init1', N'Mandour.Migrations.Configuration', 0x1F8B0800000000000400CD57C96EDB4810BD0F907F2078CA008EDACB65C6A01238921D088917844AEE2DB22437D20BA7BB6948DF3687F9A4F985A9E6CEA6645956800974A18AD5AF5EEDCD7FFFFE27FAB0163C78026D9892E3F06C741A0620139532B91A87B95DBEFB23FCF0FECD6FD1752AD6C1F75AEFC2E9E14969C6E1A3B5D9252126790441CD48B0442BA3967694284168AAC8F9E9E99FE4EC8C004284881504D1D75C5A26A0F8837F274A2690D99CF25B950237951CDFC4056A704705988C26300E6FA94C55AE47A566185C714691450C7C1906544A65A9458E97DF0CC4562BB98A3314503EDF64807A4BCA0D54DC2F5BF597BA717AEEDC20EDC11A2AC98D55E240C0B38B2A2EC43FFEAAE8864DDC3072D71861BB715E17D11B8773952A8C976FE972C2B5D3F2233B2AF44F824A7AD2241F6BC4FD4E8249CE6DAE612C21B79AF293E0215F70967C86CD5CFD00399639E75D4A480ADFF504287AD02A036D375F61D9213A9B8601E99F25FEE1E6A877AEF46626EDC57918DC2109BAE0D064BEE3796C95864F2041530BE903B51634266E964211BB01832DF6E6CC72A84D62BD61DB8418B2F517902BFBE862BA0E831BB686B4965434BE49865D8687ACCE610BCDE74D6371EBD6D523ECEEF7708AB1A90DB9E739F6EDC17C6766AA6403F351290E54EE4189485BC2C3C2C6916129C3D45516AA32756258DB2D658E21AB2ADD54CEF71997B031D87EBBB41CCA1933AAE4DB98369CDAF945CA01560F3AB263D245B734CB30879DC9574982B81C7B9377F1E13341941824315B4643C3B6B184ED4057E0BD45D3C8F486696331FD74415D9E26A918A87919D811DDDA5837C8FE4868635E6BBBE75E9E7B43CA0768A377830E09ECE6C2376848EC305C9C8C13CAA9DE315A268AE7423E37A6F6A15403C307AAC42FC7AA274017A8961DC6A86C709F50297D3952DDE15D9C5A364489889720BF04C8A006BC65E017D473EDE8AB34D69BB6F4DA2FAA5A61FF6D64D01BA54A1860789E58EAFA22DE180B62E41446F15F7CC219FADB2A6041B325185BEECC102F05E7DEA5E6D7B960106352FE925BC6FFB6F5990BEDDEBD7EE0F61A2C7AF94475F248F55B41D7BF1FB9BC7762BD6641A7F86C8F5FD00B667FEA721E6E90A3766FD963E8ED4221E392E3716B79D8EF11E97EA34453306CD542B82F1609896BA416B4D699C9A5AAC38B3E7519D52A5EF46FC1524C1DBDD2962D6962F17502C61497BAEF94E7A8722D1690CEE47D6EB3DC5E190362C17B37D4883C6FBFB87BF43947F799FB677E860B4893B9EABB971F73C6D386F7CD96DAD901E1AAA4EA5A6485975A845B6D1AA4BBC12ED90554856F0A1948D7F37310194730732F63FA04AFE1863DFB055634D9D4637B37C8FE44F4C31E4D195D692A4C85D19E77DFDDC47D78BFFF0FF4EA39CFAA0F0000, N'6.4.4')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'132166dc-4a1b-4d27-842e-88336a3fcaef', N'haytddddddham@yahoo.com', 0, N'ADLt4tUqEmU5sRX7Zlqr33JdchjZpx9U8DTde2d8jZ9eVqmWvClo1gUQ4Re7EWch5Q==', N'0fe33ae2-d6dc-428b-aed3-31f2c4bb78a4', NULL, 0, 0, NULL, 1, 0, N'haytddddddham@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'da07ecd9-0a24-4c05-8fb9-257e2e59ff13', N'haythdddddam@yahoo.com', 0, N'ALswaIXonpZ41Noa5n5r9vpn95hkR/v/V7qbh8oHjX9Dbo8CWR/6yw7Zu+oThEpYjQ==', N'048be0d7-1de4-404a-b051-87bf5e62b9f5', NULL, 0, 0, NULL, 1, 0, N'haythdddddam@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e3fe9e65-7407-4406-9d70-4502d59c0208', N'haytham@yahoo.comAhmed', 0, N'AEwa2/fBstEveWCkLMw43OT79tf2n933OpD9pHPo17TVU6tllw09hfhBmNfgZuG5xw==', N'ef3f5153-3ec5-4765-970f-034de66da8ff', NULL, 0, 0, NULL, 1, 0, N'haytham@yahoo.comAhmed')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'fc43a90f-b803-42ad-ade8-62e024c9a08a', N'Haytham@yahoo.com', 0, N'AKyJs26E0Oo24TAaDkwRk/mDFCniC3d/hUvQIieRacsM6BeSxgfWx3X7JD3Cu5DJNQ==', N'62c34d11-db47-4c99-af5e-d403218f1d37', NULL, 0, 0, NULL, 1, 0, N'Haytham@yahoo.com')
SET IDENTITY_INSERT [dbo].[Todos] ON 

INSERT [dbo].[Todos] ([TodoID], [TodoTitle], [UserID], [TodoDate], [IsDone]) VALUES (2, N'Attend Class', N'e3fe9e65-7407-4406-9d70-4502d59c0208', CAST(N'2020-11-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Todos] ([TodoID], [TodoTitle], [UserID], [TodoDate], [IsDone]) VALUES (3, N'Goto Super Market ', N'fc43a90f-b803-42ad-ade8-62e024c9a08a', CAST(N'2020-10-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Todos] ([TodoID], [TodoTitle], [UserID], [TodoDate], [IsDone]) VALUES (4, N'Goto Doctor', N'fc43a90f-b803-42ad-ade8-62e024c9a08a', CAST(N'2020-11-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Todos] ([TodoID], [TodoTitle], [UserID], [TodoDate], [IsDone]) VALUES (6, N'Ahmed Weddingg', N'fc43a90f-b803-42ad-ade8-62e024c9a08a', CAST(N'2020-10-30T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Todos] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/28/2020 4:03:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
