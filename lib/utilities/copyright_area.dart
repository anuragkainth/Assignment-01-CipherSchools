import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CopyRightArea extends StatelessWidget {
  const CopyRightArea({Key? key, required this.adjust}) : super(key: key);

  final EdgeInsetsGeometry adjust;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: adjust,
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
  }
}
