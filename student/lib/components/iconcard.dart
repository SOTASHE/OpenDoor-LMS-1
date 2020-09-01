
/// IconCard widget creates styled card


import 'package:flutter/material.dart';

class IconCard extends StatelessWidget{
  //Instance variables
  final String title;
  final String image;
  final String routeName;

  IconCard({ this.title, this.image, this.routeName});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(8), //padding on all directions
      child: InkWell(
          onTap: (){},  //navigates to the page specified by routeName

          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),

            child: Container(
              height: MediaQuery.of(context).size.height /5,
              width: MediaQuery.of(context).size.height /5,

              child: Column(
                children: [

                  Text(this.title)
                ],
              ),
            )
          ),
      ),
    );
  }
}