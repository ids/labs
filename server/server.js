const express = require('express')
const app = express()
const port = 3000

const path = __dirname + '/../app/dist/';
app.use(express.static(path));  

app.get('/api', (req, res) => {
  res.status(200).json({ result: "Happy Campers!" });
})

app.listen(port, () => {
  console.log(`App listening on port: ${port}`)
})