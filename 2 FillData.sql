USE [TestMindbox]
GO

SET IDENTITY_INSERT [Category] ON

INSERT INTO [dbo].[Category]
           ([id], [name])
     VALUES
	      (1, 'Еда'),
		  (2, 'Напитки'),
		  (3, 'Алкоголь'),
		  (4, 'Скоропортящиеся продукты')
GO

SET IDENTITY_INSERT [Category] OFF
SET IDENTITY_INSERT [Product] ON

INSERT INTO [dbo].[Product]
           ([id], [name])
     VALUES
	      (1, 'Сок'),
		  (2, 'Пиво'),
		  (3, 'Печенье'),
		  (4, 'Рыба'),
		  (5, 'Кефир'),
		  (6, 'Мыло')
GO

SET IDENTITY_INSERT [Product] OFF

INSERT INTO [dbo].[ProductCategories]
           ([product]
           ,[category])
     VALUES
           (1,2),
		   (2,2),
		   (2,3),
		   (3,1),
		   (4,1),
		   (4,4),
		   (5,2),
		   (5,4)
GO


