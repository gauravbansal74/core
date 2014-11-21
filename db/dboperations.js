var mysql      = require('mysql');

var connection  = mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'admin',
  database : 'offcampus4u'
});

connection.getConnection(function(err, connection) {
  if (err) {
    console.error('error connecting: ' + err);
    return;
  }else{
  	console.log('connected as id ' + connection);
  }
  connection.release();
});

module.exports = connection;