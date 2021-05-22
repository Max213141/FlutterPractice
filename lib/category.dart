
import 'package:flutter/material.dart';

final List<Widget> listOfWidgets = [
  Category(
      name:'Settings',
      color: Colors.transparent,
      iconLocation: Icons.settings
  ),
  Category(
      name:'Wallet',
      color: Colors.transparent,
      iconLocation: Icons.wallet_membership
  ),
  Category(
      name:'Cake',
      color: Colors.transparent,
      iconLocation: Icons.cake
  ),
  Category(
      name:'Receipt',
      color: Colors.transparent,
      iconLocation: Icons.receipt
  ),
  Category(
      name:'Bakery',
      color: Colors.transparent,
      iconLocation: Icons.bakery_dining
  ),
];




class Category extends StatelessWidget {
  const Category({
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
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              name,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: Container(
            alignment: Alignment.center,
            child: Icon(
              iconLocation,
              color: Colors.green[100],
              size: 400,
            )
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        height: 100,
        padding: EdgeInsets.all(8),
         // BorderRadius.all(50), //_______Cant implement BorderRadius exectly
        child: InkWell( //______Не расходятся волны от нажатия
          onTap: () => {
            _navigateToConverter(context),
          },
          borderRadius: BorderRadius.circular(50),
          child: Row(
            children: [
              // pictureColorChange(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  iconLocation,
                  size: 60,
                ),
              ),
              Text(name, style: TextStyle(fontSize: 24)),
            ],
          ),
        )
    );
  }
}




