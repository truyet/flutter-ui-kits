import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Exhale your worries while\ninhaling music.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: Stack(
              // alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                Image.asset("assets/images/headset8.png"),
                Positioned(
                  top: 150.0,
                  left: 50.0,
                  child: Image.asset("assets/images/bluetooth.png"),
                ),
                Positioned(
                  top: 170.0,
                  left: 50.0,
                  child: Image.asset("assets/images/headphone.png"),
                ),
                Positioned(
                  top: 400.0,
                  left: 50.0,
                  child: Image.asset("assets/images/microphone.png"),
                ),
                Positioned(
                  top: 120.0,
                  right: 50.0,
                  child: Image.asset("assets/images/microphone2.png"),
                ),
                Positioned(
                  top: 240.0,
                  right: 50.0,
                  child: Image.asset("assets/images/charging.png"),
                ),
                Positioned(
                  top: 400.0,
                  right: 50.0,
                  child: Image.asset("assets/images/battery.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
