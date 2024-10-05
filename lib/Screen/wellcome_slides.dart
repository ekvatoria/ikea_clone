import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class WellcomeSlides extends StatelessWidget {
  const WellcomeSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingSlider(
        controllerColor: Colors.grey,
        headerBackgroundColor: Colors.grey,
        hasFloatingButton: false,
        indicatorAbove: true,
        indicatorPosition: 20,
        background: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(height: 460, width: 420, child: Image.asset('assets/wellcome_slides1.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(height: 460, width: 420, child: Image.asset('assets/wellcome_slides2.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: SizedBox(height: 460, width: 420, child: Image.asset('assets/wellcome_slides3.png')),
          ),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 650,
                ),
                Text('You can now shop inspirational rooms based on your style'),
                SizedBox(height: 10),
                Text(
                  'Skip',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 670,
                ),
                Text('Quickly save your favourites to shopping lists'),
                SizedBox(height: 10),
                Text(
                  'Skip',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 670,
                ),
                Text('Access your digital IKEA Family card anytime'),
                SizedBox(height: 10),
                Text(
                  'Done',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
