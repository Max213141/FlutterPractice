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
            'ACCOMPLISHED'
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
                  onTap:(){
                    setState(() {
                      a = next(1,99);
                      r = next(1,355);
                      g = next(1,355);
                      b = next(1,355);
                      randomColor = Color.fromARGB(a, r, g, b);
                    });
                  }
                )
              ]
          )
      ),
    );

  }
}
