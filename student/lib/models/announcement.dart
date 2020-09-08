/*
This an an announcement data model
some data related to announcement nje
 */
import 'package:flutter/material.dart';
class Announcement{
  String _type;
  String _title;
  String _content;
  String _timeReceived;
  Color colorType;

  Announcement({type, title, content, timeReceived}){
    this._type = type;
    this._title = title;
    this._content = content;
    this._timeReceived = timeReceived;
    this.colorType = typeColor();
  }

  String getTitle(){
    return _title;
  }

  String getType(){
    return this._type;
  }

  String getContent(){
    return _content;
  }

  String getTimeReceived(){
    return _timeReceived;
  }


  Color typeColor(){
    // Color for type of announcement text
    Color color;
    switch(this._type){

      case "GENERAL":
        color = Colors.red;
        break;

      case "EXAMS":
        color = Colors.blue;
        break;

      case "CLASSES":
        color = Colors.yellow;
        break;
    }

    return color;
  }
  static List<Announcement> fetchAll(){
      return [
        Announcement(
            type: "CLASSES",
            title: "Introducing new communication pathways",
            content: "Obviously I am talking , about some telepathic shit",
            timeReceived: "05:12 PM"

        ) ,
        Announcement(
            type: "EXAMS",
            title: "Update on new form of assessment",
            content: "Well...The old methods we rigid and stiff",
            timeReceived: "06:66 PM"

        ) ,
        Announcement(
            type: "GENERAL",
            title: "Update on new form of assessment",
            content: "Covid Cases update In our School",
            timeReceived: "06:66 PM"

        ) ,
      ];
  }
}