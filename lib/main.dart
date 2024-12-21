import 'package:flutter/material.dart';
import 'package:testing/pages/first_page.dart';

void main() {
  runApp(MyApp());

  print('Hi there');
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String checkVar = 'Test Test';
  bool isAdult = false;
  int age = 17;

  @override
  Widget build(BuildContext context) {
    if (isAdult) {
      print('OYE HOYE PARTYYYY');
    } else {
      print('Sad Reacts Only');
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
      routes: {'/firstPage': (context) => PageOne()},
    );
  }
}
