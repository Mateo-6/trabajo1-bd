const express = require('express');
const app = express();

// Settings
app.set('port', process.env.PORT || 3000);

// Middlewares
app.use(express.json());

// Routes
app.use( '/api/core', require('./routes/core') );
app.use( '/api/core2/', require('./routes/core2') );

app.listen(app.get('port'), () => {
    console.log( 'server on port', app.get('port') );
});