USE AdventureWorks2022

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Custom')
BEGIN
    EXEC ('CREATE SCHEMA Custom')
	-- DROP SCHEMA Custom
END

-- Person --------------------------------------------------------------------
drop table IF EXISTS  Custom.ModifiedPerson

SELECT P.*, EA.EmailAddress
INTO Custom.ModifiedPerson
FROM Person.Person P
JOIN Person.EmailAddress EA
ON P.BusinessEntityID = EA.BusinessEntityID
GO


-- Mail --------------------------------------------------------------------

drop table IF EXISTS  Custom.EmailAddress

SELECT 
LEFT(EmailAddress, LEN(EmailAddress) -20) as EmailAddress,
IIF(SUBSTRING(CONVERT(VARCHAR(36),rowguid),8,1)='0','adventure_works.com',
RIGHT(EmailAddress,19) )
as Domain,
SUBSTRING(CONVERT(VARCHAR(36),rowguid),8,1)as X ,
rowguid, 
ModifiedDate
INTO Custom.EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress is not NULL
GO

--SELECT * FROM Custom.EmailAddress

ALTER TABLE Custom.EmailAddress
ALTER COLUMN EmailAddress NVARCHAR(50) NOT NULL;
ALTER TABLE Custom.EmailAddress
ALTER COLUMN Domain NVARCHAR(50) NOT NULL;
GO
ALTER TABLE Custom.EmailAddress
ADD PRIMARY KEY (EmailAddress,Domain)
GO

