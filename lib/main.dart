import 'package:flutter/material.dart';
import 'package:foodie/screens/home_page.dart';
// import 'screens/home_page.dart';
// import 'package:foodie/screens/productItem.dart';
import 'screens/productItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
