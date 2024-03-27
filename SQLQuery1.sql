﻿CREATE TABLE [dbo].[UserTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]