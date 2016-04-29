USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Lokal]    Script Date: 2015-06-14 20:26:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lokal](
	[LokalNr] [char](20) NOT NULL,
	[platser] [int] NULL,
	[LektionsNr] [char](20) NULL,
	[SkolNr] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[LokalNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Lokal]  WITH CHECK ADD FOREIGN KEY([LektionsNr])
REFERENCES [dbo].[Lektion] ([LektionsNr])
GO

ALTER TABLE [dbo].[Lokal]  WITH CHECK ADD FOREIGN KEY([SkolNr])
REFERENCES [dbo].[Skola] ([SkolNr])
GO


