import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send(`<h1>Simplest Node app builded and deployed</h1>`);
});

app.listen(5000, function () {
    console.log('App listening on port 5000!');
});