SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accounts](
	[AccountID] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[UserID] UNIQUEIDENTIFIER NOT NULL,
	[AccountName] [nvarchar](256) NOT NULL,
	[Balance] [float] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
CONSTRAINT FK_Accounts_UserID FOREIGN KEY (UserID) REFERENCES dbo.Users (UserID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO




