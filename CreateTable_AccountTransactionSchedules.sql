/****** Object:  Table [dbo].[AccountTransactions]    Script Date: 5/29/2023 10:32:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AccountTransactionSchedules](
	[ScheduleID] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[AccountID] [uniqueidentifier] NOT NULL,
	[ScheduleName] [nvarchar](256) NOT NULL,
	[Amount] [float] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[RepeatDayInterval] [int] NOT NULL,
	[RepeatWeekInterval] [int] NOT NULL,
	[RepeatDayOfWeek] [int] NOT NULL,
	[RepeatMonthInterval] [int] NOT NULL,
	[RepeatDayOfMonth] [int] NOT NULL,
	[RepeatYearInterval] [int] NOT NULL,
	[RepeatMonthOfYear] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
CONSTRAINT FK_AccountTransactionSchedules_AccountID FOREIGN KEY (AccountID) REFERENCES dbo.Accounts (AccountID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AccountTransactionSchedules] ADD  CONSTRAINT [DF_AccountTransactionSchedules_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO

ALTER TABLE [dbo].[AccountTransactionSchedules] ADD  CONSTRAINT [DF_AccountTransactionSchedules_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[AccountTransactionSchedules] ADD  CONSTRAINT [DF_AccountTransactionSchedules_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO



