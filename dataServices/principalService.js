module.exports = function(connection){

  var getData = function(query, cb){
      connection.query( query, cb);
  };

  var executeQuery = function(query, data, cb){
      connection.query(query, data, cb);
  };

  this.getInfo= function(principal_id,cb){
       console.log('\nretrieving principal info...')
      executeQuery('select school.id,school.name as school,school.badge, teacher.name as principal from school,principal,teacher where school.principal_id = principal.id and teacher.id = principal.teacher_id and principal.id = ?',principal_id,cb);
  }

  this.enrollStudent= function(teacher_id,cb){
      getData('select * from class where teacher = ?',teacher_id,cb);
  }
  this.addTeacher= function(teacher_id,cb){
       executeQuery('insert into teacher set ?', data, cb );
  }
  this.deleteTeacher= function(teacher_id,cb){
       executeQuery('delete from teacher where id = ?', data, cb );
  }
  this.derollStudent = function (student_id, cb) {
      executeQuery('delete from student where id = ?',student_id, cb );
  };
  this.getStudent = function (data, cb) {
      executeQuery('select * from student where id = ?', data, cb );
  };
  this.getStudentList = function(school_id,cb){
      console.log('\nretrieving student list...')
      executeQuery('SELECT student.id,student.name,grade.name as grade FROM `student`,grade where student.grade_id = grade.id and student.school_id = ? order by grade asc', school_id, cb );
  }
  this.getStudentsInGrade = function(grade_id,cb){
      executeQuery('select * from student where grade_id = ?', grade_id, cb );
  }
  this.getTeacher = function(teacher_id,cb){
      executeQuery('select * from teacher where id = ?', data, cb );
  }
  this.getTeacherList = function(school_id,cb){
      executeQuery('SELECT teacher.id,teacher.name,stream.type as stream FROM `teacher`,stream where teacher.stream_id = stream.id and teacher.school_id = ? order by stream asc', school_id, cb );
    }
  this.createClass = function(data,cb){
  		executeQuery('insert into class set ? ',data,cb);
  };
   this.removeClass = function(data,cb){
      executeQuery('delete * from class where id = ? ',data,cb);
  };
  this.addGrade = function(data,cb){
      executeQuery('delete * from student where id = ? ',data,cb)
  }
  this.removeGrade = function(data,cb){
      executeQuery('insert into student_marks set ?',data,cb)
  }

}
