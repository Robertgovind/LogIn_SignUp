import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Show snackbar"),
            onPressed: () {
              final snackBar = SnackBar(
                action: SnackBarAction(label: "Try Again", onPressed: () {}),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.amber,
                elevation: 10,
                padding: EdgeInsets.all(15),
                // margin: EdgeInsets.all(15),
                duration: Duration(seconds: 5),
                content: Text("You have got an error"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }
}
