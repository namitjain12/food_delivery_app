
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon ;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(12), horizontal:AppLayout.getWidth(12)  ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
          child: Row(
            children:  [
                 Icon(icon, color: Color(0xffbfc2df),),
                Gap(AppLayout.getWidth(10),),
               Text(text,style: Styles.textStyle,),
            ],
          ),

         );
  }
}
