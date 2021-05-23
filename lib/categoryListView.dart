import 'package:flutter/material.dart';
import 'statefullCategory.dart';
// import 'category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  Widget _buildCategoryWidgets(List<Widget> listOfWidgets) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => listOfWidgets[index],
      itemCount: listOfWidgets.length,
    );
  }



  @override
  Widget build(BuildContext context) {


    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(listOfWidgets),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
    );

    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: listView,
    );
  }
}






