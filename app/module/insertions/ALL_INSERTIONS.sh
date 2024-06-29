use HOSPITAL;

// Insertar TIPOS_DE_DOCUMENTOS
db.TIPOS_DE_DOCUMENTOS.insertMany([
    { "_id": 1, "Nombre": "Pasaporte" },
    { "_id": 2, "Nombre": "DNI" }
]);

// Insertar CONTACTOS_DE_EMERGENCIA
db.CONTACTOS_DE_EMERGENCIA.insertMany([
    { "_id": 1, "Nombre": "Juan Pérez", "Telefono": "123456789" },
    { "_id": 2, "Nombre": "Ana López", "Telefono": "987654321" }
]);

// Insertar PACIENTES
db.PACIENTES.insertMany([
    {
        "_id": 1,
        "Nombre": "Maria",
        "Apellidos": "Gonzalez",
        "TelefonoDeContacto": "987654321",
        "NumeroDeDocumento": "12345678901",
        "TipoDeDocumento": { "_id": 1, "Nombre": "Pasaporte" },
        "ContactoDeEmergencia": { "_id": 1, "Nombre": "Juan Pérez", "Telefono": "123456789" },
        "Alergias": [{ "_id": 1, "NombreDeAlergia": "Polen", "TipoDeAlergia": "Ambiental" }]
    }
]);

// Insertar RAZONES_DE_INGRESO
db.RAZONES_DE_INGRESO.insertMany([
    {
        "_id": 1,
        "Observacion": "Dolor abdominal",
        "Fecha": new Date("2023-06-12"),
        "Paciente": { "_id": 1, "Nombre": "Maria" }
    }
]);

// Insertar ALERGIAS
db.ALERGIAS.insertMany([
    { "_id": 1, "NombreDeAlergia": "Polen", "TipoDeAlergia": "Ambiental" }
]);

// Insertar GENEROS
db.GENEROS.insertMany([
    { "_id": 1, "Nombre": "Femenino" }
]);

// Insertar TITULOS
db.TITULOS.insertMany([
    { "_id": 1, "Nombre": "Doctor" }
]);

// Insertar CONTRATOS
db.CONTRATOS.insertMany([
    {
        "_id": 1,
        "FechaDeInicioDeContrato": new Date("2023-01-01"),
        "Salario": 50000
    }
]);

// Insertar SALAS_UCI
db.SALAS_UCI.insertMany([
    { "_id": 1, "Descripcion": "Sala UCI 1" }
]);

// Insertar CAMAS
db.CAMAS.insertMany([
    {
        "_id": 1,
        "Estado": "Ocupada",
        "Paciente": { "_id": 1, "Nombre": "Maria" },
        "SalaUCI": { "_id": 1, "Descripcion": "Sala UCI 1" }
    }
]);

// Insertar ENFERMERAS
db.ENFERMERAS.insertMany([
    {
        "_id": 1,
        "Nombre": "Ana",
        "Apellidos": "Lopez",
        "TelefonoDeContacto": "1122334455",
        "FechaDeNacimiento": new Date("1990-05-15"),
        "NumeroDeDocumento": "12345678901",
        "AniosDeExperiencia": 5,
        "Genero": { "_id": 1, "Nombre": "Femenino" },
        "TipoDeDocumento": { "_id": 2, "Nombre": "DNI" },
        "Contrato": { "_id": 1, "FechaDeInicioDeContrato": new Date("2023-01-01"), "Salario": 50000 },
        "SalaUCI": { "_id": 1, "Descripcion": "Sala UCI 1" }
    }
]);

// Insertar MEDICOS
db.MEDICOS.insertMany([
    {
        "_id": 1,
        "Nombre": "Carlos",
        "Apellidos": "Martinez",
        "TelefonoDeContacto": "5566778899",
        "FechaDeNacimiento": new Date("1980-08-20"),
        "NumeroDeDocumento": "12345678901",
        "Titulo": { "_id": 1, "Nombre": "Doctor" },
        "Genero": { "_id": 1, "Nombre": "Masculino" },
        "TipoDeDocumento": { "_id": 2, "Nombre": "DNI" },
        "Contrato": { "_id": 1, "FechaDeInicioDeContrato": new Date("2023-01-01"), "Salario": 70000 },
        "SalaUCI": { "_id": 1, "Descripcion": "Sala UCI 1" }
    }
]);

// Insertar SALIDAS
db.SALIDAS.insertMany([
    {
        "_id": 1,
        "Motivo": "Recuperación",
        "Fecha": new Date("2023-06-20"),
        "TiempoDeEstadia": "8 días",
        "Medico": { "_id": 1, "Nombre": "Carlos" },
        "Enfermera": { "_id": 1, "Nombre": "Ana" },
        "Paciente": { "_id": 1, "Nombre": "Maria" }
    }
]);

// Insertar EXAMENES
db.EXAMENES.insertMany([
    {
        "_id": 1,
        "Nombre": "Análisis de sangre",
        "Fecha": new Date("2023-06-14"),
        "Paciente": { "_id": 1, "Nombre": "Maria" },
        "Medico": { "_id": 1, "Nombre": "Carlos" }
    }
]);

// Insertar DIAGNOSTICOS
db.DIAGNOSTICOS.insertMany([
    {
        "_id": 1,
        "Paciente": { "_id": 1, "Nombre": "Maria" },
        "Medico": { "_id": 1, "Nombre": "Carlos" }
    }
]);

// Insertar RESULTADOS
db.RESULTADOS.insertMany([
    {
        "_id": 1,
        "Observacion": "Todo normal",
        "Examen": { "_id": 1, "Nombre": "Análisis de sangre" },
        "Medico": { "_id": 1, "Nombre": "Carlos" },
        "Diagnostico": {
            "_id": 1,
            "Paciente": { "_id": 1, "Nombre": "Maria" }
        }
    }
]);

// Insertar MEDICAMENTOS
db.MEDICAMENTOS.insertMany([
    {
        "_id": 1,
        "Nombre": "Paracetamol",
        "Dosis": "500mg",
        "Enfermera": { "_id": 1, "Nombre": "Ana" }
    }
]);

// Insertar MEDICAMENTOS_DIAGNOSTICOS
db.MEDICAMENTOS_DIAGNOSTICOS.insertMany([
    {
        "Diagnostico": { "_id": 1, "Paciente": { "_id": 1, "Nombre": "Maria" } },
        "Medicamento": { "_id": 1, "Nombre": "Paracetamol" }
    }
]);
