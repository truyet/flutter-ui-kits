import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/utils/colors.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: Row(
        children: [
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 106.0,
                width: 2.0,
                color: kTextDarkColor.withOpacity(0.1),
              ),
              SizedBox(
                height: 20.0,
              ),
              Icon(
                FlutterIcons.facebook_f_faw,
                size: 17.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Icon(
                FlutterIcons.dribbble_ant,
                size: 17.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Icon(
                FlutterIcons.twitter_ant,
                size: 17.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 106.0,
                width: 2.0,
                color: kTextDarkColor.withOpacity(0.1),
              ),
            ],
          ),
          Image.asset(
            "assets/images/headset1.png",
          ),
          SizedBox(
            width: 30.0,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 500.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Surface\nHeadphones",
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Headphones are a necessity without a doubt. As the millennial culture says unique music taste.",
                  style: TextStyle(
                    height: 1.8,
                    color: kTextDarkColor.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    children: [],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
