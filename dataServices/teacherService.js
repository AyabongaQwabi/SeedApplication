module.exports = function(connection){

  var getData = function(query, cb){
      connection.query( query, cb);
  };

  var executeQuery = function(query, data, cb){
      connection.query(query, data, cb);
  };


  this.getInfo = function(teacher_id,cb){
      getData('select * from teacher where id = ?',teacher_id,cb);
  }
  
  this.getClass = function(teacher_id,cb){
      getData('select * from class where teacher = ?',teacher_id,cb);
  }
  this.addStudent = function (data, cb) {
      executeQuery('insert into student set ?', data, cb );
  };
  this.getStudent = function (data, cb) {
      executeQuery('select * from student where id = ?', data, cb );
  };

  this.createClass = function(data,cb){
  		executeQuery('insert into class set ? ',data,cb);
  };
  this.removeStudent = function(data,cb){
      executeQuery('delete * from student where id = ? ',data,cb)
  }
  this.markStudent = function(data,cb){
      executeQuery('insert into student_marks set ?',data,cb)
  }

  this.updateStudentMark = function(data,cb){
      executeQuery('insert into student_marks set ?',data,cb)
  }
  this.getTeachingStream = function(stream_id,cb){
      executeQuery('select * from stream where id = ?',stream_id,cb);
  };
  this.getStudentPool = function(grade_id,cb){
      executeQuery('select * from student where grade_id = ?',grade_id,cb)
  }
  this.setTeachingStream = function(streamData,cb){
      executeQuery('insert into teacher set ?',streamData,cb);
  };

}
