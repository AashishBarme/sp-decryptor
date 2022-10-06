EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'clr strict security', 0;
RECONFIGURE;

-- drop procedure decrypt_sp
-- drop assembly decryptsp

ALTER DATABASE master SET TRUSTWORTHY ON;
CREATE ASSEMBLY decryptsp from 'd:\Dotnet\decryptsp.dll' WITH PERMISSION_SET = UNSAFE


CREATE PROCEDURE decrypt_sp  
@userName NVARCHAR(255), @password NVARCHAR(255), @serverName NVARCHAR(255) , @tableName NVARCHAR(255), @procedureName NVARCHAR(255)
AS  
EXTERNAL NAME decryptsp.UserDefinedFunctions.DecryptSP

DECLARE @userName NVARCHAR(255), @password NVARCHAR(255), @serverName NVARCHAR(255) , @tableName NVARCHAR(255), @procedureName NVARCHAR(255)
EXEC decrypt_sp @userName='admin', @password  = 'admin' , @serverName  = 'localhost', @tableName  = 'test', @procedureName = 'test_sp'
