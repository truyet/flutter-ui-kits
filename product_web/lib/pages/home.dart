import 'package:flutter/material.dart';
import 'package:product_web/widgets/header.dart';
import 'package:product_web/widgets/hero_section.dart';
import 'package:product_web/widgets/product_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
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
      ),
    );
  }
}
