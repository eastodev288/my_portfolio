import 'package:flutter/material.dart';

import '../styles/style.dart';
import 'site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
   final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
          decoration: PHeaderDecoration,
          child: Row(
            children: [
              SiteLogo(onTap: onLogoTap,),
              const Spacer(),
              IconButton(
                onPressed: onMenuTap, 
                icon: Icon(Icons.menu),
              ),
              const SizedBox(width: 15,)
            ],
          ),
        );
  }
}