import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/screens/api_view_all.dart';
import 'package:food_delivery/screens/hotel_screen.dart';
import 'package:food_delivery/screens/ticket_view.dart';
import 'package:food_delivery/utils/app_info_list.dart';
import 'package:food_delivery/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key?key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String searchText = '';
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

              SizedBox(
                width: 300,
                child: SearchBoxWidget(
                searchText: searchText,
                onChanged: (text) {
                  searchText = text;
                  // Handle search logic here
                },
            ),
              ),

                      //  Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                      //  Text('Search', style:Styles.headLineStyle4),
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
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Flightdetails()),
            );
                    },
                    child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                ],
              ),
              ],
            ),
          )
        ,const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket, isColor: null,)).toList()
          ),
        )
       ,const Gap(15),
       Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hotels",style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: () {
                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Flightdetails()),
                       );
                      },
                      child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                  ],
                ),
       )
        
        ,const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
          ))
        ],
      ),
    );
  }
}