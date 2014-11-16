var express = require('express');
var mysqldata = require('../db/dboperations');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
	 // just an example of maybe updating the user
	
  res.render('index', { title: 'Express' });
});

module.exports = router;
