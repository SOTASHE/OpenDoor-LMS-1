/*
This a text Messaging screen

 */

import 'package:flutter/material.dart';
import 'package:student/models/messages.dart';

import 'messageCard.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {

  List<Message> allChats = Message.fetchAll();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,

          leading: IconButton(icon: Icon(Icons.menu, color: Colors.blueGrey,), onPressed: (){},) ,
          title: Text(
              "Inbox",
            style: TextStyle(
              color: Colors.blue,

            ),
          ),

          bottom: TabBar(

            labelColor: Colors.white,
            unselectedLabelColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                ),

                color: Colors.blue),

            tabs: [

              Tab(child: Icon(Icons.email),),
              Tab(child: Icon(Icons.supervised_user_circle)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Container(
              child: ListView.builder(
                  itemCount: allChats.length,
                  itemBuilder: (BuildContext listContext, index){
                    return MessageCard(
                      userName: allChats[index].getUserName(),
                      profile: allChats[index].getProfile(),
                      message: allChats[index].getMessage(),
                      numMessages: allChats[index].getNumMessages(),
                      timeReceived: allChats[index].getTime(),

                    );
                  },
              )
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
