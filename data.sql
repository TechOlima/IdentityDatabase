USE [Identity]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([id], [name], [description], [authority]) VALUES (1, N'admin', N'Администратор', N'all')
GO
INSERT [dbo].[Role] ([id], [name], [description], [authority]) VALUES (2, N'user', N'Пользователь', N'statements/write')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([id], [name], [login], [password], [roleid], [email], [phone]) VALUES (1, N'admin', N'admin@gmail.com', N'827CCB0EEA8A706C4C34A16891F84E', 1, N'dsfsdf', N'sdfdsf')
GO
INSERT [dbo].[User] ([id], [name], [login], [password], [roleid], [email], [phone]) VALUES (2, N'qwerty', N'qwerty@gmail.com', N'827CCB0EEA8A706C4C34A16891F84E', 2, N'sdfds', N'sdfsdf')
GO
INSERT [dbo].[User] ([id], [name], [login], [password], [roleid], [email], [phone]) VALUES (8, N'test', N'test', N'827CCB0EEA8A706C4C34A16891F84E', 2, N'testemail', N'testphone')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Scope] ON 
GO
INSERT [dbo].[Scope] ([id], [name], [description]) VALUES (2, N'Изменение', N'Изменение')
GO
INSERT [dbo].[Scope] ([id], [name], [description]) VALUES (3, N'Просмотр', N'Просмотр')
GO
SET IDENTITY_INSERT [dbo].[Scope] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleScope] ON 
GO
INSERT [dbo].[RoleScope] ([id], [roleId], [scopeId]) VALUES (1, 1, 2)
GO
INSERT [dbo].[RoleScope] ([id], [roleId], [scopeId]) VALUES (2, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[RoleScope] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230624095543_init', N'7.0.8')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230625080808_phone', N'7.0.8')