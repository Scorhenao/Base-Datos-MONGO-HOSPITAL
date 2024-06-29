- Dado una identificación de una enfermera, conocer sus datos personales y salario.
SELECT ENFERMERAS.ID_enfermera, ENFERMERAS.Nombre, ENFERMERAS.Apellidos, ENFERMERAS.TelefonoDeContacto, ENFERMERAS.FechaDeNacimiento,ENFERMERAS.NumeroDeDocumento,ENFERMERAS.AniosDeExperiencia,
GENEROS.Nombre AS Nombre_Del_Genero,
TIPOS_DE_DOCUMENTOS.Nombre AS Tipo_Del_Documento,
CONTRATOS.Salario AS Salario_De_La_Enfermera/*Table where u are and table in which u wanna search*/
FROM ENFERMERAS
JOIN GENEROS ON ENFERMERAS.ID_genero_FK = GENEROS.ID_genero /*Compare if the FK is the same with the ID of the real table*/
JOIN TIPOS_DE_DOCUMENTOS ON ENFERMERAS.ID_tipoDeDocumento_FK = TIPOS_DE_DOCUMENTOS.ID_tipoDeDocumento /*Compare if the FK is the same with the ID of the real table*/
JOIN CONTRATOS ON ENFERMERAS.ID_contrato_FK = CONTRATOS.ID_contrato /*Compare if the FK is the same with the ID of the real table*/
