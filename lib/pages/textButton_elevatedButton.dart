import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                overlayColor: MaterialStateProperty.all(Colors.greenAccent),
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            child: const Text(
              'Press me',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () {
                print('Like');
              },
              child: const Text(
                'Press me',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
