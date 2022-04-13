import 'package:flutter/material.dart';
import 'on_bording/on_borading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito-Bold',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnboardScreen(),
    );
  }
}
