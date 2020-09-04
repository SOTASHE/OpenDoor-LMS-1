//assignment model class

class Assignment{
  String _subjectName;
  String _title;
  String _shortIntro;
  String _assignmentFile;

  Assignment({subjectName, title, shortIntro, assignmentFile}){
    this._subjectName =subjectName;
    this._title = title;
    this._shortIntro = shortIntro;
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
  // Must fetch from database
  static List<Assignment> fetchAll() {
     return  [
       Assignment( subjectName: "PHYSICS", title: "Particle Beams",
           shortIntro:"What happens when to elementary particles collide" ),

       Assignment(subjectName: "ENGLISH FAL", title: "From the Same Sand, She emerged."),

       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting"),
       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting"),
       Assignment(subjectName: "BIOLOGY", title: "Hissing Sounds,Tempting")
     ];
  }
}