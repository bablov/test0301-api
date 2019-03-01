/*    ==�ű�����==

    Դ���ݿ�����汾 : Microsoft Azure SQL ���ݿ�汾
    Դ���ݿ��������� : Microsoft Azure SQL Database

    Ŀ�����ݿ�����汾 : Microsoft Azure SQL ���ݿ�汾
    Ŀ�����ݿ��������� : Microsoft Azure SQL Database
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


