//var bcrypt = require('bcrypt');
var count = 0;
var user = {};
lock = false;
module.exports = function(){
  //log user in or redirect
  this.showDashboard = function (req, res){
    req.services(function(err, services){
            var id = req.params.id
            var teacher = services.teacherDataServ;
            teacher.getInfo(id,function(err, rows){
              if(err) throw err;
                res.render( 'teacher-class', {
                    comp : rows
                });
            });

      });

  }

  this.showClass = function(req, res, next){
    req.services(function(err, services){
      		var teacher = services.teacherDataServ;
          teacher.getClass(function(err, rows){
            if(err)	throw err;
              res.render( 'teacher-class', {
                  class : rows
              });
          });

    });
  }

  this.addStudent = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var teacher = services.teacherDataServ;
            teacher.addStudent(data,function(err, rows){
              if(err) throw err;
                res.render( 'teacher-class', {
                    students : rows
                });
            });

      });
    }


  this.removeStudent = function (req, res, next){
    req.services(function(err, services){
            var id = req.params.id
            var teacher = services.teacherDataServ;
            teacher.removeStudent(data,function(err, rows){
              if(err) throw err;
                res.render( 'teacher-class', {
                    students : rows
                });
            });

      });
  }

  this.markStudent = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var teacher = services.teacherDataServ;
            teacher.markStudent(data,function(err, rows){
              if(err) throw err;
                res.render( 'teacher-marks', {
                    students : rows
                });
            });

      });
    }
  this.remarkStudent = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var teacher = services.teacherDataServ;
            teacher.updateStudentMark(data,function(err, rows){
              if(err) throw err;
                res.render( 'teacher-marks', {
                    students : rows
                });
            });

      });
    }
  }

