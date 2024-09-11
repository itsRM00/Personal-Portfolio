import 'package:flutter/material.dart';

import '../Widgets/Misc/icon_card.dart';
import '../Widgets/Misc/tiltle_heading.dart';

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({super.key});

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
              title: "Services",
              sunTitle: "What you can Expect\n from me?",
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconCard(
                    mainText: "Custom App Development:",
                    subText:
                    " Creating tailored applications\n from scratch, designed\n to meet specific business\n needs and user requirements.",
                  ),
                  IconCard(
                    mainText: "UI/UX Design:",
                    subText:
                    "Designing intuitive and visually\n appealing user interfaces using\n tools like Adobe XD, Figma,\n or Sketch.",
                  ),
                  IconCard(
                    mainText: "App Migration:",
                    subText:
                    "Migrating existing apps to Flutter\n to take advantage of its\n cross-platform capabilities.",
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  IconCard(
                    mainText: "Testing and QA: ",
                    subText:
                    "Conducting rigorous testing to\n ensure the app performs as\n intended across different\n platforms.",
                  ),
                  IconCard(
                    mainText: "Maintenance and Support:",
                    subText:
                    "Providing ongoing support and\n updates to keep the app running\n smoothly",
                  ),
                  IconCard(
                    mainText: "Consulting and Ideation:",
                    subText:
                    "Assisting in validating\n project ideas and providing\n technical solutions.",
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
