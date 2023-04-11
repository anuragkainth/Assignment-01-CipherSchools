import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewTrendingIcons extends StatelessWidget {
  const NewTrendingIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.bolt,
                  color: Colors.green,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ' New',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child:SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.fire,
                  color: Colors.blueAccent,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ' Trending',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
