import 'package:flutter/material.dart';
import 'package:product_web/utils/colors.dart';
import 'package:product_web/widgets/features.dart';
import 'package:product_web/widgets/header.dart';
import 'package:product_web/widgets/hero_section.dart';
import 'package:product_web/widgets/product_slider.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

class Home extends StatelessWidget {
  ScrollController controller = ScrollController();
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    kDarkButtonColor,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Header(),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        child: HeroSection(),
                      ),
                      ProductSlider(),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Container(
                    color: Color.fromRGBO(230, 235, 242, 0.3),
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: Row(
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
                              Wrap(
                                spacing: 10.0,
                                children: colors.map((item) {
                                  int index = colors.indexOf(item);
                                  return Container(
                                    width: 35.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: item,
                                      border: Border.all(
                                        width: 3.0,
                                        color: index == 1
                                            ? Colors.red
                                            : Colors.transparent,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Features(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
