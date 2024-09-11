import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Text/poppins.dart';

class AnimatedTextboxSlider extends StatefulWidget {
  final IconData icon;
  final String title;
  final double? width;
  final Color? color;
  final Function() onpressed;
  final String tabData;
  AnimatedTextboxSlider(
      {required this.icon,
      required this.title,
      this.width,
      required this.onpressed,
      required this.tabData,
      this.color});

  @override
  State<AnimatedTextboxSlider> createState() => _AnimatedTextboxSliderState();
}

class _AnimatedTextboxSliderState extends State<AnimatedTextboxSlider> {
  bool showText = false;
  bool prevSelected = false;

  double adjustWidth() {
    if (showText) {
      return widget.width ?? 250;
    } else {
      if (widget.tabData == widget.title) {
        setState(() {
          showText == true;
        });
        return widget.width ?? 100;
      } else {
        return 100;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabData != widget.title && prevSelected == true) {
      setState(() {
        showText = false;
        prevSelected = false;
      });
    }

    return GestureDetector(
      onTap: () {
        widget.onpressed();
        setState(() {
          prevSelected = true;
        });
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            showText = true;
          });
        },
        onExit: (event) {
          if (widget.tabData != widget.title) {
            setState(() {
              showText = false;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AnimatedCircleCursorMouseRegion(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 100,
              width: adjustWidth(),
              decoration: BoxDecoration(
                  color: widget.tabData == widget.title
                      ? Colors.red
                      : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 20)
                  ]),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          widget.icon,
                          size: 35,
                          color: widget.tabData == widget.title
                              ? Colors.white
                              : widget.color,
                        ),
                      ),
                      showText
                          ? SizedBox(
                              width: 30,
                            )
                          : Container(),
                      showText
                          ? Poppins(
                              text: widget.title,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: widget.tabData == widget.title
                                  ? Colors.white
                                  : Colors.black)
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
