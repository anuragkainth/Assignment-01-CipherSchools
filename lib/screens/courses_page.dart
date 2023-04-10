import 'package:cipher_schools/utilities/copyright_area.dart';
import 'package:cipher_schools/utilities/course_page_slider.dart';
import 'package:cipher_schools/utilities/course_page_subheading.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cipher_schools/utilities/course_page_app_bar.dart';
import 'package:cipher_schools/utilities/bottom_floating_button.dart';
import 'package:cipher_schools/utilities/constants.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light,
      ),
      home: Scaffold(
        appBar: MyAppBar(
          title: 'CipherSchools',
          isDarkMode: _isDarkMode,
          onToggleTheme: () {
            setState(() {
              _isDarkMode = !_isDarkMode;
            });
          },
        ),
        body: Container(
          color: Color(0xffF2F5FA),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseImageSlider(widthAdjust: 1, heightAdjust: 1/2),
                SizedBox(height: 30),
                CoursePageSubheading(text: 'Recommended Course'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'Latest Videos'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'Popular Categories'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'All Courses'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                    CourseImageSlider(widthAdjust: 5/11, heightAdjust: 1/2),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //  copyrightArea widget
                CopyRightArea(adjust: EdgeInsets.only(top: 15)),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 65,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavButton(
                  icon: Icons.home, text: 'Home', isDarkMode: _isDarkMode, origin: 'course'),
              BottomNavButton(
                  icon: Icons.laptop_chromebook,
                  text: 'Courses',
                  isDarkMode: _isDarkMode, origin: 'null'),
              BottomNavButton(
                  icon: Icons.explore,
                  text: 'Trending',
                  isDarkMode: _isDarkMode,
                  origin: 'null'),
              BottomNavButton(
                  icon: Icons.person,
                  text: 'My Profile',
                  isDarkMode: _isDarkMode,
                  origin: 'null'),
            ],
          ),
        ),
      ),
    );
  }
}
