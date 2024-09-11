import 'package:cv/Widgets/Cursor/animated_circle_cursor.dart';
import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';

import '../Widgets/Button/haptic_text_button.dart';
import '../Widgets/Misc/tiltle_heading.dart';
import '../Widgets/Shape/animated_overlay_container.dart';

class PortfolioComponent extends StatefulWidget {
  const PortfolioComponent({super.key});

  @override
  State<PortfolioComponent> createState() => _PortfolioComponentState();
}

class _PortfolioComponentState extends State<PortfolioComponent> {
  String type = "All";

  List<Map<String, dynamic>> all = [
    {
      "mainText": "3D Illustratio",
      "subText": "Bear",
      "type": "Animal",
      "image": 3
    },
    {
      "mainText": "3D Illustratio",
      "subText": "Middle-aged Adult",
      "type": "Person",
      "image": 0
    },
    {
      "mainText": "3D Illustratio",
      "subText": "Horse",
      "type": "Animal",
      "image": 4
    },
    {
      "mainText": "3D Illustratio",
      "subText": "Young Adult",
      "type": "Person",
      "image": 1
    },
    {
      "mainText": "3D Illustratio",
      "subText": "Camel",
      "type": "Animal",
      "image": 5
    },
    {
      "mainText": "3D Illustration",
      "subText": "Old-aged Adult",
      "type": "Person",
      "image": 2
    }
  ];

  List<Map<String, dynamic>> animal = [];
  List<Map<String, dynamic>> person = [];
  List getCurrentWorkingList() {
    if (type == "Animal") {
      return animal;
    } else if (type == "Person") {
      return person;
    } else {
      return all;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (animal.isEmpty && person.isEmpty) {
      all.forEach((element) {
        if (element["type"] == "Animal") {
          animal.add(element);
        } else if (element["type"] == "Person") {
          person.add(element);
        }
      });
    }

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
            title: "Portfolio",
            sunTitle: "My work that I did in\nclients",
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HapticTextButton(
                text: "All",
                color: type == "All" ? Colors.red : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "All";
                  });
                },
              ),
              HapticTextButton(
                  text: "Animal",
                  color: type == "Animal" ? Colors.red : Colors.black,
                  onpressed: () {
                    setState(() {
                      type = "Animal";
                    });
                  }),
              HapticTextButton(
                  text: "Person",
                  color: type == "Person" ? Colors.red : Colors.black,
                  onpressed: () {
                    setState(() {
                      type = "Person";
                    });
                  })
            ],
          ),
          SizedBox(
            height: 5,
          ),
          GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: getCurrentWorkingList().length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return getCurrentWorkingList()[index]["type"] == type ||
                        type == "All"
                    ? AnimatedOverlayContainer(
                        index: getCurrentWorkingList()[index]["image"],
                        mainText: getCurrentWorkingList()[index]["mainText"],
                        subText: getCurrentWorkingList()[index]["subText"],
                      )
                    : Container();
              })
        ]));
  }
}
