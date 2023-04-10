import 'package:flutter/material.dart';
import 'constants.dart';

class CourseImageSlider extends StatefulWidget {
  const CourseImageSlider({
    Key? key,
    required this.widthAdjust,
    required this.heightAdjust,
  }) : super(key: key);

  final double widthAdjust;
  final double heightAdjust;

  @override
  State<CourseImageSlider> createState() => _CourseImageSliderState();
}

class _CourseImageSliderState extends State<CourseImageSlider> {
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
            itemBuilder: (context, index) {
              return SizedBox(
                width: double.infinity,
                child: Image.asset(
                  courseImages[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Positioned(
            left: 0,
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
                  width: 50,
                  color: Colors.black26,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
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
                  width: 50,
                  color: Colors.black26,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
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
