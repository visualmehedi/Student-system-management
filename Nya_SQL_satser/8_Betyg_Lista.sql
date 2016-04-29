USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Betyg_Lista]    Script Date: 2015-06-14 20:21:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Betyg_Lista](
	[ElevId] [char](20) NOT NULL,
	[KursId] [char](20) NOT NULL,
	[BetygNamn] [char](20) NOT NULL,
	[BetygListaId] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ElevId] ASC,
	[KursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Betyg_Lista]  WITH CHECK ADD FOREIGN KEY([ElevId])
REFERENCES [dbo].[Elev] ([ElevId])
GO

ALTER TABLE [dbo].[Betyg_Lista]  WITH CHECK ADD FOREIGN KEY([KursId])
REFERENCES [dbo].[Kurs] ([KursId])
GO


