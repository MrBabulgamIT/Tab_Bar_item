import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:tab_bar/screen/tab_bar_page/camera_page.dart';
import 'package:tab_bar/screen/tab_bar_page/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
        length: 6,
        animationDuration: Duration(seconds: 1),
        initialIndex: 0,
        vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Tab Bar",
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
                color: Colors.black),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.all(10),
                tabs: [
                  Tab(
                      child: Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.black,
                  )),
                  Tab(
                    child: Text(
                      "Chat ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Status",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Call",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Post",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Tab(
                      child: Column(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            CameraPage(),
            ChatPage(),
            Container(
              color: Colors.yellow,
              child: Center(
                child: Text(
                  "This is Status Page",
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "This is Call Page",
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  "This is Post Page",
                  style: TextStyle(),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  "This is Profile Page",
                  style: TextStyle(),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
