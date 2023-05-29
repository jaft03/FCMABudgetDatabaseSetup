
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE OR ALTER  PROCEDURE [dbo].[sp_GetTransactionSchedules]
	@AccountID UNIQUEIDENTIFIER
AS
BEGIN

	SELECT * FROM [dbo].[AccountTransactionSchedules] WITH(NOLOCK)
	WHERE [AccountID] = @AccountID
	ORDER BY [ScheduleName] ASC;

END;
GO


