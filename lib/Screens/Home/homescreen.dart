import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/Calls/callsscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_clone/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_clone/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ], 
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen()
          ],
        ),
      ),
    );
  }
}
