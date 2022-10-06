# sp-decryptor

## Decrypt Store Procedure using RC4 Algorithm (With DAC)

Reference: https://en.wikipedia.org/wiki/RC4

To run this script in SQL server **Dedicated Admin Connection (DAC)** is required.

> Enabling DAC using TSQL Command:
`Use master
GO
sp_configure 'remote admin connections', 1
GO
RECONFIGURE WITH OVERRIDE
GO`

During login in ssms 
add **admin:** infront of server name
For example: `admin:localhost`

## Decrypt Store Procedure Without DAC

Reference: 

- https://learn.microsoft.com/en-us/sql/relational-databases/clr-integration/database-objects/getting-started-with-clr-integration
- https://en.dirceuresende.com/blog/sql-server-como-recuperar-o-codigo-fonte-de-um-objeto-criptografado-with-encryption/


Should create a .dll  of cs file
`./csc.exe /target:library /out:decryptsp.dll decryptsp.cs`


