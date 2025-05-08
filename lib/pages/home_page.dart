import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_ddestop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.backgroundColor,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth
                  ? null
                  : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // hi guys 
              //Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDdestop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    ScaffoldKey.currentState?.openEndDrawer();
                  },
                ),
                // MainDesktop(),
                Container(
                  height: screenHeight,
                  constraints:const BoxConstraints(minHeight: 560.0),child: Column(
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
                              Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
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
                            ],
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
                ),
              //Skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueAccent,
              ),
              //Projects
              SizedBox(height: 500, width: double.maxFinite),
              //Contact
              SizedBox(height: 500, width: double.maxFinite),
              //footer
              SizedBox(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
