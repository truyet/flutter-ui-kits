import 'package:flutter/material.dart';
import 'package:product_web/widgets/header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(),
          ],
        ),
      ),
    );
  }
}
