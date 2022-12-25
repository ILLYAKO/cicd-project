const express = require('express')
const server = express()
const port = 5000

server.get('/', (req, res) => {
  res.send('Hello World!')
})

server.listen(port, () => {
  console.log(`Server is listening on port ${port}.`)
})