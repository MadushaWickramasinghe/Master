import 'package:flutter/material.dart';
import 'package:jennings/screens/Animation/FadeAnimation.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(top: 100),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[

            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text("Grade1")),
                color: Colors.blue,
              ),
            ),

            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade2')),
                color: Colors.blue.shade200,
              ),
            ),


            FadeAnimation(2,
               Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade3')),
                color: Colors.blue.shade200,
              ),
            ),


            FadeAnimation(2,
               Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade4')),
                color: Colors.blue,
              ),
            ),


            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade5')),
                color: Colors.blue
              ),
            ),


            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade6')),
                color: Colors.blue.shade200,
              ),
            ),


            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade7')),
                color: Colors.blue.shade200,
              ),
            ),


            FadeAnimation(2,
              Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Grade8')),
                color: Colors.blueAccent,
              ),
            ),

          ],
        ),
      )
    );
  }
}
