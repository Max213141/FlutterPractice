import 'package:flutter/material.dart';
import 'dart:math';
import 'risingWindow.dart';
final List<Widget> listOfWidgets = [
  pictureColorChange(
      name:'Settings',
      color: Colors.transparent,
      iconLocation: Icons.settings
  ),
  pictureColorChange(
      name:'Wallet',
      color: Colors.transparent,
      iconLocation: Icons.wallet_membership
  ),
  pictureColorChange(
      name:'Cake',
      color: Colors.transparent,
      iconLocation: Icons.cake
  ),
  pictureColorChange(
      name:'Receipt',
      color: Colors.transparent,
      iconLocation: Icons.receipt
  ),
  pictureColorChange(
      name:'Bakery',
      color: Colors.transparent,
      iconLocation: Icons.bakery_dining
  ),
];

class pictureColorChange extends StatefulWidget {
  // const pictureColorChange({Key key,
  //   @required this.iconLocation
  // }
  //     ) : super(key: key);
  //
  // final  IconData iconLocation;

  const pictureColorChange({
    Key key,
    @required  this.name,
    @required  this.color,
    @required  this.iconLocation
  }) : super(key: key);

  final String name;
  final Color color;
  final IconData iconLocation;

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return risingWindow();
      },
    ));
  }

  @override

  _pictureColorChangeState createState() => _pictureColorChangeState();
}

class _pictureColorChangeState extends State<pictureColorChange> {
  final int a = 100;
  final int r  = 243;
  final int g = 255;
  final int b = 222;
  final Color randomColor = Color.fromARGB(100, 233, 111, 265);
  int _counter = 0;
  final _random = new Random();


  int next(int min, int max) => min + _random.nextInt(max - min);



  @override
  Widget build(BuildContext context) {
    return Container(
        color: widget.color,
        height: 100,
        padding: EdgeInsets.all(8),
        // BorderRadius.all(50), //_______Cant implement BorderRadius exectly
        child: InkWell( //______Не расходятся волны от нажатия
          onTap: () => {
            widget._navigateToConverter(context),
          },
          borderRadius: BorderRadius.circular(50),
          child: Row(
            children: [
              // pictureColorChange(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  widget.iconLocation,
                  size: 60,
                ),
              ),
              Text(widget.name, style: TextStyle(fontSize: 24)),
            ],
          ),
        )
    );
  }
}


