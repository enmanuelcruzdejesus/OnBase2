CREATE TABLE [dbo].[test]
(
[id] [int] NOT NULL,
[descrip] [varchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[test] ADD CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
