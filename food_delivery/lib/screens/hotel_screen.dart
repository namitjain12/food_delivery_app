import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key?key, required this.hotel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getWidth(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,

          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: AppLayout.getWidth(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              image: DecorationImage(image: AssetImage(
                "assets/images/${hotel['image']}"
              ))
            ),
          ),
        const Gap(10),
        Text(hotel['place'],
        style: Styles.headLineStyle2.copyWith(color:Styles.kakicolor),
        ),
        const Gap(5),
        Text(hotel['destination'],
        style: Styles.headLineStyle3.copyWith(color:Colors.white),
        ),
        const Gap(8),
        Text('\$${hotel['price']}/night',
        style: Styles.headLineStyle1.copyWith(color:Styles.kakicolor),
        )
        ],
      ),
    );
  }
}