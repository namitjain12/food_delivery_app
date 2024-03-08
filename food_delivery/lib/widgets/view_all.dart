import 'package:flutter/material.dart';


import '../screens/api_view_all.dart';
import '../utils/app_styles.dart';

class AppdoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppdoubleTextWidget({Key? key , required this.bigText, required this.smallText}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bigText,style: Styles.headLineStyle2,),
                  InkWell(
                    // ignore: prefer_const_constructors
                    onTap: (){
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Flightdetails()),
            );
                    },
                    child: Text(smallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                ],
              );
  }
}