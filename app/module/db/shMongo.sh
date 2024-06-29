use HOSPITAL;

db.TIPOS_DE_DOCUMENTOS.insertMany([
    { "Nombre": "Pasaporte" },
    // otros tipos de documentos
]);

db.CONTACTOS_DE_EMERGENCIA.insertMany([
    { "Nombre": "Juan Pérez", "Telefono": "123456789" },
    // otros contactos de emergencia
]);

db.PACIENTES.insertMany([
    {
        "Nombre": "Maria",
        "Apellidos": "Gonzalez",
        "TelefonoDeContacto": "987654321",
        "NumeroDeDocumento": "12345678901",
        "TipoDeDocumento": { "_id": ObjectId("..."), "Nombre": "Pasaporte" },
        "ContactoDeEmergencia": { "_id": ObjectId("..."), "Nombre": "Juan Pérez", "Telefono": "123456789" },
        "Alergias": [{ "_id": ObjectId("..."), "NombreDeAlergia": "Polen", "TipoDeAlergia": "Ambiental" }]
    }
    // otros pacientes
]);

// Insertar otros documentos de forma similar
