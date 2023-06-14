import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  const TabBars({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: "Status",
            ),
            Tab(
              icon: Icon(Icons.call),
              text: "calls",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Chats",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text("Chats"),
              ),
            ),
            Container(
              child: Center(
                child: Text("Status"),
              ),
            ),
            Container(
              child: Center(
                child: Text("calls"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
