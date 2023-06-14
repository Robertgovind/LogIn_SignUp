import 'package:flutter/material.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                enableDrag: true,
                isDismissible: false,
                elevation: 5,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.blue.shade800,
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Orange"),
                        subtitle: Text("Govind"),
                      ),
                      ListTile(
                        title: Text("Apple"),
                        subtitle: Text("Mohit"),
                      ),
                      ListTile(
                        title: Text("Mango"),
                        subtitle: Text("Dhiraj"),
                      ),
                      ListTile(
                        title: Text("Lichi"),
                        subtitle: Text("Bharat"),
                      ),
                      ListTile(
                        title: Text("Banana"),
                        subtitle: Text("Aagaman"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
