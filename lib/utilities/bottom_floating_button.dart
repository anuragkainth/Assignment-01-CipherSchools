import 'dart:ffi';

import 'package:cipher_schools/Shorts/shorts_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'package:cipher_schools/screens/courses_page.dart';
import 'package:cipher_schools/screens/home_page.dart';

class BottomNavButton extends StatefulWidget {
  BottomNavButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.isDarkMode,
      required this.currentPage})
      : super(key: key);

  final IconData icon;
  final String text;
  int? currentPage;
  bool isDarkMode;
  String? origin;

  @override
  State<BottomNavButton> createState() => _BottomNavButtonState();
}

class _BottomNavButtonState extends State<BottomNavButton> {
  Color? themeColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        if(widget.text == 'Home' && widget.currentPage != 1){

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }else if(widget.text == 'Courses' && widget.currentPage != 2){

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CoursePage()));
        } else if(widget.text == 'Shorts' && widget.currentPage != 3){

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShortsPage()));
        }
        // if(widget.origin == 'home' && widget.text == 'Courses'){
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => CoursePage()),
        //   );
        // }
        // else if(widget.origin == 'course' && widget.text == 'Home'){
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => HomePage()),
        //   );
        // }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 23,
            color: widget.isDarkMode ? Colors.black : themeColor,
          ),
          Text(
            widget.text,
            style: GoogleFonts.openSans(
              textStyle:  TextStyle(
                  fontSize: 10,
                  color: widget.isDarkMode ? Colors.black : themeColor),
            )
          )
        ],
      ),
    );
  }
}
