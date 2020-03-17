import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/menu_page.dart';
import 'package:myapp/notification.dart';
import 'package:myapp/profile_page.dart';
import 'package:myapp/video_page.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:myapp/group_page.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import 'group_page.dart';

class HomePage extends StatelessWidget {
  List<Widget> container = [
    Home(),
    GroupPage(),
    VideoPage(),
    ProfilePage(),
    NotificatinPage(),
    MenuPage(),
  ];

  // Widget homeButto() {
  //   return IconButton(
  //     icon: Icon(AntIcons.home),
  //     onPressed: null,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Fuckbook',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.group,
                size: 30,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.tv,
                size: 30,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.dehaze,
                size: 30,
                color: Colors.black,
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: container,
        ),
      ),
    );
  }
}
