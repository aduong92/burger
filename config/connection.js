// Require mysql
var mysql = require("mysql");

// Set up our connection information
var connection = mysql.createConnection({
  user: 'root',
  password: 'password',
  server: 'localhost',
  port: 3306,
  database: 'burger_db',
  insecureAuth: true,
  dialect: 'mysql',
  multipleStatements: true,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

connection.end();

// Connect to the database
connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Export connection
module.exports = connection;