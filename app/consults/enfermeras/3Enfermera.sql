- Dado una identificación de un paciente, conocer los exámenes realizados.
SELECT EXAMENES.ID_examen, EXAMENES.Nombre, EXAMENES.Fecha, PACIENTES.Nombre, PACIENTES.Apellidos, PACIENTES.NumeroDeDocumento,MEDICOS.Nombre,MEDICOS.Apellidos/*Table where u are and table in which u wanna search*/
FROM EXAMENES
JOIN PACIENTES ON EXAMENES.ID_paciente_FK = PACIENTES.ID_paciente /*Compare if the FK is the same with the ID of the real table*/
JOIN MEDICOS ON EXAMENES.ID_medico_FK = MEDICOS.ID_medico /*Compare if the FK is the same with the ID of the real table*/
WHERE PACIENTES.NumeroDeDocumento = 21098765432;/*The document that that we need*/
