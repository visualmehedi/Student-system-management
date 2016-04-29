USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Lektionstilfalle]    Script Date: 2015-06-14 20:26:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Lektionstilfalle](
	[KurstillfalleID] [char](20) NOT NULL,
	[LektionsNr] [char](20) NOT NULL,
	[LektionsTillfälleID] [char](20) NULL,
	[Datum] [date] NULL,
	[Start] [time](7) NULL,
	[Slut] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[KurstillfalleID] ASC,
	[LektionsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Lektionstilfalle]  WITH CHECK ADD FOREIGN KEY([KurstillfalleID])
REFERENCES [dbo].[Kurstillfalle] ([KTID])
GO

ALTER TABLE [dbo].[Lektionstilfalle]  WITH CHECK ADD FOREIGN KEY([LektionsNr])
REFERENCES [dbo].[Lektion] ([LektionsNr])
GO


