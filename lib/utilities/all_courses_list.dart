import 'package:flutter/material.dart';
import 'constants.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * 1 / 2,
          width: MediaQuery.of(context).size.width * 5 / 11,
          child: SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      courseImages[0],
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
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 1 / 2,
          width: MediaQuery.of(context).size.width * 5 / 11,
          child: SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      courseImages[1],
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
          ),
        ),
      ],
    );
  }
}
