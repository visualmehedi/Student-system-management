USE [NewtonCompDB]
GO

/****** Object:  Table [dbo].[Kurstillfalle]    Script Date: 2015-06-14 20:26:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Kurstillfalle](
	[KTID] [char](20) NOT NULL,
	[Datum] [date] NULL,
	[KursId] [char](20) NULL,
	[Start] [time](7) NULL,
	[Slut] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[KTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Kurstillfalle]  WITH CHECK ADD FOREIGN KEY([KursId])
REFERENCES [dbo].[Kurs] ([KursId])
GO


