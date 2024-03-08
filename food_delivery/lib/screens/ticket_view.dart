import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/utils/app_info_list.dart';

import 'package:food_delivery/utils/app_styles.dart';
import 'package:food_delivery/widgets/thick_container.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, required this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); 
    return SizedBox(
      width: size.width*.85 ,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16),),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          // resposible for showing blue part of the card
          Container(
            decoration:  BoxDecoration(
              color: isColor==null ? Color(0xFF526799):Colors.white,
              borderRadius:  BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21),),
              topRight: Radius.circular(21),
              ),
              
            ),
            padding:  EdgeInsets.all(AppLayout.getHeight(16),),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                    style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
                    Expanded(
      child: Container(),
    ),
                    const ThickContainer(isColor: true,),
                    Expanded(child: Stack(
                      children:[
                        SizedBox(
                        height: AppLayout.getHeight(24),
                        child:LayoutBuilder(
                    
                          builder: (BuildContext context, BoxConstraints constraints ) { 
                            print('the width is ${constraints.constrainWidth()}');
                           
                          return Flex(direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                            width: AppLayout.getWidth(3),
                            height: AppLayout.getHeight(1),
                            child:  DecoratedBox(decoration: BoxDecoration(
                              color: isColor==null? Colors.white : Colors.grey.shade300 )),
                          )),
                          );
                          },
                        ),
                       ),
                      Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white : Color(0xff8accf7) ),)),

                      ] 
                    ),),
                    const ThickContainer(isColor: true,),
                    Expanded(
      child: Container(),
    ),
                    Text(ticket['to']['code'],style:  isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                  ],
                ),
                const Gap(3),
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Flexible(
      
      child: Text(ticket['from']['name'], style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
    ),
    Text(ticket['flying_time'], style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
   Flexible(
      
      child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
    ),
  ],
)

              ],
            ),
          )
        
        // showing the orange part of the card ticket
        ,Container(
          color: isColor==null? Styles.orangeColor : Colors.white,
        child: Row(
          children:  [
              SizedBox(
              height: AppLayout.getHeight(20),
              width: AppLayout.getWidth(10),
              child:  DecoratedBox(
                
                decoration: BoxDecoration(
                  color:isColor==null? Colors.grey.shade300 :Colors.white,
                  borderRadius: BorderRadius.only(
                topRight :Radius.circular(10),
                bottomRight: Radius.circular(10),
              ))),
            ),
           Expanded(child: Padding(
             padding: const EdgeInsets.all(6),
             child: LayoutBuilder(
              builder: (BuildContext context , BoxConstraints constraints) {  
                print('the width2 is ${constraints.constrainWidth()}');
               return Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: List.generate((constraints.constrainWidth()/20).floor(), (index) =>  SizedBox(
                  width: AppLayout.getWidth(5), height: AppLayout.getHeight(1),
                  child:  DecoratedBox(decoration: BoxDecoration(
                    color: isColor==null? Colors.white:Colors.grey.shade300 ,
                   )),
                )),
               ); 
              },
             ),
           )),
             SizedBox(
              height: AppLayout.getHeight(20),
              width: AppLayout.getWidth(10),
              child:  DecoratedBox(
                
                decoration: BoxDecoration(
                  color:isColor==null? Colors.grey.shade300 :Colors.white,
                  borderRadius: const BorderRadius.only(
                topLeft :Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ))),
            )

          ],
        ),
        )
        
        //
        ,Container(
          decoration:  BoxDecoration(
              color:  isColor==null? Styles.orangeColor :Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
              bottomRight: Radius.circular(isColor==null?21:0),
              ),
              
            ),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16,top: 10),
            child: Column(children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket['date'],
                        style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                      const Gap(5),
                      Text("Date", style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                    ],
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(ticket['departure_time'], style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      const Gap(5),
                      Text("Departure time", style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(ticket['number'].toString(), style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      const Gap(5),
                      Text("Number", style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                    ],
                  ),
                 ],
              )
            ]),
        )
        ],
      ),),
    );
  }
}