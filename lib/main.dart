import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'category.dart';
import 'categoryListView.dart';


void main() {
  print('hello');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.pink[100],
          appBar: AppBar(
            title: Text(
              'Unit Converter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            backgroundColor: Colors.pink[100],
          ),
          body: CategoryRoute(),
      ),
    ),
  );
}


