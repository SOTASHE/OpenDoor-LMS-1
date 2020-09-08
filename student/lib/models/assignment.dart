//assignment model class

class Assignment{
  String _subjectName;
  String _title;
  String _shortIntro;
  String _assignmentFile;
  int _marks;

  Assignment({subjectName, title, shortIntro,marks, assignmentFile}){
    this._subjectName =subjectName;
    this._title = title;
    this._shortIntro = shortIntro;
    this._marks = marks;
    this._assignmentFile = assignmentFile;
  }

  String getSubjectName(){
    return this._subjectName;
  }

  String getTitle(){
    return this._title;
  }

  String getIntro(){
    return this._shortIntro;
  }

  int getMarks(){
    return this._marks;
  }
  // Must fetch from database
  static List<Assignment> fetchAll() {
     return  [
       Assignment( subjectName: "PHYSICS", title: "Particle Beams",
           shortIntro:"What happens when to elementary particles collide", marks: 60 ),

       Assignment(subjectName: "ENGLISH FAL", title: "From the Same Sand, She emerged."),

       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting", marks: 45),
       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting", marks: 35),
       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting", marks: 66)
     ];
  }
}