const pg = require('pg');
require('dotenv').config()

const connectionString = process.env.DB_CONNECTION_STRING;
const db = new pg.Pool({connectionString});

module.exports = db;