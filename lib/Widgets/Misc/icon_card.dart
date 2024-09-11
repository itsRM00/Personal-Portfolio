import 'package:cv/Widgets/Text/poppins.dart';
import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  final String mainText;
  final String subText;
  IconCard({required this.mainText, required this.subText});
  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        setState((){
          isHovered=true;
        });
      },
      onExit: (event){
        setState((){
          isHovered=false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                !isHovered
                    ? BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 10,
                        blurRadius: 20,
                      )
                    : BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 20,
                      )
              ]),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.dashboard_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Poppins(
                    text: widget.mainText,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                  SizedBox(height: 20,),
                  Poppins(
                    text: widget.subText,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
