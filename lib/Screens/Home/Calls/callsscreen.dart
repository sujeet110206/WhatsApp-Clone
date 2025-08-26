import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "Alice",
      "img": "assets/images/person 2.jpg",
      "callTime": "15 min ago",
    },
    {
      "name": "Bob",
      "img": "assets/images/person1.jpg",
      "callTime": "58 min ago",
    },
    {
      "name": "Amit",
      "img": "assets/images/person 3.jpg",
      "callTime": "1 day ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      callContent[index]["img"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 18,
                    fontweight: FontWeight.bold,
                    color: Colors.black
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["callTime"].toString(),
                    height: 16,
                  ),
                  trailing: Icon(Icons.call, color: Color(0XFF00A884)),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
