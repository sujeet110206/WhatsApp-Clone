import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "img": "assets/images/person1.jpg",
      "name": "John Doe",
      "status": "Hey there! I am using WhatsApp.",
    },
    {
      "img": "assets/images/person 2.jpg",
      "name": "Alice",
      "status": "Available",
    },
    {
      "img": "assets/images/person 3.jpg", 
    "name": "Alice", 
    "status": "Busy"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select Contact",
          height: 18,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  contactContent[index]["img"].toString(),
                ),
              ),
              title: UiHelper.CustomText(
                text: contactContent[index]["name"].toString(),
                height: 16,
                fontweight: FontWeight.bold,
              ),
              subtitle: UiHelper.CustomText(
                text: contactContent[index]["status"].toString(),
                height: 14,
              ),
            );
          },
          itemCount: contactContent.length,
        ),
      ),
    );
  }
}
