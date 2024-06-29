- Dado una identificación de un médico, conocer sus datos personales y salario.
SELECT MEDICOS.ID_medico, MEDICOS.Nombre, MEDICOS.Apellidos, MEDICOS.TelefonoDeContacto, MEDICOS.FechaDeNacimiento,MEDICOS.NumeroDeDocumento,
TITULOS.Nombre AS Nombre_Del_Titulo,
GENEROS.Nombre AS Nombre_Del_Genero,
TIPOS_DE_DOCUMENTOS.Nombre AS Tipo_Del_Documento,
CONTRATOS.Salario AS Salario_Del_Medico/*Table where u are and table in which u wanna search*/
FROM MEDICOS
JOIN TITULOS ON MEDICOS.ID_titulo_FK = TITULOS.ID_titulo /*Compare if the FK is the same with the ID of the real table*/
JOIN GENEROS ON MEDICOS.ID_genero_FK = GENEROS.ID_genero /*Compare if the FK is the same with the ID of the real table*/
JOIN TIPOS_DE_DOCUMENTOS ON MEDICOS.ID_tipoDeDocumento_FK = TIPOS_DE_DOCUMENTOS.ID_tipoDeDocumento /*Compare if the FK is the same with the ID of the real table*/
JOIN CONTRATOS ON MEDICOS.ID_contrato_FK = CONTRATOS.ID_contrato /*Compare if the FK is the same with the ID of the real table*/
