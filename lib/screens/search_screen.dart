import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Widgets/icon_text_widget.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
           Gap(AppLayout.getHeight(40)),
          Text("What are you \n searching for...?",style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeight(20)),
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
          const Gap(25),
          IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(20),
          IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(25),
          Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: Colors.blue,
      ),
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10),horizontal: AppLayout.getWidth(15)),
         child: Center(
           child: Text("Find Tickets",style: Styles.textStyle.copyWith(color: Colors.white,fontSize: 17),
    ),
         )
    ),
          const Gap(25),

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
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
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
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/one.jpeg"
                          )
                        )
                      ),

                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text("20% discount on early bookings.Dont miss the chance!",style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
              Stack(
                children: [
                  Container(
                    width: size.width*0.45,
                    height: AppLayout.getHeight(175),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        color: Color(0xFF3ABBBB)
                    ),
                    padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(10),horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        const Gap(10),
                        Text("Take the survey about our services and get the discount.",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 16),),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18,color: Color(0xFF189999)),
                      color: Colors.transparent,
                    ),
                  ),)
                ],
              ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width*0.45,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        color: Color(0xFFEC6545)
                    ),
                    padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(10),horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Take Love",
                            style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "🥰",
                              style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: "🥰",
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: "🥰",
                                style: TextStyle(fontSize: 38,)
                            )
                          ]
                        ))
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
