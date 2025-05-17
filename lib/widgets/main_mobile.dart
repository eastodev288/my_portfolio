import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.bgLight1.withOpacity(0.6),
                CustomColor.backgroundColor.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/banner.png",
              width: screenWidth,
            ),
          ),
          //text
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DefaultTextStyle(
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 20.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Hello',
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                      ),
                    ),
                    WavyAnimatedText(
                      'I am Eastodev Roy Utso',
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                      ),
                    ),
                    WavyAnimatedText(
                      'A Flutter Developer',
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                      ),
                    ),
                    WavyAnimatedText(
                      'And A Graphic Designer',
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowSecondary,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment(38.0, 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.cyanAccent),
                height: 100.0,
                width: 450.0,
                child: Center(
                  child: Text(
                    "I am a passionate Flutter developer \nwith a strong focus on building dynamic and efficient\nmobile applications using modern technologies. ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Get My resume",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
