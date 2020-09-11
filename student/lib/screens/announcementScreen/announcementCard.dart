/*
This self explanatory like a naked old lady in a mid night hour
roaming the streets with a large rusty old chain, dragging this weird
looking huge creature.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/components/boarderText.dart';

class AnnouncementCard extends StatelessWidget {
  final String type;
  final String title;
  final String content;
  final String timeReceived;
  final Color typeColor;

  AnnouncementCard({this.type, this.title,this.content, this.typeColor, this.timeReceived});

  @override
  Widget build(BuildContext context) {



    return InkWell(
      onTap: (){ Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MessageContent(title: this.title,
              receivedTime: this.timeReceived , content: this.content,))
      );},
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),

        child: Container(
          height: MediaQuery.of(context).size.height /6.5,
          width: MediaQuery.of(context).size.width ,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                BoarderText(text: this.type, color: this.typeColor,),

                //Title
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      wordSpacing: 2.5
                    ),
                  ),
                ),

                //Time received
              Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 5,right: 5),

                  child: Text(
                      "${this.timeReceived}",
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  ),),

              ),
            ],
          ),
        ),
      ),
    );

  }
}

class MessageContent extends StatelessWidget {
  final String title;
  final String receivedTime;
  final String content;

  MessageContent({this.title, this.receivedTime, this.content});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){ return Navigator.pop(context);},),

        actions: [
          IconButton(icon: Icon(Icons.delete, color: Colors.black,), onPressed: (){},),
          IconButton(icon: Icon(Icons.mark_chat_read, color: Colors.black,), onPressed: (){},),
        ],

      ),

      //Message Body
      body: Column(
        children: [

          //Title
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "${this.title}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
          ),

          //SenderProfile
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [

                CircleAvatar(
                  radius: 25,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Admin",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,


                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                          "${this.receivedTime}",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 12
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Content
          Container(
            padding: EdgeInsets.all(20),
            child: Text("${this.content}",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                wordSpacing: 2.5,
                letterSpacing: 1.5
              ),
            )
          ),

        ],
      ),

    );
  }
}
