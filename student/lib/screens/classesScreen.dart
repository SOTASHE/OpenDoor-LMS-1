
// Classes, list of all classes.
///TODO Customize Text

import 'package:flutter/material.dart';
import 'package:student/components/iconcard.dart';

class ClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        elevation: 0,
        title:Text(
            'My Subjects',
            style: TextStyle(
                color: Colors.white
            )
        ),
      ),

      // Body Contains a list of subject, Fetched From Database
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconCard(
                    title: 'Mathematics',
                    image: 'classIcons/calculator.png',
                    routeName: '/subject',
                  ),
                  IconCard(
                    title: 'Physical Science',
                    image: 'classIcons/flask.png',
                    routeName: '/physicsPapers',
                  )
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  IconCard(
                      title: 'Life Science',
                      image: 'classIcons/dna.png'),
                  IconCard(
                    title: 'Geography',
                    image: 'classIcons/globe.png',
                  )
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  IconCard(
                    title: 'English',
                    image:'classIcons/abc.png',
                  ),

                  IconCard(
                      title: 'Isizulu',
                      image: 'classIcons/african.png'
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}