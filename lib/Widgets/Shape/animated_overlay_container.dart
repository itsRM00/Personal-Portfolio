import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';

class AnimatedOverlayContainer extends StatefulWidget {
  String mainText;
  String subText;
  final int index;

  AnimatedOverlayContainer(
      {required this.subText, required this.mainText, required this.index});

  @override
  State<AnimatedOverlayContainer> createState() =>
      _AnimatedOverlayContainerState();
}

class _AnimatedOverlayContainerState extends State<AnimatedOverlayContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isHovered = false;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 100),
        reverseDuration: Duration(milliseconds: 100));

    animation = Tween<double>(begin: 0.1, end: 0.8).animate(controller);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
              controller.forward();
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
              controller.reverse();
            });
          },
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.red.withOpacity(animation.value),
                        BlendMode.srcATop),
                    image: AssetImage("assets/images/${widget.index}.png"),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: isHovered == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Poppins(
                            text: widget.mainText,
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Poppins(
                            text: widget.subText,
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          )
                        ],
                      )
                    : Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
