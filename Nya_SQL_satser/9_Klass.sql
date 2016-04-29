USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Klass]    Script Date: 2015-06-14 20:26:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Klass](
	[Klassnamn] [char](20) NOT NULL,
	[UtbildningsNr] [char](20) NULL,
	[ElevId] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Klassnamn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Klass]  WITH CHECK ADD FOREIGN KEY([ElevId])
REFERENCES [dbo].[Elev] ([ElevId])
GO

ALTER TABLE [dbo].[Klass]  WITH CHECK ADD FOREIGN KEY([UtbildningsNr])
REFERENCES [dbo].[Utbildning] ([UtbildningsNr])
GO


