const express = require('express');

const app  = express();
const PORT = (process.env.PORT || 5000);

app.get('/', (req, res) => {
    res.status(200).end('ok');
});

app.get('/env', (req, res) => {
    const test = process.env.TEST;
    res.status(200).end('TEST='+test);
});

app.listen(PORT, () => {
    console.log('Run => ' + PORT);
});
