USE [NFL_Database]
GO
/****** Object:  ForeignKey [FK_Players_Teams]    Script Date: 01/19/2014 11:00:15 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Players_Teams]') AND parent_object_id = OBJECT_ID(N'[dbo].[Players]'))
ALTER TABLE [dbo].[Players] DROP CONSTRAINT [FK_Players_Teams]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 01/19/2014 11:00:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Players]') AND type in (N'U'))
DROP TABLE [dbo].[Players]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 01/19/2014 11:00:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teams]') AND type in (N'U'))
DROP TABLE [dbo].[Teams]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 01/19/2014 11:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Nickname] [nvarchar](50) NOT NULL,
	[Abbreviation] [nchar](3) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Teams] UNIQUE NONCLUSTERED 
(
	[Abbreviation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Teams] ON
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (1, N'Arizona', N'Cardinals', N'ARI')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (2, N'Atlanta', N'Falcons', N'ATL')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (3, N'Baltimore', N'Ravens', N'BAL')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (4, N'Buffalo', N' Bills', N'BUF')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (5, N'Carolina', N' Panthers', N'CAR')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (6, N'Chicago', N'Bears', N'CHI')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (7, N'Cincinnati', N'Bengals', N'CIN')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (8, N'Cleveland', N'Browns', N'CLE')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (9, N'Dallas', N'Cowboys', N'DAL')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (10, N'Denver', N'Broncos', N'DEN')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (11, N'Detroit', N'Lions', N'DET')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (12, N'Green Bay', N'Packers', N'GB ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (13, N'Houston', N'Texans', N'HOU')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (14, N'Indianapolis', N'Colts', N'IND')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (15, N'Jacksonville', N'Jaguars', N'JAC')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (16, N'Kansas City', N'Chiefs', N'KC ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (17, N'Miami', N'Dolphins', N'MIA')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (18, N'Minnesota', N'Vikings', N'MIN')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (19, N'New England', N'Patriots', N'NE ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (20, N'New Orleans', N'Saints', N'NO ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (21, N'New York', N'Giants', N'NYG')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (22, N'New York', N'Jets', N'NYJ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (23, N'Oakland', N'Raiders', N'OAK')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (24, N'Philadelphia', N'Eagles', N'PHI')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (25, N'Pittsburgh', N'Steelers', N'PIT')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (26, N'San Diego', N'Chargers', N'SD ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (27, N'Seattle', N'Seahawks', N'SEA')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (28, N'San Francisco', N'49ers', N'SF ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (29, N'St. Louis', N'Rams', N'STL')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (30, N'Tampa Bay', N'Buccaneers', N'TB ')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (31, N'Tennessee', N'Titans', N'TEN')
INSERT [dbo].[Teams] ([TeamID], [Location], [Nickname], [Abbreviation]) VALUES (32, N'Washington', N'Redskins', N'WAS')
SET IDENTITY_INSERT [dbo].[Teams] OFF
/****** Object:  Table [dbo].[Players]    Script Date: 01/19/2014 11:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Players]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Players](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nchar](3) NULL,
	[Number] [nchar](2) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Status] [nchar](3) NULL,
	[Team] [nchar](3) NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Players]') AND name = N'IX_Players')
CREATE NONCLUSTERED INDEX [IX_Players] ON [dbo].[Players] 
(
	[LastName] ASC,
	[FirstName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Players_Teams]    Script Date: 01/19/2014 11:00:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Players_Teams]') AND parent_object_id = OBJECT_ID(N'[dbo].[Players]'))
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Teams] FOREIGN KEY([Team])
REFERENCES [dbo].[Teams] ([Abbreviation])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Players_Teams]') AND parent_object_id = OBJECT_ID(N'[dbo].[Players]'))
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Teams]
GO
