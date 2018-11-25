var express = require('express');
var router = express.Router();

const info = require('../info.json')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'DevOps Hof', gitsha: info.gitsha });
});

module.exports = router;
