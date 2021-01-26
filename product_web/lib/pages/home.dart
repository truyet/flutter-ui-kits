import 'package:flutter/material.dart';
import 'package:product_web/widgets/header.dart';
import 'package:product_web/widgets/hero_section.dart';
import 'package:product_web/widgets/product_slider.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

class Home extends StatelessWidget {
  ScrollController controller = ScrollController();
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
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color.fromRGBO(230, 235, 242, 1),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Surface\nHeadphones",
                                  style: TextStyle(
                                    fontSize: 48.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
