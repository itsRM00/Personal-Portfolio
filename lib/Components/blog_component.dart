import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';

import '../Widgets/Misc/tiltle_heading.dart';

class BlogComponent extends StatelessWidget {
  const BlogComponent({super.key});

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
            title: "Blog",
            sunTitle: "Latest Posts and Updates",
          ),
          SizedBox(
            height: 80,
          ),
          GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 20,
                          )
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/6.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            width: double.infinity,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Poppins(
                                  text: "Blog",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                ),
                                Poppins(
                                  text: "Latest Posts and Updates",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ]));
  }
}
