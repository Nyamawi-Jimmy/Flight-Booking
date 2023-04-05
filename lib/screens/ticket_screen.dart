import 'package:flight_booking/screens/ticket_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../Widgets/column_layout.dart';
import '../Widgets/layout_builder_widget.dart';
import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
            Text("Tickets",style: Styles.headLineStyle1.copyWith(fontSize:35)),
          Gap(AppLayout.getHeight(25)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                color: Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  //AirLine Tickets
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8),),
                    width: size.width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(20) )),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airplane Tickets")),
                  ),

                  //Hotels
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8),),
                    width: size.width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(20) )),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
           Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
            child: TicketView(ticket: ticketList[0],isColor: true,),
          ),
          SizedBox(height: 1,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            color: Colors.white,
            margin: EdgeInsets.only(right: 16,left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: 'Flutter B',
                      secondText: 'Passenger',alignment: CrossAxisAlignment.start,),

                    ColumnLayout(
                      firstText: "3451 295816", secondText: 'Passport',alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(25),
                LayoutBuilderWidget(sections: 15,isColor: false, width: 20,),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '123547689797',
                      secondText: 'Number of E-Ticket',alignment: CrossAxisAlignment.start,),

                    ColumnLayout(
                      firstText: "B2SG45",
                      secondText: 'Booking Code',alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                LayoutBuilderWidget(sections: 15,isColor: false, width: 20,),
                Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/visa.png",scale: 7),
                            Text("****6749",style:Styles.headLineStyle3)
                          ],
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Payment Method",style:Styles.headLineStyle4,)
                      ],
                    ),
                    ColumnLayout(firstText: "Ksh.2500", secondText: "Price", alignment: CrossAxisAlignment.end)
                  ],
                ),
                Gap(AppLayout.getHeight(15))
              ],
            ),
          ),
          SizedBox(height: 1,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)
              )
            ),

            margin: EdgeInsets.only(left: 10,right: 16),
            padding: EdgeInsets.only(top:15,bottom: 15 ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                  child: BarcodeWidget(
                  data: 'www.google.com', barcode: Barcode.code128(),
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,

                ),
              ),
            ),
          ),
          Gap(20),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getWidth(10)),
            child: TicketView(ticket: ticketList[0]),
          ),
        ],
    ),
          Positioned(
            left: 21,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 3)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 3)
              ),
              child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor
              ),
            ),
          ),
        ]),
    );
  }
}
