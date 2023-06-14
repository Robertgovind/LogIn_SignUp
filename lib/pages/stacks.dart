import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stacks Demo"),
      ),
      body: Container(
        color: Color.fromARGB(255, 221, 11, 109),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                right: 12,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  height: 350,
                  width: 350,
                ),
              ),
              Positioned(
                top: 180,
                right: 55,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  height: 250,
                  width: 250,
                ),
              ),
              Positioned(
                top: 100,
                right: 105,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 209, 129, 16),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  height: 150,
                  width: 150,
                ),
              ),
              Positioned(
                top: 20,
                left: 158,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Image(
                    image: AssetImage("assets/govind.jpg"),
                  ),
                ),
              ),
              // Positioned(
              //   child: Container(
              //     height: 100,
              //     width: 100,

              //     ),
              //   ),
              // ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  // color: Colors.green, not allowed here if decoration is used
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
