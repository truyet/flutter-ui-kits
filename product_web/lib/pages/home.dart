import 'package:flutter/material.dart';
import 'package:product_web/utils/colors.dart';
import 'package:product_web/widgets/beats_ads.dart';
import 'package:product_web/widgets/contact_us.dart';
import 'package:product_web/widgets/features.dart';
import 'package:product_web/widgets/footer.dart';
import 'package:product_web/widgets/header.dart';
import 'package:product_web/widgets/hero_section.dart';
import 'package:product_web/widgets/more_products.dart';
import 'package:product_web/widgets/product_slider.dart';
import 'package:product_web/widgets/responsive_wrapper_widget.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../widgets/beats_ads.dart';

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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ResponsiveWrapperWidget(
                          child: Header(),
                          height: 51.0,
                        ),
                      ),
                      ResponsiveWrapperWidget(
                        height: MediaQuery.of(context).size.height - 330.0,
                        child: HeroSection(),
                      ),
                      ProductSlider(),
                    ],
                  ),
                ),
                MoreProducts(),
                Container(
                  child: BeatsAds(),
                ),
                Container(
                  child: ContactUs(),
                ),
                Container(
                  child: Footer(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
