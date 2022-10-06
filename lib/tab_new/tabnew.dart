import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_bar/screen/tab_bar_page/camera_page.dart';
import 'package:tab_bar/screen/tab_bar_page/chat_page.dart';

class Tab_New_Page extends StatefulWidget {
  const Tab_New_Page({Key? key}) : super(key: key);

  @override
  State<Tab_New_Page> createState() => _Tab_New_PageState();
}

class _Tab_New_PageState extends State<Tab_New_Page>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabControllerr = TabController(length: 5, vsync: this);

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Card(
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              width: double.infinity,
              child: TabBar(
                  isScrollable: true,
                  mouseCursor: MouseCursor.uncontrolled,

                  // indicator: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(15),
                  //     color: Colors.white),
                  controller: tabControllerr,
                  labelColor: Colors.transparent,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      text: "Chat",
                    ),
                    Tab(
                      text: "Status",
                    ),
                    Tab(
                      text: "Call",
                    ),
                    Tab(
                      text: "Profile",
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabControllerr,
              children: [
                CameraPage(),
                ChatPage(),
                Center(
                  child: Text(
                    "Status",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Center(
                  child: Text(
                    "Call",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
