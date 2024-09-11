import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButtonContainer extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;
  final Function() onpressed;
  const GradientButtonContainer(
      {super.key, required this.title,
      required this.clr,
      required this.overlayColor,
      required this.isGradientVertical,
      required this.height,
      required this.width,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Container(
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: isGradientVertical
                      ? Alignment.topCenter
                      : Alignment.centerLeft,
                  end: isGradientVertical
                      ? Alignment.bottomCenter
                      : Alignment.centerRight,
                  colors: clr,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: WidgetStateProperty.all<double>(0),
                    overlayColor: WidgetStateProperty.all<Color>(overlayColor),
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(0)),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.transparent),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                onPressed: onpressed,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
