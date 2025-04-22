import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_title.dart';

class HeaderDdestop extends StatefulWidget {
  const HeaderDdestop({super.key});

  @override
  State<HeaderDdestop> createState() => _HeaderDdestopState();
}

class _HeaderDdestopState extends State<HeaderDdestop> {
  @override
  Widget build(BuildContext context) {
    return  Container(height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Colors.transparent,
              CustomColor.bgLight1,
              ],
              ),
              borderRadius: BorderRadius.circular(100)
          ),
          child: Row(
            children: [
              SiteLogo(onTap: (){},),
            Spacer(),
            for(int i=0;i<navTitle.length;i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
              onPressed: () {},child: Text(navTitle[i],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: CustomColor.whitePrimary),),),
            )
            ],
          ),
          );
  }
}