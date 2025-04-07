
![Diagrama](Diagrama%20Tablas%201.png)

1. Detecta todas las tablas de la vista que no cumplen la 1NF y devuelve sus nombres como una lista ordenada alfabéticamente. Usa los nombres tal y como aparecen en la siguiente query. Indica además las que crees que resulta debatible si están en una categoría u otra.

```sql
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
```

Normaliza las siguientes tablas (no sobrescribir originales, usar tablas temporales)
2. **ProductReview** en 1NF
3. **ProductModel** en 1NF (Salvo el atributo **CatalogDescription**)
4. **Sales** en 2NF
5. **Custom.FidelityCard** en 2NF
6. **PurchaseOrderDetail** en 2NF e introduce los primeros 5 valores
7. **EmailAddress** en 3NF
8. **BusinessEntityContact** en 3.5NF
9. **Document** en 3NF