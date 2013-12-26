USE [NFL_Database]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 12/26/2013 11:03:21 ******/
DROP TABLE [dbo].[Players]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 12/26/2013 11:03:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](3) NULL,
	[Number] [nvarchar](2) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Status] [nchar](3) NULL,
	[Team] [nchar](3) NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Players] ON [dbo].[Players] 
(
	[LastName] ASC,
	[FirstName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
