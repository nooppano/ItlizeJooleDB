/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


INSERT INTO [dbo].[tblProduct] ([ProductID], [ManufactureID], [TypeID], [CatID], [SubCatID], [TechSpecFilterID], [Name], [Model], [Airflow], [MaxPower], [SoundVolume], [FanDiameter]) 
VALUES 
(8, 1, 1, 2, 2, 2, N'TOBO', N'TOBO Suck Vac', 100, 25, 25, 30),
(9, 1, 1, 2, 2, 2, N'LOLA', N'5000 Ultra', 100, 25, 25, 30)

