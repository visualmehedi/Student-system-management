USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Lektion_Lokal]    Script Date: 2015-06-14 20:26:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lektion_Lokal](
	[LokalNr] [char](20) NOT NULL,
	[LektionsNr] [char](20) NOT NULL,
	[Lek_LokId] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LokalNr] ASC,
	[LektionsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Lektion_Lokal]  WITH CHECK ADD FOREIGN KEY([LektionsNr])
REFERENCES [dbo].[Lektion] ([LektionsNr])
GO

ALTER TABLE [dbo].[Lektion_Lokal]  WITH CHECK ADD FOREIGN KEY([LokalNr])
REFERENCES [dbo].[Lokal] ([LokalNr])
GO


