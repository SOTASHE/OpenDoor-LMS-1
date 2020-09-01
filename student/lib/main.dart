import "package:flutter/material.dart";
import 'package:student/screens/homeScreen.dart';


void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomeScreen(),
    );
  }
}