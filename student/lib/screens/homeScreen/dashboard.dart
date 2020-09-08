

import 'package:flutter/material.dart';
import 'package:student/components/iconcard.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(

        // Contains Home Screen cards
        ///TODO implement top banner
        child: Container(


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
    );
  }
}
