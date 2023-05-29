SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AccountTransactions](
	[TransactionID] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[AccountID] UNIQUEIDENTIFIER NOT NULL,
	[TransactionName] [nvarchar](256) NOT NULL,
	[Amount] [float] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
CONSTRAINT FK_AccountTransactions_AccountID FOREIGN KEY (AccountID) REFERENCES dbo.Accounts (AccountID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccountTransactions] ADD  CONSTRAINT [DF_AccountTransactions_TransactionDate]  DEFAULT (getdate()) FOR [TransactionDate]
GO

ALTER TABLE [dbo].[AccountTransactions] ADD  CONSTRAINT [DF_AccountTransactions_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[AccountTransactions] ADD  CONSTRAINT [DF_AccountTransactions_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


