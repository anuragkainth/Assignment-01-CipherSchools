import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kDefaultOrangeColor = Color(0xffF3912E);

const List<String> kSliderImagesCourses = [
  // 'images/cpp.jpg',
  'images/dart.jpg',
  'images/firebase.png',
  'images/html.jpg',
  'images/flutter2.png'
];

const List<Map<String, String>> kSliderImagesMentors = [
  {'pic': 'images/Ayushi-Walmart.webp', 'name': 'Ayushi (Walmart)'},
  {'pic': 'images/Harshit-Swiggy.webp', 'name': 'Harshit (Swiggy)'},
  {'pic': 'images/Sagar-Adobe.webp', 'name': 'Sagar (Adobe)'},
  {'pic': 'images/Satyam-Microsoft.webp', 'name': 'Satyam (Microsoft)'},
];

const List<Map<String, String>> kDataStatsOfGrid = [
  {'heading': '15K+', 'subheading': 'Students'},
  {'heading': '10K+', 'subheading': 'Certificates delivered'},
  {'heading': '450K+', 'subheading': 'Streamed minutes'},
  {'heading': '12TB+', 'subheading': 'Content streamed in last 60 days'},
  // {'heading': '50+', 'subheading': 'Creators'},
  // {'heading': '110+', 'subheading': 'Programs available'},
];

const String kCipherScoolsIcon = 'images/icon.png';

 Widget copyrightArea = Container(
  padding: EdgeInsets.only(top: 15),
  color: Color(0xffF2F5FA),
  width: double.infinity,
  height: 160,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('© 2020 CipherSchools • All Rights Reserved'),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
              FontAwesomeIcons.discord
          ),
          SizedBox(width: 18,),
          Icon(
              FontAwesomeIcons.instagram
          ),
          SizedBox(width: 18,),
          Icon(
              FontAwesomeIcons.linkedin
          ),
          SizedBox(width: 18,),
          Icon(
              FontAwesomeIcons.github
          ),
          SizedBox(width: 18,),
          Icon(
              FontAwesomeIcons.facebook
          ),
          SizedBox(width: 18,),
          Icon(
              FontAwesomeIcons.twitter
          ),
        ],
      ),
    ],
  ),
);

final List<String> courseImages = [
  'images/dart.jpg',
  'images/flutter2.png',
  'images/html.jpg',
  'images/firebase.png',
];