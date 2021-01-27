import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';

class MoreProducts extends StatelessWidget {
  final List<Headphone> headphones = [
    Headphone(
      color: "Red",
      image: "assets/images/headset2.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Black",
      image: "assets/images/headset3.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Silver",
      image: "assets/images/headset4.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Blue",
      image: "assets/images/headset5.png",
      price: "\$249.99",
    ),
    Headphone(
      color: "Yello",
      image: "assets/images/headset6.png",
      price: "\$249.99",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperWidget(
      height: 330.0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 20.0,
              ),
              child: Row(
                children: [
                  Text(
                    "The market provides a huge\nrange of headphones.",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    FlutterIcons.long_arrow_left_faw,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(FlutterIcons.long_arrow_right_faw)
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.2,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    height: 330.0,
                  ),
                  items: headphones.map((i) {
                    int currentIndex = headphones.indexOf(i);

                    return Builder(builder: (BuildContext context) {
                      return Container(
                        color: Colors.red,
                        width: 360.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                height: 120.0,
                                color: Colors.green,
                              ),
                            ),
                            Positioned(
                              bottom: -30.0,
                              height: 50.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(),
                            )
                          ],
                        ),
                      );
                    });
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
