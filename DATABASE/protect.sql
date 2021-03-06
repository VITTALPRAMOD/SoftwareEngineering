USE [D:\SHEIK\PROTECTION\APP_DATA\PROTECT.MDF]
GO
/****** Object:  Table [dbo].[up]    Script Date: 01/22/2016 15:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[up](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[upby] [varchar](20) NULL,
	[fname] [varchar](50) NULL,
	[fext] [varchar](6) NULL,
	[fsize] [varchar](50) NULL,
	[files] [varbinary](max) NULL,
	[Dt] [nvarchar](50) NULL,
	[enkey] [varchar](50) NULL,
	[entxt] [varchar](50) NULL,
	[image] [nvarchar](20) NULL,
	[Download] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[regis]    Script Date: 01/22/2016 15:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regis](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[usname] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[Dob] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alphakeys]    Script Date: 01/22/2016 15:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alphakeys](
	[alphabets] [nvarchar](50) NULL,
	[keys] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF_up_Download]    Script Date: 01/22/2016 15:39:15 ******/
ALTER TABLE [dbo].[up] ADD  CONSTRAINT [DF_up_Download]  DEFAULT ((0)) FOR [Download]
GO
