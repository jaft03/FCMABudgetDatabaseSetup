
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE OR ALTER PROCEDURE [dbo].[sp_GetUsers]
AS
BEGIN

	SELECT * FROM [dbo].[Users] WITH(NOLOCK)
	ORDER BY [UserName] ASC;

END;
GO


