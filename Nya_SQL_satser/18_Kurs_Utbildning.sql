USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Kurs_Utbildning]    Script Date: 2015-06-14 20:26:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Kurs_Utbildning](
	[KursId] [char](20) NOT NULL,
	[UtbildningsNr] [char](20) NOT NULL,
	[Kurs_UtbildningId] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KursId] ASC,
	[UtbildningsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Kurs_Utbildning]  WITH CHECK ADD FOREIGN KEY([KursId])
REFERENCES [dbo].[Kurs] ([KursId])
GO

ALTER TABLE [dbo].[Kurs_Utbildning]  WITH CHECK ADD FOREIGN KEY([UtbildningsNr])
REFERENCES [dbo].[Utbildning] ([UtbildningsNr])
GO


