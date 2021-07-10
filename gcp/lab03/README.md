# REST API

## Basic REST API

Build a basic REST API in Node.js

1. The code below will serve GET/POST requests

```javascript
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

```

2. Run the code
```bash
npm start
```

3. Test GET

```bash
curl localhost:8080
```

Ensure the output is as expected

4. TEST POST
```bash
curl -X POST localhost:8080
```

Ensure the output is as expected

## Expanded REST API

Serve JSON Content from the REST API

1. The code below introduces a data file and serves the contents

```javascript
const express = require('express');
const PORT = process.env.PORT || 8080;
const app = express();
const products = require('./data/products');

app.use(express.json());

app.listen(PORT, () => {
  console.log(`Simple REST API listening on port ${PORT}`);
});

app.get('/', async (req, res) => {
  return res.status(200).json({'Status':'OK', 'Payload': products});
})

app.post('/', async (req, res) => {
  return res.status(200).json({'Status':'OK', 'Payload': products});
})
``` 

2. Create a subdirectory for the data file
```bash
mkdir data
```

3. Add json to a `products.json` file in the data directory
```json
{
  "products": [
    {"title": "Compute"},
    {"title": "Storage"},
    {"title": "Databases"},
    {"title": "Networking"},
    {"title": "Operations"},
    {"title": "Tools"},
    {"title": "Big Data"},
    {"title": "Artifical Intelligence"},
    {"title": "Google Solutions"},
    {"title": "Partner Solutions"}
  ]
}
```

4. Run the code

```bash
npm start
```

5. Test GET

```bash
curl localhost:8080
```

Ensure the output is as expected

6. TEST POST
```bash
curl -X POST localhost:8080
```

Ensure the output is as expected
