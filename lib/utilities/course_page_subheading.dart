import 'package:flutter/material.dart';
import 'constants.dart';

class CoursePageSubheading extends StatelessWidget {
  const CoursePageSubheading({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
