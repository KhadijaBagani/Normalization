
# Ejercicio 1: Coste de los joins

Antes de nada, ejecuta el script **[Custom Tables Joins](./Custom%20Tables%20Joins.sql)** en tu BBDD

1. Crea un join que empareje cada persona en **Custom.ModifiedPerson** con las otras personas de esa tabla que comparten su nombre (salvo si mismo)
	- Devolver solo Nombre, Apellido de la persona 1 y apellido de la persona 2
2. Compara qué ocurre cuando ejecutas la misma query usando **Person.Person** en vez de **Custom.ModifiedPerson** explica el porqué de la diferencia.

# Ejercicio 2:

Intenta hacer las siguientes consultas de la forma más optima posible

1. Esta consulta busca poder asociar el nombre de cada persona al nombre de su puesto en la empresa

```SQL
SELECT *, E.JobTitle
FROM Person.Person P
LEFT JOIN HumanResources.Employee E
ON P.BusinessEntityID = E.BusinessEntityID
WHERE E.JobTitle IS NOT NULL
```

2. La siguiente busca encontrar cuantos nombres son compartidos por más de una persona y el número de veces que ocurre por nombre

```SQL
SELECT DISTINCT P.FirstName, 
(
	SELECT COUNT(*) 
	FROM Person.Person
	WHERE FirstName = P.FirstName
) as PeopleWithTheName
FROM Person.Person P
WHERE (
	SELECT COUNT(*) 
	FROM Person.Person
	WHERE FirstName = P.FirstName
) >1
```

3. A diferencia de la anterior, esta busca encontrar a los que solo tienen una persona que se llama como ellos

```SQL
SELECT P1.FirstName, p1.LastName as LastName1, p2.LastName as LastName2
FROM Person.Person P1
JOIN Person.Person P2
ON P1.FirstName = P2.FirstName AND p1.LastName <> p2.LastName
JOIN (
	SELECT  FirstName 
	FROM Person.Person P
	GROUP BY FirstName
	HAVING COUNT(P.LastName) =2
) as N
ON N.FirstName = P1.FirstName
```
