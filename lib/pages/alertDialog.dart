import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Dialog Alert"),
          onPressed: () {
            showDialogWidget(context);
          },
        ),
      ),
    );
  }
}

Future<void> showDialogWidget(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.amberAccent,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          scrollable: true,
          title: Text("Do you want to continue?"),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("This may harm you"),
              Text("This is wrong for you"),
            ]),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Continue"),
            ),
          ],
        );
      });
}
