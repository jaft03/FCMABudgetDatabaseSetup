
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE OR ALTER PROCEDURE [dbo].[sp_GetTransactions]
	@AccountID UNIQUEIDENTIFIER
AS
BEGIN

	SELECT * FROM [dbo].[AccountTransactions] WITH(NOLOCK)
	WHERE [AccountID] = @AccountID
	ORDER BY [TransactionName] ASC;

END;
GO


