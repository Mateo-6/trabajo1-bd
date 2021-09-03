const mysql = require('mysql');

const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'guarderia'
});

mysqlConnection.connect( function (err, connection) {
    if (err) {
        console.log(err)
        return
    } else {
        console.log('DB IS CONNECTED');
    }
});

module.exports = mysqlConnection;