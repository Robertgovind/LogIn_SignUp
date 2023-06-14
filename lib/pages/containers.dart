import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Containers Demo"),
      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
            // borderRadius: BorderRadius.circular(25),
            color: Colors.amberAccent,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5)
            ],
          ),
          //color: Colors.amber,
          child: const Center(
            child: Text(
              "Container1",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
