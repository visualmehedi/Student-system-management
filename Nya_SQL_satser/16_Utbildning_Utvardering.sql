USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Utbildning_Utvardering]    Script Date: 2015-06-14 20:26:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Utbildning_Utvardering](
	[UtvarderingsNr] [char](20) NOT NULL,
	[UtbildningsNr] [char](20) NOT NULL,
	[Utb_UtvId] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UtvarderingsNr] ASC,
	[UtbildningsNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Utbildning_Utvardering]  WITH CHECK ADD FOREIGN KEY([UtbildningsNr])
REFERENCES [dbo].[Utbildning] ([UtbildningsNr])
GO

ALTER TABLE [dbo].[Utbildning_Utvardering]  WITH CHECK ADD FOREIGN KEY([UtvarderingsNr])
REFERENCES [dbo].[Utvardering] ([UtvarderingsNr])
GO


