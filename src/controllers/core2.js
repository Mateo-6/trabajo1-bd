const mysqlConnection = require('../database');

const punto2 = (req, res) => {

    const nino = req.params.nino;

    mysqlConnection.query(
        `SELECT a.nino_id, a.nombres, a.apellidos, TIMESTAMPDIFF(YEAR,a.fecha_nacimiento,CURDATE()) AS edad, b.valor_matricula 
        FROM nino A, matricula B 
        WHERE a.nino_id= b.nino_id 
        AND TIMESTAMPDIFF(YEAR,a.fecha_nacimiento,CURDATE()) <=6 
        AND a.nino_id = ${nino};`,
        (err, rows, fields) => {
            if (!err) {

                let response = {};

                if( rows.length == 0 ) {
                    response.msg = "Este niño se encuentra atrasado en su matricula";
                } else {
                    response = {
                        nino: `${rows[0].nombres} ${rows[0].apellidos}`,
                        edad: rows[0].edad,
                        msg: "Este niño no se encuentra atrasado en su matricula"
                    }
                }

                res.json(response);

            } else {
                console.log(err);
            }
        });
}

module.exports = {
    punto2
};