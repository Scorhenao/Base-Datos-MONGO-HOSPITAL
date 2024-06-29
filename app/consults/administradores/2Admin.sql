- Conocer el total de ingresos de un mes dado.
SELECT COUNT(DISTINCT ID_paciente_FK) AS total_pacientes_junio_2024
FROM RAZONES_DE_INGRESO
WHERE MONTH(Fecha) = 6 AND YEAR(Fecha) = 2024;
