import 'package:flutter/material.dart';
import 'package:linkedin_concept_ui/screens/home/home_screen.dart';
import 'package:linkedin_concept_ui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: HomeScreen(),
    );
  }
}
