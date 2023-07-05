SELECT * 
FROM Alquiler
WHERE Cliente_id in (
SELECT id
FROM Cliente
WHERE nombre like 'Daniela Fernandez' )