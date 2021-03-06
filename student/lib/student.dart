import "package:flutter/material.dart";
import 'package:student/screens/announcementScreen/announcementScreen.dart';
import 'package:student/screens/assignmentScreen/assignmentScreen.dart';
import 'package:student/screens/classesScreen.dart';
import 'package:student/screens/homeScreen/homeScreen.dart';


void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "/home": (context) => HomeScreen(),
        "/classes": (context) => ClassesScreen(),
        "/assignment": (context) => AssignmentScreen(),
        "/announcements": (context) => AnnouncementScreen(),
      },
      home: HomeScreen(),

    );
  }
}