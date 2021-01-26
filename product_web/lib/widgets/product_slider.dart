import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/utils/colors.dart';

class ProductSlider extends StatelessWidget {
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
            child: SizedBox(),
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
