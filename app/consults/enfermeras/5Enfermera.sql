- Dado el nombre de un medicamento, conocer sus características.
SELECT MEDICAMENTOS.ID_codigo,MEDICAMENTOS.Dosis/*Table where u are and table in which u wanna search*/
FROM MEDICAMENTOS /*from medicamentos we gonna search*/
WHERE MEDICAMENTOS.Nombre = 'Ibuprofeno';/*The name of the medicamento*/