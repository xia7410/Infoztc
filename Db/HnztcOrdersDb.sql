SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderItem](
	[OrderId] [uniqueidentifier] NOT NULL,
	[LineNum] [int] NOT NULL,
	[ProductItemId] [uniqueidentifier] NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[LineNum] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderItem', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderStatus](
	[OrderId] [uniqueidentifier] NOT NULL,
	[LineNum] [int] NOT NULL,
	[Status] [tinyint] NULL,
	[Timestamp] [datetime] NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[LineNum] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderStatus', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Orders_Id]  DEFAULT (newid()),
	[OrderNum] [char](12) NULL,
	[UserId] [uniqueidentifier] NULL,
	[OrderDate] [datetime] NULL,
	[Receiver] [nvarchar](30) NULL,
	[ProvinceCity] [nvarchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[Mobilephone] [varchar](15) NULL,
	[Telephone] [varchar](15) NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[PayOption] [nvarchar](20) NULL,
	[PayDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Orders', @level2type=N'COLUMN', @level2name=N'Id'

