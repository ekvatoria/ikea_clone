import 'package:flutter/material.dart';

class EnableTracking extends StatelessWidget {
  const EnableTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset('assets/enable_tracking.png'),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Text('Help us make the app even better', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                'Sharing data about howw the app is used will help theIKEA app team analyse and evaluate the performance of the app.',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ),
          const SizedBox(height: 125),
          InkWell(
              child: const Text(
                '      Learn more                                                                   ',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => ('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')),
          const SizedBox(height: 75),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('                               OK                              '),
            backgroundColor: Colors.blue.shade900,
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            elevation: 1,
            onPressed: () {},
            label: const Text(
              '                          Not now                         ',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            //shape: Border.all(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
