import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8),horizontal: AppLayout.getWidth(15)),
      child: Row(
        children: [
          Icon(icon,color: Colors.grey.shade500,),
          Gap(AppLayout.getWidth(10)),
          Text(text)
        ],
      ),
    );
  }
}
