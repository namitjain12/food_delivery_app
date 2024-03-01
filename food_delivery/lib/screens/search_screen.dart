import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/utils/app_styles.dart';
import 'package:food_delivery/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class  SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:  AppLayout.getWidth(20), vertical: AppLayout.getHeight(20),),
        children: [
          Gap(AppLayout.getHeight(40),),
          Text('What are\n you looking for?', style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20),),
          const AppTicketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels',),
         Gap(AppLayout.getHeight(25),),
         Container(
          padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(12), horizontal:AppLayout.getWidth(12)  ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
          child: Row(
            children:  [
                const Icon(Icons.flight_takeoff_rounded, color: Color(0xffbfc2df),),
                Gap(AppLayout.getWidth(10),),
               Text('Departure',style: Styles.textStyle,),
            ],
          ),

         ),
         Gap(AppLayout.getHeight(20),),
         Container(
          padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(12), horizontal:AppLayout.getWidth(12)  ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
          child: Row(
            children:  [
                const Icon(Icons.flight_land_rounded, color: Color(0xffbfc2df),),
                Gap(AppLayout.getWidth(10),),
               Text('Arrival',style: Styles.textStyle,),
            ],
          ),

         ),
         Gap(AppLayout.getHeight(25),),
         Container(
          padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(18), horizontal:AppLayout.getWidth(15)  ),
          decoration: BoxDecoration(
            color: Color(0xD91130ce),
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          ),
          child: Center(
            child: Text('Find Tickets',style: Styles.textStyle.copyWith(color: Colors.white))),
            
           ),
           Gap(AppLayout.getHeight(40),),
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
              ),
              Gap(AppLayout.getHeight(15),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppLayout.getHeight(425),
                    width: size.width*.42,
                    padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(15),vertical: AppLayout.getWidth(15), ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                      ]
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                              'assets/images/image1.png'
                            ),)
                          ),
                        ),
                        Gap(AppLayout.getHeight(12),),
                        
                                          Text("20% discount on the early booking.Don't miss the chance.",style: Styles.headLineStyle2.copyWith(fontSize: 18),),

                      ],
                    ),
                  ),
                Column(
                  children: [
                   Stack(
                    children: [
                       Container(
                      width: size.width*0.44,
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        color: Color(0xff3ab8b8),
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 19),),
                          Gap(AppLayout.getHeight(10)),
                          Text("Take the survey about our services and get a discount.", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),),

                        ],
                      ),
                    ),
                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(25)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: Color(0xff189999)),
                        color: Colors.transparent

                      ),
                    )
                  )
                    ],
                   )
                  ,Gap(AppLayout.getHeight(15),),
                  Container(
                    width: size.width*0.44,
                    height:AppLayout.getHeight(210),
                   padding :EdgeInsets.symmetric(vertical:AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15) ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, ),),
                        Gap(AppLayout.getHeight(15),),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 32),

                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 44),
                              
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 32),
                              
                            )
                          ]
                        ),)
                      ],
                    ),
                  ),
                  ],
                )
                ],
              )
         
        ],
      ),
    );
  }
}