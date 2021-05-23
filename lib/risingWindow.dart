import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class risingWindow extends StatefulWidget {
  const risingWindow({Key key,
    @required  this.name,
    @required  this.color,
    @required  this.iconLocation
  }) : super(key: key);

  final String name;
  final Color color;
  final IconData iconLocation;

  @override
  _risingWindowState createState() => _risingWindowState();
}

class _risingWindowState extends State<risingWindow> {

  int a = 100;
  int r  = 243;
  int g = 255;
  int b = 222;
  Color randomColor = Color.fromARGB(100, 233, 111, 265);


  final _random = new Random();


  int next(int min, int max) => min + _random.nextInt(max - min);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          // widget.name,
            'ALMOST COMPLETE'
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
              children: [
                Icon(
                    // widget.iconLocation,
                  Icons.settings,
                  color: randomColor,
                  size: 400),
                GestureDetector(
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(Icons.settings),
                  ) ,
                  onTap:(){
                    setState(() {
                      a = next(1,255);
                      r = next(1,255);
                      g = next(1,255);
                      b = next(1,255);
                      randomColor = Color.fromARGB(a, r, g, b);
                    });
                  }
                ),
                Text(
                  'Push to change color',
                  style: TextStyle(fontSize: 24)
                )
              ]
          )
      ),
    );

  }
}
