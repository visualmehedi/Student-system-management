USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Utvardering]    Script Date: 2015-06-14 20:26:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Utvardering](
	[ElevId] [char](20) NULL,
	[KursId] [char](20) NULL,
	[Enamn] [char](20) NULL,
	[Statistik] [char](20) NULL,
	[UtvarderingsNr] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UtvarderingsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Utvardering]  WITH CHECK ADD FOREIGN KEY([ElevId])
REFERENCES [dbo].[Elev] ([ElevId])
GO

ALTER TABLE [dbo].[Utvardering]  WITH CHECK ADD FOREIGN KEY([KursId])
REFERENCES [dbo].[Kurs] ([KursId])
GO


