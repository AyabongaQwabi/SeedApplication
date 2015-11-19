//var bcrypt = require('bcrypt');
var count = 0;
var user = {};
lock = false;
module.exports = function(){
  //log user in or redirect
  this.showDashboard = function (req, res){
    console.log('\t\t*this.showDashboard')
    req.services(function(err, services){
            var id = req.params.id
            console.log('\n\nLoading dashboard...id = '+id)
            var principal = services.principalDataServ;
            principal.getInfo([id],function(err, rows){
                var school_id = rows[0].id
                console.log(JSON.stringify(rows))
                 principal.getStudentList(school_id,function(err,results){
                        console.log('\n\nSTUDENTS\t\t'+JSON.stringify(results))
                        principal.getTeacherList(school_id,function(err,teachers){
                              console.log('\n\nTEACHERS\t\t'+JSON.stringify(results))
                              if(err) throw err;
                              res.render( 'principal-main', {
                                  info: rows[0],
                                  students:results,
                                  teachers:teachers
                              });
                        })
                        
                        
              

                 })
              
            });

      });

  }

  

  this.addStudent = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var principal = services.principalDataServ;
            principal.enrollStudent(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-students', {
                    students : rows
                });
            });

      });
    }


  this.removeStudent = function (req, res, next){
    req.services(function(err, services){
            var id = req.params.id
            var principal = services.principalDataServ;
            principal.derollStudent(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-students', {
                    students : rows
                });
            });

      });
  }


 this.addTeacher = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var principal = services.principalDataServ;
            principal.addTeacher(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-teachers', {
                    students : rows
                });
            });

      });
    }


  this.deleteTeacher = function (req, res, next){
    req.services(function(err, services){
            var id = req.params.id
            var principal = services.principalDataServ;
            principal.deleteTeacher(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-teachers', {
                    students : rows
                });
            });

      });
  }

 this.addClass = function (req, res, next){
       req.services(function(err, services){
            var data = req.body
            var principal = services.principalDataServ;
            principal.addClass(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-classes', {
                    students : rows
                });
            });

      });
    }


  this.deleteClass = function (req, res, next){
    req.services(function(err, services){
            var id = req.params.id
            var principal = services.principalDataServ;
            principal.removeClass(data,function(err, rows){
              if(err) throw err;
                res.render( 'principal-classes', {
                    students : rows
                });
            });

      });
  }
}