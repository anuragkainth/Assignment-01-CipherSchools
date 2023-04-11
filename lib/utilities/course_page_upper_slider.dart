import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CourseImageUpperSlider extends StatefulWidget {
  const CourseImageUpperSlider({
    Key? key,
    required this.widthAdjust,
    required this.heightAdjust,
    required this.edgeRoundAdjust,
  }) : super(key: key);

  final double widthAdjust;
  final double heightAdjust;
  final double edgeRoundAdjust;

  @override
  State<CourseImageUpperSlider> createState() => _CourseImageUpperSliderState();
}

class _CourseImageUpperSliderState extends State<CourseImageUpperSlider> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * widget.heightAdjust,
      width: MediaQuery.of(context).size.width * widget.widthAdjust,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: courseImages.length,
            itemBuilder: (context, index){
              return SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.edgeRoundAdjust),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        upperCourseImages[index],
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: 5,
            top: 0,
            bottom: 0,
            child: IgnorePointer(
              ignoring: false,
              child: GestureDetector(
                onTap: () {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  width: 30,
                  height: 30,
                  child:Material(
                    // elevation: 2.0,
                    shape: CircleBorder(),
                    color: kDefaultOrangeColor,
                    child: Icon(
                      FontAwesomeIcons.circleArrowLeft,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: IgnorePointer(
              ignoring: false,
              child: GestureDetector(
                onTap: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  width: 30,
                  height: 30,
                  child:Material(
                    // elevation: 2.0,
                    shape: CircleBorder(),
                    color: kDefaultOrangeColor,
                    child: Icon(
                      FontAwesomeIcons.circleArrowRight,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
