import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/utils/colors.dart';

class ProductSlider extends StatelessWidget {
  List<String> images = [
    "assets/images/headphones2.png",
    "assets/images/headphones3.png",
    "assets/images/headphones4.png",
    "assets/images/headphones5.png",
    "assets/images/headphones6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: MediaQuery.of(context).size.width * 0.75,
      margin: EdgeInsets.only(bottom: 50.0, top: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 40.0,
            child: Icon(
              FlutterIcons.chevron_left_fea,
              color: kTextDarkColor.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 15.0,
                );
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150.0,
                  color: Colors.amber,
                );
              },
              itemCount: 5,
            ),
          ),
          Container(
            width: 40.0,
            child: Icon(
              FlutterIcons.chevron_right_fea,
              color: kTextDarkColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
