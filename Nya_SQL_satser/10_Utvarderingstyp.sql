USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Utvarderingstyp]    Script Date: 2015-06-14 20:26:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Utvarderingstyp](
	[UTID] [char](20) NOT NULL,
	[TerminSlut] [date] NULL,
	[UtvarderingsNr] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Utvarderingstyp]  WITH CHECK ADD FOREIGN KEY([UtvarderingsNr])
REFERENCES [dbo].[Utvardering] ([UtvarderingsNr])
GO


