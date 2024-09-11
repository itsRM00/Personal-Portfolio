import 'package:cv/Widgets/Button/gradient_button_container.dart';
import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../Widgets/Misc/info_tile_one.dart';
import '../Widgets/Misc/tiltle_heading.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

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
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 450,
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(80),
                    ),
                    child: Image.asset(
                      "./assets/images/me2.jpg",
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  child: Container(
                    height: 350,
                    width: 260,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        InfoTileOne(
                          title: "Name:",
                          subTitle: "Rashid Mehmood",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InfoTileOne(
                          title: "Mail:",
                          subTitle: "Ra5418yz@gmail.com",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InfoTileOne(
                          title: "Phone:",
                          subTitle: "+92 310 6291068",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InfoTileOne(
                          title: "Address:",
                          subTitle: "Chak No.68/4r,Haroonabad",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleHeading(title: "About Me",sunTitle:  "Just an ordinary guy trying to make a difference",),

                SizedBox(
                  height: 20,
                ),
                Poppins(
                  text:
                      "As Flutter Developer, having a strong background in information technology i have worked in a wide range of projects.Enthusiast to type code,fix occurring problems and increase the performance to stand the integrity of the product and to develop myself to learn more and give more.",
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 30,
                ),
                AnimatedCircleCursorMouseRegion(
                  child: GradientButtonContainer(
                    title: "Download CV",
                    clr: [Colors.redAccent, Colors.redAccent],
                    overlayColor: Colors.red,
                    height: 65,
                    width: 250,
                    onpressed: () {},
                    isGradientVertical: false,
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

