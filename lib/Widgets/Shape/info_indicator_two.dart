import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class InfoIndicatorTwo extends StatelessWidget {
  final String text ;
  final double value;
  InfoIndicatorTwo({required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SleekCircularSlider(
          min: 0,
          max: 100,
          appearance: CircularSliderAppearance(
              customColors: CustomSliderColors(
                progressBarColor: Colors.red,

              ),
              infoProperties: InfoProperties(
                  mainLabelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,

                  )
              ),
              size: 200,
              customWidths: CustomSliderWidths(
                  progressBarWidth: 10
              )
          ),
          initialValue: value,
        ),
        Poppins(text: text,fontWeight: FontWeight.w600,fontSize: 26,)
      ],
    );
  }
}
