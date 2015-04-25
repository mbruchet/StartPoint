USE [DemoDb]
GO

INSERT INTO [dbo].[Users]
           ([Id]
           ,[Name]
           ,[Login]
           ,[Password]
           ,[IsLocked]
           ,[LockedDate]
           ,[LastLoginDate]
           ,[IsLogged]
           ,[LogginOnMachine]
           ,[LoginBadPasswordAttempted]
           ,[Email]
           ,[PasswordQuestion]
           ,[PasswordQuestionAnswer]
           ,[Comment]
           ,[IsApproved]
           ,[CreateDate]
           ,[LastActivityDate]
           ,[LastPasswordChanged]
           ,[LastLockOutDate]
           ,[MainPhoto])
     VALUES
           (NEWID()
           ,'Michel Bruchet'
           ,'mbruchet@live.fr'
           ,'azerty'
           ,0
           ,0
           ,0
           ,0
           ,0
           ,0
           ,'mbruchet@live.fr'
           ,'Nom de la ville de naissance'
           ,'Beyrouth'
           ,'Compte administrateur de Michel Bruchet'
           ,1
           ,getdate()
           ,NULL
           ,NULL
           ,NULL
           ,NULL)
GO


