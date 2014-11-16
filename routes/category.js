var express = require('express');
var pool = require('../db/dboperations');
var router = express.Router();
var bodyParser     =         require("body-parser");

router.use(bodyParser.urlencoded({ extended: false }));
// GET the list of the data
router.get('/', function(req, res) {
	pool.getConnection(function(err, connection) {
		  connection.query( 'SELECT categoryid as id, categoryname as name FROM category WHERE categorydeleted=0', function(err, rows) {
		    if (err) throw err;
			 if(rows){
			    res.send(JSON.stringify(rows));
			  }else{
			  	res.send('Error occured');
			  }
			  connection.release();
		  });
	});
});


//GET one document
router.get('/:id', function(req, res) {
  var documentid = req.params.id;
  pool.getConnection(function(err, connection) {
		  connection.query( 'SELECT categoryid as id, categoryname as name FROM category WHERE categoryid ='+documentid+' AND categorydeleted=0', function(err, rows) {
		    if (err) throw err;
			 if(rows.length > 0){
			    res.send(JSON.stringify(rows));
			  }else{
			  	res.send('NOEXT - Invaild Request');
			  }
			  connection.release();
		  });
	});
});

// Create New record
router.post('/', function(req, res) {
	var catName = req.body.name;
	var currentTimeStamp =  new Date();
	var data = {categoryname:catName,categorycreatedon:currentTimeStamp,categorycreatedby:1,categorymodifiedon:currentTimeStamp,categorymodifiedby:1,categorydeleted:0 };
	pool.getConnection(function(err, connection) {
		  connection.query( 'INSERT INTO category SET ?', data, function(err, result) {
		    if (err) throw err;
			    res.send(result);
			  connection.release();
		  });
	});

});


// Update the record
router.post('/:id', function(req, res) {
	var documentid = req.params.id;
	var catName = req.body.name;
	var currentTimeStamp =  new Date();
	var data = {categoryname:catName,categorymodifiedon:currentTimeStamp,categorymodifiedby:1};
	pool.getConnection(function(err, connection) {
		  connection.query( 'UPDATE category SET ? WHERE categoryid ='+documentid+' AND categorydeleted=0', data, function(err, result) {
		    if (err) throw err;
			    res.send(result);
			  connection.release();
		  });
	});

});

// PUT request to the root URL
router.put('/', function(req, res) {
  res.send('/ PUT OK');
});


// PATCH request to the root URL
router.patch('/', function(req, res) {
  res.send('/ PATCH OK');
});

// DELETE request to the root URL
router.delete('/:id', function(req, res) {
	var documentid = req.params.id;
	var currentTimeStamp =  new Date();
	var data = {categorymodifiedon:currentTimeStamp,categorymodifiedby:1, categorydeleted:1};
	pool.getConnection(function(err, connection) {
		  connection.query( 'UPDATE category SET ? WHERE categoryid ='+documentid+' AND categorydeleted=0', data, function(err, result) {
		    if (err) throw err;
			    res.send(result);
			  connection.release();
		  });
	});
  //res.send('/ DELETE OK'+documentid);
});

// OPTIONS request to the root URL
router.options('/', function(req, res) {
  res.send('/ OPTIONS OK');
});

// M-SEARCH request to the root URL
router['m-search']('/', function(req, res) {
  res.send('/ M-SEARCH OK');
});

// NOTIFY request to the root URL
router.notify('/', function(req, res) {
  res.send('/ NOTIFY OK');
});

// SUBSCRIBE request to the root URL
router.subscribe('/', function(req, res) {
  res.send('/ SUBSCRIBE OK');
});

// UNSUBSCRIBE request to the root URL
router.unsubscribe('/', function(req, res) {
  res.send('/ UNSUBSCRIBE OK');
});

module.exports = router;
