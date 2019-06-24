import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
void main(){
  runApp(MyApp( ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
debugShowCheckedModeBanner: false,
theme: ThemeData.dark(),
home: Scaffold(
  appBar: AppBar(
    title: Text('Random Background Changer'),
  ) ,
  body: HomePage(),
  ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors=[
    Colors.blue,
    Colors.blueAccent,
    Colors.red,
    Colors.pink,
    Colors.brown,
    Colors.green,
    Colors.yellow,
    Colors.amber,
    Colors.tealAccent,
  ];
  var currentColor=Colors.white10;
  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    setState(() {
     currentColor = colors[rnd];
    });
  }
  setbuttonColor(){
    var bnd = Random().nextInt(colors.length);
    setState(() {
     currentColor = colors[bnd];
    });
  }
  @override
  Widget build(BuildContext context) {
    var raisedButton = RaisedButton(
            color: setbuttonColor(),
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text('Change it!',
            style: TextStyle(
         fontSize: 20,fontWeight: FontWeight.bold),
            ),
            onPressed: setRandomColor,
            shape: RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(30.0),
            ),
            );
        return Container(
          color: currentColor,
          child: Center(
            child: raisedButton,
      ),
    );
  }
}