module.exports = function(connection){

  var getData = function(query, cb){
      connection.query( query, cb);
  };

  var executeQuery = function(query, data, cb){
      connection.query(query, data, cb);
  };



  this.enrollStudent= function(teacher_id,cb){
      getData('select * from class where teacher = ?',teacher_id,cb);
  }
  this.derollStudent = function (data, cb) {
      executeQuery('insert into student set ?', data, cb );
  };
  this.getStudent = function (data, cb) {
      executeQuery('select * from student where id = ?', data, cb );
  };

  this.createClass = function(data,cb){
  		executeQuery('insert into class set ? ',data,cb);
  };
  this.addGrade = function(data,cb){
      executeQuery('delete * from student where id = ? ',data,cb)
  }
  this.removeGrade = function(data,cb){
      executeQuery('insert into student_marks set ?',data,cb)
  }

}
