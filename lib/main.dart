import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Home(),            
          
        ),
      ),
    );
  }
}

