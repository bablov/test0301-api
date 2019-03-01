/*    ==脚本参数==

    源数据库引擎版本 : Microsoft Azure SQL 数据库版本
    源数据库引擎类型 : Microsoft Azure SQL Database

    目标数据库引擎版本 : Microsoft Azure SQL 数据库版本
    目标数据库引擎类型 : Microsoft Azure SQL Database
*/

/****** Object:  Table [dbo].[Member]    Script Date: 2018/3/30 17:09:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Member](
	[ID] [uniqueidentifier] NOT NULL,
	[PersonID] [nvarchar](36) NULL,
	[PhoneNum] [nvarchar](11) NULL,
	[Name] [nvarchar](55) NULL,
	[MemberLevel] [nvarchar](55) NULL,
	[NickName] [nvarchar](55) NULL,
	[Gender] [nvarchar](10) NULL,
	[Birthday] [datetime] NULL,
	[Balance] [money] NULL,
	[Integral] [int] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)
GO


