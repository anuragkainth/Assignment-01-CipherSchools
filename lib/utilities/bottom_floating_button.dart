import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:cipher_schools/screens/courses_page.dart';

class BottomNavButton extends StatefulWidget {
  BottomNavButton({Key? key, required this.icon, required this.text, required this.isDarkMode})
      : super(key: key);

  final IconData icon;
  final String text;
  bool isDarkMode;

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
