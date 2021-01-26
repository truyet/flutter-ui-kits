import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Image.asset("assets/images/headset8.png"),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
