import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';
import 'package:product_web/utils/colors.dart';

class BeatsAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Immerse yourself in\nyour music",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Headphones are a necessity without a doubt. As millennial culture says, “we can leave the house without our wallets but not without headphones!”.",
                style: TextStyle(
                  height: 1.8,
                  color: kTextDarkColor.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$199.99",
                      style: TextStyle(
                        color: kTextDarkColor.withOpacity(0.5),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    TextSpan(text: " " * 5),
                    TextSpan(
                      text: "\$179.99",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              FlatButton(
                color: kDarkButtonColor,
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 25.0,
                ),
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/headset7.png",
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
