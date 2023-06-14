import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text('This is Home Page'),
        ),
      ),
    );
  }
}
