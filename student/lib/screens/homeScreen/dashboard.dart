

import 'package:flutter/material.dart';
import 'package:student/components/iconcard.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,

        leading: IconButton(icon: Icon(Icons.menu, color: Colors.blueGrey,), onPressed: (){},),
        title: Text(
            "OpenDoor",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          
        ),
      ),
      body: Container(
        child: SingleChildScrollView(

          // Contains Home Screen cards
          ///TODO implement top banner
          child: Container(
            alignment: Alignment.center,
            // Cards are arranged in 2x3
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                // First Row of cards
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconCard(title: "Announcements", image: "images/announcements.png", routeName: "/announcements",),
                      IconCard(title: "My Classes", image: "images/openbook.png", routeName: "/classes",),
                    ],
                  ),
                ),

                // Second Row Of Cards
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconCard(title: "Assignments", image: "images/assignments.png", routeName: "/assignment",),
                      IconCard(title: "Study Materials", image: "images/test.png", routeName: "NextPage",),
                    ],
                  ),
                ),

                // Third Row Of Card
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconCard(title: "Study Plannar", image: "images/calendar.png", routeName: "NextPage",),
                      IconCard(title: "Games", image: "images/game.png", routeName: "NextPage",),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
