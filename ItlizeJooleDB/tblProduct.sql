CREATE TABLE [dbo].[tblProduct]
(
	[ProductID] INT NOT NULL PRIMARY KEY,
	[ManufactureID] INT NOT NULL,
	[TypeID] INT NOT NULL,
	[CatID] INT NOT NULL,
	[SubCatID] INT NOT NULL,
	[TechSpecFilterID] INT NOT NULL,
	[Name] NVARCHAR (50) NULL,
	[Model] NVARCHAR (50) NULL,
	[Airflow] FLOAT NULL,
	[MaxPower] FLOAT NULL,
	[SoundVolume] FLOAT NULL,
	[FanDiameter] FLOAT NULL,

	CONSTRAINT [FK_tblCategory_tblProduct] FOREIGN KEY([CatID])
		REFERENCES [dbo].[tblCategory] ([CatID]) ,

	CONSTRAINT [FK_tblSubCategory_tblProduct] FOREIGN KEY([SubCatID])
		REFERENCES [dbo].[tblSubCategory] ([SubCatID]),

	CONSTRAINT [FK_tblType_tblProduct] FOREIGN KEY([TypeID])
		REFERENCES [dbo].[tblType] ([TypeID]) ,

	CONSTRAINT [FK_tblTechSpecFilter_tblProduct] FOREIGN KEY([TechSpecFilterID])
		REFERENCES [dbo].[tblTechSpecFilter] ([TechSpecFilterID]) ,

	CONSTRAINT [FK_tblManufacture_tblProduct] FOREIGN KEY([ManufactureID])
		REFERENCES [dbo].[tblManufacture] ([ManufactureID]) , 
    
	
)
