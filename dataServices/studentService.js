module.exports = function(connection){

  var getData = function(query, cb){
      connection.query( query, cb);
  };

  var executeQuery = function(query, data, cb){
      connection.query(query, data, cb);
  };


  this.getInfo = function(data,cb){
      executeQuery()
  }
  this.getMarks = function(teacher_id,cb){
      getData('select * from class where teacher = ?',teacher_id,cb);
  }
  this.getSubjects = function (student_id, cb) {
      executeQuery('select * from student_subjects where student_id = ?', student_id, cb );
  };
  

}
