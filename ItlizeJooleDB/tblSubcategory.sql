CREATE TABLE [dbo].[tblSubCategory]
(
	[SubCatID] INT NOT NULL PRIMARY KEY,
	[CatID] INT NOT NULL,
	[SubCatName] NVARCHAR (50) NULL,

	CONSTRAINT [FK_tblCategory_tblSubCategory] FOREIGN KEY(CatID)
	REFERENCES [dbo].[tblCategory]([CatID]) ON DELETE CASCADE
)
