USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Skola]    Script Date: 2015-06-14 20:26:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Skola](
	[SkolNr] [char](20) NOT NULL,
	[SName] [varchar](20) NULL,
	[SAdress] [varchar](50) NULL,
	[SHemsida] [varchar](50) NULL,
	[ForetagsNr] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SkolNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Skola]  WITH CHECK ADD FOREIGN KEY([ForetagsNr])
REFERENCES [dbo].[Foretag] ([ForetagsNr])
GO


