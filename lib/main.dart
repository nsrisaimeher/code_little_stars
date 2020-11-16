import 'package:code_little_stars/screens/birds.dart';
import 'package:code_little_stars/screens/flowers.dart';
import 'package:code_little_stars/screens/fruits.dart';
import 'package:code_little_stars/screens/varnamala.dart';
import 'package:code_little_stars/screens/animals.dart';
import 'package:code_little_stars/screens/veggies.dart';

import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          routes: {
            '/varnamala': (context) => Varnamala(),
            '/birds': (context) => Birds(),
            '/animals': (context) => Animals(),
            '/fruits': (context) => Fruits(),
            '/flowers': (context) => Flowers(),
            '/veggies': (context) => Veggies(),
          },
          home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Home(),            
          
        ),
      ),
    );
  }
}

