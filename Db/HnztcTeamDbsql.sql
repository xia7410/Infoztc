USE [HnztcTeamDb]
GO
/****** 对象:  Table [dbo].[VoteToPlayer]    脚本日期: 08/02/2016 18:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteToPlayer](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_VoteToPlayer_Id]  DEFAULT (newid()),
	[PlayerId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[VoteCount] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_VoteToPlayer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VoteToPlayer', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[Picture_AdStartup]    脚本日期: 08/02/2016 18:29:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Picture_AdStartup](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Picture_AdStartup_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Picture_AdStartup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture_AdStartup', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[UserErnie]    脚本日期: 08/02/2016 18:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserErnie](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_UserErnie_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ErnieId] [uniqueidentifier] NULL,
	[WinGold] [int] NULL,
	[WinSilver] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserErnie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserErnie', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[TVProgram]    脚本日期: 08/02/2016 18:29:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TVProgram](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TVProgram_Id]  DEFAULT (newid()),
	[ProgramName] [nvarchar](100) NULL,
	[HWTVId] [uniqueidentifier] NOT NULL,
	[ProgramAddress] [nvarchar](300) NULL,
	[TVScID] [nvarchar](100) NULL,
	[Time] [int] NULL,
	[IsDisable] [bit] NULL,
	[Sort] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_TVProgram] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TVProgram', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'节目名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TVProgram', @level2type=N'COLUMN',@level2name=N'ProgramName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'电视模块主键ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TVProgram', @level2type=N'COLUMN',@level2name=N'HWTVId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'节目地址' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TVProgram', @level2type=N'COLUMN',@level2name=N'ProgramAddress'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'点击次数统计' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TVProgram', @level2type=N'COLUMN',@level2name=N'Time'
GO
/****** 对象:  Table [dbo].[TopicSubject]    脚本日期: 08/02/2016 18:29:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicSubject](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TopicSubject_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[Title] [nvarchar](100) NULL,
	[ContentText] [nvarchar](2000) NULL,
	[IsTop] [bit] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_TopicSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicSubject', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[TopicPicture]    脚本日期: 08/02/2016 18:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicPicture](
	[TopicSubjectId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TopicPicture] PRIMARY KEY CLUSTERED 
(
	[TopicSubjectId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicPicture', @level2type=N'COLUMN',@level2name=N'TopicSubjectId'
GO
/****** 对象:  Table [dbo].[TopicComment]    脚本日期: 08/02/2016 18:29:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicComment](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_TopicComment_Id]  DEFAULT (newid()),
	[TopicSubjectId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[ContentText] [nvarchar](2000) NULL,
	[IsTop] [bit] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_TopicComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicComment', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[QXCLotteryNumber]    脚本日期: 08/02/2016 18:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QXCLotteryNumber](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_QXCLotteryNumber_Id]  DEFAULT (newid()),
	[QS] [varchar](30) NULL,
	[HNQS] [varchar](30) NULL,
	[LotteryTime] [datetime] NULL,
	[LotteryNo] [varchar](14) NULL,
	[ExpiryClosingDate] [datetime] NULL,
	[SalesVolume] [bigint] NULL,
	[Progressive] [bigint] NULL,
	[ContentText] [nvarchar](1000) NULL,
	[UserId] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_QXCLOTTERYNUMBER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QXCLotteryNumber', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[QuestionSubject]    脚本日期: 08/02/2016 18:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionSubject](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_QuestionSubject_Id]  DEFAULT (newid()),
	[QuestionBankId] [uniqueidentifier] NULL,
	[QuestionContent] [nvarchar](200) NULL,
	[QuestionType] [int] NULL,
	[Sort] [int] NULL CONSTRAINT [DF_QuestionSubject_Sort]  DEFAULT ((0)),
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_QuestionSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionSubject', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionSubject', @level2type=N'COLUMN',@level2name=N'IsDisable'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionSubject', @level2type=N'COLUMN',@level2name=N'LastUpdatedDate'
GO
/****** 对象:  Table [dbo].[QuestionBank]    脚本日期: 08/02/2016 18:29:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionBank](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_QuestionBank_Id]  DEFAULT (newid()),
	[Named] [nvarchar](100) NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_QuestionBank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'IsDisable'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionBank', @level2type=N'COLUMN',@level2name=N'LastUpdatedDate'
GO
/****** 对象:  Table [dbo].[PushUser]    脚本日期: 08/02/2016 18:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PushUser](
	[PushId] [uniqueidentifier] NOT NULL,
	[PushUser] [varchar](max) NULL,
 CONSTRAINT [PK_PushUser] PRIMARY KEY CLUSTERED 
(
	[PushId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushUser', @level2type=N'COLUMN',@level2name=N'PushId'
GO
/****** 对象:  Table [dbo].[PushMsg]    脚本日期: 08/02/2016 18:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushMsg](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_PushMsg_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[PushContent] [nvarchar](1000) NULL,
	[PushType] [nvarchar](10) NULL,
	[IsSendOk] [bit] NULL,
	[SendRange] [nvarchar](10) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PushMsg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMsg', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[PrizePicture]    脚本日期: 08/02/2016 18:29:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrizePicture](
	[ActivityPrizeId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PrizePicture] PRIMARY KEY CLUSTERED 
(
	[ActivityPrizeId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrizePicture', @level2type=N'COLUMN',@level2name=N'ActivityPrizeId'
GO
/****** 对象:  Table [dbo].[PlayerPictureNew]    脚本日期: 08/02/2016 18:29:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerPictureNew](
	[PlayerId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
	[Sort] [int] NULL,
	[IsHeadImg] [bit] NULL,
 CONSTRAINT [PK_PlayerPictureNew] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlayerPictureNew', @level2type=N'COLUMN',@level2name=N'PlayerId'
GO
/****** 对象:  Table [dbo].[PlayerPicture]    脚本日期: 08/02/2016 18:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerPicture](
	[PlayerId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PlayerPicture] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlayerPicture', @level2type=N'COLUMN',@level2name=N'PlayerId'
GO
/****** 对象:  Table [dbo].[Picture_ScratchLotto]    脚本日期: 08/02/2016 18:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Picture_ScratchLotto](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Picture_ScratchLotto_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Picture_ScratchLotto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture_ScratchLotto', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[Picture_Information]    脚本日期: 08/02/2016 18:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Picture_Information](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Picture_Information_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Picture_Information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Picture_Information', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[MobileVerifyNumber]    脚本日期: 08/02/2016 18:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MobileVerifyNumber](
	[seqID] [bigint] IDENTITY(1,1) NOT NULL,
	[numberId] [varchar](80) NOT NULL,
	[classType] [int] NULL,
	[mobileNo] [varchar](30) NULL,
	[verifyNo] [varchar](30) NULL,
	[maxSec] [int] NULL,
	[isOk] [bit] NULL,
	[tryVerifyCount] [int] NULL,
	[sourceIP] [varchar](20) NULL,
	[editTime] [datetime] NULL,
	[insertTime] [datetime] NULL,
 CONSTRAINT [PK_TMOBILEVERIFYNUMBER] PRIMARY KEY CLUSTERED 
(
	[numberId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'标识符' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'numberId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'mobileNo'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'verifyNo'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'最大验证间隔秒数' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'maxSec'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'验证是否通过' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'isOk'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'验证次数' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'tryVerifyCount'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'来源IP' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'sourceIP'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'editTime'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'验证时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber', @level2type=N'COLUMN',@level2name=N'insertTime'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'手机验证码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MobileVerifyNumber'
GO
/****** 对象:  Table [dbo].[InitItems]    脚本日期: 08/02/2016 18:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InitItems](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_InitItems_Id]  DEFAULT (newid()),
	[ItemType] [varchar](30) NULL,
	[ItemTypeName] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemKey] [varchar](1000) NULL,
	[IsDisable] [bit] NULL,
	[EditTime] [datetime] NULL CONSTRAINT [DF_InitItems_LastTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_InitItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InitItems', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[InformationPicture]    脚本日期: 08/02/2016 18:29:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationPicture](
	[InformationId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_InformationPicture] PRIMARY KEY CLUSTERED 
(
	[InformationId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformationPicture', @level2type=N'COLUMN',@level2name=N'InformationId'
GO
/****** 对象:  Table [dbo].[InformationAdPicture]    脚本日期: 08/02/2016 18:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationAdPicture](
	[InformationAdId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_InformationAdPicture] PRIMARY KEY CLUSTERED 
(
	[InformationAdId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformationAdPicture', @level2type=N'COLUMN',@level2name=N'InformationAdId'
GO
/****** 对象:  Table [dbo].[InformationAd]    脚本日期: 08/02/2016 18:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationAd](
	[InformationId] [uniqueidentifier] NOT NULL,
	[InformationAdId] [uniqueidentifier] NOT NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_InformationAd] PRIMARY KEY CLUSTERED 
(
	[InformationId] ASC,
	[InformationAdId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InformationAd', @level2type=N'COLUMN',@level2name=N'InformationId'
GO
/****** 对象:  Table [dbo].[Information_Ad]    脚本日期: 08/02/2016 18:29:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Information_Ad](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Information_Ad_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[Descr] [nvarchar](200) NULL,
	[ContentText] [nvarchar](4000) NULL,
	[Url] [varchar](200) NULL,
	[ViewType] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Information_Ad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Information_Ad', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[Information]    脚本日期: 08/02/2016 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Information_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[Summary] [nvarchar](200) NULL,
	[ContentText] [nvarchar](4000) NULL,
	[Source] [nvarchar](100) NULL,
	[ViewCount] [bigint] NULL,
	[Sort] [int] NULL,
	[ViewType] [tinyint] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[UserId] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Information', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[HWTV]    脚本日期: 08/02/2016 18:28:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HWTV](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_HWTV_Id]  DEFAULT (newid()),
	[HWTVName] [nvarchar](100) NULL,
	[HWTVIcon] [uniqueidentifier] NULL,
	[ProgramAddress] [nvarchar](300) NULL,
	[IsTurnTo] [bit] NULL,
	[IsDisable] [bit] NULL,
	[Sort] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_HWTV] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'电视模块名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'HWTVName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'电视模块icon地址' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'HWTVIcon'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存放转跳地址' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'ProgramAddress'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否转跳' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'IsTurnTo'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'IsDisable'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HWTV', @level2type=N'COLUMN',@level2name=N'LastUpdatedDate'
GO
/****** 对象:  Table [dbo].[AnswerStatistics]    脚本日期: 08/02/2016 18:28:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerStatistics](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AnswerStatistics_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[QuestionSubjectId] [uniqueidentifier] NULL,
	[PaperId] [uniqueidentifier] NULL,
	[IsTrue] [bit] NULL,
	[Integral] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AnswerStatistics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'题目ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'QuestionSubjectId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷ID,用于统计用户每天获取题目次数' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'PaperId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否答对' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'IsTrue'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'Integral'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerStatistics', @level2type=N'COLUMN',@level2name=N'LastUpdatedDate'
GO
/****** 对象:  Table [dbo].[AnswerOption]    脚本日期: 08/02/2016 18:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerOption](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AnswerOption_Id]  DEFAULT (newid()),
	[QuestionSubjectId] [uniqueidentifier] NULL,
	[OptionContent] [nvarchar](200) NULL,
	[Sort] [int] NULL CONSTRAINT [DF_AnswerOption_Sort]  DEFAULT ((0)),
	[IsTrue] [bit] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AnswerOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerOption', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AnswerOption', @level2type=N'COLUMN',@level2name=N'IsDisable'
GO
/****** 对象:  Table [dbo].[ActivitySubjectNew]    脚本日期: 08/02/2016 18:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivitySubjectNew](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivitySubjectNew_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[ContentText] [nvarchar](4000) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[SignUpRule] [nvarchar](2000) NULL,
	[MaxVoteCount] [int] NULL,
	[VoteMultiple] [int] NULL,
	[MaxSignUpCount] [int] NULL,
	[SignUpCount] [int] NULL,
	[ViewCount] [bigint] NULL,
	[VirtualSignUpCount] [int] NULL,
	[Sort] [int] NULL,
	[HiddenAttribute] [nvarchar](300) NULL,
	[IsPrize] [bit] NULL,
	[PrizeRule] [nvarchar](2000) NULL,
	[PrizeProbability] [varchar](20) NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[InsertDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivitySubjectNew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivitySubjectNew', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivitySubject]    脚本日期: 08/02/2016 18:28:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitySubject](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivitySubject_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[ContentText] [nvarchar](2000) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ActivityType] [tinyint] NULL,
	[MaxVoteCount] [int] NULL,
	[VoteMultiple] [int] NULL,
	[MaxSignUpCount] [int] NULL,
	[ActualSignUpCount] [int] NULL,
	[UpdateSignUpCount] [int] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[InsertDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivitySubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivitySubject', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivitySignUp]    脚本日期: 08/02/2016 18:28:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitySignUp](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivitySignUp_Id]  DEFAULT (newid()),
	[ActivityId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivitySignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivitySignUp', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivityRelease]    脚本日期: 08/02/2016 18:28:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityRelease](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityRelease_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[QuestionCount] [int] NULL,
	[Remark] [nvarchar](300) NOT NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityRelease] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'活动标题' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期开始时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期结束时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'题目数' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'QuestionCount'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'IsDisable'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'最后更新时间' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityRelease', @level2type=N'COLUMN',@level2name=N'LastUpdatedDate'
GO
/****** 对象:  Table [dbo].[ActivityQuestionBank]    脚本日期: 08/02/2016 18:28:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityQuestionBank](
	[ActivityReleaseId] [uniqueidentifier] NOT NULL,
	[QuestionBankId] [uniqueidentifier] NOT NULL,
	[QuestionCount] [int] NULL,
 CONSTRAINT [PK_ActivityQuestionBank] PRIMARY KEY CLUSTERED 
(
	[ActivityReleaseId] ASC,
	[QuestionBankId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityQuestionBank', @level2type=N'COLUMN',@level2name=N'ActivityReleaseId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'QuestionBank表Id' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityQuestionBank', @level2type=N'COLUMN',@level2name=N'QuestionBankId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'该题库分配题目数' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityQuestionBank', @level2type=N'COLUMN',@level2name=N'QuestionCount'
GO
/****** 对象:  Table [dbo].[ActivityPrize]    脚本日期: 08/02/2016 18:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityPrize](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityPrize_Id]  DEFAULT (newid()),
	[ActivityId] [uniqueidentifier] NULL,
	[PrizeName] [nvarchar](50) NULL,
	[PrizeCount] [int] NULL,
	[PrizeContent] [nvarchar](300) NULL,
	[Sort] [int] NULL,
	[BusinessName] [nvarchar](50) NULL,
	[BusinessPhone] [nvarchar](20) NULL,
	[BusinessAddress] [nvarchar](80) NULL,
	[WinningTimes] [int] NULL,
	[UpdateWinningTimes] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityPrize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPrize', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivityPlayerPhotoPicture]    脚本日期: 08/02/2016 18:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivityPlayerPhotoPicture](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityPlayerPhotoPicture_Id]  DEFAULT (newid()),
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityPlayerPhotoPicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPlayerPhotoPicture', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivityPlayerNew]    脚本日期: 08/02/2016 18:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityPlayerNew](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityPlayerNew_Id]  DEFAULT (newid()),
	[ActivityId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[No] [int] NULL,
	[Named] [nvarchar](30) NULL,
	[Age] [int] NULL,
	[Occupation] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Location] [nvarchar](80) NULL,
	[Professional] [nvarchar](50) NULL,
	[Descr] [nvarchar](1000) NULL,
	[VoteCount] [int] NULL,
	[VirtualVoteCount] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityPlayerNew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPlayerNew', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivityPlayer]    脚本日期: 08/02/2016 18:27:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivityPlayer](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityPlayer_Id]  DEFAULT (newid()),
	[ActivityId] [uniqueidentifier] NULL,
	[Named] [nvarchar](30) NULL,
	[HeadPicture] [varchar](100) NULL,
	[DetailInformation] [nvarchar](4000) NULL,
	[ActualVoteCount] [int] NULL,
	[UpdateVoteCount] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityPlayer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPlayer', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ActivityPictureNew]    脚本日期: 08/02/2016 18:27:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityPictureNew](
	[ActivityId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ActivityPictureNew] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPictureNew', @level2type=N'COLUMN',@level2name=N'ActivityId'
GO
/****** 对象:  Table [dbo].[ActivityPicture]    脚本日期: 08/02/2016 18:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityPicture](
	[ActivityId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ActivityPicture] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPicture', @level2type=N'COLUMN',@level2name=N'ActivityId'
GO
/****** 对象:  Table [dbo].[ActivityPhotoPicture]    脚本日期: 08/02/2016 18:27:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivityPhotoPicture](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ActivityPhotoPicture_Id]  DEFAULT (newid()),
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ActivityPhotoPicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActivityPhotoPicture', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[AspNet_SqlCacheTablesForChangeNotification]    脚本日期: 08/02/2016 18:28:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNet_SqlCacheTablesForChangeNotification](
	[tableName] [nvarchar](450) NOT NULL,
	[notificationCreated] [datetime] NOT NULL DEFAULT (getdate()),
	[changeId] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[tableName] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[CommunionPicture]    脚本日期: 08/02/2016 18:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommunionPicture](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_CommunionPicture_Id]  DEFAULT (newid()),
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_CommunionPicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommunionPicture', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[ErnieItem]    脚本日期: 08/02/2016 18:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErnieItem](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ErnieItem_Id]  DEFAULT (newid()),
	[ErnieId] [uniqueidentifier] NULL,
	[NumType] [nvarchar](20) NULL,
	[Num] [varchar](20) NULL,
	[AppearRatio] [float] NULL,
 CONSTRAINT [PK_ErnieItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ErnieItem', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[Ernie]    脚本日期: 08/02/2016 18:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ernie](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Ernie_Id]  DEFAULT (newid()),
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[UserBetMaxCount] [int] NULL,
	[IsOver] [bit] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Ernie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ernie', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[AdvertPicture]    脚本日期: 08/02/2016 18:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertPicture](
	[AdvertId] [uniqueidentifier] NOT NULL,
	[PictureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AdvertPicture] PRIMARY KEY CLUSTERED 
(
	[AdvertId] ASC,
	[PictureId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdvertPicture', @level2type=N'COLUMN',@level2name=N'AdvertId'
GO
/****** 对象:  Table [dbo].[WinningRecord]    脚本日期: 08/02/2016 18:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WinningRecord](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_WinningRecord_Id]  DEFAULT (newid()),
	[ActivityId] [uniqueidentifier] NULL,
	[ActivityPrizeId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserFlag] [varchar](50) NULL,
	[MobilePhone] [varchar](20) NULL,
	[Status] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_WinningRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WinningRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[AdvertSubject]    脚本日期: 08/02/2016 18:28:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertSubject](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AdvertSubject_Id]  DEFAULT (newid()),
	[Title] [nvarchar](100) NULL,
	[Sort] [int] NULL,
	[PlayTime] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AdvertSubject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdvertSubject', @level2type=N'COLUMN',@level2name=N'Id'
GO
/****** 对象:  Table [dbo].[VoteToPlayerNew]    脚本日期: 08/02/2016 18:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VoteToPlayerNew](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_VoteToPlayerNew_Id]  DEFAULT (newid()),
	[PlayerId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserFlag] [varchar](50) NULL,
	[TotalVoteCount] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_VoteToPlayerNew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VoteToPlayerNew', @level2type=N'COLUMN',@level2name=N'Id'
GO
