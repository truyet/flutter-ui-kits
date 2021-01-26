import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_web/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey("home"),
            child: Home(),
          )
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
