import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is Home Page'),
      ),
      backgroundColor: Colors.pinkAccent,
    );
  }
}
