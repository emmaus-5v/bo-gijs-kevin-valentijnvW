const Pool = require('pg').Pool

// development credential
let connectionString = {
  user: 'api',
  database: 'shop',
  password: 'apipass',
  host: 'localhost',
  port: 5432,
  ssl: false
};

if(process.env.GITPOD_WORKSPACE_ID === undefined) {
  connectionString = {
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
  };
} 

const pool = new Pool(connectionString);
pool.on('connect', () => console.log('connected to db'));

const getProducts = (request, response) => {
  var query = 'SELECT * FROM products ORDER BY id ASC'
  pool.query(query, (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("Error:" + error)
    } else {
      response.status(200).json(results.rows)
    }
  })
}

const getProductsByCategory = (request, response) => {
  const category_id = parseInt(request.params.id)
  var query = 'SELECT * FROM products ORDER BY id ASC'
  query = 'SELECT * FROM products WHERE category_id = $1 ORDER BY id ASC'
  pool.query(query, [ category_id], (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("Error:" + error)
    } else {
      response.status(200).json(results.rows)
    }
  })
}

const getCategories = (request, response) => {
  var query = 'SELECT * FROM categories'
  pool.query(query, (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("Error:" + error)
    } else {
      response.status(200).json(results.rows)
    }
  })
}


const getProductsByIds = (ids, callback) => {
  pool.query(
    'SELECT * FROM products WHERE id = ANY($1::int[])',
    [ids],  // array of query arguments
    function(_err, result) {
      callback(result.rows)
    })
};

const getProductById = (request, response) => {
  const id = parseInt(request.params.id)
  pool.query('SELECT * FROM products WHERE id = $1', [id], (error, results) => {
    if (error) {
      console.log(error)
      response.status(500).json("oops")
    } else {
      response.status(200).json(results.rows[0])
    }
  })
}

const getCategoryName = (request, response) => {
  const id = parseInt(request.params.id)
  pool.query('SELECT name FROM categories WHERE id = $1', [id], (error, results) => {
    if (error) {
      response.status(500).json("oops")
    } else {
      if(results.rows[0]) {
        response.status(200).json(results.rows[0].name)
      } else {
        response.status(200).json("")
      }
    }
  })
}


module.exports = {
  getCategories,
  getProducts,
  getProductsByCategory,
  getProductById,
  getProductsByIds,
  getCategoryName
}
