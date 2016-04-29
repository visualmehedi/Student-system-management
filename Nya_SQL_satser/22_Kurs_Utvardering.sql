USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Kurs_Utvardering]    Script Date: 2015-06-14 20:26:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Kurs_Utvardering](
	[KursId] [char](20) NOT NULL,
	[UtvarderingsNr] [char](20) NOT NULL,
	[Kurs_UtvNr] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KursId] ASC,
	[UtvarderingsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Kurs_Utvardering]  WITH CHECK ADD FOREIGN KEY([KursId])
REFERENCES [dbo].[Kurs] ([KursId])
GO

ALTER TABLE [dbo].[Kurs_Utvardering]  WITH CHECK ADD FOREIGN KEY([UtvarderingsNr])
REFERENCES [dbo].[Utvardering] ([UtvarderingsNr])
GO


