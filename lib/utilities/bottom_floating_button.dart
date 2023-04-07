import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:cipher_schools/screens/courses_page.dart';
import 'package:cipher_schools/screens/home_page.dart';

class BottomNavButton extends StatefulWidget {
  BottomNavButton({Key? key, required this.icon, required this.text, required this.isDarkMode, required this.origin})
      : super(key: key);

  final IconData icon;
  final String text;
  bool isDarkMode;
  String origin;

  @override
  State<BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<BottomNavButton> {

  Color? themeColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          themeColor = themeColor == kDefaultOrangeColor ? Colors.black : kDefaultOrangeColor;
        });

        if(widget.origin == 'home' && widget.text == 'Courses'){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CoursePage()),
          );
        }
        else if(widget.origin == 'course' && widget.text == 'Home'){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 30,
            color: widget.isDarkMode ? Colors.black : themeColor,
          ),
          Text(
            widget.text,
            style: TextStyle(fontSize: 10, color: widget.isDarkMode ? Colors.black : themeColor),
          )
        ],
      ),
    );
  }
}
