/*    ==脚本参数==

    源数据库引擎版本 : Microsoft Azure SQL 数据库版本
    源数据库引擎类型 : Microsoft Azure SQL Database

    目标服务器版本 : SQL Server 2017
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/
USE [etfacesigndb]
GO
/****** Object:  Table [dbo].[ClientScreenEvent]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientScreenEvent](
	[ID] [nvarchar](36) NOT NULL,
	[SilimarFaceID] [nvarchar](36) NULL,
	[HeadPoseRoll] [nvarchar](255) NULL,
	[HeadPoseYaw] [nvarchar](255) NULL,
	[OrignalFileID] [nvarchar](500) NULL,
	[OrignalFilePath] [nvarchar](500) NULL,
	[ExtractFileID] [nvarchar](255) NULL,
	[ExtractFilePath] [nvarchar](500) NULL,
	[FaceDetect] [nvarchar](max) NULL,
	[Emotion] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreateTime] [datetime2](7) NULL,
	[UpdateTime] [datetime2](7) NULL,
	[IP] [nvarchar](255) NULL,
	[SourceIP] [nvarchar](255) NULL,
	[DeviceID] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2018/3/30 17:10:29 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Person]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [nvarchar](36) NOT NULL,
	[PersonGroupKey] [nvarchar](36) NULL,
	[UserData] [nvarchar](36) NULL,
	[UserName] [nvarchar](255) NULL,
	[FacesCount] [int] NOT NULL,
	[HighQualityCount] [int] NOT NULL,
	[LowQualityCount] [int] NOT NULL,
	[LastMachineLearningDate] [datetime2](7) NULL,
	[LearningQueueCount] [int] NOT NULL,
	[CreateTime] [datetime2](7) NULL,
	[SourceIP] [nvarchar](255) NULL,
	[IP] [nvarchar](255) NULL,
	[IsDelete] [bit] NOT NULL,
	[LastEnqueueDate] [datetime2](7) NULL,
	[LastAddFaceDate] [datetime2](7) NULL,
	[PersonType] [int] NOT NULL,
	[ParentPerson] [varchar](255) NULL,
	[Equipment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[PersonCoverFace]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonCoverFace](
	[PersonKey] [nvarchar](200) NOT NULL,
	[FaceKey] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[PersonFace]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonFace](
	[FaceID] [nvarchar](36) NOT NULL,
	[PersonID] [nvarchar](36) NULL,
	[PaceID] [nvarchar](36) NULL,
	[PersonUserData] [nvarchar](36) NULL,
	[PersonGroupKey] [nvarchar](36) NULL,
	[FileID] [nvarchar](200) NULL,
	[FilePath] [nvarchar](500) NULL,
	[ExtractFaceUrl] [nvarchar](500) NULL,
	[ImageHash] [nvarchar](255) NULL,
	[Rectangle] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Age] [float] NOT NULL,
	[Confidence] [float] NULL,
	[Dubious] [bit] NULL,
	[Anger] [real] NOT NULL,
	[Contempt] [real] NOT NULL,
	[Disgust] [real] NOT NULL,
	[Fear] [real] NOT NULL,
	[Happiness] [real] NOT NULL,
	[Neutral] [real] NOT NULL,
	[Sadness] [real] NOT NULL,
	[Surprise] [real] NOT NULL,
	[EmotionScores] [real] NOT NULL,
	[FaceResult] [nvarchar](max) NULL,
	[EmotionResult] [nvarchar](max) NULL,
	[UserDateTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NULL,
	[SourceIP] [nvarchar](255) NULL,
	[IP] [nvarchar](255) NULL,
	[IsDelete] [bit] NOT NULL,
	[FaceType] [int] NULL,
	[CourseName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[PersonGroup]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonGroup](
	[PersonGroupID] [nvarchar](36) NOT NULL,
	[UserData] [nvarchar](200) NULL,
	[UserDateTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NULL,
	[SourceIP] [nvarchar](255) NULL,
	[IP] [nvarchar](255) NULL,
	[PersonsCount] [int] NOT NULL,
	[PicturesCount] [int] NOT NULL,
	[MenCount] [int] NOT NULL,
	[FemalesCount] [int] NOT NULL,
	[ChildrenCount] [int] NULL,
	[LastAddPersonDate] [datetime2](7) NULL,
	[TrainSuccess] [bit] NOT NULL,
	[LastTrainTime] [datetime2](7) NULL,
	[LastTrainResult] [nvarchar](500) NULL,
	[IsDelete] [bit] NOT NULL,
	[Gender] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[PersonUserDataBind]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonUserDataBind](
	[PersonID] [nvarchar](36) NOT NULL,
	[UserFaceID] [nvarchar](36) NULL,
	[UserName] [nvarchar](100) NULL,
	[WebChartNickName] [nvarchar](100) NULL,
	[WebOpenID] [nvarchar](100) NULL,
	[Country] [nvarchar](255) NULL,
	[Province] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[CreateTime] [datetime2](7) NULL,
	[BindTime] [datetime2](7) NULL,
	[Company] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[RandomCode]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RandomCode](
	[ID] [nvarchar](128) NOT NULL,
	[SilimarFaceID] [nvarchar](max) NULL,
	[RandomCode] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NULL,
	[UpdateTime] [datetime2](7) NULL,
	[State] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[VisitDetail]    Script Date: 2018/3/30 17:10:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitDetail](
	[ID] [nvarchar](36) NULL,
	[PersonID] [nvarchar](36) NULL,
	[FaceID] [nvarchar](36) NULL,
	[VisitTime] [datetime2](7) NULL,
	[InsertTime] [datetime2](7) NULL
)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ClientScreenEvent]    Script Date: 2018/3/30 17:10:29 ******/
CREATE NONCLUSTERED INDEX [IX_ClientScreenEvent] ON [dbo].[ClientScreenEvent]
(
	[SilimarFaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonID]    Script Date: 2018/3/30 17:10:29 ******/
CREATE NONCLUSTERED INDEX [IX_PersonID] ON [dbo].[PersonFace]
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[PersonFace]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
USE [master]
GO
ALTER DATABASE [etfacesigndb] SET  READ_WRITE 
GO
