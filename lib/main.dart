import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:loginsc/text.dart';

// ignore: unused_import
import 'Openning_Screen.dart';
// import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Openning_Screen(),
    );
  }
}
