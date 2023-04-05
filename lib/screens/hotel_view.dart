import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';


class HotelView extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Ticket date is ${hotel["date"]}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.65,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 16),
      margin: EdgeInsets.only(right: 10,top: 5),
      decoration: BoxDecoration(
          color: Color(0xFF526799),
        borderRadius: BorderRadius.circular(20),
     boxShadow: [
       BoxShadow(
         color: Colors.grey.shade200,
         blurRadius: 20,
         spreadRadius: 5,
       )
     ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                image: AssetImage(
                "assets/images/${hotel["image"]}"
            )
            )
            ),
          ),
          const Gap(15),
          Text(hotel["place"],style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          Gap(8),
          Text(hotel["destination"],style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          Gap(8),
          Text("Ksh.${hotel["price"]}/Night",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),

        ],
      ),
    );
  }
}
