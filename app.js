var express = require('express');
var app = express();
var path = require('path');

app.get('/api',function (req,res){
	res.send('response get')
})

app.use(express.static('html')).listen(80)



