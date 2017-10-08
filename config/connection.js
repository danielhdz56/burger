// *********************************************************************************
// CONNECTION.JS - THIS FILE INITIATES THE CONNECTION TO MYSQL
// *********************************************************************************

// Require mysql
const mysql = require("mysql");

// Set up our connection information
var env = process.env.NODE_ENV || "development";
var config = require("./config.json")[env];

if(config.use_env_variable) {
    var connection = mysql.createConnection(process.env[config.use_env_variable]);
} else {
    var connection = mysql.createConnection(config);
}

// Connect to the database
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Export connection
module.exports = connection;