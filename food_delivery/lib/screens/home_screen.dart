import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/screens/ticket_view.dart';
import 'package:food_delivery/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children:  [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Text(
                          "Good Morning", style: Styles.headLineStyle3,
                    ),
                    const Gap(5),
                     Text(
                          "Book Tickets", style: Styles.headLineStyle1,
                    ),
                       ],
                     ),
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: 
                        AssetImage('assets/images/image1.png')),
                      ),
                    )
                   
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                     
                    children: [
                       Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                       Text('Search', style:Styles.headLineStyle4),
                    ],
                  ),
                ),
                const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flights",style: Styles.headLineStyle2,),
                  InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                    child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                ],
              )
              ],
            ),
          )
        ,const Gap(15)
        ,const TicketView(),
        ],
      ),
    );
  }
}