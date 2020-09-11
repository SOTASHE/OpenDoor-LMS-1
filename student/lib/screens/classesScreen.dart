
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
        flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Title',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              background: Image.network(
                'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
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