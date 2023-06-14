import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.amberAccent,
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTLgyfipuU7a6fOGUtLZyUbFCQCdzjOeemvN494GLdzMXh-at2AGV4niicfVXr6YM9YU2kDb-_qc7zj6vI"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ana De Armas",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Text(
                            "armasDeAna@gmail.com",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("shared with me"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("My Uploads"),
              ),
              const Divider(
                thickness: 5,
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Shared"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 10, //provides shadow for app bar
        title: const Center(child: Text("Drawer Demo")),
        backgroundColor: const Color.fromARGB(255, 122, 101, 35),
      ),
      body: const Center(child: const Text("This is the demo of the drawer")),
    );
  }
}
