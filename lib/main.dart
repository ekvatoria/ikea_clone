import 'package:flutter/material.dart';
import 'package:ikea/Screen/enable_tracking.dart';
import 'package:ikea/Screen/search_screen.dart';
import 'package:ikea/Screen/select_country.dart';
import 'package:ikea/Screen/splash_screen.dart';
import 'package:ikea/Screen/wellcome_slides.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IKEA',
      debugShowCheckedModeBanner: true,
      home: SearchScreen(),
    );
  }
}
