const mysqlConnection = require('../database');

const test = (req, res) => {
    mysqlConnection.query(
        ' SELECT * FROM nino WHERE nino_id = 1',
        (err, rows, fields) => {
            if (!err) {
                res.json(rows);
            } else {
                console.log(err);
            }
        });
}

const getMenuData = (req, res) => {

    const menu = req.params.menu;

    try {

        mysqlConnection.query(
            `SELECT 
                menu.menu_id, valor_plato, 
                nombre_ingrediente, 
                nombre_plato, 
                plato.plato_id 
            FROM menu 
            INNER JOIN menu_plato 
            ON menu.menu_id = menu_plato.menu_id 
            INNER JOIN plato 
            ON plato.plato_id = menu_plato.plato_id 
            INNER JOIN ingrediente_plato 
            ON plato.plato_id = ingrediente_plato.plato_id 
            INNER JOIN ingrediente 
            ON ingrediente_plato.ingrediente_id = ingrediente.ingrediente_id 
            WHERE menu.menu_id = ${menu} 
            GROUP BY nombre_ingrediente 
            ORDER BY nombre_plato DESC;`,

            (err, rows, fields) => {

                if (!err) {

                    let ingredientes = [];
                    let platos = [];

                    let valorMenu = 0;

                    for (let i = 0; i < rows.length; i++) {

                        ingredientes.push({
                            nombre: rows[i].nombre_ingrediente,
                            id: rows[i].plato_id
                        });

                        platos.push({
                            id: rows[i].plato_id,
                            nombre: rows[i].nombre_plato,
                            ingredientes: []
                        })

                        valorMenu += rows[i].valor_plato;

                    }

                    for (let i = 0; i < ingredientes.length; i++) {

                        let arr = [];

                        for (let j = 0; j < platos.length; j++) {

                            if (ingredientes[i].id === platos[j].id) {
                                arr.push(ingredientes[i].nombre);
                                platos[j].ingredientes = arr;
                            }

                        }
                    }

                    const response = {
                        menu,
                        platos,
                        valorMenu
                    };

                    res.json(response);

                } else {
                    console.log(err);
                }

            });

    } catch (err) {
        console.log(err);
    }

};

const getTipoGuarderia = (req, res) => {

    try {

        mysqlConnection.query(
            `SELECT SUM(plato.valor_plato) as Total FROM asistencia 
            INNER JOIN menu_asistencia ON menu_asistencia.asistencia_id = asistencia.asistencia_id
            INNER JOIN menu ON menu.menu_id = menu_asistencia.menu_id
            INNER JOIN menu_plato ON menu_plato.menu_id = menu_asistencia.menu_id
            INNER JOIN plato ON plato.plato_id = menu_plato.plato_id;`,
            (err, rows, fields) => {
                if (!err) {

                    const response = {}

                    if( rows[0].Total > 2000000 ) {
                        response.tipo = "privada";
                    } else {
                        response.tipo = "publica";
                    }

                    res.json(response);

                } else {
                    console.log(err);
                }
            });

    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    test,
    getMenuData,
    getTipoGuarderia
};