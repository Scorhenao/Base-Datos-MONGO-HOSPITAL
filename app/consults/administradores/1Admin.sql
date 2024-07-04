- Conocer el número de pacientes que se encuentran en UCI y en cada sala.
db.CAMAS.aggregate([
    {
        $match: {
            "Paciente._id": { $exists: true },
            "Estado": "Ocupada"
        }
    },
    {
        $group: {
            _id: "$SalaUCI._id",
            cantidad_pacientes: { $sum: 1 }
        }
    },
    {
        $lookup: {
            from: "SALAS_UCI",
            localField: "_id",
            foreignField: "_id",
            as: "sala_info"
        }
    },
    {
        $unwind: "$sala_info"
    },
    {
        $project: {
            _id: 0,
            "sala_id": "$_id",
            "descripcion_sala": "$sala_info.Descripcion",
            "cantidad_pacientes": 1
        }
    }
])

