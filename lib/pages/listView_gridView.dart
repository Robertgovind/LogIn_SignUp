import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  Map fruits_list = {
    'fruits': ["apple", "mango", "orange", "banana"],
    'Names': ["Govind", "Mohit", "Dhiraj", "Bharat"]
  };
  List<String> Names = ["Govind", "Mohit", "Dhiraj", "Bharat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text("List View and Grid View"),
      ),
      body: GridView.builder(
          itemCount: Names.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(Names[index]),
              ),
            );
          }),

      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 3,
      //     mainAxisSpacing: 3,
      //     childAspectRatio: 1 / 2,
      //   ),
      //   children: [
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //     Card(
      //       child: Center(
      //         child: Text("Govind"),
      //       ),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: fruits_list.length,
      //   itemBuilder: ((context, index) {
      //     return Card(
      //       child: ListTile(
      // leading:Icon(Icons.person),
      //         title: Text(fruits_list['fruits'][index]),
      //         subtitle: Text(fruits_list['Names'][index]),
      //       ),
      //     );
      //   }),
      // ),
      // body: ListView(
      //   children: [
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      // Card(
      //   child: ListTile(
      //     title: Text("Orange"),
      //     subtitle: Text("frist"),
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}
