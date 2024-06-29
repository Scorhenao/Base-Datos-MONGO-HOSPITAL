- Dado una identificación de un paciente, conocer sus motivos de ingreso a la UCI.

SELECT RAZONES_DE_INGRESO.ID_razonDeIngreso, RAZONES_DE_INGRESO.Observacion, PACIENTES.Nombre, PACIENTES.Apellidos, PACIENTES.NumeroDeDocumento/*Table where u are and table in which u wanna search*/
FROM RAZONES_DE_INGRESO
JOIN PACIENTES ON RAZONES_DE_INGRESO.ID_paciente_FK = PACIENTES.ID_paciente /*Compare if the FK is the same with the ID of the real table*/
WHERE PACIENTES.NumeroDeDocumento = 23456789012;/*The document that that we need*/