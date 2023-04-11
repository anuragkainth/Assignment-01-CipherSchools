import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CourseImageSlider extends StatefulWidget {
  const CourseImageSlider({
    Key? key,
    required this.widthAdjust,
    required this.heightAdjust,
    required this.edgeRoundAdjust,
  }) : super(key: key);

  final double widthAdjust;
  final double heightAdjust;
  final double edgeRoundAdjust;

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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.edgeRoundAdjust),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          courseImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Color(0xffF2F5FA),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(child: SizedBox()),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      color: Color(0xffFEF4EA),
                                      child: Text(
                                        'Web Development',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: kDefaultOrangeColor),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(top: 5, left: 7, bottom: 5),
                                child: Text(
                                  'HTML language Course',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 7.0, bottom: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'No. of Videos: ',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          '21',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Course time: ',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          '2.0 hours',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 14.0,
                                      child: Image.asset(
                                          'images/Cipherschools.png'),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cipher Schools',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          'Instructor',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                    Expanded(flex: 2, child: SizedBox()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
                  child: Icon(
                    Icons.chevron_left_sharp,
                    size: 35,
                    color: Colors.black26,
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
                  child: Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.black26,
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
