CREATE DATABASE [project_prj301]
GO

USE [project_prj301]
GO

CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NULL,
	[address] [nvarchar](max) NULL,
	[roleId] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/14/2024 3:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/14/2024 3:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ammount] [float] NULL,
	[accountId] [int] NOT NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/14/2024 3:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/14/2024 3:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/14/2024 3:38:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (9, N'1', N'1', N'vvvvv', N'ddd', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (31, N'chào 🥒 ', N'151111', N'cmarshalle@eepurl.comww1111111111111', N'4182 Elgar Court', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (32, N'Viva', N'16', N'mtomasellof@privacy.gov.au', N'34357 Eagan Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (33, N'Vagram', N'17', N'jsapseedg@webeden.co.uk', N'6 Fallview Place', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (34, N'Duobam', N'18', N'kskiplorneh@geocities.jp', N'48528 Texas Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (35, N'Subin', N'19', N'tesmeadi@cisco.com', N'56801 Sachtjen Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (36, N'Solarbreeze', N'20', N'thulancej@imdb.com', N'7 Anniversary Place', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (37, N'Zathin', N'21', N'fshelbournek@reddit.com', N'89027 Grasskamp Center', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (38, N'Otcom', N'22', N'wfairningtonl@networksolutions.com', N'0763 Canary Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (39, N'Tempsoft', N'23', N'rmenim@weibo.com', N'46672 Graceland Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (42, N'Holdlamis', N'26', N'froscampp@soundcloud.com', N'4 Maywood Circle', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (43, N'Asoka', N'27', N'rmapstonq@psu.edu', N'621 Thierer Junction', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (44, N'Asoka', N'28', N'mfeavyourr@prweb.com', N'1 Petterle Street', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (45, N'Treeflex', N'29', N'kcastagnaros@flickr.com', N'02939 Anniversary Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (46, N'Alphazap', N'30', N'sleadbettert@cbc.ca', N'7451 Eastwood Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (47, N'Bytecard', N'31', N'jsayleu@earthlink.net', N'05907 Michigan Point', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (48, N'Zamit', N'32', N'dhowesv@usgs.gov', N'9 Harbort Parkway', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (49, N'Redhold', N'33', N'bkiddiew@columbia.edu', N'71 Hansons Center', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (50, N'Fixflex', N'34', N'lcyplerx@who.int', N'001 Oriole Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (51, N'Y-find', N'35', N'hchristofferseny@ebay.com', N'178 New Castle Terrace', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (52, N'Cookley', N'36', N'smatissoffz@hibu.com', N'21896 Upham Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (53, N'Asoka', N'37', N'jkubicki10@wikipedia.org', N'95 Waywood Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (54, N'Opela', N'38', N'jcobleigh11@theatlantic.com', N'8955 Erie Hill', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (55, N'Home Ing', N'39', N'mnormanton12@globo.com', N'0 American Ash Drive', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (56, N'Bigtax', N'40', N'kdrabble13@princeton.edu', N'216 Paget Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (57, N'Tampflex', N'41', N'bpanketh14@mail.ru', N'63 Larry Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (58, N'Stim', N'42', N'vbransby15@vk.com', N'79 Union Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (59, N'Flowdesk', N'43', N'jrominov16@google.de', N'7 Stoughton Lane', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (60, N'Lotlux', N'44', N'dfydoe17@bbb.org', N'5013 Kipling Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (61, N'Sub-Ex', N'45', N'cnoblett18@blog.com', N'86 Charing Cross Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (62, N'Regrant', N'46', N'msommerlin19@bigcartel.com', N'5 Dennis Park', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (63, N'Cookley', N'47', N'rbeddo1a@opensource.org', N'145 Trailsway Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (64, N'Greenlam', N'48', N'jperrat1b@timesonline.co.uk', N'653 Kennedy Terrace', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (65, N'Biodex', N'49', N'bbrian1c@abc.net.au', N'6 Lotheville Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (66, N'Quo Lux', N'50', N'cmilesop1d@cisco.com', N'28016 Little Fleur Hill', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (67, N'Treeflex', N'1', N'chugill0@xrea.com', N'586 Glendale Street', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (68, N'Matsoft', N'2', N'bmattersley1@netscape.com', N'9 Northridge Point', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (69, N'Fix San', N'3', N'djurs2@amazon.com', N'87534 Myrtle Court', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (70, N'Asoka', N'4', N'gvilliers3@bluehost.com', N'059 Waxwing Plaza', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (71, N'Opela', N'5', N'dlermit4@china.com.cn', N'6 Grover Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (72, N'Ronstring', N'6', N'iblincoe5@cmu.edu', N'7 Towne Circle', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (73, N'Fixflex', N'7', N'hflook6@nytimes.com', N'36622 Mcbride Terrace', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (74, N'Andalax', N'8', N'ipowers7@accuweather.com', N'5 Sommers Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (75, N'Zoolab', N'9', N'rfieldstone8@lulu.com', N'63 Dakota Lane', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (76, N'Otcom', N'10', N'mparsall9@facebook.com', N'49 Blackbird Hill', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (77, N'Sub-Ex', N'11', N'cgoskera@parallels.com', N'28036 Merrick Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (78, N'Fintone', N'12', N'sconlonb@abc.net.au', N'91270 Blue Bill Park Junction', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (79, N'Overhold', N'13', N'dpetroffc@gnu.org', N'256 Mcguire Pass', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (80, N'Veribet', N'14', N'tcalderad@hatena.ne.jp', N'662 Gulseth Place', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (81, N'Y-find', N'15', N'cmarshalle@eepurl.com', N'4182 Elgar Court', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (82, N'Viva', N'16', N'mtomasellof@privacy.gov.au', N'34357 Eagan Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (83, N'Vagram', N'17', N'jsapseedg@webeden.co.uk', N'6 Fallview Place', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (84, N'Duobam', N'18', N'kskiplorneh@geocities.jp', N'48528 Texas Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (85, N'Subin', N'19', N'tesmeadi@cisco.com', N'56801 Sachtjen Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (86, N'Solarbreeze', N'20', N'thulancej@imdb.com', N'7 Anniversary Place', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (87, N'Zathin', N'21', N'fshelbournek@reddit.com', N'89027 Grasskamp Center', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (88, N'Otcom', N'22', N'wfairningtonl@networksolutions.com', N'0763 Canary Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (89, N'Tempsoft', N'23', N'rmenim@weibo.com', N'46672 Graceland Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (90, N'Bigtax', N'24', N'acrumbien@diigo.com', N'661 Loftsgordon Lane', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (91, N'Trippledex', N'25', N'dcossomo@123-reg.co.uk', N'950 Schmedeman Plaza', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (92, N'Holdlamis', N'26', N'froscampp@soundcloud.com', N'4 Maywood Circle', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (93, N'Asoka', N'27', N'rmapstonq@psu.edu', N'621 Thierer Junction', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (94, N'Asoka', N'28', N'mfeavyourr@prweb.com', N'1 Petterle Street', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (95, N'Treeflex', N'29', N'kcastagnaros@flickr.com', N'02939 Anniversary Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (96, N'Alphazap', N'30', N'sleadbettert@cbc.ca', N'7451 Eastwood Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (97, N'Bytecard', N'31', N'jsayleu@earthlink.net', N'05907 Michigan Point', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (98, N'Zamit', N'32', N'dhowesv@usgs.gov', N'9 Harbort Parkway', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (99, N'Redhold', N'33', N'bkiddiew@columbia.edu', N'71 Hansons Center', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (100, N'Fixflex', N'34', N'lcyplerx@who.int', N'001 Oriole Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (101, N'Y-find', N'35', N'hchristofferseny@ebay.com', N'178 New Castle Terrace', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (102, N'Cookley', N'36', N'smatissoffz@hibu.com', N'21896 Upham Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (103, N'Asoka', N'37', N'jkubicki10@wikipedia.org', N'95 Waywood Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (104, N'Opela', N'38', N'jcobleigh11@theatlantic.com', N'8955 Erie Hill', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (105, N'Home Ing', N'39', N'mnormanton12@globo.com', N'0 American Ash Drive', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (106, N'Bigtax', N'40', N'kdrabble13@princeton.edu', N'216 Paget Avenue', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (107, N'Tampflex', N'41', N'bpanketh14@mail.ru', N'63 Larry Crossing', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (108, N'Stim', N'42', N'vbransby15@vk.com', N'79 Union Road', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (109, N'Flowdesk', N'43', N'jrominov16@google.de', N'7 Stoughton Lane', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (110, N'Lotlux', N'44', N'dfydoe17@bbb.org', N'5013 Kipling Way', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (111, N'Sub-Ex', N'45', N'cnoblett18@blog.com', N'86 Charing Cross Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (112, N'Regrant', N'46', N'msommerlin19@bigcartel.com', N'5 Dennis Park', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (113, N'Cookley', N'47', N'rbeddo1a@opensource.org', N'145 Trailsway Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (114, N'Greenlam', N'48', N'jperrat1b@timesonline.co.uk', N'653 Kennedy Terrace', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (115, N'Biodex', N'49', N'bbrian1c@abc.net.au', N'6 Lotheville Trail', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (116, N'Quo Lux', N'50', N'cmilesop1d@cisco.com', N'28016 Little Fleur Hill', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (117, N'2', N'2', N'2', N'2', 2)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleId]) VALUES (118, N'3', N'3', N'3', N'3', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'văn học')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'khoa học')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'kinh tế')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'chính trị')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (1, 133, 117, CAST(N'2024-03-12T23:04:43.503' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (2, 133, 117, CAST(N'2024-03-12T23:04:45.367' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (3, 56, 117, CAST(N'2024-03-12T23:09:26.507' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (4, 280, 9, CAST(N'2024-03-12T23:15:39.780' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (5, 224, 117, CAST(N'2024-03-13T03:11:54.257' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (6, 154, 117, CAST(N'2024-03-13T03:18:59.587' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (7, 132, 117, CAST(N'2024-03-13T03:39:27.790' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (8, 1876, 117, CAST(N'2024-03-13T03:40:50.053' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (9, 56, 9, CAST(N'2024-03-13T03:44:57.067' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (10, 372, 9, CAST(N'2024-03-13T03:45:34.000' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (11, 1120, 118, CAST(N'2024-03-13T04:46:48.337' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (12, 336, 117, CAST(N'2024-03-13T14:00:59.597' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (13, 1330, 9, CAST(N'2024-03-13T16:46:54.630' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (14, 56, 117, CAST(N'2024-03-13T20:15:53.740' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (15, 17, 32, CAST(N'2024-03-13T20:19:51.643' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (16, 124, 118, CAST(N'2024-03-13T20:30:02.407' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (17, 252, 37, CAST(N'2024-03-13T20:32:11.533' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (18, 798, 65, CAST(N'2024-03-13T20:44:50.667' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (19, 23, 65, CAST(N'2024-03-13T20:45:13.687' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (20, 395, 65, CAST(N'2024-03-13T20:46:23.443' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (21, 59, 65, CAST(N'2024-03-13T20:47:26.790' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (22, 103, 34, CAST(N'2024-03-13T20:50:02.657' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (23, 21, 34, CAST(N'2024-03-13T20:57:34.267' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (24, 79, 34, CAST(N'2024-03-13T20:57:55.090' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (25, 56, 9, CAST(N'2024-03-13T21:01:30.287' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (26, 133, 36, CAST(N'2024-03-13T21:02:47.790' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (27, 77, 42, CAST(N'2024-03-13T21:14:28.530' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (28, 621, 42, CAST(N'2024-03-13T21:15:37.303' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (29, 119, 118, CAST(N'2024-03-14T00:55:11.257' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (30, 56, 118, CAST(N'2024-03-14T01:41:42.683' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (31, 56, 118, CAST(N'2024-03-14T01:42:19.450' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (32, 92, 118, CAST(N'2024-03-14T02:52:36.173' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (33, 329, 45, CAST(N'2024-03-14T02:59:36.737' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (34, 97, 45, CAST(N'2024-03-14T03:03:13.140' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (35, 77, 44, CAST(N'2024-03-14T03:27:13.473' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (36, 46, 44, CAST(N'2024-03-14T03:28:40.657' AS DateTime))
INSERT [dbo].[Order] ([id], [ammount], [accountId], [createTime]) VALUES (37, 97, 118, CAST(N'2024-03-14T03:32:22.513' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (1, 2, 2, 6)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (2, 2, 3, 6)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (3, 8, 26, 7)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (4, 2, 9, 7)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (5, 28, 39, 8)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (6, 20, 53, 9)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (7, 1, 2, 9)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (8, 12, 3, 10)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (9, 20, 4, 10)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (10, 5, 2, 11)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (11, 10, 7, 11)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (12, 6, 8, 11)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (13, 6, 2, 12)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (14, 20, 2, 13)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (15, 10, 3, 13)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (16, 1, 2, 14)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (17, 1, 5, 15)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (18, 2, 2, 16)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (19, 2, 4, 16)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (20, 7, 7, 17)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (21, 12, 2, 18)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (22, 6, 3, 18)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (23, 1, 4, 19)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (24, 1, 5, 19)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (25, 6, 2, 20)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (26, 2, 3, 20)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (27, 1, 5, 20)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (28, 1, 12, 21)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (29, 1, 13, 21)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (30, 1, 6, 22)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (31, 1, 8, 22)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (32, 1, 3, 23)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (33, 1, 2, 24)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (34, 1, 12, 24)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (35, 1, 2, 25)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (36, 2, 2, 26)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (37, 1, 3, 26)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (38, 1, 2, 27)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (39, 1, 3, 27)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (40, 27, 12, 28)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (41, 1, 2, 29)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (42, 3, 3, 29)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (43, 1, 2, 30)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (44, 1, 2, 31)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (47, 4, 2, 33)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (48, 5, 3, 33)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (49, 1, 5, 34)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (51, 1, 2, 35)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (53, 1, 6, 36)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (54, 1, 4, 36)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (56, 1, 5, 37)
INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId]) VALUES (57, 1, 8, 37)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (2, N'Soldier of Fortune11111111', N'/PROJECT_HE176382_BuiTienQuat/images/7.jpg', 3, 56, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (3, N'Quốc gia khởi nghiệp', N'/PROJECT_HE176382_BuiTienQuat/images/21.jpg', 3, 21, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (4, N'Harry Potter và Phòng chứa Bí mật', N'/PROJECT_HE176382_BuiTienQuat/images/quickview-l4.jpg', 4, 6, N'Harry phải trải qua kỳ nghỉ hè cực kỳ kinh khủng tại gia đình dì dượng Dursley trước khi nhập học năm thứ hai tại Hogwarts. Cậu không được phép dùng pháp thuật ngoài khuôn khổ trường học, cũng không thể gửi thư cho bạn bè vì dì dượng của cậu đã nhốt con cú Hedwig vào lồng cả mùa hè. Tệ nhất là cậu cũng không nhận được lá thư nào từ bạn bè của cậu. Vào ngày sinh nhật thứ 12 của Harry, một gia tinh tên là Dobby bất ngờ xuất hiện tại phòng ngủ của cậu. Nó cảnh báo Harry sẽ gặp phải nguy hiểm nếu quay lại Hogwarts. Nó cũng thừa nhận chính nó đã chặn tất cả thư từ từ bạn bè của Harry, khiến cậu rất tức giận. Cậu quả quyết sẽ quay lại Hogwarts và đòi lại những bức thư, khiến Dobby phải "chơi bẩn" với cậu. Nó phù phép cho chiếc bánh kem rơi thẳng xuống đầu vị khách của dượng Vernon lúc gia đình Dursley đang tiếp khách, và tất cả bị quy về cho Harry. Để trừng phạt Harry, dượng Vernon lắp song sắt lên cửa sổ phòng ngủ, để cậu không còn đường quay lại Hogwarts nữa. Nhưng đêm hôm sau, Ron cùng hai anh trai là Fred và George đến giải cứu Harry bằng chiếc xe hơi bay của gia đình, và cậu trải qua những ngày còn lại của kỳ nghỉ hè tại Trang trại Hang Sóc, nhà của gia đình Weasley...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (5, N'Harry Potter và Tên tù nhân ngục Azkaban', N'/PROJECT_HE176382_BuiTienQuat/images/h3.jpg', 5, 17, N'Sau khi kết thúc năm học thứ 2, Harry phải trải qua kỳ nghỉ hè tồi tệ nữa tại gia đình Dursley. Cậu phải lén thực hành pháp thuật vào buổi đêm, cũng như phải có sự cho phép của dì dượng nếu muốn tham quan làng phù thủy Hogsmeade. Dượng Vernon chỉ đồng ý ký giấy tham quan nếu cậu che giấu khả năng pháp thuật và lễ phép với Marge - em gái của ông ta. Nhưng bà cô này liên tục sỉ vả Harry, thậm chí còn lăng mạ cha mẹ cậu. Harry trong cơn tức giận đã không kiểm soát được năng lực pháp thuật của mình, khiến bà cô phồng lên như quả bóng bay và trôi đi. Harry sau đó lập tức gói ghém hành lý rời khỏi nhà Dursley.....', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (6, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 6, 23, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (7, N'Harry Potter và Chiếc cốc lửa', N'/PROJECT_HE176382_BuiTienQuat/images/h4.jpg', 7, 36, N'Sau năm học thứ 3, Harry dành kỳ nghỉ hè của mình tại gia đình Weasley. Nhưng suốt cả mùa hè, cậu luôn mơ thấy một giấc mơ kỳ lạ. Cậu thấy Voldemort trong cơ thể tàn tạ tại dinh thự Riddle, đang bàn bạc với thuộc hạ của mình gồm Peter Pettigrew và một tên lạ mặt khác về việc giết cậu và hồi sinh hắn. Rồi cậu choàng tỉnh khi Hermione lay cậu dậy để đi xem trận chung kết Quidditch World Cup cùng gia đình Weasley và gia đình Diggory. Sau khi trận đấu kết thúc, khi tất cả mọi người đang ăn mừng chức vô địch của Ireland, một đám Tử thần Thực tử - tay sai của Voldemort - bất ngờ tấn công và phóng hỏa khu cắm trại. May mắn là Harry cùng bạn bè của cậu không có ai bị thương....', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (8, N'Thế giới phẳng', N'/PROJECT_HE176382_BuiTienQuat/images/l2.jpg', 8, 80, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (9, N'Nhà đầu tư thông minh', N'/PROJECT_HE176382_BuiTienQuat/images/l3.jpg', 9, 66, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (10, N'Harry Potter và hội Phượng Hoàng', N'/PROJECT_HE176382_BuiTienQuat/images/h5.jpg', 10, 44, N'Sau năm học thứ 4, Harry trở về gia đình Dursley để nghỉ hè. Trong một lần xung đột với Dudley và đám bạn của cậu ta ở công viên, cả bọn bất ngờ bị lũ Giám Ngục truy đuổi. Chúng tấn công Dudley, khiến Harry phải dùng Bùa Hộ Mệnh để cứu anh họ của mình. Arabella Figg xuất hiện và đưa hai đứa về nhà. Bà cũng cho biết mình được cụ Dumbledore cắt cử theo dõi Harry. Tối hôm đó, Harry nhận được thư từ Bộ Pháp Thuật, nói rằng cậu đã bị đuổi học vì đã dùng pháp thuật trước mặt Muggle, và phải giải trình trước tòa. Nhưng đến đêm, một số thành viên của Hội Phượng Hoàng xuất hiện, báo với Harry rằng cụ Dumbledore đã xin đình chỉ lệnh đuổi học Harry, và đưa cậu đến căn cứ của Hội tại số 12 Quảng trường Grimmauld, cũng là nhà của gia đình Black. Cậu gặp lại những người bạn của mình, cả gia đình Weasley, chú Sirius và thầy Lupin. Ron và Hermione cho biết họ không thể gửi thư cho Harry theo lệnh của cụ Dumbledore. Tại đây, Harry biết về sự tồn tại của Hội Phượng Hoàng ...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (11, N'Other Side of the Bed, The (Otro lado de la cama, El)', N'/PROJECT_HE176382_BuiTienQuat/images/k2.jpg', 11, 23, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (12, N'Personal Velocity', N'/PROJECT_HE176382_BuiTienQuat/images/h8.jpg', 12, 23, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (13, N'Suy nghĩ và làm giàu', N'/PROJECT_HE176382_BuiTienQuat/images/l4.jpg', 13, 36, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (14, N'Hitler: A Film from Germany (Hitler - ein Film aus Deutschland)', N'/PROJECT_HE176382_BuiTienQuat/images/9.jpg', 14, 87, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (15, N'Making the Grade', N'/PROJECT_HE176382_BuiTienQuat/images/10.jpg', 15, 43, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (16, N'9 Star Hotel (Malon 9 Kochavim)', N'/PROJECT_HE176382_BuiTienQuat/images/7.jpg', 16, 64, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (17, N'Complete History of My Sexual Failures, A', N'/PROJECT_HE176382_BuiTienQuat/images/3.jpg', 17, 29, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (18, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 18, 67, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (19, N'Harry Potter và Hoàng tử lai', N'/PROJECT_HE176382_BuiTienQuat/images/5.jpg', 19, 81, N'Một thời đại tăm tối đã cận kề. Voldemort đã trở lại, và các Tử thần Thực tử ngang nhiên lộng hành. Chúng tàn phá Hẻm Xéo, sát hại rất nhiều người, thậm chí tàn phá cả thế giới Muggle. Một ngày nọ, cụ Dumbledore bất ngờ xuất hiện tại nhà Dursley và đưa Harry đến một ngôi làng, nơi họ gặp một vị giáo sư đã về hưu là Horace Slughorn, cựu giáo viên môn Độc dược và cũng là cựu Chủ nhiệm Nhà Slytherin. Ông hiện tại đang bị đám Tử Thần Thực Tử truy nã và phải thay đổi nơi ở liên tục. Mục đích của cụ Dumbledore là muốn Slughorn trở lại Hogwarts dạy học và canh chừng Harry, và Slughorn đã đồng ý. Cụ sau đó đưa Harry đến nhà Weasley. Cả Hermione và Fleur Delacour, giờ là bạn gái của Bill, con trai cả nhà Weasley, cũng đang ở đây. Ron cho biết cha mẹ cậu không muốn cậu và Ginny đến Hogwarts...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (20, N'Harry Potter và bảo bối tử thần', N'/PROJECT_HE176382_BuiTienQuat/images/h7.jpg', 20, 32, N'Voldemort cùng đám tay chân của hắn đang âm mưu tấn công Harry. Voldemort quả quyết rằng Harry phải do chính hắn giết. Nhưng hắn cần cây đũa phép khác, vì cây đũa của hắn và đũa của Harry có chung cấu tạo nên không thể giết đối phương. Hắn sau đó chọn cây đũa của Lucius để trừng phạt cho những thất bại liên tiếp của nhà Malfoy...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (21, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 21, 51, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (22, N'Jar City (M?rin)', N'/PROJECT_HE176382_BuiTienQuat/images/7.jpg', 22, 67, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (23, N'Snow on Tha Bluff', N'/PROJECT_HE176382_BuiTienQuat/images/7.jpg', 23, 30, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (24, N'On Her Majesty''s Secret Service', N'/PROJECT_HE176382_BuiTienQuat/images/13.jpg', 24, 35, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (25, N'Anazapta (Black Plague)', N'/PROJECT_HE176382_BuiTienQuat/images/21.jpg', 25, 70, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (26, N'Only Son, The (Hitori musuko)', N'/PROJECT_HE176382_BuiTienQuat/images/23.jpg', 26, 91, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (27, N'Beslan: Three Days in September', N'/PROJECT_HE176382_BuiTienQuat/images/8.jpg', 27, 12, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (28, N'The Next Voice You Hear....', N'/PROJECT_HE176382_BuiTienQuat/images/2.jpg', 28, 78, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (29, N'Cheerleader Camp', N'/PROJECT_HE176382_BuiTienQuat/images/quickview-l2.jpg', 29, 14, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (30, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/quickview-s3.jpg', 30, 75, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (31, N'Videodrome', N'/PROJECT_HE176382_BuiTienQuat/images/k4.jpg', 31, 48, N'Khoa học là một hệ thống kiến thức về những định luật, cấu trúc và cách vận hành của thế giới tự nhiên, được đúc kết qua từng giai đoạn lịch sử thông qua việc quan sát, mô tả, đo đạc, thực nghiệm, phát triển lý thuyết bằng các phương pháp khoa học.[1] Thông qua các phương pháp nghiên cứu có kiểm soát, nhà khoa học sử dụng cách quan sát các dấu hiệu biểu hiện mang tính vật chất và bất thường của tự nhiên nhằm thu thập thông tin, rồi sắp xếp các thông tin đó thành dữ liệu để phân tích nhằm giải thích cách thức hoạt động, tồn tại của sự vật hiện tượng. Một trong những cách thức đó là phương pháp thử nghiệm nhằm mô phỏng hiện tượng tự nhiên dưới điều kiện kiểm soát được và các ý tưởng thử nghiệm. Tri thức trong khoa học là toàn bộ lượng thông tin mà các nghiên cứu đã tích lũy được. Định nghĩa về khoa học được chấp nhận phổ biến rằng khoa học là tri thức đã được hệ thống hóa.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (32, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/h9.jpg', 32, 31, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (33, N'Traveler, The (Mossafer)', N'/PROJECT_HE176382_BuiTienQuat/images/k3.jpg', 33, 82, N'Kinh tế (Tiếng Anh: economy) là một lĩnh vực sản xuất, phân phối và thương mại, cũng như tiêu dùng hàng hóa và dịch vụ. Tổng thể, nó được định nghĩa là một lĩnh vực xã hội tập trung vào các hoạt động, tranh luận và các biểu hiện vật chất gắn liền với việc sản xuất, sử dụng và quản lý các nguồn tài nguyên khan hiếm.[1] Một nền kinh tế là một tập hợp các quá trình liên quan đến văn hóa, giá trị, giáo dục, phát triển công nghệ, lịch sử, tổ chức xã hội, cấu trúc chính trị, hệ thống luật pháp và tài nguyên thiên nhiên làm các yếu tố chính. Những yếu tố này cung cấp bối cảnh, nội dung và thiết lập các điều kiện và thông số mà một nền kinh tế vận hành. Nói cách khác, lĩnh vực kinh tế là một lĩnh vực xã hội bao gồm các hoạt động và giao dịch của con người có liên quan với nhau mà không đứng riêng lẻ.', 3)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (34, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 34, 11, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (36, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 36, 18, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (37, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 37, 70, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (38, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 38, 93, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (39, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 39, 67, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (40, N'Sách chính trị | Tư liệu văn kiện Đảng', N'/PROJECT_HE176382_BuiTienQuat/images/c1.jpg', 40, 41, N'Điều lệ Đảng là văn bản pháp lý cơ bản của Đảng, xác định tôn chỉ, mục đích, hệ tư tưởng, các nguyên tắc về tổ chức, hoạt động, cơ cấu bộ máy của Đảng; quy định trách nhiệm, nghĩa vụ, quyền hạn của đảng viên và của tổ chức đảng các cấp.

Mục đích của việc xây dựng Điều lệ Đảng là nhằm thống nhất tư tưởng, tổ chức và hành động trong toàn Đảng, thực hiện mục tiêu của Đảng. Điều lệ Đảng do Đại hội đại biểu toàn quốc của Đảng thông qua và ban hành. Mọi tổ chức đảng và đảng viên đều phải chấp hành Điều lệ Đảng.', 4)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (53, N'1', N'/PROJECT_HE176382_BuiTienQuat/images/11.jpg', 1, 1, N'1', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [project_prj301] SET  READ_WRITE 
GO
