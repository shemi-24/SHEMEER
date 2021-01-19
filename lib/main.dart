import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: Icon(
            Icons.games,color: Colors.black,
          ),
          backgroundColor: Colors.red,
          title: Text("Dicee"),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
/*class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber=5;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: LeftChange()
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice2.png"),
              onPressed: RightChange(),
            ),
          ),
        ],
      ),
    );
  }
}*/
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=5;
  int rightDiceNUmber=3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: DiceChange,
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDiceNUmber.png"),
              onPressed:DiceChange,
            ),
          ),
        ],
      ),
    );
  }
  void DiceChange(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNUmber=Random().nextInt(6)+1;
    });
  }


}






