var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var session = require('express-session');
var mysql = require('mysql');

var app = express();

var dbConnectionPoolMap = mysql.createPool({
    host: 'localhost',
    database: 'mapmarkers'
});

var dbConnectionPool = mysql.createPool({
    host: 'localhost',
    database: 'covidwatch'
});

app.use(function(req,res,next){
    req.pool = dbConnectionPool;
    next();
});



app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

app.use(session({
    secret: 'my session',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false }
}));

app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/users',express.static(path.join(__dirname, 'private')));

module.exports = app;
