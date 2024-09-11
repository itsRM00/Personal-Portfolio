 import 'package:flutter/material.dart';

import '../Text/poppins.dart';

 class TitleHeading extends StatelessWidget {
 final String title;
 final String sunTitle;
 TitleHeading({required this.title, required this.sunTitle});

   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Poppins(
           text: title,
           fontSize: 25,
           color: Colors.red,
           fontWeight: FontWeight.w600,
         ),
         Poppins(
           text: sunTitle,
           fontSize: 44,
           color: Colors.black,
           fontWeight: FontWeight.w800,
         ),
       ],);
   }
 }