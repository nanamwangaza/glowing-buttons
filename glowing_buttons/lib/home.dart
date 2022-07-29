// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glowing_buttons/glowing_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('QUIZ APP')),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
              Colors.black,
              Colors.black,
           //   Colors.white,
              Colors.black,
              Colors.black,
            ]
            

          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Hello welcome to this app!',style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                  ),),
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('What is your favourite programming language?',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            // ignore: prefer_const_constructors
            GlowingButton(color1: Colors.cyan,color2: Colors.greenAccent, text: 'Java',),
            GlowingButton(color1: Colors.redAccent,color2: Colors.orangeAccent,text: 'Python',),
            GlowingButton(color1: Colors.pinkAccent,color2: Colors.purpleAccent,text:'C++'),
            GlowingButton(color1: Colors.yellowAccent,color2: Colors.greenAccent,text: 'C',),
            GlowingButton(color1: Colors.lightBlueAccent,color2: Colors.white,text: 'Dart',),
            GlowingButton(color1: Colors.orangeAccent,color2: Colors.purpleAccent,text: 'JavaScript',),
    
          ],
        ),
      ),
    );
  }
}
