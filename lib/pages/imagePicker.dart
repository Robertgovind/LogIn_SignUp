import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});

  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  XFile? file;
  List<XFile>? files;
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.grey,
            child: Center(
              child: file == null
                  ? Text("Image not picked")
                  : Image.file(
                      File(file!.path),
                      fit: BoxFit.contain,
                    ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final XFile? photo =
                  await picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
              print("Succesful");
            },
            child: const Text("Pick"),
          ),
          ElevatedButton(
            onPressed: () async {
              List<XFile> photoes = await picker.pickMultiImage();
              setState(() {
                files = photoes;
              });
              print("Succesful");
            },
            child: const Text("Pick Multiple Photoes"),
          ),
        ],
      ),
    );
  }
}
