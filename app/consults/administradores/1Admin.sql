- Conocer el número de pacientes que se encuentran en UCI y en cada sala.
SELECT SALAS_UCI.ID_salaUCI, COUNT(CAMAS.ID_paciente_FK) AS cantidad_pacientes
FROM CAMAS
JOIN SALAS_UCI ON CAMAS.ID_salaUCI_FK = SALAS_UCI.ID_salaUCI
WHERE CAMAS.ID_paciente_FK IS NOT NULL AND CAMAS.Estado = 'ocupado'
GROUP BY SALAS_UCI.ID_salaUCI;
