import 'dart:ui';

import 'package:cv/Components/blog_component.dart';
import 'package:cv/Components/contact_component.dart';
import 'package:cv/Components/portfolio_component.dart';
import 'package:cv/Components/resume_component.dart';
import 'package:cv/Components/service_component.dart';
import 'package:cv/Components/testimonial_component.dart';
import 'package:cv/Provider/tab_data_provider.dart';
import 'package:cv/Widgets/Button/gradient_button_container.dart';
import 'package:cv/Widgets/Button/haptic_circle.dart';
import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:cv/Widgets/Shape/circle_grid_shape.dart';
import 'package:cv/Widgets/Shape/line_shape.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Components/about_component.dart';
import '../Widgets/Icons/paddad_icons.dart';
import '../Widgets/Shape/animated_shape_container.dart';
import '../Widgets/Shape/animated_textbox_slider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String tabData = context.watch<TabDataProvider>().tabData;
    return Scaffold(
      backgroundColor: const Color(0xffF1FAFF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 500,
              left: 150,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              top: 180,
              right: 120,
              child: CircleGridShape(
                height: 130,
                width: 90,
                gap: 6,
                isAnimationHorizontal: false,
                color: Colors.grey,
                crossAxisCount: 4,
                itemCount: 20,
              ),
            ),
            Positioned(
              top: 600,
              right: 50,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              top: 650,
              left: 900,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              top: 440,
              right: 960,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              top: 730,
              left: 200,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              top: 150,
              left: 300,
              child: LineShape(
                width: 40,
                strokeWidth: 5,
                lineColor: Colors.grey,
              ),
            ),
            Positioned(
              bottom: 80,
              right: 120,
              child: CircleGridShape(
                height: 130,
                width: 90,
                gap: 6,
                color: Colors.grey,
                crossAxisCount: 4,
                itemCount: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedCircleCursorMouseRegion(
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset("assets/images/logo.png"),
                          ),
                        ),
                        Row(
                          children: [
                            PaddedIcons(

                              ficon: FontAwesomeIcons.facebookF,
                              color: Colors.blue,
                            ),
                            PaddedIcons(
                              ficon: FontAwesomeIcons.twitter,
                              color: Colors.cyan,
                            ),
                            PaddedIcons(
                              ficon: FontAwesomeIcons.youtube,
                              color: Colors.red,
                            ),
                            PaddedIcons(
                              ficon: FontAwesomeIcons.instagram,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GradientButtonContainer(
                              title: 'Download CV',
                              width: 250,
                              height: 80,
                              overlayColor: Colors.red,
                              clr: [Colors.redAccent, Colors.redAccent],
                              isGradientVertical: false,
                              onpressed: () {

                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 400,
                            child: const Column(
                              children: const [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text: "I'm",
                                    color: Colors.red,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text: "Rashid Mehmood",
                                    color: Color(0xff222222),
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Poppins(
                                    text:
                                        "Experienced Mobile Application Developer.Skilled in Google`sFlutter Sdk,laravel and firebase for creating amazing products with this awesome framework.",
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: AnimatedCircleCursorMouseRegion(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: HapticCircle(),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Poppins(
                                          text: "Play Video",
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 10,
                                    left: 100,
                                    child: AnimatedShapeContainer()),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 300,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          child: Image.asset(
                                            "assets/images/me.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.info,
                        title: 'About Me',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("About Me");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.addressBook,
                        title: 'Resume',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Resume");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.thinkPeaks,
                        title: 'Portfolio',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Portfolio");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.gear,
                        title: 'Service',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Servise");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.star,
                        title: 'Testimonial',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Testimonial");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.blog,
                        title: 'Blog',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Blog");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                      AnimatedTextboxSlider(
                        icon: FontAwesomeIcons.envelope,
                        title: 'Contact',
                        onpressed: () {
                          context
                              .read<TabDataProvider>()
                              .changeTabData("Contact");
                        },
                        tabData: tabData,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  tabData == "About Me" ? AboutComponent() : Container(),
                  tabData == "Resume" ? ResumeComponent() : Container(),
                  tabData == "Portfolio" ? PortfolioComponent() : Container(),
                  tabData == "Servise" ? ServiceComponent() : Container(),
                  tabData == "Blog" ? BlogComponent() : Container(),
                  tabData == "Testimonial" ? TestimonialComponent() : Container(),
                  tabData == "Contact" ? ContactComponent() : Container()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
