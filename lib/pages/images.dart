import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Demo"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 5, spreadRadius: 5),
                ],
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://d3lzcn6mbbadaf.cloudfront.net/media/details/ANI-20230217232437.jpg"),
                    fit: BoxFit.cover),
              ),
              height: 200,
              width: 300,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 5)],
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage("assets/govind.jpg"), fit: BoxFit.cover),
              ),
              height: 250,
              width: 300,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent),
              height: 250,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
