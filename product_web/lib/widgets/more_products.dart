import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:product_web/models/headphone.dart';

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
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
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
          Container(
            height: 400.0,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.2,
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
              items: headphones.map((i) {
                int currentIndex = headphones.indexOf(i);

                return Builder(builder: (BuildContext context) {
                  return Column(
                    children: [
                      Container(
                        width: 150.0,
                        child: Image.asset(
                          headphones[currentIndex].image,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        headphones[currentIndex].color,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        headphones[currentIndex].price,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      )
                    ],
                  );
                });
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
