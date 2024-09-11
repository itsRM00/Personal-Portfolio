import 'package:flutter/material.dart';

import '../Text/poppins.dart';

class InfoIndicatorOne extends StatefulWidget {
  final String text;
  final double widthTotal;
  final double widthActual;
  final int? animationDuration;
  InfoIndicatorOne(
      {required this.text,
      required this.widthTotal,
      required this.widthActual,
      this.animationDuration});

  @override
  State<InfoIndicatorOne> createState() => _InfoIndicatorOneState();
}

class _InfoIndicatorOneState extends State<InfoIndicatorOne>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: widget.animationDuration ?? 1),
        reverseDuration: Duration(seconds: widget.animationDuration ?? 1))
      ..forward();

    animation =
        Tween<double>(begin: 0, end: widget.widthActual).animate(controller);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          text: widget.text,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context,child){
            return Container(
              height: 6,
              width: animation.value,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            );
          },

        ),
        SizedBox(
          height: 3,
        ),
        Container(
          height: 8,
          width: widget.widthTotal,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
