const express = require('express');
const PORT = process.env.PORT || 8080;
const app = express();

app.use(express.json());

app.listen(PORT, () => {
  console.log(`Simple REST API listening on port ${PORT}`);
});

app.get('/', async (req, res) => {
  return res.status(200).json({'Status':'OK', 'Payload':'GET: Up and Running'});
})

app.post('/', async (req, res) => {
  return res.status(200).json({'Status':'OK', 'Payload':'POST: Up and Running'});
})
