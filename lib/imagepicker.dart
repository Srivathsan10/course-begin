import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class imgpicker extends StatefulWidget {
  const imgpicker({super.key});

  @override
  State<imgpicker> createState() => _imgpickerState();
}

class _imgpickerState extends State<imgpicker> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: _image == null
                  ? const Column(
                      children: [
                        CircularProgressIndicator(),
                        Text("Select your Image"),
                      ],
                    )
                  : Image.file(_image!),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: Botsheet,
                child: const Text("Choose your Prrofile Pic")),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              heroTag: "Back_10",
              child: const Icon(Icons.arrow_back),
            ),
            FloatingActionButton(
              onPressed: () {},
              heroTag: "Forward_10",
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future imgpickfromcam() async {
    final selectedfile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (selectedfile != null) {
      setState(() {
        _image = File(selectedfile.path);
      });
    } else {
      return const Text("Select any  photo");
    }
  }

  Future imgpickfromgallery() async {
    final selectedfile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (selectedfile != null) {
      setState(() {
        _image = File(selectedfile.path);
      });
    } else {
      return const Text("Select any  photo");
    }
  }

  Botsheet() {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: imgpickfromgallery,
                  icon: const Icon(Icons.image_search),
                  tooltip: "Select your image",
                ),
                IconButton(
                  onPressed: imgpickfromcam,
                  icon: const Icon(Icons.camera_enhance_outlined),
                  tooltip: "Open camera",
                ),
              ],
            ),
          );
        });
  }
}
