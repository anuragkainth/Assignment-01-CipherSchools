import 'package:cipher_schools/utilities/copyright_area.dart';
import 'package:cipher_schools/utilities/course_page_slider.dart';
import 'package:cipher_schools/utilities/course_page_subheading.dart';
import 'package:cipher_schools/utilities/course_page_upper_slider.dart';
import 'package:flutter/material.dart';
import 'package:cipher_schools/utilities/course_page_app_bar.dart';
import 'package:cipher_schools/utilities/bottom_floating_button.dart';
import 'package:flutter/services.dart';
import 'package:cipher_schools/utilities/new_trending_icons.dart';
import 'package:cipher_schools/utilities/all_courses_list.dart';

class CoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {

  void dispose() {
    // Re-enable landscape orientation when the page is disposed
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }
  bool _isDarkMode = false;
  int _currentImageIndex = 0;
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
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
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseImageUpperSlider(
                  widthAdjust: 1,
                  heightAdjust: 1 / 2,
                  edgeRoundAdjust: 0,
                ),
                SizedBox(height: 30),
                CoursePageSubheading(text: 'Recommended Courses'),
                SizedBox(height: 10),
                NewTrendingIcons(),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'Latest Videos'),
                SizedBox(height: 10),
                NewTrendingIcons(),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'Popular Categories'),
                SizedBox(height: 10),
                NewTrendingIcons(),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                    CourseImageSlider(
                        widthAdjust: 5 / 11,
                        heightAdjust: 1 / 2,
                        edgeRoundAdjust: 7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CoursePageSubheading(text: 'All Courses'),
                SizedBox(height: 10),
                AllCourses(),
                SizedBox(height: 10),
                AllCourses(),
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
          height: 53,
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
                  icon: Icons.home,
                  text: 'Home',
                  isDarkMode: _isDarkMode,
                currentPage: 2,
              ),
              BottomNavButton(
                  icon: Icons.laptop_chromebook,
                  text: 'Courses',
                  isDarkMode: _isDarkMode,
                currentPage: 2,
                  ),
              BottomNavButton(
                icon: Icons.phone_android,
                text: 'Shorts',
                isDarkMode: _isDarkMode,
                currentPage: 2,
              ),
              BottomNavButton(
                  icon: Icons.explore,
                  text: 'Trending',
                  isDarkMode: _isDarkMode,
                currentPage: 2,
                  ),
              BottomNavButton(
                  icon: Icons.person,
                  text: 'My Profile',
                  isDarkMode: _isDarkMode,
                currentPage: 2,
                  ),
            ],
          ),
        ),
      );
  }
}

// MaterialApp(
// debugShowCheckedModeBanner: false,
// title: 'My App',
// theme: ThemeData(
// brightness: _isDarkMode ? Brightness.dark : Brightness.light,
// ),
// home: 