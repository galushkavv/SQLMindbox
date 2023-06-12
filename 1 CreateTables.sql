CREATE DATABASE [TestMindbox]
GO

USE [TestMindbox]
GO

CREATE TABLE [Category]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NULL,
	
	CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)
)
GO

CREATE TABLE [Product]
(
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](256) NULL,

	CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
	(
		[id] ASC
	)
)
GO

CREATE TABLE [ProductCategories]
(
	[product] [int] NOT NULL,
	[category] [int] NOT NULL,
	CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
	(
		[product] ASC,
		[category] ASC
	)
)
GO