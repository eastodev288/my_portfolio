import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return               Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: MediaQuery.of(context).size.height * 0.5,
                constraints: BoxConstraints(minHeight: 350.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/banner.png",
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultTextStyle(
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 20.0),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText(
                                'Hello',
                                textStyle: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColor.yellowSecondary,
                                ),
                              ),
                              WavyAnimatedText(
                                'I am Eastodev Roy Utso',
                                textStyle: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColor.yellowSecondary,
                                ),
                              ),
                              WavyAnimatedText(
                                'A Flutter Developer',
                                textStyle: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColor.yellowSecondary,
                                ),
                              ),
                              WavyAnimatedText(
                                'And A Graphic Designer',
                                textStyle: TextStyle(
                                  fontSize: 30.0,
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
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.cyanAccent),
                            height: 100.0,
                            width: 450.0,
                              child: Center(
                                child: Text(
                                  "I am a passionate Flutter developer \nwith a strong focus on building dynamic and efficient\nmobile applications using modern technologies. ",
                                  style: TextStyle(color: Colors.black,),
                                ),
                              ),
                            ),
                          ),
                        
                        SizedBox(height: 10.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: CustomColor.yellowPrimary),
                          onPressed: () {},
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Get My resume",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold)
                                                    ),
                          ),),
                      ],
                    ),
                  ],
                ),
              );
  }
}