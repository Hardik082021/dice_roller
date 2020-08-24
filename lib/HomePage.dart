import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage diceimage;
  AssetImage diceimage2;
  //wheenve the first time our application load up we need this app state
  //so we use intiall state in this case
  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = six;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
    });
  }

  void rollDice2() {
    int random = (1 + Random().nextInt(6));
    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage2 = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dice roller'),
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0)),
                  Image(image: diceimage, width: 100.0, height: 100.0),
                  Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 100.0, 0.0)),
                  Image(image: diceimage2, width: 100.0, height: 100.0)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                    onPressed: () {
                      rollDice();
                      rollDice2();
                    },
                    color: Colors.yellow,
                    child: Text('Roll the dice'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    padding: EdgeInsets.all(10.0)),
              )
            ],
          ),
        )));
  }
}
