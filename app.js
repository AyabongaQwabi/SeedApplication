'use strict';

var express = require('express'),
    exphbs  = require('express-handlebars'),
    mysql = require('mysql'),
    myConnection = require('express-myconnection'),
    bodyParser = require('body-parser'),
    principalObj = require('./routes/principal'),
    studentService = require('./dataServices/studentService'),
    teacherService = require('./dataServices/teacherService'),
    principalService = require('./dataServices/principalService'),
    ConnectionProvider = require('./routes/connectionProvider');

var app = express();

var dbOptions = {
      host: 'localhost',
      user: 'root',
      password: 'theaya5379',
      port: 3306,
      database: 'myschool'
};
var serviceSetupCallback = function(connection){
	return {
		teacherDataServ : new teacherService(connection),
	    studentDataServ: new studentService(connection),
	    principalDataServ : new principalService(connection)
	}
};
var myConnectionProvider = new ConnectionProvider(dbOptions, serviceSetupCallback);
app.use(myConnectionProvider.setupProvider);
app.use(myConnection(mysql, dbOptions, 'pool'));

//setup template handlebars as the template engine
app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

app.use(express.static(__dirname + '/public'));

//setup middleware
app.use(myConnection(mysql, dbOptions, 'single'));
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())

function errorHandler(err, req, res, next) {
  res.status(500);
  res.render('error', { error: err });
}
var principal = new principalObj();
//setup the handlers
app.get('/principal/:id', principal.showDashboard);
//app.get('/principal/:id/teachers', principal.);
app.post('/principal/:id/teachers/add', principal.addTeacher);
app.post('/principal/:id/teachers/delete/:teacher_id', principal.deleteTeacher);

//app.get('/principal/:id/students', principal.get);
app.post('/principal/:id/students/add', principal.addStudent);
app.post('/principal/:id/students/delete/:student_id', principal.removeStudent);



app.use(errorHandler);

//configure the port number using and environment number
var portNumber = process.env.CRUD_PORT_NR || 4000;

//start everything up
app.listen(portNumber, function () {
    console.log('Create, Read, Update, and Delete (CRUD) example server listening on:', portNumber);
});
