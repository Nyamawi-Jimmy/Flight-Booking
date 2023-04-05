import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flight_booking/screens/ticket_view.dart';
import 'package:flight_booking/screens/hotel_view.dart';
import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
            child: Column(
              children: [
                  const Gap(40),
                //App Bar/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GoodMorning",style:Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Ticket",style:Styles.headLineStyle1),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(
                            text: "Logout",style: TextStyle(
                          fontSize: 22,
                          color:Styles.textColor,
                          fontWeight: FontWeight.bold
                        )
                        ),),
                        Gap(3),
                        Container(
                          height:60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/logo.png")
                            )
                          ),
                        ),


                      ],
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205)),
                      Text("Search",style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                Gap(30),

                //Upcoming Flights
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights",style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("safiiii");
                      },
                        child: Text("View All",style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                  ],
                ),
              ],
            ),
          ),
          Gap(10),
          // Ticket View
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singleTicket) => TicketView( ticket: singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hotels",style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          print("safiiii");
                        },
                        child: Text("View All",style: Styles.textStyle.copyWith(color: Styles.primaryColor,))),
                  ],
                ),
              ],

            ),
          ),
          const Gap(10),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
