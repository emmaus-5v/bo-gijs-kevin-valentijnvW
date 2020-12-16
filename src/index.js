const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const db = require('./queries')
const port = process.env.PORT || 3000;
const checkout = require('./checkout.js')

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (_request, response) => {
  response.redirect('index.html');
})

app.get('/api/categories', db.getCategories)
app.get('/api/products', db.getProducts)
app.get('/api/categories', db.getCategories)
app.get('/api/productsByCategory/:id', db.getProductsByCategory)
app.get('/api/getCategoryName/:id', db.getCategoryName)
app.get('/api/products/:id', db.getProductById)

app.post('/api/checkout', checkout.checkoutOrder)

// serve static files
app.use(express.static('../public'))

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})


