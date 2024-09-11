import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Widgets/Misc/tiltle_heading.dart';

class ContactComponent extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
final phoneController= TextEditingController();
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
            title: "Contact",
            sunTitle: "I am available for Freelancing work and collaboration",
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Name",
                    fillColor: Colors.yellow,
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    hintText: "Mobile Number",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: messageController,
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    hintText: "Message",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 80,
                  color: Colors.red,
                  onPressed: () {
                    CollectionReference collRef =
                        FirebaseFirestore.instance.collection("client");
                    collRef.add({
                      "name": nameController.text,
                      "email": emailController.text,
                      "phone": phoneController.text,
                      "message": messageController.text,
                    });
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
