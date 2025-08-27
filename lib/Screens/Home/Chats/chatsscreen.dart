import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Contact/contactscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "image": "assets/images/person 2.jpg",
      "name": "Sujeet",
      "lastmsg": "Flutter",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "image": "assets/images/person1.jpg",
      "name": "Amit",
      "lastmsg": "Dart",
      "time": "04:45 am",
      "msg": "2",
    },
    {
      "image": "assets/images/person 2.jpg",
      "name": "Ruhi",
      "lastmsg": "Flutter",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "image": "assets/images/person1.jpg",
      "name": "Rohan",
      "lastmsg": "Dart",
      "time": "04:45 am",
      "msg": "2",
    },
    {
      "image": "assets/images/person 3.jpg",
      "name": "Rohit",
      "lastmsg": "Flutter",
      "time": "05:45 am",
      "msg": "7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 53,
                    backgroundImage: AssetImage(
                      arrContent[index]["image"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 8,
                        child: UiHelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                        backgroundColor: Color(0XFF036401),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactScreen()
            ),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
        ),
      ),
    );
  }
}
