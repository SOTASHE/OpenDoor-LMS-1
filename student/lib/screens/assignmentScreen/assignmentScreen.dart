
import 'package:flutter/material.dart';
import 'package:student/models/assignment.dart';
import 'package:student/screens/assignmentScreen/assignmentCard.dart';

class AssignmentScreen extends StatelessWidget{
  ///TODO Update the assignmentAvailble class model
  @override
  Widget build(BuildContext context) {
    List<Assignment> assignmentsAvailable = Assignment.fetchAll();
    return Scaffold(
      appBar: AppBar(title: Text("Due Assignments"),),

      body: Container(

        child: ListView.builder(
            itemCount: assignmentsAvailable.length ,
            itemBuilder: (BuildContext listContext, int index){
              return AssignmentCard(
                subjectName: assignmentsAvailable[index].getSubjectName(),
                title: assignmentsAvailable[index].getTitle() ,
                shortIntro: assignmentsAvailable[index].getIntro(),
                  );
            }),
      ),
    );
  }
}