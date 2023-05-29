USE [FCMA_BudgetsDB]
GO

DECLARE @LeeUserId UNIQUEIDENTIFIER;
SET @LeeUserId = NEWID();

INSERT INTO [dbo].[Users]
(
	[UserID]
	,[UserName]
	,[CreateDate]
	,[ModifiedDate]
)
VALUES
(
	@LeeUserId
	,'Lee'
	,GETDATE()
	,GETDATE()
);



DECLARE @AccountId1 UNIQUEIDENTIFIER;
SET @AccountId1 = NEWID();

DECLARE @AccountId2 UNIQUEIDENTIFIER;
SET @AccountId2 = NEWID();

DECLARE @AccountId3 UNIQUEIDENTIFIER;
SET @AccountId3 = NEWID();

INSERT INTO [dbo].[Accounts]
(
	[AccountID]
	,[UserID]
	,[AccountName]
	,[Balance]
	,[StartDate]
	,[CreateDate]
	,[ModifiedDate]
)
VALUES
(
	@AccountId1
	,@LeeUserId
	,'Account 1'
	,1234.56
	,GETDATE()
	,GETDATE()
	,GETDATE()
),
(
	@AccountId2
	,@LeeUserId
	,'Account 2'
	,4565.87
	,GETDATE()
	,GETDATE()
	,GETDATE()
),
(
	@AccountId3
	,@LeeUserId
	,'Account 3'
	,967.36
	,GETDATE()
	,GETDATE()
	,GETDATE()
);



DECLARE @Account1TransId1 UNIQUEIDENTIFIER;
SET @Account1TransId1 = NEWID();

DECLARE @Account1TransId2 UNIQUEIDENTIFIER;
SET @Account1TransId2 = NEWID();

DECLARE @Account1TransId3 UNIQUEIDENTIFIER;
SET @Account1TransId3 = NEWID();


INSERT INTO [dbo].[AccountTransactions]
(
	[TransactionID]
	,[AccountID]
	,[TransactionName]
	,[Amount]
	,[TransactionDate]
	,[CreateDate]
	,[ModifiedDate]
)
VALUES
(
	@Account1TransId1
	,@AccountId1
	,'Account 1 Transaction 1'
	,234.11
	,GETDATE()
	,GETDATE()
	,GETDATE()
),
(
	@Account1TransId2
	,@AccountId1
	,'Account 1 Transaction 2'
	,764.11
	,GETDATE()
	,GETDATE()
	,GETDATE()
),
(
	@Account1TransId3
	,@AccountId1
	,'Account 1 Transaction 3'
	,33.45
	,GETDATE()
	,GETDATE()
	,GETDATE()
)





