CREATE TABLE [dbo].[tblType]
(
	[TypeID] INT NOT NULL PRIMARY KEY,
	[UseType] NVARCHAR (50) NULL,
	[Application] NVARCHAR (50) NULL, 
	[MountingLocation] NVARCHAR (50) NULL,
	[Accessories] NVARCHAR (50) NULL,
	[ModelYear] INT NOT NULL
)
