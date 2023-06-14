import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ["Apple", "Banana", "Orange", "Mango"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Dismissible"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.redAccent,
                      content: Text(fruits[index]),
                    ),
                  );
                }
                if (direction == DismissDirection.endToStart) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.orangeAccent,
                      content: Text(fruits[index]),
                    ),
                  );
                }
              },
              background: Container(
                color: Colors.greenAccent,
              ),
              secondaryBackground: Container(
                color: Colors.blueGrey,
              ),
              key: Key(fruit),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
