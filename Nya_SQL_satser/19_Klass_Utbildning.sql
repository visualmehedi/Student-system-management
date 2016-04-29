USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Klass_Utbildning]    Script Date: 2015-06-14 20:26:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Klass_Utbildning](
	[Klassnamn] [char](20) NOT NULL,
	[UtbildningsNr] [char](20) NOT NULL,
	[Klass_UtbId] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Klassnamn] ASC,
	[UtbildningsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Klass_Utbildning]  WITH CHECK ADD FOREIGN KEY([Klassnamn])
REFERENCES [dbo].[Klass] ([Klassnamn])
GO

ALTER TABLE [dbo].[Klass_Utbildning]  WITH CHECK ADD FOREIGN KEY([UtbildningsNr])
REFERENCES [dbo].[Utbildning] ([UtbildningsNr])
GO


