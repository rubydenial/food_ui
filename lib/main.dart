import 'package:flutter/material.dart';
import 'package:food_ui/screens/home/home_s.dart';
import 'package:food_ui/theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI',
      theme: buildThemeData(),
      home: const HomeS(),
    );
  }
}
