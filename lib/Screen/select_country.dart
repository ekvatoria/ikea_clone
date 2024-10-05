import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegionPage extends StatefulWidget {
  const RegionPage({super.key});

  @override
  State<RegionPage> createState() => _RegionPageState();
}

class _RegionPageState extends State<RegionPage> {
  final _dropItems = ['United Kingdom', 'Turkey', 'USA'];
  var _currentItemSelected = 'United Kingdom';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/region2.png'),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: SizedBox(
              height: 710,
              width: 430,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Text('Hej!                           ',
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Text(
                            "We set your region and language from your device. This is so we can show what's available near you.",
                            style: TextStyle(fontSize: 17))),
                    const Text('Region                                                              ',
                        style: TextStyle(fontSize: 17)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: DropdownButton(
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        //style: const TextStyle(fontWeight: FontWeight.bold),
                        items: _dropItems.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          setState(() {
                            _currentItemSelected = newValueSelected!;
                          });
                        },
                        value: _currentItemSelected,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text('Language                                                          ',
                        style: TextStyle(fontSize: 17)),
                    const SizedBox(height: 10),
                    const Text('English                                                      ',
                        style: TextStyle(fontSize: 19)),
                    const SizedBox(height: 63),
                    Container(
                      color: Colors.blue.shade900,
                      height: 180,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(38.0),
                            child: Text(
                              'Continue',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: InkWell(
                              onTap: () {
                                //Navigator.of(context).pop(const SplashScreen());
                              },
                              child: const Icon(
                                Icons.arrow_circle_right,
                                size: 65,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
