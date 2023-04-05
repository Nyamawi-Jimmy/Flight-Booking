import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Widgets/column_layout.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/logo.png"
                      )
                    )
                  ),
                ),
                Gap(AppLayout.getWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Book Tickets",style: Styles.headLineStyle1,),
                    Gap(AppLayout.getHeight(2)),
                    Text("Malindi",style: Styles.textStyle.copyWith(
                        fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(5),vertical: AppLayout.getHeight(5)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getWidth(100)),
                        color: Color(0xFFFEF4F3)
                      ),
                      child: Row(
                        children: [
                            Container(
                              padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF526799)
                                ),
                              child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size:20
                              ),
                            ),
                          Gap(AppLayout.getHeight(5)),
                          Text("Premium Status",style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600
                          ),)
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                  ],

                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        print("tapped");
                      },
                      child: Text("Edit",style: Styles.textStyle.copyWith(
                           fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          Gap(AppLayout.getHeight(10)),
          Divider(color: Colors.grey.shade500,),
          Gap(AppLayout.getHeight(5)),
          Stack(
            children:[
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF263CD2)),
                    color: Colors.transparent,
                  ),
                ),),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal:AppLayout.getWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,color: Styles.primaryColor,size: 35,),
                      maxRadius: 20,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getWidth(8)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Youv've gotten a new reward",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                        Gap(AppLayout.getHeight(5)),
                        Text("You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),fontSize: 16),),

                      ],
                    )
                  ],
                ),
              ),
            ]

          ),
          Gap(AppLayout.getHeight(15)),
          Text("Accumulated Miles",style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(15)),
          Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                   blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Text("298437",style: TextStyle(
                  fontSize: 45,fontWeight: FontWeight.w600,color: Styles.textColor
                ),),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles Accrued",style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    Text("15th Feb 2023",style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '23',
                      secondText: 'Miles',alignment: CrossAxisAlignment.start,),

                    ColumnLayout(
                      firstText: "Kenya Airways", secondText: 'Rceived From',alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '53 340',
                      secondText: 'Miles',alignment: CrossAxisAlignment.start,),

                    ColumnLayout(
                      firstText: "Jambojet", secondText: 'Received From',alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '46 7739',
                      secondText: 'Miles',alignment: CrossAxisAlignment.start,),

                    ColumnLayout(
                      firstText: "Nyamawi", secondText: 'Received From',alignment: CrossAxisAlignment.end,),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Center(child: Text("How to get more miles",style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w500),))

        ],
      ),
    );
  }
}
