import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Widgets/layout_builder_widget.dart';
import '../Widgets/thick_container.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic>ticket;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(179.0),
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Shows the blue part of the ticket
            Container(

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      Expanded(child: Container()),
                      ThickContainer(isColor:true),
                      Expanded(child: Stack(
                        children: [
                       SizedBox(
                            height: AppLayout.getHeight(24),
                            child:LayoutBuilderWidget(sections:6, width: 3,),
                          ),
                          Center(child: Transform.rotate(angle: 0.0,child: Icon(FluentSystemIcons.ic_fluent_airplane_regular,color:isColor==null? Colors.white:Color(0xFF8ACCF7),),)),

                        ],

                      )),

                      ThickContainer(isColor:true),
                      Expanded(child: Container()),
                      Text(ticket["to"]["code"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3)
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: AppLayout.getWidth(100),child: Text(ticket["from"]["name"],style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white,):Styles.headLineStyle4)
                      ),
                      Text(ticket["flying_time"],style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                      SizedBox(width: AppLayout.getWidth(100) ,child: Text(ticket["to"]["name"],textAlign: TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white,):Styles.headLineStyle4)
                      ),
                    ],
                  )
                ],
              ),
            ),
             //Showing the orange part of the ticket
             Container(
               color:isColor==null? Styles.orangeColor:Colors.white,
               child: Row(
                 children: [
                   SizedBox(
                     height: 20,
                     width: 10,
                     child: DecoratedBox(
                      decoration:BoxDecoration(
                        color:isColor==null? Colors.white:Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                          )
                     )
               ),
                   ),
                   Expanded(child: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: LayoutBuilder(
                       builder: (BuildContext , BoxConstraints constraints) {
                        return  Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color:isColor==null? Colors.white:Colors.grey.shade300,
                                ),
                              ),
                            ))
                        );
                       },
                     ),
                   )),
                   SizedBox(
                     height: 20,
                     width: 10,
                     child: DecoratedBox(
                         decoration:BoxDecoration(
                             color:isColor==null? Colors.white:Colors.white,
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(10),
                                 bottomLeft: Radius.circular(10)
                             )
                         )
                     ),
                   )
                 ],
               ),
             ),
            //Shows the Orange part of the ticket
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(isColor==null?20:0),bottomLeft: Radius.circular(isColor==null?20:0)),
                color:isColor==null?  Styles.orangeColor:Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ticket["date"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      Expanded(child: Container()),
                      Text(ticket["departure_time"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      Expanded(child: Container()),
                      Text(ticket["number"].toString(),style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 80,child: Text("Date",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                      Text("Departure time",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      SizedBox(width: 90,child: Text("Number",textAlign: TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
