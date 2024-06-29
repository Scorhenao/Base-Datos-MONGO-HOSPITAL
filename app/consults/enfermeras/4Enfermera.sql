- Dada una sala, conocer el médico que la dirige.
SELECT MEDICOS.ID_medico, MEDICOS.Nombre, MEDICOS.Apellidos, SALAS_UCI.ID_salaUCI/*Table where u are and table in which u wanna search*/
FROM MEDICOS /*from medicos we gonna search*/
JOIN SALAS_UCI ON MEDICOS.ID_salaUCI_FK = SALAS_UCI.ID_salaUCI /*Compare if the FK is the same with the ID of the real table*/
WHERE SALAS_UCI.ID_salaUCI = 20;/*The id of the sala_UCI*/