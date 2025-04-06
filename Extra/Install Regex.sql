sp_configure 'show advanced options', 1;
RECONFIGURE;
GO

sp_configure 'clr enabled', 1  
GO
sp_configure 'clr strict security', 0 --PELIGROSO, No hacer en BBDD reales
GO
RECONFIGURE  
GO 

--https://github.com/DevNambi/sql-server-regex/blob/master/install/sql-2016.md