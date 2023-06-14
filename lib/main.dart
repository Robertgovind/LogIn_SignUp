import 'package:first/pages/Dismissible.dart';
import 'package:first/pages/forms.dart';
import 'package:first/pages/imagePicker.dart';
import 'package:first/pages/stacks.dart';
import 'package:first/pages/tabBar.dart';
import 'pages/bottomNavigation.dart';
import 'package:first/pages/animatedText.dart';
import 'pages/bottomSheet.dart';
import 'pages/alertDialog.dart';
import 'package:first/pages/drawer.dart';
import 'package:first/pages/snackBar.dart';
import 'package:first/pages/textButton_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/listView_gridView.dart';
import 'pages/images.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      title: 'first App',
      home: ImagePickers(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("All in One"),
      //   ),
      //   body: Lists(),
      // ),
    );
  }
}
