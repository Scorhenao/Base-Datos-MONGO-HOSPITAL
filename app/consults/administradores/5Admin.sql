- Dada una sala, conocer cuántas camas están disponibles/ocupadas.
SELECT 
    SALAS_UCI.ID_salaUCI,
    COUNT(CASE WHEN CAMAS.Estado = 'ocupado' THEN 1 END) AS Ocupadas,
    COUNT(CASE WHEN CAMAS.Estado = 'Disponible' THEN 1 END) AS Disponibles
FROM 
    CAMAS
JOIN 
    SALAS_UCI ON CAMAS.ID_salaUCI_FK = SALAS_UCI.ID_salaUCI
WHERE 
    CAMAS.ID_paciente_FK IS NOT NULL AND CAMAS.Estado = 'ocupado'
    OR (CAMAS.ID_paciente_FK IS NULL AND CAMAS.Estado = 'Disponible')
GROUP BY 
    SALAS_UCI.ID_salaUCI;
