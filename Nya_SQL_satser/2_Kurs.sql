USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Kurs]    Script Date: 2015-06-14 20:26:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Kurs](
	[KursId] [char](20) NOT NULL,
	[Poang] [int] NULL,
	[InriktningsNr] [char](20) NULL,
	[Kursnamn] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Kurs]  WITH CHECK ADD FOREIGN KEY([InriktningsNr])
REFERENCES [dbo].[Inriktning] ([InriktningsNr])
GO


