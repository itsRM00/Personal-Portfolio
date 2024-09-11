import 'package:flutter/material.dart';

import '../Text/poppins.dart';

class TitleOne extends StatelessWidget {

final double? size;
final double? borderWidth;
final Color? color;
final String text;
TitleOne({this.size, this.borderWidth, this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size?? 30,
          width: size?? 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:color?? Colors.red,
                style: BorderStyle.solid,
                width: 3,
              )),
          child: Padding(
            padding: EdgeInsets.all((size?? 30)/5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Poppins(
          text: text,
          fontSize: 35,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        )
      ],
    );
  }
}