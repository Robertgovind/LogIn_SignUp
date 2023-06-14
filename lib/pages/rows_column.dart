
import 'package:flutter/material.dart';

class RowsAndColumn extends StatelessWidget {
  const RowsAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        padding: const EdgeInsets.all(10),
        child: Wrap(
          direction: Axis.horizontal,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
              child: const Text("Contaner1"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Text("Contaner1"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Text("Contaner1"),
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Text("Contaner4"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Text("Contaner5"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Text("Contaner6"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
