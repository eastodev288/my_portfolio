import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {
                
              },
              child: Text(
                "Easto",
              style: 
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,color: CustomColor.yellowPrimary,
                decoration: TextDecoration.underline),),
            );
  }
}