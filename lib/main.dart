import 'package:flutter/material.dart';
import 'package:cipher_schools/screens/home_page.dart';
import 'package:cipher_schools/screens/trial.dart';
import 'package:cipher_schools/screens/courses_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home:HomePage(),
    );
  }
}
