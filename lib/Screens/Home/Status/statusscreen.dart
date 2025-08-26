import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "img": "assets/images/person1.jpg",
      "name": "Micheal",
      "statusTime": "15 min ago",
    },
    {
      "img": "assets/images/person 2.jpg",
      "name": "Alice",
      "statusTime": "2 min ago",
    },
    {
      "img": "assets/images/person 3.jpg",
      "name": "Bob",
      "statusTime": "50 min ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/images/dafault avatar.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF088069),
                      child: Icon(
                        Icons.add,
                        color: Color(0XFFFFFFFF),
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "My Status", height: 20),
            subtitle: UiHelper.CustomText(
              text: "Tap to add status update",
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent Update", height: 15),
                Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      statusContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 16,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: statusContent[index]["statusTime"].toString(),
                    height: 14,
                  ),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
