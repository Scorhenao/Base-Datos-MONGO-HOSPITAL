- Dado un número de cama, conocer los datos del paciente que se encuentra ACTUALMENTE allí.

SELECT CAMAS.ID_cama, PACIENTES.Nombre, PACIENTES.Apellidos/*Table where u are and table in which u wanna search*/
FROM CAMAS
JOIN PACIENTES ON CAMAS.ID_paciente_FK = PACIENTES.ID_paciente /*Compare if the FK is the same with the ID of the real table*/
WHERE CAMAS.ID_cama = 1;/*The ID that we need*/