import 'package:cv/Widgets/Misc/tiltle_heading.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../Widgets/Misc/text_block_one.dart';
import '../Widgets/Misc/title_one.dart';
import '../Widgets/Shape/info_indicator_one.dart';
import '../Widgets/Shape/info_indicator_two.dart';

class ResumeComponent extends StatelessWidget {
  const ResumeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.03),
                spreadRadius: 10,
                blurRadius: 20)
          ]),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleHeading(
              title: "Resume", sunTitle: "Combination of Skill\n& Projects"),
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleOne(
                        text: "Education",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextBlockOne(
                        description: "GOVT,H.S,Chak 68/4R,HAROONABAD",
                        subTextMain: "2016 - 2018",
                        textMain: "Matric",
                        longText:
                            "I have done my matric in Science ,the major subjects are (Physics,Mathematics,Biology),I have secured 933/1100 marks in Matric.",
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextBlockOne(
                        description:
                            "GOVT,R.I.Post Graduate College,HAROONABAD",
                        subTextMain: "2018 - 2020",
                        textMain: "Intermediate",
                        longText:
                            "I have done my Intermediate in Computer Science ,the major subjects are (Physics,Mathematics,Computer Science),I have secured 736/1100 marks in Intermediate.",
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextBlockOne(
                        description:
                            "Islamia University of Bahawalpur,Pakistan",
                        subTextMain: "2020 - 2024",
                        textMain:
                            "Bachlor in Information Technology",
                        longText:
                            "I have done my Bechlor in Information Technology ,the major subjects are (OPP,Data Structure,web technologies),I have secured 3.41/4.0 Cgpa in Bechlor.",
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TitleOne(text: "Projects"),
                      SizedBox(
                        height: 30,
                      ),
                      TextBlockOne(
                          description:
                              "An IOS and Android Application with Flutter And Dart",
                          subTextMain: "2023 - 2024",
                          textMain: "Notes",
                          longText:
                              "It is an IOS and Android Application based on Flutter and Dart framework, this appllication store the important notes of user and it allow user to add delete and edit their notes."),
                      SizedBox(
                        height: 50,
                      ),
                      TextBlockOne(
                        description: "Flutter and Dart",
                        subTextMain: "2023 - 2024",
                        textMain: "Personal Portfolio",
                        longText:
                            "It is web application based on flutter framework and Dart language, this website is used to show the personal information and skills with the background education for students",
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                  child: Container(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleOne(text: "Personal Skills"),
                    SizedBox(
                      height: 30,
                    ),
                    InfoIndicatorOne(
                      text: "Time Management",
                      widthTotal: 600,
                      widthActual: 400,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InfoIndicatorOne(
                      text: "Efficiency",
                      widthTotal: 600,
                      widthActual: 450,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InfoIndicatorOne(
                      text: "Integrity",
                      widthTotal: 600,
                      widthActual: 500,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TitleOne(text: "Software Skills"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InfoIndicatorTwo(
                            text: "Flutter",
                            value: 95,
                          ),
                        ),
                        Expanded(
                          child: InfoIndicatorTwo(
                            text: "Dart",
                            value: 90,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InfoIndicatorTwo(
                            text: "Graphics Design",
                            value: 75,
                          ),
                        ),
                        Expanded(
                          child: InfoIndicatorTwo(
                            text: "Digital Marketing",
                            value: 80,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
