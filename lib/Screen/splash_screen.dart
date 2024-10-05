import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset('assets/mainscreen1.png', height: 1200, fit: BoxFit.cover),
        Container(
            padding: const EdgeInsets.all(90),
            alignment: Alignment.center,
            child: Image.asset('assets/ikea_logo_icon_248032.png'))
      ],
    ));
  }
}

// class ImageItems {
//   final String ikea_logo = "assets/Image/mainscreen.avif";
// }
