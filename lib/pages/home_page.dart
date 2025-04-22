import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_title.dart';
import 'package:my_portfolio/widgets/header_ddestop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
         HeaderDdestop(),
            //Skills
          Container(height: 500,
          width: double.maxFinite,
          color: Colors.blueAccent,
          ),
            //Projects
          Container(height: 500,
          width: double.maxFinite,
          ),
            //Contact
          Container(height: 500,
          width: double.maxFinite,
          ),
            //footer
          Container(height: 500,
          width: double.maxFinite,
          )
        ],
      )
      
    );
  }
}