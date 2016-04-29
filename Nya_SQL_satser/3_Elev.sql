USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Elev]    Script Date: 2015-06-14 20:25:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Elev](
	[ElevId] [char](20) NOT NULL,
	[Enamn] [char](20) NULL,
	[Eadress] [char](20) NULL,
	[UtbildningsNr] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ElevId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Elev]  WITH CHECK ADD FOREIGN KEY([UtbildningsNr])
REFERENCES [dbo].[Utbildning] ([UtbildningsNr])
GO


