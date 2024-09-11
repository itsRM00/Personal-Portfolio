import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/Misc/tiltle_heading.dart';

class TestimonialComponent extends StatelessWidget {
  const TestimonialComponent({super.key});

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TitleHeading(
          title: "Testimonial",
          sunTitle: "what people say about me?",
        ),
        SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 380,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 310,
              aspectRatio: 16 / 9,
              viewportFraction: 0.5,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: 6,
            itemBuilder: ((context, index, realIndex) {
              return Container(
                height: 300,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 20,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      Poppins(
                        text: "We are fully satisfied with their performance.",
                        fontSize: 18,
                        textStyle: TextStyle(fontStyle: FontStyle.italic),
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    "./assets/images/$index.png",
                                  )),
                              SizedBox(
                                height: 20,
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Poppins(
                                    text: "Rashid Mehmood",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  Poppins(
                                    text: "Flutter and Dart Developer",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.quoteLeft,
                            color: Colors.yellow,
                            size: 50,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        )
      ]),
    );
  }
}
