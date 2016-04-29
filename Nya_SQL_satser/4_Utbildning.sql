USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Utbildning]    Script Date: 2015-06-14 20:26:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Utbildning](
	[UtbildningsNr] [char](20) NOT NULL,
	[UtbOmrade] [char](20) NULL,
	[Utbnamn] [char](20) NULL,
	[UtbPoang] [int] NULL,
	[SkolNr] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UtbildningsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Utbildning]  WITH CHECK ADD FOREIGN KEY([SkolNr])
REFERENCES [dbo].[Skola] ([SkolNr])
GO


