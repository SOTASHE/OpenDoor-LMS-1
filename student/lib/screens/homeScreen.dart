/*

 This the Home page Screen
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/components/iconcard.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor:  Colors.blueGrey[100],
      appBar: AppBar(title: Text("Home"),),
      body: SingleChildScrollView(

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
                    IconCard(title: "Announcements", image: "PathToImage", routeName: "NextPage",),
                    IconCard(title: "My Classes", image: "PathToImage", routeName: "NextPage",),
                  ],
                ),
              ),

              // Second Row Of Cards
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconCard(title: "Assignments", image: "PathToImage", routeName: "NextPage",),
                    IconCard(title: "Study Materials", image: "PathToImage", routeName: "NextPage",),
                  ],
                ),
              ),

              // Third Row Of Card
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconCard(title: "Study Plannar", image: "PathToImage", routeName: "NextPage",),
                    IconCard(title: "Games", image: "PathToImage", routeName: "NextPage",),
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