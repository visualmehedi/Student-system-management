USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Narvaro]    Script Date: 2015-06-14 20:26:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Narvaro](
	[ElevId] [char](20) NOT NULL,
	[LektionsNr] [char](20) NOT NULL,
	[Narvarande] [bit] NULL,
	[NarvaroNr] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ElevId] ASC,
	[LektionsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Narvaro]  WITH CHECK ADD FOREIGN KEY([ElevId])
REFERENCES [dbo].[Elev] ([ElevId])
GO

ALTER TABLE [dbo].[Narvaro]  WITH CHECK ADD FOREIGN KEY([LektionsNr])
REFERENCES [dbo].[Lektion] ([LektionsNr])
GO


