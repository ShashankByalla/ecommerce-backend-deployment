const express = require('express');
const mysql = require('mysql2');
const app = express();

const db = mysql.createConnection({
  host: 'db',
  user: 'user',
  password: 'password',
  database: 'ecommerce'
});

db.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL');
});

app.get('/products', (req, res) => {
  db.query('SELECT * FROM products', (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.listen(3000, () => {
  console.log('Backend API running on port 3000');
});
