import 'package:first/pages/bottomSheet.dart';
import 'package:first/pages/containers.dart';
import 'package:first/pages/drawer.dart';
import 'package:first/pages/images.dart';
import 'package:first/pages/snackBar.dart';
import 'package:flutter/material.dart';

class ButtomNavgt extends StatefulWidget {
  const ButtomNavgt({super.key});

  @override
  State<ButtomNavgt> createState() => _ButtomNavgtState();
}

class _ButtomNavgtState extends State<ButtomNavgt> {
  int selIndex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Profile")
  // ];
  void onTaps(int index) {
    setState(() {
      selIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Images(),
          Drawers(),
          BottomSheets(),
          Containers(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: selIndex,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.blueAccent,
        onTap: onTaps,
      ),
    );
  }
}
