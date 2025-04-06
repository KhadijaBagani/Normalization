

select * from Person.Person
where dbo.RegexMatch(FirstName,'b[ao]') is not null

